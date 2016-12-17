using UnityEngine;
using System.Collections;

public class PlayerScript : MonoBehaviour {
	private ArrayList healthItems;
	private Hashtable guns;
	private int health = 100;
	// Use this for initialization
	void Start () {
		healthItems = new ArrayList();
		guns = new Hashtable ();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void AddHealthItem(GameObject item) {
		healthItems.Add (item);
		print ("ADDED HEALTH: " + item);
	}

	public void AddGun(GameObject item, int counter) {
		guns.Add (counter, item);
		print ("ADDED Gun: " + item);
	}

	public void activateHealthItems() {
		if (healthItems.Count == 0) {
			return;
		}

		healthItems.RemoveAt(0);

		if (health >= 100) {
			return;
		} else if (health > 50) {
			health = 100;
		} else {
			health += 50;
		}
	}


}
