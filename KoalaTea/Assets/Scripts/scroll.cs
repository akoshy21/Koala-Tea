using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class scroll : MonoBehaviour
{
    public Vector3 start;
    public Vector3 end;
    private float speed = .15f;

    private RectTransform myR;

    void Start()
    {
        myR = GetComponent<RectTransform>();  
    }

    void Update()
    {
        myR.localPosition = Vector3.Lerp(myR.localPosition, end, speed * Time.deltaTime);
        
        if (Input.GetKey("space"))
        {
            speed = speed * 1.1f;
        }
        else
        {
            speed = .1f;
        }

        if (myR.localPosition.y.Equals(1370))
        {
            SceneManager.LoadScene("title screen 1", LoadSceneMode.Single);
        }
    }

}
