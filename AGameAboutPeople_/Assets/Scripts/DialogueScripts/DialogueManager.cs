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

    private Story currentStory;
    private static DialogueManager instance;

    private void Awake()
    {
        if (instance != null)
        {
            Debug.LogWarning("Multiple dialogue managers.");
        }
        instance = this;
    }

    private void Start()
    {
        dialoguePanel.SetActive(false);
    }

    private void Update()
    {
        if (Input.anyKeyDown)
        {
            this.ContinueStory();
        }
    }



    public void EnterDialogue(TextAsset inkJSON)
    {
        currentStory = new Story(inkJSON.text);
        dialoguePanel.SetActive(true);

        this.ContinueStory();
    }

    private void ContinueStory()
    {
        if (currentStory.canContinue)
        {
            dialogueText.text = currentStory.Continue();
        } else
        {
            ExitDialogue();
        }
    }

    private void ExitDialogue()
    {
        dialoguePanel.SetActive(false);
        dialogueText.text = "";
    }
}
