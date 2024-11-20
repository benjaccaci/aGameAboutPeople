using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class UIScript : MonoBehaviour
{

    [SerializeField]
    private TMP_Text PeopleRemaining;

    public static int p_remain;

    void Start(){
        p_remain = 10;
    }

    // Update is called once per frame
    void Update()
    {
        PeopleRemaining.text = "Remaining Tries: " + p_remain;
    }
}
