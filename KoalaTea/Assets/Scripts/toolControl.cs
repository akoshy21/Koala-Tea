using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;


public class toolControl : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void OnMouseDown()
    {
        if (gameObject.name == "icon eraser")
        {
            paint.toolType = "eraser";
            Debug.Log("eraser clicked");
        }
        if (gameObject.name == "icon pencil")
        {
            paint.toolType = "pencil";
            Debug.Log("pencil clicked");
        }
    }
    
    public void triggerFinishedBehavior (int i){
        switch (i)
        {
            default:
            case(0):
                SceneManager.LoadScene("MatchaMade");
                break;
            
        }
    }
}
