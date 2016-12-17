using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class collectGuns : MonoBehaviour {

	private int counter = 0;
	private GameObject item;
	public GameObject pickMenu;
	// Use this for initialization
	void Start () {
		item = this.gameObject;
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnTriggerEnter(Collider player){

		if (player.tag == "Player") {
			counter++;
			print (counter);
			item.SetActive (false);
			player.gameObject.GetComponent<PlayerScript> ().AddGun (this.gameObject,counter);
			pickMenu.gameObject.GetComponent<PickToMenu> ().AddGunSprite (this.gameObject, counter);
		}


	}
}
