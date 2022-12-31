#ifndef LEARNSDL_GAME_HPP
#define LEARNSDL_GAME_HPP

#include <SDL.h>

#include <iostream>

class Game {
public:
        Game();
        ~Game();

        void init(const char* title, int xpos, int ypos, int width, int height, bool fullscreen);

        void handleEvents();
        void update();
        void render();
        void clean();

        bool running() const noexcept { return m_isRunning; }
private:
        int m_count = 0;
        bool m_isRunning;
        SDL_Window *m_window;
        SDL_Renderer *m_renderer;
};

#endif //LEARNSDL_GAME_HPP
