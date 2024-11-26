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
    [SerializeField] private TextAsset inkJSON;
    private bool canPressButtonE;
    private bool canAdvToNextRun;
    private int runNumber;

    private Story currentStory;
    private static DialogueManager instance;

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
        canAdvToNextRun = false;
        betweenRunsPanel.SetActive(false);

        choicesText = new TextMeshProUGUI[choices.Length];
        int index = 0;
        foreach (GameObject choice in choices)
        {
            choicesText[index] =
                choice.GetComponentInChildren<TextMeshProUGUI>();
            index++;
        }

        EnterDialogue();
    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.E) && canPressButtonE)
        {
            ContinueStory();
        }

        if (Input.GetKeyDown(KeyCode.A))
        {
            EnterDialogue();
        }
    }


    public void EnterDialogue()
    {
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
            DisplayChoices();
            canPressButtonE = true;
        } else
        {
            ExitDialogue();
        }
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
        betweenRunsText.text = "Run: " + runNumber + "/10.";
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
}

