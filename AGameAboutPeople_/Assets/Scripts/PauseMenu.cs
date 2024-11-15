using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PauseMenu : MonoBehaviour
{
    public static bool isGamePaused = false;
    public GameObject pauseMenu;

    void Start()
    {
        isGamePaused = false;
        pauseMenu.SetActive(false);  // Ensure pause menu is hidden at the start
    }

    void Update()
    {
        // Check if the player presses the "Escape" key to toggle pause/resume
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            if (isGamePaused)
            {
                ResumeGame();
            }
            else
            {
                PauseGame();
            }
        }
    }

    public void ResumeGame()
    {
        pauseMenu.SetActive(false);   // Hide the pause menu UI
        Time.timeScale = 1f;          // Resume game time
        isGamePaused = false;
    }

    void PauseGame()
    {
        pauseMenu.SetActive(true);    // Show the pause menu UI
        Time.timeScale = 0f;          // Pause game time
        isGamePaused = true;
    }

    // Quit button in the pause menu
    public void QuitGame()
    {
        // code if needed
        Application.Quit();
    }
}
