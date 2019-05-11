using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Flicker : MonoBehaviour
{
   public Material lit;
   public Material unlit;
    bool blinking = false;
    public GameObject spotlight;

    private void Update()
    {
        StartCoroutine(Blink());
    }

    IEnumerator Blink()
    { if (!blinking)
        { 
            blinking = true;
            this.GetComponent<Renderer>().material = unlit;
            spotlight.SetActive(false);
            yield return new WaitForSeconds(Random.Range(0.04f, 0.12f));
            this.GetComponent<Renderer>().material = lit;
            spotlight.SetActive(true);
            yield return new WaitForSeconds(Random.Range(0.04f, 0.12f));
            this.GetComponent<Renderer>().material = unlit;
            spotlight.SetActive(false);
            yield return new WaitForSeconds(Random.Range(0.04f, 0.12f));
            this.GetComponent<Renderer>().material = lit;
            spotlight.SetActive(true);
            yield return new WaitForSeconds(Random.Range(2, 9f));
            blinking = false;
        }
    }
}