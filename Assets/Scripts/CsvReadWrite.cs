using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System;

public class CsvReadWrite : MonoBehaviour
{
    public Transform player;
    private List<string[]> objectLog = new List<string[]>();
    private List<string[]> durationLog = new List<string[]>();
    private List<string[]> positionLog = new List<string[]>();
    private List<string[]> teleportLog = new List<string[]>();

    private float startTime = 0;

    void Start()
    {
        // Press t to reset the time
        // Press s to save logs to .csv files

        // And attach the player object (whatever part if it moves) to this script

        // adds a folder inside Assets called "CSV" if it doesnt exist
        if (!Directory.Exists(Application.dataPath + "/CSV"))
        {
            Directory.CreateDirectory(Application.dataPath + "/CSV");
        }

        ObjectLogReset();
        DurationLogReset();
        PositionLogReset();
        TeleportLogReset();

        ResetTime();
    }

    private void PositionLogReset()
    {
        positionLog = new List<string[]>();
        string[] logtemp = new string[3];
        logtemp[0] = "Player position X";
        logtemp[1] = "Player position Y";
        logtemp[2] = "Seconds elapsed this session";
        positionLog.Add(logtemp);
    }

    private void ObjectLogReset()
    {
        objectLog = new List<string[]>();
        string[] objectLogTemp = new string[3];
        objectLogTemp[0] = "Object";
        objectLogTemp[1] = "Object Type";
        objectLogTemp[2] = "Seconds elapsed this session";
        objectLog.Add(objectLogTemp);
    }

    private void DurationLogReset()
    {
        durationLog = new List<string[]>();
        string[] durationLogTemp = new string[3];
        durationLogTemp[0] = "Object";
        durationLogTemp[1] = "Object type";
        durationLogTemp[2] = "Interaction duration";
        durationLog.Add(durationLogTemp);
    }

    private void TeleportLogReset()
    {
        teleportLog = new List<string[]>();
        string[] logtemp = new string[5];
        logtemp[0] = "Player position X";
        logtemp[1] = "Player position Y";
        logtemp[2] = "Teleport position X";
        logtemp[3] = "Teleport position Y";
        logtemp[4] = "Time of teleport";
        teleportLog.Add(logtemp);
    }


    private void ResetTime()
    {
        Debug.Log("Reset time");
        //Debug.Log("Real time: " + Time.time);
        //Debug.Log("Relative time was: " + (Time.time - startTime));

        startTime = Time.time;

        //Debug.Log("Relative time is now " + (Time.time - startTime));
    }
    private void Update()
    {
        if (Time.frameCount % 40 == 0) { //Position log update interval = every 40th frame
            String time = Time.time.ToString("F2"); // F2 means to 2 decimal places
            string[] logtemp = new string[3];
            // Player position can be normalized by dividing by 11.78
            logtemp[0] = player.position.x.ToString("F2");
            logtemp[1] = player.position.z.ToString("F2");
            logtemp[2] = time;
            positionLog.Add(logtemp);
            //Debug.Log(player.position.x.ToString("F2")+"," + player.position.z.ToString("F2"));
        }

        if (Input.GetKeyDown(KeyCode.T))
        {
            ResetTime();
        }
        if (Input.GetKeyDown(KeyCode.S))
        {
            var src = DateTime.Now;
            string t = (src.Day + src.ToString("MMM") + "_" + src.Hour + "-" + src.Minute + "-" + src.Second.ToString().PadLeft(2, '0'));
            //string newfolder = UnityEditor.AssetDatabase.CreateFolder(Application.dataPath + "/CSV/", t);
            string location = (Application.dataPath+"/CSV/" + t);
            var folder = Directory.CreateDirectory(location);

            Save(objectLog, "/Object_Log",location);
            ObjectLogReset();

            Save(durationLog, "/Duration_Log", location);
            DurationLogReset();

            Save(positionLog, "/Position_Log", location);
            PositionLogReset();

            Save(teleportLog, "/Teleport_Log", location);
            TeleportLogReset();

            Debug.Log("Exported logs");

        }
    }
    private string TagFinder(string tg)
    {
        string returnTag = tg;

        if (tg.Contains("heavy"))
        {
           returnTag = "drawer";
        }
        if (tg.Contains("burnable"))
        {
            returnTag = "magnify";
        }
        if (tg.Contains("padlock"))
        {
            returnTag = "lockedDoor";
        }
        return returnTag;
    }
    public void AddObject(string obj, string tg)
    {
        string time = (Time.time - startTime).ToString("F2");
        string[] objectLogTemp = new string[3];
        objectLogTemp[0] = obj;

        objectLogTemp[1] = TagFinder(tg);

        objectLogTemp[2] = time;

        objectLog.Add(objectLogTemp);
    }
    public void AddObjectDuration(string obj, string tg, float t)
    {
        String time = t.ToString("F2");
        string[] durationLogTemp = new string[3];
        durationLogTemp[0] = obj;
        durationLogTemp[1] = TagFinder(tg);
        durationLogTemp[2] = time;

        durationLog.Add(durationLogTemp);
    }
    public void AddTeleport(float telX, float telY)
    {
        String time = Time.time.ToString("F2");
        string[] logtemp = new string[5];
        // Player position can be normalized by dividing by 11.78
        logtemp[0] = player.position.x.ToString("F2");
        logtemp[1] = player.position.z.ToString("F2");
        logtemp[2] = telX.ToString("F2");
        logtemp[3] = telY.ToString("F2");
        logtemp[4] = time;
        teleportLog.Add(logtemp);
    }
    void Save(List<string[]> rowData, string filename, string location)
    {

        string[][] output = new string[rowData.Count][];

        for (int i = 0; i < output.Length; i++)
        {
            output[i] = rowData[i];
        }

        int length = output.GetLength(0);
        string delimiter = ",";

        StringBuilder sb = new StringBuilder();

        for (int index = 0; index < length; index++)
            sb.AppendLine(string.Join(delimiter, output[index]));

        StreamWriter outStream = System.IO.File.CreateText(location + filename + ".csv");
        outStream.WriteLine(sb);
        outStream.Close();
    }
}
