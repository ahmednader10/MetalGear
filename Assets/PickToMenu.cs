using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;

public class PickToMenu : MonoBehaviour {
	public Image SelectImage;
	public List<Sprite> itemList = new List<Sprite> ();
	private int itemSpot = 0;

	public GameObject[] weapons;
	public ArrayList IDs;
	public ArrayList imageIDs;
	public GameObject M9;

	public void RightButton() {
		if (itemSpot < itemList.Count - 1) {
			itemSpot++;
			SelectImage.sprite = itemList [itemSpot];

		}
	}


	public void leftButton() {
		if (itemSpot > 0) {
			itemSpot--;
			SelectImage.sprite = itemList [itemSpot];

		}
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
