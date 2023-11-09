//
// Created by m on 09.11.2023.
//

#ifndef OPENGL_TEMPLATE_GAMESCENE_H
#define OPENGL_TEMPLATE_GAMESCENE_H


#include <vector>
#include "playground/GameObject.h"

class GameScene {
public:
    std::vector<GameObject> gameObjects;

    void awake();
    void update();

    void drawCall();
};


#endif //OPENGL_TEMPLATE_GAMESCENE_H
