using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TextEffects : MonoBehaviour
{
    private Text txt;
    private string line;
    private bool complete = false;
    public float txtspeed;


    //makes text appear letter by letter
    IEnumerator AnimateText(string line)
    {
        int i = 0;
        string str = "";

        while (i < line.Length)
        {
            str += line[i++];
            yield return new WaitForSeconds(txtspeed);
            txt.text = str;
        }

        if (i >= line.Length)
        {
            //enum has gone through entire string
            complete = true;
        }
    }

    void Start()
    {
        txt = GetComponent<Text>();
        line = "hi annamaria";

        StartCoroutine(AnimateText(line));
    }

    void Update()
    {
       // txt.text = line;

       // for (int i = 0; i < line.Length; i++)
      //  {
           
      //  }
    }
}
