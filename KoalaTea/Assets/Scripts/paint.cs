using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class paint : MonoBehaviour
{
    public Transform baseDot;
    public KeyCode mouseLeft;
    public static string toolType;
    
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        Vector3 mousePosition = new Vector3(Input.mousePosition.x, Input.mousePosition.y, Input.mousePosition.z + 10);
        Vector2 objPosition = Camera.main.ScreenToWorldPoint(mousePosition);

        if (Input.GetKey(mouseLeft) && toolType != "eraser")
        {
            Instantiate(baseDot, objPosition, baseDot.rotation);
        }

    }
}
