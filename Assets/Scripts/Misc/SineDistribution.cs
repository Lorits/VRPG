using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class SineDistribution : MonoBehaviour
{
    public float distFactor = 1.0f;
    public float xSize = 0.06f;
    public int num = 64;
    public int cutOff;
    public float exp = 2;
    public float expMult = 0.005f;
    void Start()
    {
        Transform result;
        float distlog = 0.0f;
        float dist = xSize+0.01f*distFactor;
        for (int i = 1; i <= num; i++)
        {
            string cyl;

            cyl = "Cylinder (" + i.ToString()+")";
            result = gameObject.transform.Find(cyl);

            if (result)
            {
                float rot = Mathf.Rad2Deg * 0.7f * Mathf.Cos(Mathf.PI + (float)-i / 2.0f);
                float mov = 0.05f * Mathf.Sin((float)-i / 2.0f);
                float xmov = (float)-i * dist;
                int beginCurve = cutOff;
                if (i > beginCurve)
                {
                    mov = 0.05f * Mathf.Sin((float)-beginCurve / 2.0f) + Mathf.Pow(i- beginCurve, 2) * 0.002f;
                    rot = 45.0f;
                    
                    xmov = -beginCurve * dist - distlog - dist*(Mathf.Max((1.0f-(Mathf.Pow((float)i - (float)beginCurve, exp) * expMult)),0.0f));
                    distlog += dist*(Mathf.Max((1.0f - (Mathf.Pow((float)i - (float)beginCurve, exp) * expMult)), 0.0f));
                }
                result.localPosition = new Vector3(xmov, 1.060773f, mov );
                result.Rotate(Vector3.up, rot);
                
            }
            else
            {
            }
        }
    }
}