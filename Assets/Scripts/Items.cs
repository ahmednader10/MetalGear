using UnityEngine;
using System.Collections;

public class Items : MonoBehaviour {
	public string name;
	public bool active;
	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
		if (active) {
			this.gameObject.SetActive (true);
		} else {
			this.gameObject.SetActive (false);
		}
	}
}
