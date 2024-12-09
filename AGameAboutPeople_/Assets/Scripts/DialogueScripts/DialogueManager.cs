using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using Ink.Runtime;

public class DialogueManager : MonoBehaviour
{

    [Header("Dialogue UI")]
    [SerializeField] private GameObject dialoguePanel;
    [SerializeField] private TextMeshProUGUI dialogueText;
    [SerializeField] private GameObject betweenRunsPanel;
    [SerializeField] private TextMeshProUGUI betweenRunsText;
    [SerializeField] private GameObject startingPanel;
    [SerializeField] private TextMeshProUGUI startingText;
    [SerializeField] private TextAsset inkJSON;
    [SerializeField] private GameObject gameWonPanel;
    private bool canPressButtonE;
    private int runNumber;

    private Story currentStory;
    private static DialogueManager instance;

    Color abbyColor = new Color(0.733f, 0.478f, 0.769f);
    Color playerColor = new Color(0.471f, 0.694f, 0.761f);

    [Header("Choices UI")]
    [SerializeField] private GameObject[] choices;
    private TextMeshProUGUI[] choicesText;
    [SerializeField] private GameObject promptNextLineDialogue;

    private void Awake()
    {
        if (instance != null)
        {
            Debug.LogWarning("Multiple dialogue managers.");
        }
        instance = this;
        runNumber = 0;
    }

    private void Start()
    {
        dialoguePanel.SetActive(false);
        canPressButtonE = false;
        betweenRunsPanel.SetActive(false);
        gameWonPanel.SetActive(false);

        choicesText = new TextMeshProUGUI[choices.Length];
        int index = 0;
        foreach (GameObject choice in choices)
        {
            choicesText[index] =
                choice.GetComponentInChildren<TextMeshProUGUI>();
            index++;
        }

        startingPanel.SetActive(true);
    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.E) && canPressButtonE)
        {
            ContinueStory();
        }
    }


    public void EnterDialogue()
    {
        startingPanel.SetActive(false);
        betweenRunsPanel.SetActive(false);
        betweenRunsText.text = "";
        currentStory = new Story(inkJSON.text);
        dialoguePanel.SetActive(true);
        ContinueStory();
    }

    private void ContinueStory()
    {
        if (currentStory.canContinue)
        {
            dialogueText.text = currentStory.Continue();

            if (currentStory.currentTags.Contains("Win"))
            {
                winConditionEnd();

            } else if (currentStory.currentTags.Contains("Abby"))
            {
                dialogueText.color = abbyColor;
                dialogueText.fontStyle = FontStyles.Italic;
                dialogueText.fontStyle = FontStyles.Bold;
            }
            else
            {
                dialogueText.color = playerColor;
                dialogueText.fontStyle = FontStyles.Bold;
            }
            DisplayChoices();
            canPressButtonE = true;
        } else
        {
            ExitDialogue();
        }
    }

    private void winConditionEnd()
    {
        dialoguePanel.SetActive(false);
        dialogueText.text = "";

        gameWonPanel.SetActive(true);
    }

    private void ExitDialogue()
    {
        dialoguePanel.SetActive(false);
        dialogueText.text = "";

        resetDialogue();
    }

    private void resetDialogue()
    {
        currentStory.ResetState();
        runNumber++;
        betweenRunsPanel.SetActive(true);
        betweenRunsText.text = "Run: " + runNumber + " out of 10.";
    }

    private void DisplayChoices()
    {
        List<Choice> currentChoices = currentStory.currentChoices;

        if (currentChoices.Count > choices.Length)
        {
            Debug.LogError("Too many choices");
        }

        int index = 0;
        foreach(Choice choice in currentChoices)
        {
            choices[index].gameObject.SetActive(true);
            choicesText[index].text = choice.text;

            if (!currentStory.currentTags.Contains("Abby"))
            {

                choicesText[index].color = abbyColor;
                choicesText[index].fontStyle = FontStyles.Italic;
                dialogueText.fontStyle = FontStyles.Bold;
            }
            else
            {
                choicesText[index].color = playerColor;
                choicesText[index].fontStyle = FontStyles.Bold;
            }

            index++;
        }

        if (index == 0)
        {
            promptNextLineDialogue.SetActive(true);
        } else
        {
            promptNextLineDialogue.SetActive(false);
        }

        for (int i = index; i < choices.Length; i++)
        {
            choices[i].gameObject.SetActive(false);
        }
    }


    public void MakeChoice(int choiceIndex)
    {
        currentStory.ChooseChoiceIndex(choiceIndex);
        ContinueStory();
    }

    public void firstStart()
    {
        EnterDialogue();
    }
}

