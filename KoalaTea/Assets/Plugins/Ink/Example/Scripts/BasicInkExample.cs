using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using Ink.Runtime;

// This is a super bare bones example of how to play and display a ink story in Unity.
public class BasicInkExample : MonoBehaviour {

    public int rooibosVisit;
    public int speaker; // 0 = mom, 1 = player, 2 = bbtd, 3 = sugar glider
    public GameObject next;
    public GameObject textBox;
    public Color playerColor;
    public Color bbtdColor;
    public Color momColor;
    public Color sgColor;
    public bool choiceScreen;

	void Awake () {
		// Remove the default message
		RemoveChildren();
		StartStory();
	}

    private void Start()
    {
        story.ObserveVariable("beenrooibos", (string varName, object newValue) => {
            rooibosVisit = (int)newValue;

        });
        story.ObserveVariable("speaker", (string varName, object newValue) => {
            speaker = (int)newValue;
        });
        story.ObserveVariable("choice", (string varName, object newValue) => {
            choiceScreen = (bool)newValue;
        });
    }

    private void Update()
    {
        Debug.Log(speaker);
        Debug.Log(rooibosVisit);

        for (int i = 0; i < story.currentChoices.Count; i++)
        {
            Choice choice = story.currentChoices[i];
            if (choice.text.Equals("NEXT"))
            {
                if(Input.anyKeyDown)
                {
                    OnClickChoiceButton(choice);
                }
            }
        }

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

                    Button button = CreateChoiceView(choice.text.Trim());
                    // Tell the button what to do when we press it
                    button.onClick.AddListener(delegate
                    {
                        OnClickChoiceButton(choice);
                    });
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
        switch(speaker)
        {
            case 0:
                textBox.GetComponent<Image>().color = momColor;
                break;
            case 1:
                textBox.GetComponent<Image>().color = playerColor;
                break;
            case 2:
                textBox.GetComponent<Image>().color = bbtdColor;
                break;
            case 3:
                textBox.GetComponent<Image>().color = sgColor;
                break;
        } 
    }

	[SerializeField]
	private TextAsset inkJSONAsset;
	private Story story;

	[SerializeField]
	private Canvas canvas;

	// UI Prefabs
	[SerializeField]
	private Text textPrefab;
	[SerializeField]
	private Button buttonPrefab;
}