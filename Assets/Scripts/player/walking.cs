using UnityEngine;
using System.Collections;

public class walking : MonoBehaviour
{

    private Animator anim;
    private float Speed;
    // Use this for initialization
    void Start()
    {
        Speed = 0;
        anim = GetComponent<Animator>();
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKey(KeyCode.W))
        {
            Speed += 0.1f;
        }
        else
        {
            if (Speed > 0)
            {
                Speed -= 0.2f;
            }
            else
            {
                Speed = 0f;
            }
        }
        anim.SetFloat("Speed", Speed);
        transform.Translate(Vector3.forward * Speed / 120);
    }
}

/*using UnityEngine;
using System.Collections;

public class walking : MonoBehaviour {

    private Animator anim;
    private float v; //vertical movements
    private float h; //horizontal movements
    private float sprint;

    // Use this for initialization
    void Start()
    {
        anim = GetComponent<Animator>();
    }

    void Update()
    {
        v = Input.GetAxis("Vertical");
        h = Input.GetAxis("Horizontal");
        Sprinting();
    }
    // Update is called once per frame
    void FixedUpdate()
    {
        anim.SetFloat("Walk", v);
        anim.SetFloat("Turn", h);
        anim.SetFloat("Sprint", sprint);
     
    }

    void Sprinting()
    {
        if (Input.GetButton("Fire1"))
        {
            sprint = 0.2f;
        }
        else
        {
            sprint = 0.0f;
        }
    }
}*/
