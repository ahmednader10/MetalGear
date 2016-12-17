using UnityEngine;
using System.Collections;

public class LineOfSightScript : MonoBehaviour {

	private float fov = 60.0f;
	private RaycastHit hit;

	private GameObject player;
	// Use this for initialization
	void Start () {
		player = GameObject.FindGameObjectWithTag ("Player");

	}
		
	// Update is called once per frame
	void Update () {
//		LineOfSight (player.transform);
	}
		
}
