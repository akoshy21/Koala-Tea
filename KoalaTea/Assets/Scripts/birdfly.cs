using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class birdfly : MonoBehaviour
{
    public float speed;

    private Vector3 startPOS;
    
    // Start is called before the first frame update
    void Start()
    {
        startPOS = transform.position;

    }

    // Update is called once per frame
    void Update()
    {
        transform.Translate((new Vector3(0, 0, 1)) *speed *Time.deltaTime);
    }
}
