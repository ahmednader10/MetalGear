using UnityEngine;
using System.Collections;

public class SelectionMenu : MonoBehaviour {
	bool paused = false;
	public GameObject canvas;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update()
	{
		if(Input.GetKeyDown(KeyCode.F))
			paused = togglePause();
	}
		

	bool togglePause()
	{
		if(Time.timeScale == 0f)
		{
			Time.timeScale = 1f;
			canvas.SetActive (false);
			return(false);
		}
		else
		{
			Time.timeScale = 0f;
			canvas.SetActive (true);
			return(true);    
		}
	}
}


