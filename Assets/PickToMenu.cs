using UnityEngine;
using System.Collections;

public class PickToMenu : MonoBehaviour {
	public GameObject[] weapons;
	public ArrayList IDs;
	public ArrayList imageIDs;
	public GameObject M9;

	// Use this for initialization
	void Start () {
		weapons[0] = GameObject.FindGameObjectsWithTag("mk9")[0];
		weapons [1] = GameObject.FindGameObjectsWithTag ("ak47")[1];

	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
