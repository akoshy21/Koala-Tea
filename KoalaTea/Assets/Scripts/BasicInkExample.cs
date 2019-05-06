using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using Ink.Runtime;

// This is a super bare bones example of how to play and display a ink story in Unity.
public class BasicInkExample : MonoBehaviour {

    public int speaker; // 0 = mom, 1 = player, 2 = bbtd, 3 = sugar glider

    public GameObject next;
    public GameObject textBox;

    public Color playerColor;
    public Color bbtdColor;
    public Color momColor;
    public Color sgColor;

    public Text name;

    public bool metBruce;
    public bool metSusan;
    public bool rooibosVisit;

    public AudioManager audioManager;

	void Awake () {
		// Remove the default message
		RemoveChildren();
		StartStory();
	}

    private void Start()
    {
        story.ObserveVariable("beenrooibos", (string varName, object newValue) => {
            rooibosVisit = intToBool((int)newValue);

        });
        story.ObserveVariable("speaker", (string varName, object newValue) => {
            speaker = (int)newValue;
        });

        story.ObserveVariable("metSusan", (string varName, object newValue) => {
            metSusan = (bool)newValue;
        });

        story.ObserveVariable("metBruce", (string varName, object newValue) => {
            metBruce = intToBool((int)newValue);
        });

        story.ObserveVariable("playSound", (string varName, object newValue) => {
            audioManager.play = intToBool((int)newValue);
        });

        story.ObserveVariable("soundIndex", (string varName, object newValue) => {
            audioManager.index = (int)newValue;
        });

        // ADD A LISTENER TO CHECK WHETHER WE'VE MET BRUCE / SUGAR GLIDER YET
    }

    private void Update()
    {
        UnityEngine.EventSystems.EventSystem.current.SetSelectedGameObject(null);

        //Debug.Log(speaker);
        //Debug.Log(rooibosVisit);
        //Debug.Log("DID WE MEET BRUCE? " + metBruce);


    }

    // Creates a new Story object with the compiled story which we can then play!
    void StartStory () {
		story = new Story (inkJSONAsset.text);
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
		RefreshView();
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
                name.text = "YOU";
                break;
            case 1:
                textBox.GetComponent<Image>().color = momColor;
                name.text = "MUM";
                break;
            case 2:
                textBox.GetComponent<Image>().color = bbtdColor;
                if (metBruce)
                {
                    name.text = "BRUCE";
                }
               else {
                    name.text = "TASMANIAN DEVIL";
                        }
                break;
            case 3:
                textBox.GetComponent<Image>().color = sgColor;
                if (metSusan)
                {
                    name.text = "SUSAN";
                }
                else
                {
                    name.text = "SUGAR GLIDER";
                         }
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

	[SerializeField]
	private TextAsset inkJSONAsset;
	private Story story;

	[SerializeField]
	private GameObject canvas;

	// UI Prefabs
	[SerializeField]
	private Text textPrefab;
	[SerializeField]
	private Button buttonPrefab;
}