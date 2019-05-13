using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GiftManager : MonoBehaviour
{
    public BasicInkExample scnManager;

    public GameObject abAdGift, abMumGift, rbAdGift, rbMumGift, mmhAdGift, mmhMumGift;

    private void Start()
    {

        if (scnManager.auroraAd)
        {
            abAdGift.SetActive(true);
        }
        if (scnManager.auroraMum)
        {
            abMumGift.SetActive(true);
        }
        if (scnManager.rooibosAd)
        {
            rbAdGift.SetActive(true);
        }
        if (scnManager.rooibosMum)
        {
            rbMumGift.SetActive(true);
        }
        if (scnManager.matchaMum)
        {
            mmhMumGift.SetActive(true);
        }
        if (scnManager.matchaAd)
        {
            mmhAdGift.SetActive(true);
        }

    }
}
