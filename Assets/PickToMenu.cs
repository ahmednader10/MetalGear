using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;

public class PickToMenu : MonoBehaviour {
	public  Button SelectImage;
	public static Hashtable itemList = new Hashtable ();
	private static int itemSpot = 0;
	public GameObject player;

	public GameObject[] weapons;
	public ArrayList IDs;
	public ArrayList imageIDs;
	public GameObject M9;

	public void RightButton() {
		print ("BARA IF" + itemList.Count + "" + itemSpot);
		if (itemSpot <= itemList.Count - 1) {
			
			Debug.Log ("Right Button" + itemSpot);
			SelectImage.image.sprite = (Sprite)itemList [itemSpot];
			itemSpot++; 

		}
	}

	public void leftButton() {
		if (itemList.Count > 0) {
			if (itemSpot > 0) {
				itemSpot--;
				print ("lEFT Button" + itemSpot);
				SelectImage.image.sprite = (Sprite)itemList [itemSpot];


			}
		}
	}

	public void selectWeapon() {
		print ("choose weapon" +itemSpot);
		GameObject gun = (GameObject)player.gameObject.GetComponent<PlayerScript> ().guns [itemSpot];
		if (gun.tag == "m9")
			GameObject.FindGameObjectWithTag ("m91").SetActive(true);
		if (gun.tag == "patriot")
			GameObject.FindGameObjectWithTag ("patriot1").SetActive(true);
		if (gun.tag == "ak47")
			GameObject.FindGameObjectWithTag ("ak471").SetActive(true);


	}

	public void AddGunSprite(GameObject item, int counter) {
	    
		Sprite image = item.gameObject.transform.GetChild (0).GetComponent<SpriteRenderer>().sprite;

		itemList.Add (counter, image);
		print (itemList.Count);
		itemSpot = counter;
	}

	// Use this for initialization
	void Start () {
//		weapons[0] = GameObject.FindGameObjectsWithTag("mk9")[0];
//		weapons [1] = GameObject.FindGameObjectsWithTag ("ak47")[1];

	}
	
	// Update is called once per frame
	void Update () {
	
	}
		
}
