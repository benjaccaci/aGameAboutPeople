using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenu : MonoBehaviour
{
    public void StartGame()
    {
        SceneManager.LoadScene("GameScene");
    }

    public void OpenSettings()
    {
        Debug.Log("Settings menu opened");
    }

    public void QuitGame()
    {
        Debug.Log("Quit Game");
        Application.Quit(); 
    }
}