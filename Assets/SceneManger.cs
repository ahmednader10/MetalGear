using UnityEngine;
using System.Collections;

public class SceneManger : MonoBehaviour {
    public void ChangeToScene(string SceneToChangeTo)
    {
        Application.LoadLevel(SceneToChangeTo);

    }
    // Use this for initialization
    void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    public void MuteAll()
    {

        AudioListener.pause = true;
        // else
        //AudioListener.pause = false;
    }
}
