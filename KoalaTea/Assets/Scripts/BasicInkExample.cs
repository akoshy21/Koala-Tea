using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using Ink.Runtime;
using UnityEngine.SceneManagement;

// This is a super bare bones example of how to play and display a ink story in Unity.
public class BasicInkExample : MonoBehaviour {

    public GameObject next;
    public GameObject textBox;
    public GameObject mom;

    public Color playerColor;
    public Color bbtdColor;
    public Color momColor;
    public Color sgColor;
    public Color rooColor;

    public Text nameBox;

    public AudioManager audioManager;
    

	void Awake () {
		// Remove the default message
		RemoveChildren();
        if (firstScene)
        {
            StartStory();
        }
        else
        {
            LoadStory();
            Debug.Log(GameManager.manager.storyState);
        }
	}

    private void Start()
    {
        story.ObserveVariable("speaker", (string varName, object newValue) => {
            speaker = (int)newValue;
        });

        // WHO HAVE WE MET

        story.ObserveVariable("metSusan", (string varName, object newValue) => {
            metSusan = intToBool((int)newValue);
        });
        story.ObserveVariable("metBruce", (string varName, object newValue) => {
            metBruce = intToBool((int)newValue);
        });
        story.ObserveVariable("metRoo", (string varName, object newValue) => {
            metRoo = intToBool((int)newValue);
        });

        story.ObserveVariable("talkedSusan", (string varName, object newValue) => {
            GameManager.manager.talkedSusan = intToBool((int)newValue);
        });
        story.ObserveVariable("talkedBruce", (string varName, object newValue) => {
            GameManager.manager.talkedBruce = intToBool((int)newValue);
        });
        story.ObserveVariable("talkedRoo", (string varName, object newValue) => {
            GameManager.manager.talkedRoo = intToBool((int)newValue);
        });

        // AUDIO
        story.ObserveVariable("soundIndex", (string varName, object newValue) => {
            audioManager.index = (int)newValue;
        });
        story.ObserveVariable("playSound", (string varName, object newValue) => {
            audioManager.play = intToBool((int)newValue);
        });

        // WHAT HATH WE OBTAINED
       story.ObserveVariable("adviceRooibos", (string varName, object newValue) => {
            rooibosAd = intToBool((int)newValue);

        });
        story.ObserveVariable("adviceMatcha", (string varName, object newValue) => {
            matchaAd = intToBool((int)newValue);

        });
        story.ObserveVariable("adviceAurora", (string varName, object newValue) => {
            auroraAd = intToBool((int)newValue);

        });
        story.ObserveVariable("mumRooibos", (string varName, object newValue) => {
            rooibosMum = intToBool((int)newValue);

        });
        story.ObserveVariable("mumMatcha", (string varName, object newValue) => {
            matchaMum = intToBool((int)newValue);
            Debug.Log("MATCHA MOM");

        });
        story.ObserveVariable("mumAurora", (string varName, object newValue) => {
            auroraMum = intToBool((int)newValue);

        });
    }

    private void Update()
    {
        UnityEngine.EventSystems.EventSystem.current.SetSelectedGameObject(null);
        AddMom();

        //Debug.Log(speaker);
        //Debug.Log(rooibosVisit);
        //Debug.Log("DID WE MEET BRUCE? " + metBruce);


    }

    // Creates a new Story object with the compiled story which we can then play!
    void StartStory () {
		story = new Story (inkJSONAsset.text);
		RefreshView();
	}

    void LoadStory()
    {
        story = new Story(inkJSONAsset.text);
        story.state.LoadJson(GameManager.manager.storyState);
        RefreshView();
    }
	
	// This is the main function called every time the story changes. It does a few things:
	// Destroys all the old content and choices.
	// Continues over all the lines of text, then displays all the choices. If there are no choices, the story is finished!
	void RefreshView () {
		// Remove all the UI on screen
		RemoveChildren ();
        UpdateTextBox();
		
		// Read all the content until we can't continue any more
		while (story.canContinue) {
			// Continue gets the next line of the story
			string text = story.Continue ();
			// This removes any white space from the text.
			text = text.Trim();
			// Display the text on screen!
			CreateContentView(text);
		}

		// Display all the choices, if there are any!
		if(story.currentChoices.Count > 0) {
			for (int i = 0; i < story.currentChoices.Count; i++) {
				Choice choice = story.currentChoices [i];
                if (!choice.text.Equals("NEXT"))
                {
                    next.SetActive(false);

                    Button button = CreateChoiceView(choice.text.Trim());
                    // Tell the button what to do when we press it
                    button.onClick.AddListener(delegate
                    {
                        OnClickChoiceButton(choice);
                    });
                }
                else {
                    next.SetActive(true);
                }
			}
		}
		// If we've read all the content and there's no choices, the story is finished!
        else {
            Debug.Log("HELP");

            Button choice = CreateChoiceView("End of story.\nRestart?");

            choice.onClick.AddListener(delegate{
				StartStory();
			});
		}
	}

	// When we click the choice button, tell the story to choose that choice!
	void OnClickChoiceButton (Choice choice) {

		story.ChooseChoiceIndex (choice.index);

        if (!choice.text.Equals("Go to Rooibos Road")
         && !choice.text.Equals("Go to Matcha Made in Heaven")
         && !choice.text.Equals("Go to Aurora Blue Tea House")
         && !choice.text.Equals("Go Back Home")
         && !choice.text.Equals("Cake Game"))
          
        {
            RefreshView();
        }
        else
        {
            GameManager.manager.storyState = story.state.ToJson();
            if (choice.text.Equals("Go to Rooibos Road"))
            {
                ChangeScene(1);
            }
            else if (choice.text.Equals("Go to Matcha Made in Heaven"))
            {
                ChangeScene(2);
            }
            else if (choice.text.Equals("Go to Aurora Blue Tea House"))
            {
                Debug.Log("AB");
                ChangeScene(5);
            }
            else if (choice.text.Equals("Go Back Home"))
            {
                ChangeScene(4);
            }
            else if (choice.text.Equals("Cake Game"))
            {
                Debug.Log("game");
                ChangeScene(6);
            }
        }
	}

	// Creates a button showing the choice text
	void CreateContentView (string text) {
		Text storyText = Instantiate (textPrefab) as Text;
		storyText.text = text;
		storyText.transform.SetParent (canvas.transform, false);
	}

	// Creates a button showing the choice text
	Button CreateChoiceView (string text) {
		// Creates the button from a prefab
		Button choice = Instantiate (buttonPrefab) as Button;
		choice.transform.SetParent (canvas.transform, false);
		
		// Gets the text from the button prefab
		Text choiceText = choice.GetComponentInChildren<Text> ();
		choiceText.text = text;

		// Make the button expand to fit the text
		HorizontalLayoutGroup layoutGroup = choice.GetComponent <HorizontalLayoutGroup> ();
		layoutGroup.childForceExpandHeight = false;

		return choice;
	}

	// Destroys all the children of this gameobject (all the UI)
	void RemoveChildren () {
		int childCount = canvas.transform.childCount;
		for (int i = childCount - 1; i >= 0; --i) {
			GameObject.Destroy (canvas.transform.GetChild (i).gameObject);
		}
	}

    void UpdateTextBox()
    {
        Debug.Log("COLOR CHANGE");
        switch(speaker)
        {
            case 0:
                textBox.GetComponent<Image>().color = playerColor;
                nameBox.text = "YOU";
                break;
            case 1:
                textBox.GetComponent<Image>().color = momColor;
                nameBox.text = "MUM";
                break;
            case 2:
                textBox.GetComponent<Image>().color = bbtdColor;
                if (metBruce)
                {
                    nameBox.text = "BRUCE";
                }
               else {
                    nameBox.text = "TASMANIAN DEVIL";
                        }
                break;
            case 3:
                textBox.GetComponent<Image>().color = sgColor;
                if (metSusan)
                {
                    nameBox.text = "SUSAN";
                }
                else
                {
                    nameBox.text = "SUGAR GLIDER";
                         }
                break;
            case 4:
                textBox.GetComponent<Image>().color = rooColor;
                if (metRoo)
                {
                    nameBox.text = "MAMA ROO";
                }
                else
                {
                    nameBox.text = "KANGAROO";
                }
                break;
            default:
                break;

        } 
    }

    public void ClickArea()
    {
        for (int i = 0; i < story.currentChoices.Count; i++)
        {
            Choice choice = story.currentChoices[i];
            if (choice.text.Equals("NEXT"))
            {
                    OnClickChoiceButton(choice);
            }
        }
    }

    void AddMom()
    {
        if(audioManager.play && audioManager.index == 0 && SceneManager.GetActiveScene().name.Equals("playercafe4"))
        {
            mom.SetActive(true);
        }
    }

    bool intToBool(int val)
    {
        if (val == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    void CheckForSceneChange()
    {
         
    }
    void ChangeScene(int num)
    {
        switch (num) {
            case 1:
                SceneManager.LoadScene("RooibosBar");
                break;
            case 2:
                SceneManager.LoadScene("MatchaMade");
                break;
            case 3:
                SceneManager.LoadScene("KoalaTea");
                break;
            case 4:
                SceneManager.LoadScene("endscene");
                break;
            case 5:
                SceneManager.LoadScene("AuroraBlue");
                break;
            case 6:
                SceneManager.LoadScene("drawingGame");
                break;
            case 7:
                SceneManager.LoadScene("map test");
                break;
            default:
                break;
        }
    }

	[SerializeField]
	private TextAsset inkJSONAsset;
	private Story story;

	[SerializeField]
	private GameObject canvas;
    public bool metBruce = false;
    public bool metSusan = false;
    public bool metRoo = false;
    public bool rooibosAd;
    public bool auroraAd;
    public bool matchaAd;
    public bool rooibosMum;
    public bool matchaMum;
    public bool auroraMum;
    public bool firstScene;
    public int speaker; // 0 = mom, 1 = player, 2 = bbtd, 3 = sugar glider

    // UI Prefabs
    [SerializeField]
	private Text textPrefab;
	[SerializeField]
	private Button buttonPrefab;
}