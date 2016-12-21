using UnityEngine;
using System.Collections;

public class HealthScript : MonoBehaviour {

	public int FullHealth;
	private int health;
	// Use this for initialization
	void Start () {
		health = FullHealth;
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void Hit(int damage) {
		int newHealth = health - damage;

		if (newHealth > 0) {
			health = newHealth;	
		
		}
		// Player Died;
		else {
			print ("Died");
		}
	}

	public void Recover(int toBeRecovered) {
		if (FullHealth > health + toBeRecovered) {
			health = FullHealth;
		} else {
			health += toBeRecovered;
		}
	}
}
