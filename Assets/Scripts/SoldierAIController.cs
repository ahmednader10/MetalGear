using System;
using UnityEngine;

namespace UnityStandardAssets.Characters.ThirdPerson
{

	[RequireComponent(typeof (NavMeshAgent))]
	[RequireComponent(typeof (ThirdPersonCharacter))]
	public class SoldierAIController : MonoBehaviour
	{
		public NavMeshAgent agent { get; private set; }             // the navmesh agent required for the path finding
		public ThirdPersonCharacter character {
			get; private set; } // the character we are controlling
		public Transform[] targets;                                    // target to aim for
		private Transform activeTarget;
		private int activeTargetIndex;

		private RaycastHit hit;
		private float fov = 60.0f;
		private GameObject player;
		private bool investgatingPlayer;
		private Vector3 lastSeenPosition;

		public GameObject gun;
		public float gunCoolDown = 1;
		private float coolingDown;

		private void Start()
		{
			// get the components on the object we need ( should not be null due to require component so no need to check )
			agent = GetComponentInChildren<NavMeshAgent>();
			character = GetComponent<ThirdPersonCharacter>();
			player = GameObject.FindGameObjectWithTag ("Player");
			activeTargetIndex = 0;
			activeTarget = targets [activeTargetIndex];
			coolingDown = gunCoolDown;


			if (activeTarget != null)
				agent.SetDestination(activeTarget.position);


			agent.updateRotation = false;
			agent.updatePosition = true;
		}


		private void Update()
		{
			bool playerInSight = LineOfSight (player.transform);

			if (playerInSight) {
				investgatingPlayer = true;
				lastSeenPosition = player.transform.position;
				Shoot ();
			}

			manageGunCoolDown ();

			if (investgatingPlayer) {
				agent.SetDestination (lastSeenPosition);

				if (agent.remainingDistance > agent.stoppingDistance) {
					character.Move (agent.desiredVelocity, false, false);
				} else {
					investgatingPlayer = false;
					nextTarget ();
				}

			} else {

				if (agent.remainingDistance > agent.stoppingDistance)
					character.Move (agent.desiredVelocity, false, false);
				else {
					nextTarget ();
					print ("Active Target" + activeTarget);
				}

			}

		}

		public void nextTarget() {
			if (activeTargetIndex == targets.Length - 1) {
				activeTargetIndex = 0;
			} else {
				activeTargetIndex += 1;
			}

			activeTarget = targets [activeTargetIndex];
			agent.SetDestination(activeTarget.position);
		}

		public void SetTarget(Transform target)
		{
			this.activeTarget = target;
		}

		public bool LineOfSight(Transform target) {
			if (Vector3.Angle (target.position - transform.position, transform.forward) <= fov &&
				Physics.Linecast(transform.position, target.position, out hit) &&
				hit.collider.transform == target ) {
				return true;
			}

			return false;
		}


		public void Shoot() {
			if (gun) {

				if (coolingDown <= 0) {
					GunLaserScript gunControls = gun.GetComponent<GunLaserScript> ();
					gunControls.Shoot ();
					Vector3 forward = gun.transform.TransformDirection (Vector3.forward);
					int ShotLength = gunControls.ShotLength;
					int RayStrength = gunControls.RayStrength;
					RaycastHit hit; 

					if (Physics.Raycast (transform.position, forward, out hit, ShotLength)) { 
						GunShot (gunControls, hit);
					}
					coolingDown = gunCoolDown;
				}
			}
		}

		private void GunShot(GunLaserScript gunControls, RaycastHit hit) {

			if(hit.collider.gameObject.tag == "Player"){ 
				GameObject player = hit.collider.gameObject;
				HealthScript playerHealthScript = player.GetComponent<HealthScript> ();
				if (playerHealthScript ) {
					playerHealthScript.Hit (gunControls.damage);
				}
			}

			if(hit.rigidbody){
				hit.rigidbody.AddForceAtPosition(transform.forward * gunControls.RayStrength,hit.point);
			}
		}

		private void manageGunCoolDown() {
			if (coolingDown >= 0) {
				coolingDown -= Time.deltaTime;
			}
		}
	}
}
