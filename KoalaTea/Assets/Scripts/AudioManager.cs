using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioManager : MonoBehaviour
{

    public int index;
    public bool play;

    public AudioClip[] audioClips;
    public AudioSource[] sourceManager;

    private void Awake()
    {
        sourceManager = GetComponents<AudioSource>();
    }

    private void Update()
    {
        if(play)
        {
            PlayClip(index);
        }
    }

    public void PlayClip(int num)
    {
        Debug.Log("PLaying clip " + index);
        sourceManager[1].PlayOneShot(audioClips[num]);
        play = false;
    }
}
