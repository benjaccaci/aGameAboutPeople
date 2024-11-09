using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class UIScript : MonoBehaviour
{

    [SerializeField]
    private TMP_Text PeopleRemaining;

    [SerializeField]
    private TMP_Text Successes;

    public static int suc;
    public static int p_remain;

    void Start(){
        suc = 0;
        p_remain = 3;
    }

    // Update is called once per frame
    void Update()
    {
        PeopleRemaining.text = "Remaining People: " + p_remain;
        Successes.text = "Succeses: " + suc;
    }
}
