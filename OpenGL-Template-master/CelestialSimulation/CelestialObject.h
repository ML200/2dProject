//
// Created by m on 12.01.2024.
//

#ifndef OPENGL_TEMPLATE_CELESTIALOBJECT_H
#define OPENGL_TEMPLATE_CELESTIALOBJECT_H


#include "glm/vec3.hpp"

class CelestialObject {
public:
    glm::vec3 position;
    glm::vec3 velocity;
    float radius;
    bool isCollided;
    double mass;
    float originalRadius;

    CelestialObject(glm::vec3 pos, glm::vec3 vel, double m)
            : position(pos), velocity(vel), mass(m) {
    }

    void update(float deltaTime) {
        position += velocity * deltaTime;
        /*std::cout << "Updated CelestialObject - Position: ("
                  << position.x << ", " << position.y << ", " << position.z
                  << "), Velocity: ("
                  << velocity.x << ", " << velocity.y << ", " << velocity.z
                  << ")" << std::endl;*/

    }
};


#endif //OPENGL_TEMPLATE_CELESTIALOBJECT_H
