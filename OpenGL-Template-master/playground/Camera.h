//
// Created by m on 11.01.2024.
//

#ifndef OPENGL_TEMPLATE_CAMERA_H
#define OPENGL_TEMPLATE_CAMERA_H


#include <glm/glm.hpp>
#include <glm/gtc/quaternion.hpp> // Include GLM quaternion support
#include <glm/gtx/quaternion.hpp> // Include GLM quaternion transformations

class Camera {
private:
    glm::vec3 position;
    glm::quat rotation; // Using quaternion for rotation

public:
    // Getter for position
    glm::vec3 getPosition() const {
        return position;
    }

    // Setter for position
    void setPosition(const glm::vec3& newPosition) {
        position = newPosition;
    }

    // Getter for rotation (as quaternion)
    glm::quat getRotation() const {
        return rotation;
    }

    // Setter for rotation (as quaternion)
    void setRotation(const glm::quat& newRotation) {
        rotation = newRotation;
    }

    // Method to translate the camera
    void translate(const glm::vec3& delta) {
        position += delta;
    }

    // Method to rotate the camera
    void rotate(const glm::vec3& eulerAngles) {
        glm::quat q = glm::quat(eulerAngles);
        rotation = glm::normalize(rotation * q);
    }


    // Method to get the forward direction
    glm::vec3 getForwardDirection() const {
        return rotation * glm::vec3(0.0f, 0.0f, -1.0f); // Assuming -Z is forward
    }

// Method to get the right direction
    glm::vec3 getRightDirection() const {
        return rotation * glm::vec3(1.0f, 0.0f, 0.0f); // Assuming +X is right
    }

// Method to get the up direction
    glm::vec3 getUpDirection() const {
        return rotation * glm::vec3(0.0f, 1.0f, 0.0f); // Assuming +Y is up
    }

    // Other camera-related methods as needed...
// Private constructor
Camera() : position(glm::vec3(0.0f)), rotation(glm::quat(1.0f, 0.0f, 0.0f, 0.0f)) {}
};


#endif //OPENGL_TEMPLATE_CAMERA_H