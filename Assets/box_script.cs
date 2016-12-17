using UnityEngine;
using System.Collections;

public class box_script : MonoBehaviour {
	public GameObject cardboard;
	public static bool isCovered;
	private Animator animator;
	// Use this for initialization
	void Start () {
		isCovered = false;
		animator = GetComponent<Animator> ();
	}

	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown (KeyCode.C) && !isCovered) {
			cardboard.SetActive (true);
			isCovered = true;
			animator.enabled = false;
		} else {
			if (Input.GetKeyDown (KeyCode.C) && isCovered) {
				cardboard.SetActive (false);
				isCovered = false;
				animator.enabled = true;
			}
		}
	}
}
