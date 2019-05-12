using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
    public static GameManager manager;
    public string storyState;

    private void Awake()
    {
        if(manager != null && manager != this)
        {
            Destroy(gameObject); 
        }
        else
        {
            manager = this;
            DontDestroyOnLoad(this);
        }
    }
}
