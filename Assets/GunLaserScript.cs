using UnityEngine;
using System.Collections;

/*public class GunLaserScript : MonoBehaviour {

	private GameObject tip;
	private GameObject endPointObject;
	private LineRenderer laser;
	public int range = 10;
	// Use this for initialization
	void Start () {
		tip = this.gameObject.transform.parent.;
		endPointObject = new GameObject ();
		endPointObject.transform.position = tip.transform.position;
		endPointObject.transform.Translate (Vector3.forward * range);
		laser = this.GetComponent<LineRenderer> ();
	}
	
	// Update is called once per frame
	void Update () {
		endPointObject.transform.position = tip.transform.position;
		endPointObject.transform.Translate (Vector3.forward * range);

		laser.SetPosition(0, new Vector3(tip.transform.position.x, tip.transform.position.z, tip.transform.position.z));
		laser.SetPosition(1, new Vector3(endPointObject.transform.position.x, endPointObject.transform.position.z, endPointObject.transform.position.z));
	}
}*/

public class GunLaserScript : MonoBehaviour {
// Shooting Script 
	public int TheDamage =100;
	public int ShotLength;
	public int RayStrength;
	public LineRenderer LaserLine;
	public Light LaserLight;
	private AudioSource blastAudio;
	public AudioClip M9_sound;


	void  Start(){
		LaserLine.enabled= false;
		//Screen.showCursor=false;
		//Screen.lockCursor=true;
		LaserLight.enabled = false;
		blastAudio = GetComponent<AudioSource>();

	}

	void  Update () { 
		RaycastHit hit; 
		Vector3 forward= transform.TransformDirection(Vector3.forward);

		if(Input.GetMouseButtonUp(1) && !PlayerControl.crawl && !box_script.isCovered){

			// Draw the Ray and Laser effects
			Debug.DrawRay(transform.position, forward * ShotLength,Color.blue);
			LaserLine.enabled= true;
			LaserLight.enabled= true;
			blastAudio.PlayOneShot (M9_sound);

			// Draw raycast and test for a hit
			if(Physics.Raycast(transform.position, forward, out hit, ShotLength)){ 
				if(hit.collider.gameObject.tag == "Enemy"){ 
					Debug.Log("Hit"); 
					hit.transform.SendMessage("ApplyDamage",TheDamage,SendMessageOptions.DontRequireReceiver); 
				}
				if(hit.rigidbody){
					hit.rigidbody.AddForceAtPosition(transform.forward * RayStrength,hit.point);
				}
			}

		}
		// turn off the laser and effects
		else {
			LaserLine.enabled= false;
			LaserLight.enabled=false;
		}
}
}
