//
// Created by m on 09.11.2023.
//

#ifndef OPENGL_TEMPLATE_GAMESCENE_H
#define OPENGL_TEMPLATE_GAMESCENE_H


#include <vector>
#include <memory>
#include "playground/GameObject.h"
#include "glfw3.h"
#include "playground/Camera.h"
#include "CelestialSimulation/CelestialObject.h"
#include "CelestialSimulation/CelestialSystem.h"

class GameScene {
private:
    float lastX = 1920 / 2.0f;
    float lastY = 1080 / 2.0f;
    bool firstMouse = true;


public:
    std::vector<CelestialObject> celestialObjects;
    std::vector<std::shared_ptr<GameObject>> gameObjects;

    std::vector<GLfloat> starVertexList;

    std::shared_ptr<Camera> camera;

    //pointer to the window
    GLFWwindow* window;
    CelestialSystem celestialSystem;

    float globalTime = 0.0f;
    bool endGame = false;

    void awake();
    void update();


    float cumulativePitch = 0.0f; // For up and down rotation (Pitch)
    float cumulativeYaw = 0.0f;   // For left and right rotation (Yaw)

    float playerVelocity = 0.0f;
    float playerAcceleration = 100.0f;  // Acceleration speed
    float maxPlayerSpeed = 50.0f;       // Maximum speed
};


#endif //OPENGL_TEMPLATE_GAMESCENE_H
