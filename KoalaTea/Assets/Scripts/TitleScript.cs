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
    public Text title;
    public Text playB;

    public List<Texture> chars = new List<Texture>();
    public List<Texture> bgs = new List<Texture>();
    public List<AudioClip> clips = new List<AudioClip>();
    public List<Color> titleC = new List<Color>();
    public List<Color> playC = new List<Color>();

    public Color[] titleColors = new Color[4];
    public Color[] playColors = new Color[4];

    int rand;

    public Button play;
    public Text titleT;

    void Start()
    {

        character.GetComponent<RawImage>();
        bg.GetComponent<RawImage>();
        audioS = this.GetComponent<AudioSource>();

        rand = Random.Range(0, 4);

        bg.texture = bgs[rand];
        character.texture = chars[rand];

        audioS.clip = clips[rand];
        audioS.Play();

        play.gameObject.GetComponent<Image>().color = playColors[rand];
        titleT.color = titleColors[rand];

        Debug.Log(chars[rand]);

        play.onClick.AddListener(TaskOnClick);
    }

    void TaskOnClick()
    {
        Debug.Log("load gameplay scene");
        //SceneManager.LoadScene();
    }
}
