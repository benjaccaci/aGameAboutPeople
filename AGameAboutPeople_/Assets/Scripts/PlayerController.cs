using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    Rigidbody2D rb;
    
    [SerializeField]
    float speed = 10f;

    GameObject interaction;


    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
    }

    void Update(){
        if(Input.GetKeyDown(KeyCode.E)){
            if(interaction != null){
                Debug.Log("E log");
                interaction.GetComponent<Character_Talking>().interact();
            }
        }
    }

    void FixedUpdate()
    {
        float moveHorizontal = Input.GetAxis("Horizontal");
        float moveVertical = Input.GetAxis("Vertical");

        Vector3 forceVector = new Vector3(moveHorizontal, moveVertical, 0.0f);

        rb.AddForce(forceVector * speed);
    }

    void OnCollisionEnter2D(Collision2D col){
        Debug.Log("Colliding");

        interaction = col.gameObject;
    }

    void OnCollisionExit2D(Collision2D col){
        Debug.Log("no longer colliding");
        interaction = null;
    }
}
