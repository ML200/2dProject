//
// Created by m on 10.11.2023.
//

#ifndef OPENGL_TEMPLATE_RENDERINGMANAGER_H
#define OPENGL_TEMPLATE_RENDERINGMANAGER_H


#include "playground/GameObject.h"
#include "glm/detail/type_mat.hpp"
#include "glm/gtc/matrix_transform.hpp"





void drawWithTransforms(const glm::mat4& model, const glm::mat4& view, const glm::mat4& projection, const std::vector<GLfloat>& vertexList, GLuint shaderProgram, GLuint vao) {
    glm::mat4 mvp = projection * view * model;
    GLint mvpLocation = glGetUniformLocation(shaderProgram, "mvp");
    glUseProgram(shaderProgram);

    // Pass the MVP matrix to the shader
    glUniformMatrix4fv(mvpLocation, 1, GL_FALSE, &mvp[0][0]);

    glBindVertexArray(vao);
    // Draw the vertices. Since we only have positions, the number of vertices is the size of the list divided by 3 (x, y, z)
    glDrawArrays(GL_TRIANGLES, 0, static_cast<GLsizei>(vertexList.size() / 3));
    glBindVertexArray(0);
}


class Renderer {
public:
    // ... possibly other rendering-related members ...

    void setupGameObject(GameObject& gameObject) {
        // Assuming GameObject has its own VAO and VBO members
        setupVertexBuffer(gameObject.vbo, gameObject.vertexList);
        setupVertexArray(gameObject.vao, gameObject.vbo, 0, 1); // Assuming locations 0 and 1 for position and color
    }

    void drawGameObject(const GameObject& gameObject, const glm::mat4& view, const glm::mat4& projection, GLuint shaderProgram) {
        // Compute model matrix from gameObject and draw it with its own draw call
        glm::mat4 modelMatrix = computeModelMatrix(gameObject);
        drawWithTransforms(modelMatrix, view, projection, gameObject.vertexList, shaderProgram, gameObject.vao);
    }

private:
    glm::mat4 computeModelMatrix(const GameObject& gameObject) {
        // Compute the model matrix from the GameObject's transformations
        glm::mat4 model = glm::translate(glm::mat4(1.0f), gameObject.position) *
                          glm::rotate(glm::mat4(1.0f), glm::radians(gameObject.rotation.x), glm::vec3(1, 0, 0)) *
                          glm::rotate(glm::mat4(1.0f), glm::radians(gameObject.rotation.y), glm::vec3(0, 1, 0)) *
                          glm::rotate(glm::mat4(1.0f), glm::radians(gameObject.rotation.z), glm::vec3(0, 0, 1)) *
                          glm::scale(glm::mat4(1.0f), gameObject.scale);
        return model;
    }
};


#endif //OPENGL_TEMPLATE_RENDERINGMANAGER_H
