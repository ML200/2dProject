//
// Created by m on 09.11.2023.
//

#include <iostream>
#include <chrono>
#include <random>
#include <algorithm>
#include "GameScene.h"
#include "Util/MatrixUtils.h"
#include "playground/Globals.h"
#include "glfw3.h"
#include "common/parse_stl.h"
#include "glm/fwd.hpp"
#include "CelestialSimulation/CelestialSystem.h"


float getRandomFloat(float min, float max) {
    static std::random_device rd;
    static std::mt19937 generator(rd());
    std::uniform_real_distribution<float> distribution(min, max);

    return distribution(generator);
}


float normalizeMass(double mass, double minMass, double maxMass) {
    return static_cast<float>((mass - minMass) / (maxMass - minMass));
}

void generateCelestialObjects(int numberOfObjects,
                              std::vector<CelestialObject>& celestialObjects,
                              std::vector<std::shared_ptr<GameObject>>& gameObjects,
                              CelestialSystem& celestialSystem,
                              const std::vector<GLfloat>& vertexList) {
    for (int i = 0; i < numberOfObjects; ++i) {

        const glm::vec3 colorMinMass = glm::vec3(1.0f, 0.5f, 0.5f);
        const glm::vec3 colorMaxMass = glm::vec3(0.8f, 0.8f, 1.0f);

        glm::vec3 position = glm::vec3(getRandomFloat(-5000.0f, 5000.0f),
                                       getRandomFloat(-5000.0f, 5000.0f),
                                       getRandomFloat(-5000.0f, 5000.0f));
        glm::vec3 velocity = glm::vec3(getRandomFloat(-20.0f, 20.0f),
                                       getRandomFloat(-20.0f, 20.0f),
                                       getRandomFloat(-20.0f, 20.0f));
        double mass = getRandomFloat(1e17, 1e18);

        float normalizedMass = normalizeMass(mass, 1e17, 1e18);
        glm::vec3 color = colorMinMass * (1.0f - normalizedMass) + colorMaxMass * normalizedMass;


        CelestialObject celestialObject(position, velocity, mass);
        celestialObjects.push_back(celestialObject);
        celestialSystem.addObject(celestialObject);

        auto gameObject = std::make_shared<GameObject>();
        gameObject->position = position;
        gameObject->rotation = glm::vec3(0.0f, 0.0f, 0.0f);
        gameObject->scale = glm::vec3(1.0f, 1.0f, 1.0f) * (normalizedMass+1); // Adjust scale as needed

        gameObject->vertexList = vertexList;
        gameObject->color = color;
        gameObject->setupVertexData();
        gameObjects.push_back(gameObject);
    }
}


static void cursor_position_callback(GLFWwindow* window, double xpos, double ypos){
}


void GameScene::awake() {
    stl_data sun = parse_stl("sun.stl");
    starVertexList = sun.toVertexList();

    this->camera = std::make_shared<Camera>();
    camera->setPosition(glm::vec3 (0.0f,0.0f,-30.0f));
    camera->rotate(glm::vec3(0,0,0));
    glfwSetCursorPosCallback(window, cursor_position_callback);
    glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);


    generateCelestialObjects(2000, celestialObjects, gameObjects, celestialSystem, starVertexList);

}

void GameScene::update() {
    const float maxRotationAngle = 45.0f;
    globalTime += deltaTime;

    float rotationAngle = (playerVelocity / maxPlayerSpeed) * maxRotationAngle;
    rotationAngle = std::max(-maxRotationAngle, std::min(rotationAngle, maxRotationAngle));
    gameObjects[0]->rotation.z=-rotationAngle;

    if (glfwGetKey(window, GLFW_KEY_SPACE) == GLFW_PRESS) {
        if (gameObjects[0]->position.y < 50.0f) {
            playerVelocity += playerAcceleration * deltaTime;
        }
    } else {
        if (gameObjects[0]->position.y > 0) {
            playerVelocity -= playerAcceleration * deltaTime;
        }
    }

    const float cameraSpeed = 15000.0f;

    if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS)
        camera->translate(camera->getForwardDirection() * -cameraSpeed * deltaTime);
    if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS)
        camera->translate(camera->getForwardDirection() * cameraSpeed * deltaTime);
    if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS)
        camera->translate(camera->getRightDirection() * -cameraSpeed * deltaTime);
    if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS)
        camera->translate(camera->getRightDirection() * cameraSpeed * deltaTime);
    if (glfwGetKey(window, GLFW_KEY_R) == GLFW_PRESS)
        camera->translate(camera->getUpDirection() * cameraSpeed * deltaTime);
    if (glfwGetKey(window, GLFW_KEY_F) == GLFW_PRESS)
        camera->translate(camera->getUpDirection() * -cameraSpeed * deltaTime);
    double xpos, ypos;
    glfwGetCursorPos(window, &xpos, &ypos);

    int windowWidth, windowHeight;
    glfwGetWindowSize(window, &windowWidth, &windowHeight);
    double centerX = windowWidth / 2.0;
    double centerY = windowHeight / 2.0;

    float xoffset = xpos - centerX;
    float yoffset = centerY - ypos;
    lastX = xpos;
    lastY = ypos;

    const float sensitivity = 10.0f;
    xoffset *= sensitivity * deltaTime;
    yoffset *= sensitivity * deltaTime;

    xoffset = -xoffset;

    cumulativeYaw += xoffset;

    cumulativePitch += yoffset;
    cumulativePitch = std::clamp(cumulativePitch, -90.0f, 90.0f);

    glm::quat yawRot = glm::angleAxis(glm::radians(cumulativeYaw), glm::vec3(0.0f, 1.0f, 0.0f));

    glm::quat pitchRot = glm::angleAxis(glm::radians(cumulativePitch), glm::vec3(1.0f, 0.0f, 0.0f));
    camera->setRotation(yawRot * pitchRot);

    celestialSystem.update(deltaTime);
    for (size_t i = 0; i < celestialObjects.size(); ++i) {
        celestialObjects[i].update(deltaTime);
        gameObjects[i]->position = celestialSystem.getObject(i).position;
    }

    glfwSetCursorPos(window, centerX, centerY);
}

