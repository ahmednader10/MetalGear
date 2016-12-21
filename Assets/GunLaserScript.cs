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
	public int damage = 100;
	public int ShotLength;
	public int RayStrength;
	public LineRenderer LaserLine;
	public Light LaserLight;
	private AudioSource blastAudio;
	public AudioClip M9_sound;

	private float shooting = 0.0f;
	private float shotTime = 0.05f;

	void  Start(){
		LaserLine.enabled= false;
		//Screen.showCursor=false;
		//Screen.lockCursor=true;
		LaserLight.enabled = false;
		blastAudio = GetComponent<AudioSource>();

	}

	void  Update () { 

		if(shooting > 0){
			shooting -= Time.deltaTime;
		}
		// turn off the laser and effects
		else {
			LaserLine.enabled= false;
			LaserLight.enabled=false;
			shooting = 0.0f;
		}
}

	public void Shoot() {
		shooting = shotTime;
		Vector3 forward= transform.TransformDirection(Vector3.forward);
		// Draw the Ray and Laser effects
		Debug.DrawRay(transform.position, forward * ShotLength,Color.blue);
		LaserLine.enabled= true;
		LaserLight.enabled= true;
//		blastAudio.PlayOneShot (M9_sound);
	}
}
