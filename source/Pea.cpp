#include "Pea.h"

// TODO: dont.......
//using namespace Pea;

// TODO: File structure
int main()
{
    glfwInit();
    glfwWindowHint(GLFW_CLIENT_API, GLFW_NO_API);

    GLFWwindow* window = glfwCreateWindow(800, 600, "Pea Renderer", nullptr, nullptr);
    if (window == nullptr)
    {
        // TODO: Make a logger!
        std::cout << "Failed to create GLFW window" << std::endl;

        glfwTerminate();
        return -1;
    }

    while (!glfwWindowShouldClose(window)) {
        glfwPollEvents();
    }

    glfwDestroyWindow(window);
    glfwTerminate();
    return 0;
}