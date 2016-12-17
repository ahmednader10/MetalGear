using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class collectGuns : MonoBehaviour {

	private GameObject item;
	// Use this for initialization
	void Start () {
		item = this.gameObject;
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnTriggerEnter(Collider player){

		if (player.tag == "Player") {
			item.SetActive (false);
			player.gameObject.GetComponent<PlayerScript> ().AddGun (this.gameObject);
		}


	}
}
