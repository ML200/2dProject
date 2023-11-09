//
// Created by m on 09.11.2023.
//

#ifndef OPENGL_TEMPLATE_GAMEOBJECT_H
#define OPENGL_TEMPLATE_GAMEOBJECT_H


#include <vector>
#include "glm/vec3.hpp"
#include "GL/glew.h"

class GameObject {
public:
    //List of vertices (using vector cause its convenient and fast)
    std::vector<GLfloat> vertexList;

    glm::vec3 position;
    glm::vec3 rotation;
    glm::vec3 scale;

    //Change the transform vectors
    //Use this in the update function of the GameScene
    void translateObj(glm::vec3 vec);
    void rotateObj(glm::vec3 vec);
    void scaleObj(glm::vec3);
};


#endif //OPENGL_TEMPLATE_GAMEOBJECT_H
