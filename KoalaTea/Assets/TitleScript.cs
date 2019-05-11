using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class TitleScript : MonoBehaviour
{
    public RawImage bg;

    private List<Texture> cafe = new List<Texture>();

    public Texture cafe1;
    public Texture cafe2;
    public Texture cafe3;
    int rand;

    public Button play;

    void Start()
    {

        bg.GetComponent<RawImage>();

        cafe.Add(cafe1);
        cafe.Add(cafe2);
        cafe.Add(cafe3);

        rand = Random.Range(1, 3);
        bg.texture = cafe[rand];

        play.onClick.AddListener(TaskOnClick);
    }

    void TaskOnClick()
    {
        Debug.Log("load gameplay scene");
        //SceneManager.LoadScene();
    }
}
