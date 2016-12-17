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

		private void Start()
		{
			// get the components on the object we need ( should not be null due to require component so no need to check )
			agent = GetComponentInChildren<NavMeshAgent>();
			character = GetComponent<ThirdPersonCharacter>();
			activeTargetIndex = 0;
			activeTarget = targets [activeTargetIndex];

			if (activeTarget != null)
				agent.SetDestination(activeTarget.position);


			agent.updateRotation = false;
			agent.updatePosition = true;
		}


		private void Update()
		{
		//	if (activeTarget != null)
		//		agent.SetDestination(activeTarget.position);

		//	print ("Remaining Distance: " + agent.remainingDistance);	
			if (agent.remainingDistance > agent.stoppingDistance)
				character.Move (agent.desiredVelocity, false, false);
			else {
				nextTarget ();
				print ("Active Target" + activeTarget);
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
	}
}
