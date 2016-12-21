using UnityEngine;
using System.Collections;

public class PauseOverScreen : MonoBehaviour {
    public bool paused;
    public Canvas menu; // Assign in inspector
    private bool isShowing;
    // Use this for initialization
    void Start () {
        paused = false;
        menu.enabled = false;
  
}

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape) || Input.GetKeyDown(KeyCode.P))
        {
          
            menu.enabled = true;
            paused = !paused;
        }
        if (paused)
        {
            Time.timeScale = 0;
        }
        else if (!paused)
        {
            Time.timeScale = 1;
        }
    }
    public void quitmygame()
    {
        Application.Quit();
        Application.LoadLevel("OptionsMenu");

    }

    public void resumegame()

    {
        paused = false;
        Time.timeScale = 1;
        menu.enabled = false;
    }

    public void restartgame()

    {
        menu.enabled = false;
        // Application.LoadLevel("Game");
        Application.Quit();
    }
}
