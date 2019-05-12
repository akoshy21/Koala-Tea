using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class TitleScript : MonoBehaviour
{
    public RawImage character;
    public RawImage bg;
    private AudioSource audioS;

    public List<Texture> chars = new List<Texture>();
    public List<Texture> bgs = new List<Texture>();
    public List<AudioClip> clips = new List<AudioClip>();

    int rand;

    public Button play;

    void Start()
    {

        character.GetComponent<RawImage>();
        bg.GetComponent<RawImage>();
        audioS = GetComponent<AudioSource>();

        rand = Random.Range(0, 4);

        bg.texture = bgs[rand];
        character.texture = chars[rand];
        audioS.clip = clips[rand];

        Debug.Log(chars[rand]);

        play.onClick.AddListener(TaskOnClick);
    }

    void TaskOnClick()
    {
        Debug.Log("load gameplay scene");
        //SceneManager.LoadScene();
    }
}
