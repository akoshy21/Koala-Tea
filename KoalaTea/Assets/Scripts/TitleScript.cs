using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class TitleScreen
{
    public Texture chara;
    public Texture bg;
    public Color titleC;
    public Color playC;
    public AudioClip music;

    public TitleScreen(Texture Chara, Texture Bg, Color TitleC, Color PlayC, AudioClip Music)
    {
        chara = Chara;
        bg = Bg;
        titleC = TitleC;
        playC = PlayC;
        music = Music;
    }
}

public class TitleScript : MonoBehaviour
{
    public RawImage character;

    private List<Texture> chars = new List<Texture>();

    public Texture char1;
    public Texture char2;
    public Texture char3;
    int rand;

    public Button play;

    void Start()
    {

        character.GetComponent<RawImage>();

        chars.Add(char1);
        chars.Add(char2);
        chars.Add(char3);

        rand = Random.Range(0, 3);

        character.texture = chars[rand];


        Debug.Log(chars[rand]);

        play.onClick.AddListener(TaskOnClick);
    }

    void TaskOnClick()
    {
        Debug.Log("load gameplay scene");
        //SceneManager.LoadScene();
    }
}
