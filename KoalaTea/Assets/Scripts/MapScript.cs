using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MapScript : MonoBehaviour
{
    public Button home;
    public Button matcha;
    public Button rooibos;

    void Start()
    {
        home.onClick.AddListener(goHome);
        rooibos.onClick.AddListener(goRooibos);
        matcha.onClick.AddListener(goMatcha);
    }

    void goHome()
    {
        Debug.Log("u go home");
    }

    void goRooibos()
    {
        Debug.Log("u go to rooibos");
    }

    void goMatcha()
    {
        Debug.Log("u go to matcha");
    }
}
