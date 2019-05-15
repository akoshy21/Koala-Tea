using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
    public bool talkedBruce = false;
    public bool talkedSusan = false;
    public bool talkedRoo = false;

    //AuroraBlue MiniGame code:
   /* public Sprite[] cardFace;
    public Sprite cardBack;
    public GameObject[] cards;
    public Text matchText;

    private bool _init = false;
    private int _matches = 13;
    */
    
    //end aurora blue minigame
    
//>>>>>>> 7e1fa792bda1e85e0cf2be0e783179a89a07dafc
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
//aurora minigame
    /*
    void Update()
    {
        if (!GameManagerMiniGames.instance._init)
            GameManagerMiniGames.instance.initializeCards();
        if (Input.GetMouseButtonUp(0))
            checkCards();
    }

    void initializedCards()
    {
        for (int id = 0; id < 2; id++)
        {
            for (int i = 1; i < 14; i++)
            {
                bool test = false;
                int choice = 0;
                while (!test)
                {
                    choice = Random.Range(0, cards.Length);
                    test = !(cards[choice].GetComponent<Card>().initialized);
                }

                cards[choice].GetComponent<Card>().cardValue = i;
                cards[choice].GetComponent<Card>().initialized = true;
            }
        }

        foreach (GameObject c in cards)
            c.GetComponent<Card>().setupGraphics();
        if (!_init)
            _init = true;
    }

    public Sprite getCardBack()
    {
        return cardBack;
    }

    public Sprite getCardFace(int i)
    {
        return cardFace[i - 1];
    }

    void checkCards()
    {
        List<int> c = new List<int>();
        for (int i = 0; i < cards.Length; i++)
        {
            if (cards[i].GetComponent<Card>().state == 1)
                c.Add(i);
        }

        if (c.Count == 2)
            cardComparison(c);
    }

    void cardComparison(List<int> c)
    {
        Card.DO_NOT = true;
        int x = 0;
        if(cards[c[0]].GetComponent<Card>().cardValue == cards [c[1]].GetComponent<Card>().cardValue)
        {
            x = 2;
            _matches--;
            matchText.text = "Number of Matches: " + _matches;
            if (_matches == 0)
                SceneManager.LoadScene("memory game");
            
        }

        for (int i = 0; i < c.Count; i++)
        {
            cards[c[i]].GetComponent<Card>().state = x;
            cards[c[i]].GetComponent<Card>().falseCheck();
        }
    }*/
}
