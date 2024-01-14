//
// Created by m on 12.01.2024.
//

#ifndef OPENGL_TEMPLATE_CELESTIALSYSTEM_H
#define OPENGL_TEMPLATE_CELESTIALSYSTEM_H


#include <vector>
#include <iostream>
#include <thread>
#include "CelestialObject.h"
#include "glm/detail/func_geometric.hpp"


class CelestialSystem {
    std::vector<CelestialObject> objects;
    const double G = 6.67430e-11;

public:
    void addObject(const CelestialObject& obj) {
        objects.push_back(obj);
    }

    CelestialObject getObject(const int i){
        return objects[i];
    }

    void update(double deltaTime) {
        const size_t threadCount = std::thread::hardware_concurrency();
        std::vector<std::thread> threads(threadCount);

        size_t segmentSize = objects.size() / threadCount;

        for (size_t i = 0; i < threadCount; ++i) {
            size_t start = i * segmentSize;
            size_t end = (i + 1 == threadCount) ? objects.size() : (i + 1) * segmentSize;
            threads[i] = std::thread(&CelestialSystem::updateSegment, this, std::ref(objects), start, end, deltaTime);
        }

        for (auto& thread : threads) {
            thread.join();
        }
    }

    void updateSegment(std::vector<CelestialObject>& objects, size_t start, size_t end, double deltaTime) {
        for (size_t i = start; i < end; ++i) {
            for (size_t j = 0; j < objects.size(); ++j) {
                if (i != j) {
                    if (checkCollision(objects[i], objects[j])) {
                        handleCollision(objects[i], objects[j]);
                    } else {
                        glm::vec3 force = calculateGravitationalForce(objects[i], objects[j]);
                        objects[i].velocity += force * static_cast<float>(deltaTime / objects[i].mass);
                    }
                }
            }
            objects[i].position += objects[i].velocity * static_cast<float>(deltaTime);
        }
    }

    void handleCollision(CelestialObject& a, CelestialObject& b) {
        a.isCollided = true;
        a.radius = a.originalRadius * 2;
    }

    bool checkCollision(const CelestialObject& a, const CelestialObject& b) {
        float distance = glm::distance(a.position, b.position);
        return distance < (a.radius + b.radius);
    }

private:
    glm::vec3 calculateGravitationalForce(const CelestialObject& a, const CelestialObject& b) {
        glm::vec3 direction = b.position - a.position;
        float distance = glm::length(direction);
        float forceMagnitude = G * (a.mass * b.mass) / (distance * distance);
        return glm::normalize(direction) * forceMagnitude;
    }

};


#endif //OPENGL_TEMPLATE_CELESTIALSYSTEM_H
