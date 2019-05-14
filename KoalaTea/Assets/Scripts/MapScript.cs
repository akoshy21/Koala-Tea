using System.Collections;
using System.Collections.Generic;
//using NUnit.Framework.Interfaces;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

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
        //clickRooibos = false; 
    }

    void goHome()
    {
        Debug.Log("u go home");
        SceneManager.LoadScene("AuroraBlue");
    }

    void goRooibos()
    {
        Debug.Log("u go to rooibos");
        SceneManager.LoadScene("RooibosBar");
        clickRooibos = true;
    }

    void goMatcha()
    {
        Debug.Log("u go to matcha");
        SceneManager.LoadScene("MatchaMade");
    }

}
