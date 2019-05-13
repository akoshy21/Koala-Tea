using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
    public bool talkedBruce = false;
    public bool talkedSusan = false;
    public bool talkedRoo = false;
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

    public void StartGame()
    {
        SceneManager.LoadScene("playercafe4");
    }
}
