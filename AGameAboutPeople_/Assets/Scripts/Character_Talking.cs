using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Character_Talking : MonoBehaviour
{
    private int current_state; //0 if not talked to, 1 if success, -1 if failure

    [SerializeField]
    private string talking_scene;

    // Start is called before the first frame update
    void Start()
    {
        current_state = 0;
    }

    void interacted_with(){
        if(current_state == 0){
            Debug.Log(talking_scene);
            Debug.Log("Should start here");
        } else if(current_state == 1){
            Debug.Log("You've already succeeded.");
        } else {
            Debug.Log("You've already failed.");
        }
    }
}