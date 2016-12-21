using UnityEngine;
using System.Collections;

public class QuitResume : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    public void quitmygame()
    {
        Application.Quit();
        Application.LoadLevel("OptionsMenu");

    }

    public void resumegame()

    {
        Time.timeScale = 1;
        /* buttonRes.SetActive(false);
         buttonQui.SetActive(false);
         buttonRsm.SetActive(false);*/
    }

    public void restartgame()

    {
        Application.LoadLevel("Game");
    }
}
