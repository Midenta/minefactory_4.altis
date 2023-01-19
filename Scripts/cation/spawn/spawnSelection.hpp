/*
File: spawnSelection.hpp
Author: Bryan Tonic Boardwine
Edit: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
Licence: THE EDITED LINES ARE THE MINDSET OF CATIONSTUDIO
AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
Description:
Dialog for spawn menu
*/
class cat_spawn_selection {
  idd = 38500;
  name = "cat_spawn_selection";
  movingenable = false;
  enablesimulation = true;
  class controlsBackground
  {
    class TitleBackground : Cat_RscText
    {
      colorbackground[] = {0,0,0,0.788235294117647};
      x = -0.00826065891472867 * safezoneW + safezoneX;
      y = -0.191557935735151 * safezoneH + safezoneY;
      h = 1.51314508276534 * safezoneH;
      w = 0.241073158914729 * safezoneW;
      idc = 1000;
    };
    class MapBackground : Cat_RscText
    {
      colorbackground[] = {0,0,0,0.788235294117647};
      x = 0.771354166666667 * safezoneW + safezoneX;
      y = 0.0511773969207576 * safezoneH + safezoneY;
      h = 0.393246187363834 * safezoneH;
      w = 0.227301356589147 * safezoneW;
      idc = 1000;
    };
    class Title : Cat_RscText
    {
      text = "$STR_Spawn_Title";
      x = 0.015189996124031 * safezoneW + safezoneX;
      y = 0.035699645165145 * safezoneH + safezoneY;
      h = 0.037 * safezoneH;
      w = 0.199914170542636 * safezoneW;
      idc = 1000;
    };
    class SpawnPointTitle : Cat_RscText
    {
      idc = 38501;
      x = 0.775307578740158 * safezoneW + safezoneX;
      y = 0.0573362272385606 * safezoneH + safezoneY;
      h = 0.037 * safezoneH;
      w = 0.220961279786974 * safezoneW;
    };
    class MapView : Cat_RscMapControl
    {
      idc = 38502;
      x = 0.77583251312336 * safezoneW + safezoneX;
      y = 0.104174931179151 * safezoneH + safezoneY;
      w = 0.21979490935726 * safezoneW;
      h = 0.328976034858388 * safezoneH;
      widthRailWay = 1;
    };
  };
  class controls
  {
    class spawnButton : Cat_RscButton
    {
      text = "$STR_Spawn_Spawn";
      x = 0.015189996124031 * safezoneW + safezoneX;
      y = 0.550718670103289 * safezoneH + safezoneY;
      w = 0.199914170542636 * safezoneW;
      h = 0.0305861010748995 * safezoneH;
      idc = -1;
      onbuttonclick = "spawn_camera cameraEffect [""terminate"",""back""]; camDestroy spawn_camera; [] spawn husky_fnc_spawnConfirm;";
      colorbackground[] = {0,0.705882352941177,1,1};
      colorbackgrounddisabled[] = {0.905882352941176,0.498039215686275,0.00784313725490196,1};
      colorbackgroundactive[] = {1,1,1,0};
      class Attributes
      {
        font = "PuristaMedium";
        align = "center";
      };
    };
    class SpawnPointList : Cat_RscListBox
    {
      x = 0.015189996124031 * safezoneW + safezoneX;
      y = 0.0808058951518867 * safezoneH + safezoneY;
      w = 0.199914170542636 * safezoneW;
      h = 0.454734513806244 * safezoneH;
      idc = 38510;
      rowheight = 0.050;
      onlbselchanged = "_this call cat_spawn_fnc_spawnPointSelected;";
      colorbackground[] = {0,0,0,0.850980392156863};
    };
    class spawnLobby : Cat_RscButton
    {
      text = "Lobby";
      x = 0.015189996124031 * safezoneW + safezoneX;
      y = 0.590354466502472 * safezoneH + safezoneY;
      w = 0.199914170542636 * safezoneW;
      h = 0.0305861010748995 * safezoneH;
      idc = 1001;
      onButtonClick = "endMission 'END1';";
      colorbackground[] = {0,0.705882352941177,1,1};
      colorbackgrounddisabled[] = {0.905882352941176,0.498039215686275,0.00784313725490196,1};
      colorbackgroundactive[] = {1,1,1,0};
      class Attributes
      {
        font = "PuristaMedium";
        align = "center";
      };
    };
  };
};
