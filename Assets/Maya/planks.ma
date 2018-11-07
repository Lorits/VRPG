//Maya ASCII 2017 scene
//Name: planks.ma
//Last modified: Mon, Nov 05, 2018 03:22:44 PM
//Codeset: UTF-8
requires maya "2017";
requires "mtoa" "3.1.0.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Mac OS X 10.14";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "F8CCC209-5F4A-F198-40B3-138BC561979C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.0305819546317991 -6.1144443034170379 -3.7161271593556888 ;
	setAttr ".r" -type "double3" 1910.6616472559501 700.99999999829151 -1.6819102043977172e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "C57524ED-064A-E5CD-2409-DCAD62CC3803";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 6.5080385380363923;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 5.2829627879561745 -0.02500000037252903 -1.5448834433475591 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "BB060882-1243-52CA-3169-369DEEBF884D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.88 1000.102006842549 -0.17444998025871961 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "E227C831-7841-C504-152A-C0AF938D8E71";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1270068425488;
	setAttr ".ow" 0.50553560756424976;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 1.88 -0.025 -0.17444998025894165 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "7BC21897-0242-2921-16D3-B0AAB21EC391";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "85A87B05-7C4E-567D-8E1C-D7824D7140C7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "B4418997-884A-4632-AC16-E391D84CA310";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1000034640604 0.025 0.079309986904485125 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "51DD5207-CC4F-E5C6-D6F3-D8A3E94B7021";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 998.11690478547132;
	setAttr ".ow" 1.0526315789473684;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 1.9830986785888671 0.025 0.079309986904263496 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Floor";
	rename -uid "185BC57B-DE44-2AC6-C43D-D7A078AFF13F";
createNode transform -n "RegularPlanks" -p "Floor";
	rename -uid "88485502-E64A-8B98-F293-02AFB06C3269";
createNode transform -n "floorPlank25" -p "RegularPlanks";
	rename -uid "05153506-B443-2B5B-05DB-338AB028155D";
	setAttr ".t" -type "double3" 5.5 0 0 ;
	setAttr ".s" -type "double3" 0.2 0.05 5 ;
createNode mesh -n "floorPlank25Shape" -p "floorPlank25";
	rename -uid "E1512354-4041-9C0D-5AEF-18BF458CF1A2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "floorPlank24" -p "RegularPlanks";
	rename -uid "9D49669E-7248-9CF9-6B3F-9DA10FB2381B";
	setAttr ".t" -type "double3" 2.4173843250630109 0 0 ;
	setAttr ".s" -type "double3" 0.2 0.05 5 ;
createNode mesh -n "floorPlank24Shape" -p "floorPlank24";
	rename -uid "DDEC8209-404F-2B8B-A721-9D94B33D90C8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "floorPlank23" -p "RegularPlanks";
	rename -uid "8CFD5FC6-7145-E737-0E8D-D18B847C2C93";
	setAttr ".t" -type "double3" 2.1973843250630112 0 0 ;
	setAttr ".s" -type "double3" 0.2 0.05 5 ;
createNode mesh -n "floorPlank23Shape" -p "floorPlank23";
	rename -uid "24B6A0DE-FA45-C99B-C3F8-4385B17CA030";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "floorPlank22" -p "RegularPlanks";
	rename -uid "5EEC4FCC-EE4E-4E6D-9C5A-0B8D0301658B";
	setAttr ".t" -type "double3" 1.9773843250630114 0 0 ;
	setAttr ".s" -type "double3" 0.2 0.05 5 ;
createNode mesh -n "floorPlank22Shape" -p "floorPlank22";
	rename -uid "D25BA49A-3740-66DC-0346-AE966519C2F0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "floorPlank21" -p "RegularPlanks";
	rename -uid "5432E988-D641-6C68-0B54-2E8EAC710708";
	setAttr ".t" -type "double3" 4.620000000000001 0 0 ;
	setAttr ".s" -type "double3" 0.2 0.05 5 ;
createNode mesh -n "floorPlank21Shape" -p "floorPlank21";
	rename -uid "654A484D-8F42-90DD-22B9-E4887E1D37B8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "floorPlank20" -p "RegularPlanks";
	rename -uid "6FED05BA-5B49-80E7-08E2-9884D5DC1D34";
	setAttr ".t" -type "double3" 4.4000000000000012 0 0 ;
	setAttr ".s" -type "double3" 0.2 0.05 5 ;
createNode mesh -n "floorPlank20Shape" -p "floorPlank20";
	rename -uid "C79D2D59-4441-7D9A-32B9-E29380C695ED";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "floorPlank19" -p "RegularPlanks";
	rename -uid "4A57EDA7-BF41-1F1F-BCFD-CC91606220F7";
	setAttr ".t" -type "double3" 4.1800000000000015 0 0 ;
	setAttr ".s" -type "double3" 0.2 0.05 5 ;
createNode mesh -n "floorPlank19Shape" -p "floorPlank19";
	rename -uid "34B49406-9647-31A7-8A96-B88491398042";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "floorPlank18" -p "RegularPlanks";
	rename -uid "83295DF2-D74B-0833-A321-6FAFC341B99E";
	setAttr ".t" -type "double3" 3.9600000000000017 0 0 ;
	setAttr ".s" -type "double3" 0.2 0.05 5 ;
createNode mesh -n "floorPlank18Shape" -p "floorPlank18";
	rename -uid "5FA3C138-6C44-6B07-A7D7-30A2F1A14672";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "floorPlank17" -p "RegularPlanks";
	rename -uid "C7D421A3-1A43-C384-FD71-418A0FD1F25D";
	setAttr ".t" -type "double3" 3.7400000000000015 0 0 ;
	setAttr ".s" -type "double3" 0.2 0.05 5 ;
createNode mesh -n "floorPlank17Shape" -p "floorPlank17";
	rename -uid "ACC19FDB-584A-BF14-CBDA-AAB8AC43AAAF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "floorPlank16" -p "RegularPlanks";
	rename -uid "A0C7DCE7-6447-6034-6B56-208036312572";
	setAttr ".t" -type "double3" 3.5200000000000014 0 0 ;
	setAttr ".s" -type "double3" 0.2 0.05 5 ;
createNode mesh -n "floorPlank16Shape" -p "floorPlank16";
	rename -uid "0E696332-A145-1777-08BE-208BD05E4325";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "floorPlank15" -p "RegularPlanks";
	rename -uid "5573658B-3142-D637-A299-4D9F537990D3";
	setAttr ".t" -type "double3" 3.3000000000000012 0 0 ;
	setAttr ".s" -type "double3" 0.2 0.05 5 ;
createNode mesh -n "floorPlank15Shape" -p "floorPlank15";
	rename -uid "34FA8474-F642-E2F3-ADE5-E387CC172E63";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "floorPlank14" -p "RegularPlanks";
	rename -uid "4516F5BA-684B-A3F4-6A0A-2494232D9EC8";
	setAttr ".t" -type "double3" 3.080000000000001 0 0 ;
	setAttr ".s" -type "double3" 0.2 0.05 5 ;
createNode mesh -n "floorPlank14Shape" -p "floorPlank14";
	rename -uid "9B457FD6-D24C-8EBA-CB3D-07974ECDF2E2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "floorPlank13" -p "RegularPlanks";
	rename -uid "2B51D7DF-2A4D-3EF5-B2A5-74BFB2C2329E";
	setAttr ".t" -type "double3" 2.8600000000000008 0 0 ;
	setAttr ".s" -type "double3" 0.2 0.05 5 ;
createNode mesh -n "floorPlank13Shape" -p "floorPlank13";
	rename -uid "C2441ED2-A64C-EE09-665C-B2B198A2FA85";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "floorPlank12" -p "RegularPlanks";
	rename -uid "3DC85D03-DB40-7959-DD8F-58AA5E50CC69";
	setAttr ".t" -type "double3" 2.6400000000000006 0 0 ;
	setAttr ".s" -type "double3" 0.2 0.05 5 ;
createNode mesh -n "floorPlank12Shape" -p "floorPlank12";
	rename -uid "B5C7D213-6946-78BD-98B0-EBA778142324";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "floorPlank8" -p "RegularPlanks";
	rename -uid "AEB9C395-4249-2D46-583E-09BCBFE65820";
	setAttr ".t" -type "double3" 1.76 0 0 ;
	setAttr ".s" -type "double3" 0.2 0.05 5 ;
createNode mesh -n "floorPlank8Shape" -p "floorPlank8";
	rename -uid "9FDF8E8A-194E-90B0-868A-D79D0B388ED7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "floorPlank7" -p "RegularPlanks";
	rename -uid "55A5D2F6-074D-0D73-BE92-60B6A448D293";
	setAttr ".t" -type "double3" 1.54 0 0 ;
	setAttr ".s" -type "double3" 0.2 0.05 5 ;
createNode mesh -n "floorPlank7Shape" -p "floorPlank7";
	rename -uid "BCE6CEB6-384F-97CC-E9DD-EDBD8130BC42";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "floorPlank6" -p "RegularPlanks";
	rename -uid "30470D30-9147-8374-4CB0-638036D7B2E7";
	setAttr ".t" -type "double3" 1.32 0 0 ;
	setAttr ".s" -type "double3" 0.2 0.05 5 ;
createNode mesh -n "floorPlank6Shape" -p "floorPlank6";
	rename -uid "7A879359-F945-EEF0-0C7B-53BFC12941EA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "floorPlank5" -p "RegularPlanks";
	rename -uid "84F44F8E-824E-D1A8-025F-05BF1EC91F48";
	setAttr ".t" -type "double3" 1.1 0 0 ;
	setAttr ".s" -type "double3" 0.2 0.05 5 ;
createNode mesh -n "floorPlank5Shape" -p "floorPlank5";
	rename -uid "654E8636-4B40-77A1-9C1A-059EC17B2767";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "floorPlank4" -p "RegularPlanks";
	rename -uid "A5D0E938-E049-B462-AB77-2D8114C82D2B";
	setAttr ".t" -type "double3" 0.88000000000000012 0 0 ;
	setAttr ".s" -type "double3" 0.2 0.05 5 ;
createNode mesh -n "floorPlank4Shape" -p "floorPlank4";
	rename -uid "EF5FAA17-7E42-8FCE-A3CF-4DA3526BBD08";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "floorPlank3" -p "RegularPlanks";
	rename -uid "C2DA922A-8343-7025-0C26-13B3F9E56DD6";
	setAttr ".t" -type "double3" 0.66000000000000014 0 0 ;
	setAttr ".s" -type "double3" 0.2 0.05 5 ;
createNode mesh -n "floorPlank3Shape" -p "floorPlank3";
	rename -uid "2A4E9318-6A4E-7FAC-21B3-63B9FBD1BA72";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "floorPlank2" -p "RegularPlanks";
	rename -uid "CC5E00A3-954A-7182-B1A7-BD8D9E8B375C";
	setAttr ".t" -type "double3" 0.44000000000000006 0 0 ;
	setAttr ".s" -type "double3" 0.2 0.05 5 ;
createNode mesh -n "floorPlank2Shape" -p "floorPlank2";
	rename -uid "C98A42C8-D341-91C2-32A8-5AAACA98E3CE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "SpecialPlank3" -p "Floor";
	rename -uid "2CAAEC9A-9740-F7B2-3427-28BDA886EE13";
	setAttr ".t" -type "double3" 3.3029628284873334 0 0 ;
createNode transform -n "specialplank3a" -p "SpecialPlank3";
	rename -uid "8B8A39F9-5445-00D7-5FA4-A3B83E7F49F2";
	setAttr ".t" -type "double3" 1.98 0 0 ;
	setAttr ".s" -type "double3" 0.2 0.05 5 ;
createNode mesh -n "specialplank3aShape" -p "|Floor|SpecialPlank3|specialplank3a";
	rename -uid "7A362B5F-BA4C-E5A7-195F-EC932941C185";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 162 ".uvst[0].uvsp[0:161]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 1 0.625 1 0.68578303 0.310783 0.55619377 0.36813226 0.58179629
		 0.87777829 0.68525916 0.43974087 0.55142099 0.37048247 0.55533183 0.88271362 0.50406778
		 0.36562777 0.52327621 0.87801766 0.50387299 0.3710345 0.49598229 0.88305902 0.47525978
		 0.36896199 0.50050652 0.87631726 0.43408549 0.36996171 0.42725751 0.8811388 0.31670839
		 0.30829161 0.31467125 0.43967128 0.68578303 0.310783 0.55619377 0.36813226 0.58179629
		 0.87777829 0.68525916 0.43974087 0.55142099 0.37048247 0.55533183 0.88271362 0.50406778
		 0.36562777 0.52327621 0.87801766 0.50387299 0.3710345 0.49598229 0.88305902 0.47525978
		 0.36896199 0.50050652 0.87631726 0.43408549 0.36996171 0.42725751 0.8811388 0.31670839
		 0.30829161 0.31467125 0.43967128 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0
		 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 13 ".pt";
	setAttr ".pt[47]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".pt[49]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".pt[50]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".pt[51]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".pt[52]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".pt[53]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr -s 58 ".vt[0:57]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.045077659 0.334939 0.5 0.015774548 0.32718563 -0.5 0.01821111 0.5 -0.5 0.037356168
		 0.20568657 0.5 0.041725259 0.22132778 -0.5 0.048097685 0.038716316 0.5 0.022107193
		 0.09310627 -0.5 0.024359079 -0.059087753 0.5 0.040113896 -0.12038803 -0.5 0.040349707
		 -0.14836407 0.5 0.019891996 -0.14874268 -0.5 0.012367113 -0.36752796 0.5 0.035536554
		 -0.38158512 -0.5 0.031653076 -0.5 0.5 0.032113627 -0.5 -0.5 0.024468206 0.5 0.5 0.051209148
		 0.40236092 0.5 0.05120885 0.35116196 -0.5 0.05120888 0.5 -0.5 0.05120907 0.31052971 0.5 0.051209118
		 0.27631378 -0.5 0.051209178 0.21718025 0.5 0.051208921 0.15753651 -0.5 0.051208939
		 0.15022469 0.5 0.0512091 -0.02610302 -0.5 0.0512091 -0.25677395 0.5 0.051208891 -0.14874268 -0.5 0.051208824
		 -0.36752796 0.5 0.051209044 -0.38158512 -0.5 0.05120901 -0.5 0.5 0.051209021 -0.5 -0.5 0.051208939
		 0.5 0.4999986 0.054988962 0.41665268 0.5 0.054988798 0.5 -0.50000143 0.054988887
		 0.36059284 -0.5 0.054988842 0.32291031 0.5 0.054988828 0.26010323 -0.5 0.054988839
		 -0.36941528 0.5 0.05498879 -0.26516724 -0.5 0.054988738 -0.5 0.49999845 0.054988839
		 -0.5 -0.50000155 0.054988753 0.5 0.4999986 0.057367522 0.45848656 0.5 0.057367373
		 0.5 -0.50000143 0.057367451 0.41435146 -0.5 0.057367403 -0.41955471 0.5 0.057367351
		 -0.26721096 -0.5 0.057367302 -0.5 0.49999845 0.057367396 -0.5 -0.50000155 0.057367314
		 0.49822807 0.49999928 0.059866499 0.5006218 -0.50000072 0.059866484 -0.49999619 0.49999923 0.059866425
		 -0.49973488 -0.50000077 0.059866365;
	setAttr -s 118 ".ed[0:117]"  0 1 0 2 3 0 0 2 0 1 3 0 4 5 0 7 6 0 4 7 0
		 5 8 0 6 9 0 8 10 0 9 11 0 10 12 0 11 13 0 12 14 0 13 15 0 14 16 0 15 17 0 16 18 0
		 19 18 0 17 19 0 4 20 0 5 21 0 20 21 1 6 22 0 7 23 0 23 22 1 20 23 1 8 24 0 21 24 1
		 9 25 0 22 25 1 10 26 0 24 26 1 11 27 0 25 27 1 12 28 0 26 28 1 13 29 0 27 29 1 14 30 0
		 28 30 1 15 31 0 29 31 1 16 32 0 30 32 1 17 33 0 31 33 1 18 34 0 32 34 1 19 35 0 35 34 1
		 33 35 1 16 17 0 14 15 0 12 13 0 10 11 0 8 9 0 5 6 0 20 36 0 21 37 1 36 37 0 23 38 0
		 22 39 1 38 39 0 36 38 0 24 37 1 25 39 1 26 40 1 37 40 0 27 41 1 39 41 0 28 40 1 29 41 1
		 30 42 1 40 42 0 31 43 1 41 43 0 32 42 1 33 43 1 34 44 0 42 44 0 35 45 0 45 44 0 43 45 0
		 36 46 0 37 47 0 46 47 0 38 48 0 39 49 0 48 49 0 46 48 0 40 47 0 41 49 0 42 50 0 47 50 0
		 43 51 0 49 51 0 44 52 0 50 52 0 45 53 0 53 52 0 51 53 0 46 54 0 47 54 0 48 55 0 49 55 0
		 54 55 0 50 56 0 54 56 0 51 57 0 55 57 0 52 56 0 53 57 0 57 56 0 2 56 0 3 54 0 1 55 0
		 0 57 0;
	setAttr -s 62 -ch 236 ".fc[0:61]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 0 1 3 2
		f 4 1 115 108 -115
		mu 0 4 2 3 147 146
		f 4 -4 116 -107 -116
		mu 0 4 3 1 143 142
		f 4 -1 117 -111 -117
		mu 0 4 5 4 151 150
		f 4 2 114 -114 -118
		mu 0 4 0 2 158 157
		f 4 4 21 -23 -21
		mu 0 4 6 7 23 22
		f 4 -6 24 25 -24
		mu 0 4 8 9 25 24
		f 4 -7 20 26 -25
		mu 0 4 9 6 22 25
		f 4 7 27 -29 -22
		mu 0 4 7 10 26 23
		f 4 -9 23 30 -30
		mu 0 4 11 8 24 27
		f 4 9 31 -33 -28
		mu 0 4 10 12 28 26
		f 4 -11 29 34 -34
		mu 0 4 13 11 27 29
		f 4 11 35 -37 -32
		mu 0 4 12 14 30 28
		f 4 -13 33 38 -38
		mu 0 4 15 13 29 31
		f 4 13 39 -41 -36
		mu 0 4 14 16 32 30
		f 4 -15 37 42 -42
		mu 0 4 17 15 31 33
		f 4 15 43 -45 -40
		mu 0 4 16 18 34 32
		f 4 -17 41 46 -46
		mu 0 4 19 17 33 35
		f 4 17 47 -49 -44
		mu 0 4 18 20 36 34
		f 4 -19 49 50 -48
		mu 0 4 20 21 37 36
		f 4 -20 45 51 -50
		mu 0 4 21 19 35 37
		f 4 -18 52 19 18
		mu 0 4 20 18 19 21
		f 4 -16 53 16 -53
		mu 0 4 18 16 17 19
		f 4 -14 54 14 -54
		mu 0 4 16 14 15 17
		f 4 -12 55 12 -55
		mu 0 4 14 12 13 15
		f 4 -10 56 10 -56
		mu 0 4 12 10 11 13
		f 4 -8 57 8 -57
		mu 0 4 10 7 8 11
		f 4 -5 6 5 -58
		mu 0 4 7 6 9 8
		f 4 22 59 -61 -59
		mu 0 4 38 39 40 41
		f 4 -26 61 63 -63
		mu 0 4 42 43 44 45
		f 4 -27 58 64 -62
		mu 0 4 46 47 48 49
		f 3 28 65 -60
		mu 0 3 50 51 52
		f 3 -31 62 -67
		mu 0 3 53 54 55
		f 4 32 67 -69 -66
		mu 0 4 56 57 58 59
		f 4 -35 66 70 -70
		mu 0 4 60 61 62 63
		f 3 36 71 -68
		mu 0 3 64 65 66
		f 3 -39 69 -73
		mu 0 3 67 68 69
		f 4 40 73 -75 -72
		mu 0 4 70 71 72 73
		f 4 -43 72 76 -76
		mu 0 4 74 75 76 77
		f 3 44 77 -74
		mu 0 3 78 79 80
		f 3 -47 75 -79
		mu 0 3 81 82 83
		f 4 48 79 -81 -78
		mu 0 4 84 85 86 87
		f 4 -51 81 82 -80
		mu 0 4 88 89 90 91
		f 4 -52 78 83 -82
		mu 0 4 92 93 94 95
		f 4 60 85 -87 -85
		mu 0 4 96 97 98 99
		f 4 -64 87 89 -89
		mu 0 4 100 101 102 103
		f 4 -65 84 90 -88
		mu 0 4 104 105 106 107
		f 3 68 91 -86
		mu 0 3 108 109 110
		f 3 -71 88 -93
		mu 0 3 111 112 113
		f 4 74 93 -95 -92
		mu 0 4 114 115 116 117
		f 4 -77 92 96 -96
		mu 0 4 118 119 120 121
		f 4 80 97 -99 -94
		mu 0 4 122 123 124 125
		f 4 -83 99 100 -98
		mu 0 4 126 127 128 129
		f 4 -84 95 101 -100
		mu 0 4 130 131 132 133
		f 3 86 103 -103
		mu 0 3 134 135 136
		f 3 -90 104 -106
		mu 0 3 137 138 139
		f 4 -91 102 106 -105
		mu 0 4 140 141 142 143
		f 4 94 107 -109 -104
		mu 0 4 144 145 146 147
		f 4 -97 105 110 -110
		mu 0 4 148 149 150 151
		f 3 98 111 -108
		mu 0 3 152 153 154
		f 4 -101 112 113 -112
		mu 0 4 155 156 157 158
		f 3 -102 109 -113
		mu 0 3 159 160 161;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "plankPiece3" -p "SpecialPlank3";
	rename -uid "A2072DEE-8D4E-F212-C67A-0F9B98E1D671";
	setAttr ".t" -type "double3" 0 -0.20003589729263849 -0.09147376701277829 ;
	setAttr ".rp" -type "double3" 1.9797153887639658 0.20054238310805139 0.014568429138370281 ;
	setAttr ".sp" -type "double3" 1.9797153887639658 0.20054238310805139 0.014568429138370281 ;
createNode mesh -n "plankPiece3Shape" -p "|Floor|SpecialPlank3|plankPiece3";
	rename -uid "7171904B-C64A-50B5-8EFA-3E87A8243E3C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.6583564430475235 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 57 ".pt";
	setAttr ".pt[16]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[17]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[18]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[19]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[20]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[21]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[22]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[23]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[24]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[25]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[26]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[27]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[28]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[29]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[30]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[31]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[32]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[33]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[34]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[35]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[36]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[37]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[38]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[39]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[40]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[41]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[42]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[43]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[44]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[45]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[46]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[47]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[48]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[49]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[50]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[51]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[52]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[53]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[54]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[55]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[56]" -type "float3" 2.2351742e-08 4.6566129e-09 0.011745155 ;
	setAttr ".pt[57]" -type "float3" 2.2351742e-08 -6.519258e-09 0.007887125 ;
	setAttr ".pt[58]" -type "float3" 7.4505806e-08 -6.519258e-09 0.022530943 ;
	setAttr ".pt[59]" -type "float3" 6.519258e-08 -6.519258e-09 0.0095615983 ;
	setAttr ".pt[60]" -type "float3" 2.514571e-08 -6.519258e-09 0.019366473 ;
	setAttr ".pt[61]" -type "float3" -3.2829121e-08 -6.519258e-09 0.010367185 ;
	setAttr ".pt[62]" -type "float3" 5.7742e-08 -6.519258e-09 0.020473421 ;
	setAttr ".pt[63]" -type "float3" -5.5879354e-08 -6.519258e-09 0.012654811 ;
	setAttr ".pt[64]" -type "float3" -2.2351742e-08 -6.519258e-09 0.014364243 ;
	setAttr ".pt[65]" -type "float3" -2.2351742e-08 4.6566129e-09 0.018185169 ;
	setAttr ".pt[66]" -type "float3" 2.2351742e-08 4.6566129e-09 0.0145953 ;
	setAttr ".pt[67]" -type "float3" -9.3132257e-09 4.6566129e-09 0.024233609 ;
	setAttr ".pt[68]" -type "float3" -4.4230546e-08 4.6566129e-09 0.010248899 ;
	setAttr ".pt[69]" -type "float3" -4.0046871e-08 4.6566129e-09 0.018241137 ;
	setAttr ".pt[70]" -type "float3" -2.9802322e-08 4.6566129e-09 0.0063765347 ;
	setAttr ".pt[71]" -type "float3" -2.6077032e-08 4.6566129e-09 0.021312952 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape1" -p "|Floor|SpecialPlank3|plankPiece3";
	rename -uid "90E786FD-1840-B663-69EE-E39F995F2B68";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 80 ".uvst[0].uvsp[0:79]" -type "float2" 0.31670839 0.30829161
		 0.43408549 0.36996171 0.42725751 0.8811388 0.31467125 0.43967128 0.47525978 0.36896199
		 0.50050652 0.87631726 0.50387299 0.3710345 0.49598229 0.88305902 0.50406778 0.36562777
		 0.52327621 0.87801766 0.55142099 0.37048247 0.55533183 0.88271362 0.55619377 0.36813226
		 0.58179629 0.87777829 0.68578303 0.310783 0.68525916 0.43974087 0.625 0.39350885
		 0.58372778 0.38768026 0.58713681 0.86380357 0.625 0.86123002 0.57589173 0.39159828
		 0.56599903 0.86007851 0.55870879 0.38934252 0.53175873 0.86368096 0.52489901 0.39064997
		 0.51629078 0.8573873 0.50760925 0.38748875 0.47286552 0.86314249 0.50248098 0.39241046
		 0.46930027 0.8614015 0.46903676 0.39054751 0.45509624 0.86447102 0.45086053 0.3954725
		 0.44368124 0.85911775 0.42892504 0.38893449 0.42113 0.86315906 0.41352624 0.39054573
		 0.40419152 0.85995203 0.30828711 0.31671289 0.30813873 0.43313876 1 1 0 1 1 1 0 1
		 1 1 0 1 0.5 1 0.5 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 0.5 1 0.5 1 1
		 1 0 1 1 1 0 1 0.5 1 0.5 1 1 1 0 1 1 1 0 1 0.5 1 0.5 1 1 1 0 1 1 1 0 1 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt";
	setAttr ".pt[40]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[41]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[42]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[43]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[44]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[45]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[46]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[47]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[48]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[49]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[50]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[51]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[52]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[53]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[54]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[55]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr -s 56 ".vt[0:55]"  2.079430819 0.22635442 0.31731001 2.046418428 0.22635442 0.17079437
		 2.020568132 0.22635442 0.30054799 1.98717403 0.22635442 0.20245761 1.96761322 0.22635442 0.29249114
		 1.94975781 0.22635442 0.19138174 1.90592504 0.22635442 0.2696045 1.87943077 0.22635442 0.25248984
		 2.079430819 0.17635441 0.27870259 1.9031136 0.17635441 0.25018719 1.87943077 0.17635441 0.21426274
		 1.94968224 0.17635441 0.15375727 1.95535302 0.17635441 0.29367027 1.99805188 0.17635441 0.21371707
		 2.023696184 0.17635441 0.3324101 2.044867754 0.17635441 0.18297727 1.88 0.22473037 -0.087558925
		 2.057155609 0.22473037 -0.16169238 2.04071331 0.22473037 -0.25100827 2.021449089 0.22473037 -0.18711182
		 2.0038321018 0.22473037 -0.24534687 1.98608768 0.22473037 -0.16881827 1.98198497 0.22473037 -0.26725322
		 1.95601261 0.22473037 -0.16112773 1.94068837 0.22473037 -0.30327326 1.91935718 0.22473037 -0.19773322
		 1.90325534 0.22473037 -0.24887325 1.88 0.17473035 -0.093493223 1.90335321 0.17473035 -0.22000325
		 1.91690433 0.17473035 -0.15586324 1.93494499 0.17473035 -0.23668827 1.94407701 0.17473035 -0.12962325
		 1.97343946 0.17473035 -0.21135989 1.99116027 0.17473035 -0.1288036 2.0016412735 0.17473035 -0.25251672
		 2.023406267 0.17473035 -0.14542326 2.037494659 0.17473035 -0.21747324 2.057535172 0.17473035 -0.13514765
		 2.079999924 0.22473037 -0.28921962 2.079999924 0.17473035 -0.19444326 2.079999924 0.22473037 -0.022393476
		 2.04893446 0.22473037 -0.022392619 2.047514915 0.17473035 -0.022392329 2.079999924 0.17473035 -0.022392508
		 2.021449089 0.22473037 -0.022392441 2.023406267 0.17473035 -0.022392023 2.0038321018 0.22473037 -0.022393029
		 2.0016412735 0.17473035 -0.022393104 1.98403633 0.22473037 -0.022392757 1.9822998 0.17473035 -0.022392273
		 1.94835043 0.22473037 -0.022392888 1.93951106 0.17473035 -0.02239239 1.91130626 0.22473037 -0.0223928
		 1.91012883 0.17473035 -0.022392446 1.88 0.22473037 -0.022391442 1.88 0.17473035 -0.022391502;
	setAttr -s 112 ".ed[0:111]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 0 8 0 9 10 0 11 9 0 12 11 0 13 12 0 14 13 0 15 14 0 8 15 0 10 7 0 1 15 0 2 14 0 3 13 0
		 4 12 0 5 11 0 6 9 0 38 17 0 17 18 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0
		 24 25 0 25 26 0 26 16 0 16 27 0 27 28 0 28 29 0 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0
		 34 35 0 35 36 0 36 37 0 37 39 0 38 39 0 26 28 0 25 29 0 24 30 0 23 31 0 22 32 0 21 33 0
		 20 34 0 19 35 0 18 36 0 17 37 0 38 40 0 17 41 0 40 41 0 37 42 0 39 43 0 42 43 0 40 43 0
		 18 41 0 36 42 0 19 44 0 41 44 0 35 45 0 45 42 0 20 46 0 44 46 0 34 47 0 47 45 0 21 48 0
		 46 48 0 33 49 0 49 47 0 22 48 0 32 49 0 23 50 0 48 50 0 31 51 0 51 49 0 24 50 0 30 51 0
		 25 52 0 50 52 0 29 53 0 53 51 0 26 52 0 28 53 0 16 54 0 52 54 0 27 55 0 54 55 0 55 53 0
		 7 54 0 6 52 0 5 50 0 4 48 0 3 46 0 2 44 0 1 41 0 0 40 0 8 43 0 15 42 0 14 45 0 13 47 0
		 12 49 0 11 51 0 9 53 0 10 55 0;
	setAttr -s 58 -ch 224 ".fc[0:57]" -type "polyFaces" 
		f 4 -7 97 92 -97
		mu 0 4 0 1 75 74
		f 4 -6 98 86 -98
		mu 0 4 1 4 69 68
		f 4 -5 99 80 -99
		mu 0 4 4 6 63 62
		f 4 -4 100 74 -100
		mu 0 4 6 8 57 56
		f 4 -3 101 70 -101
		mu 0 4 8 10 53 52
		f 4 -2 102 66 -102
		mu 0 4 10 12 49 48
		f 4 -1 103 58 -103
		mu 0 4 12 14 41 40
		f 4 0 16 -15 -8
		mu 0 4 14 12 13 15
		f 4 1 17 -14 -17
		mu 0 4 12 10 11 13
		f 4 2 18 -13 -18
		mu 0 4 10 8 9 11
		f 4 3 19 -12 -19
		mu 0 4 8 6 7 9
		f 4 4 20 -11 -20
		mu 0 4 6 4 5 7
		f 4 5 21 -10 -21
		mu 0 4 4 1 2 5
		f 4 6 -16 -9 -22
		mu 0 4 1 0 3 2
		f 4 -46 56 62 -61
		mu 0 4 19 16 44 45
		f 4 -33 46 -35 -34
		mu 0 4 38 36 37 39
		f 4 -32 47 -36 -47
		mu 0 4 36 34 35 37
		f 4 -31 48 -37 -48
		mu 0 4 34 32 33 35
		f 4 -30 49 -38 -49
		mu 0 4 32 30 31 33
		f 4 -29 50 -39 -50
		mu 0 4 30 28 29 31
		f 4 -28 51 -40 -51
		mu 0 4 28 26 27 29
		f 4 -27 52 -41 -52
		mu 0 4 26 24 25 27
		f 4 -26 53 -42 -53
		mu 0 4 24 22 23 25
		f 4 -25 54 -43 -54
		mu 0 4 22 20 21 23
		f 4 -24 55 -44 -55
		mu 0 4 20 17 18 21
		f 4 -23 45 -45 -56
		mu 0 4 17 16 19 18
		f 4 57 -59 -57 22
		mu 0 4 17 40 41 16
		f 4 60 -62 -60 44
		mu 0 4 19 42 43 18
		f 3 63 -58 23
		mu 0 3 20 46 17
		f 3 59 -65 43
		mu 0 3 18 47 21
		f 4 65 -67 -64 24
		mu 0 4 22 48 49 20
		f 4 64 -69 -68 42
		mu 0 4 21 50 51 23
		f 4 69 -71 -66 25
		mu 0 4 24 52 53 22
		f 4 67 -73 -72 41
		mu 0 4 23 54 55 25
		f 4 73 -75 -70 26
		mu 0 4 26 56 57 24
		f 4 71 -77 -76 40
		mu 0 4 25 58 59 27
		f 3 77 -74 27
		mu 0 3 28 60 26
		f 3 75 -79 39
		mu 0 3 27 61 29
		f 4 79 -81 -78 28
		mu 0 4 30 62 63 28
		f 4 78 -83 -82 38
		mu 0 4 29 64 65 31
		f 3 83 -80 29
		mu 0 3 32 66 30
		f 3 81 -85 37
		mu 0 3 31 67 33
		f 4 85 -87 -84 30
		mu 0 4 34 68 69 32
		f 4 84 -89 -88 36
		mu 0 4 33 70 71 35
		f 3 89 -86 31
		mu 0 3 36 72 34
		f 3 87 -91 35
		mu 0 3 35 73 37
		f 4 91 -93 -90 32
		mu 0 4 38 74 75 36
		f 4 93 -95 -92 33
		mu 0 4 39 76 77 38
		f 4 90 -96 -94 34
		mu 0 4 37 78 79 39
		f 4 104 -63 -104 7
		mu 0 4 15 45 44 14
		f 4 105 61 -105 14
		mu 0 4 13 43 42 15
		f 4 106 68 -106 13
		mu 0 4 11 51 50 13
		f 4 107 72 -107 12
		mu 0 4 9 55 54 11
		f 4 108 76 -108 11
		mu 0 4 7 59 58 9
		f 4 109 82 -109 10
		mu 0 4 5 65 64 7
		f 4 110 88 -110 9
		mu 0 4 2 71 70 5
		f 4 111 95 -111 8
		mu 0 4 3 79 78 2
		f 4 96 94 -112 15
		mu 0 4 0 77 76 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "specialplank3b" -p "SpecialPlank3";
	rename -uid "8DC9C87C-2E49-5DBD-6F79-50BA94B35470";
	setAttr ".t" -type "double3" 0 0 -0.71504445218239798 ;
	setAttr ".rp" -type "double3" 1.9800000000000002 0.0042442671105761103 -1.2502669111667508 ;
	setAttr ".sp" -type "double3" 1.9800000000000002 0.0042442671105761103 -1.2502669111667508 ;
createNode mesh -n "specialplank3bShape" -p "|Floor|SpecialPlank3|specialplank3b";
	rename -uid "3BB373DE-7244-3C07-B032-A085FB315124";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 228 ".uvst[0].uvsp[0:227]" -type "float2" 0.65414357 0.15835644
		 0.41352624 0.39054573 0.40419152 0.85995203 0.15406936 0.21656938 0.42892504 0.38893449
		 0.42113 0.86315906 0.45086053 0.3954725 0.44368124 0.85911775 0.46903676 0.39054751
		 0.45509624 0.86447102 0.50248098 0.39241046 0.46930027 0.8614015 0.50760925 0.38748875
		 0.47286552 0.86314249 0.52489901 0.39064997 0.51629078 0.8573873 0.55870879 0.38934252
		 0.53175873 0.86368096 0.57589173 0.39159828 0.56599903 0.86007851 0.58372778 0.38768026
		 0.58713681 0.86380357 0.3125 0.19675443 0.8125 0.43061501 0.30828711 0.31671289 0.41352624
		 0.39054573 0.40419152 0.85995203 0.30813873 0.43313876 0.42892504 0.38893449 0.42113
		 0.86315906 0.45086053 0.3954725 0.44368124 0.85911775 0.46903676 0.39054751 0.45509624
		 0.86447102 0.50248098 0.39241046 0.46930027 0.8614015 0.50760925 0.38748875 0.47286552
		 0.86314249 0.52489901 0.39064997 0.51629078 0.8573873 0.55870879 0.38934252 0.53175873
		 0.86368096 0.57589173 0.39159828 0.56599903 0.86007851 0.58372778 0.38768026 0.58713681
		 0.86380357 0.625 0.39350885 0.625 0.86123002 0 0 1 0 0.5 1 0 0 1 0 0.5 1 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5
		 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.375
		 0.5 0.625 0.5 0.625 0.75 0.375 0.75 1 1 1 1 1 0 1 1 1 0 0 1 0 0 0 1 0 0 0 1 0 0 0
		 1 0 0 0 1 0 1 1 1 1 0 1 1 1 0 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 13 ".pt";
	setAttr ".pt[25]" -type "float3" -4.6566129e-10 -2.3283064e-10 0 ;
	setAttr ".pt[72]" -type "float3" 0 0 -0.011700097 ;
	setAttr ".pt[73]" -type "float3" 0 0 -0.011700157 ;
	setAttr ".pt[74]" -type "float3" 0 0 -0.011700097 ;
	setAttr ".pt[75]" -type "float3" 0 0 -0.011700157 ;
	setAttr ".pt[76]" -type "float3" 0 0 0.72991019 ;
	setAttr ".pt[77]" -type "float3" 0 0 0.72991019 ;
	setAttr ".pt[78]" -type "float3" 0 0 0.72991019 ;
	setAttr ".pt[79]" -type "float3" 0 0 0.72991019 ;
	setAttr -s 92 ".vt[0:91]"  1.90325534 0.025004502 -0.14752811 1.88 0.025004502 0.013786197
		 1.90335321 -0.024995517 -0.11865813 1.88 -0.024995517 0.0078518689 1.91935718 0.025004502 -0.096388072
		 1.91690433 -0.024995517 -0.054518163 1.94068837 0.025004502 -0.2019282 1.93494499 -0.024995517 -0.13534313
		 1.95601261 0.025004502 -0.059782594 1.94407701 -0.024995517 -0.028278083 1.98198497 0.025004502 -0.16590807
		 1.97343946 -0.024995517 -0.11001486 1.98608768 0.025004502 -0.067473114 1.99116027 -0.024995517 -0.027458429
		 2.0038321018 0.025004502 -0.14400172 2.0016412735 -0.024995517 -0.15117159 2.021449089 0.025004502 -0.085766643
		 2.023406267 -0.024995517 -0.044078141 2.04071331 0.025004502 -0.14966327 2.037494659 -0.024995517 -0.11612806
		 2.057155609 0.025004502 -0.060347199 2.057535172 -0.024995517 -0.033802539 2.079999924 0.025004502 -0.1878745
		 2.079999924 -0.024995517 -0.093098164 1.89488435 0.025004502 -0.2133708 1.88 0.025004502 -0.21336916
		 1.89498222 -0.024995517 -0.21337053 1.88 -0.024995517 -0.21336916 1.91086221 0.025004502 -0.21337023
		 1.90840936 -0.024995517 -0.21336976 1.92519236 0.025004502 -0.21337125 1.91944873 -0.024995517 -0.21337065
		 1.94811237 0.025004502 -0.21336994 1.93997502 -0.024995517 -0.21336961 1.96262634 0.025004502 -0.21337095
		 1.95726287 -0.024995517 -0.21337035 1.9976176 0.025004502 -0.21336994 1.99323106 -0.024995517 -0.21336961
		 2.011740208 0.025004502 -0.2133708 2.021632195 -0.024995517 -0.2133708 2.031912804 0.025004502 -0.2133702
		 2.033869743 -0.024995517 -0.21336976 2.05401516 0.025004502 -0.2133708 2.050796509 -0.024995517 -0.2133705
		 2.068802357 0.025004502 -0.21336994 2.069181919 -0.024995517 -0.21336964 2.079999924 0.025004502 -0.21337113
		 2.079999924 -0.024995517 -0.2133702 1.88775873 0.025004502 -0.22719029 1.88774097 -0.024995517 -0.2271902
		 1.90387464 0.025004502 -0.22719109 1.90211666 -0.024995517 -0.22719058 1.95536923 0.025004502 -0.22719079
		 1.94861913 -0.024995517 -0.22719032 2.0046789646 0.025004502 -0.22719073 2.0074315071 -0.024995517 -0.22719049
		 2.05875802 0.025004502 -0.22719079 2.055297852 -0.024995517 -0.22719046 2.074076653 0.025004502 -0.22719088
		 2.074304581 -0.024995517 -0.22719029 1.88775873 0.025004502 -0.23753893 1.88774097 -0.024995517 -0.23753887
		 1.90016317 0.025004502 -0.23753959 1.89488101 -0.024995517 -0.23753905 2.031718493 0.025004502 -0.23753947
		 2.032601595 -0.024995517 -0.23753911 2.074076653 0.025004502 -0.23753953 2.074304581 -0.024995517 -0.23753893
		 1.88750637 0.025004502 -0.24771932 1.8873539 -0.024995517 -0.24771896 2.073477983 0.025004502 -0.24771956
		 2.073866129 -0.024995517 -0.24771908 1.88 0.025 -0.26353899 1.88 -0.025 -0.26353899
		 2.079999924 0.025 -0.26353899 2.079999924 -0.025 -0.26353899 1.88 0.025 -2.5143199
		 2.079999924 0.025 -2.5143199 2.079999924 -0.025 -2.5143199 1.88 -0.025 -2.5143199
		 2.07999897 -0.024995517 -0.24771908 2.079999208 -0.024995517 -0.23753893 2.079999685 -0.024995517 -0.22719029
		 2.080000639 0.025004502 -0.24771956 2.080000401 0.025004502 -0.23753953 2.080000401 0.025004502 -0.22719088
		 1.88000107 -0.024995517 -0.2271902 1.88000202 -0.024995517 -0.23753887 1.88000298 -0.024995517 -0.24771896
		 1.87999988 0.025004502 -0.22719029 1.87999964 0.025004502 -0.23753893 1.8799994 0.025004502 -0.24771932;
	setAttr -s 194 ".ed";
	setAttr ".ed[0:165]"  0 1 0 3 2 0 1 3 0 4 0 0 2 5 0 6 4 0 5 7 0 8 6 0 7 9 0
		 10 8 0 9 11 0 12 10 0 11 13 0 14 12 0 13 15 0 16 14 0 15 17 0 18 16 0 17 19 0 20 18 0
		 19 21 0 22 20 0 22 23 0 21 23 0 0 24 0 1 25 0 24 25 0 2 26 0 3 27 0 27 26 0 25 27 0
		 4 28 0 28 24 0 5 29 0 26 29 0 6 30 0 30 28 0 7 31 0 29 31 0 8 32 0 32 30 0 9 33 0
		 31 33 0 10 34 0 34 32 0 11 35 0 33 35 0 12 36 0 36 34 0 13 37 0 35 37 0 14 38 0 38 36 0
		 15 39 0 37 39 0 16 40 0 40 38 0 17 41 0 39 41 0 18 42 0 42 40 0 19 43 0 41 43 0 20 44 0
		 44 42 0 21 45 0 43 45 0 22 46 0 46 44 0 23 47 0 46 47 0 45 47 0 20 21 0 18 19 0 16 17 0
		 14 15 0 12 13 0 10 11 0 8 9 0 6 7 0 4 5 0 0 2 0 24 48 0 25 48 0 27 49 0 26 49 0 28 50 0
		 50 48 0 29 51 0 49 51 0 30 50 0 31 51 0 32 52 0 52 50 0 33 53 0 51 53 0 34 52 0 35 53 0
		 36 54 0 54 52 0 37 55 0 53 55 0 38 54 0 39 55 0 40 56 0 56 54 0 41 57 0 55 57 0 42 56 0
		 43 57 0 44 58 0 58 56 0 45 59 0 57 59 0 46 58 0 47 59 0 48 60 0 49 61 0 50 62 0 62 60 0
		 51 63 0 61 63 0 52 62 0 53 63 0 54 64 0 64 62 0 55 65 0 63 65 0 56 64 0 57 65 0 58 66 0
		 66 64 0 59 67 0 65 67 0 60 68 0 61 69 0 62 68 0 63 69 0 64 70 0 70 68 0 65 71 0 69 71 0
		 66 70 0 67 71 0 72 74 0 73 75 0 72 73 0 74 75 0 72 76 0 74 77 0 76 77 0 75 78 0 77 78 0
		 73 79 0 79 78 0 76 79 0 69 73 0 68 72 0 70 74 0 71 75 0 59 82 0 58 85 0 67 81 0 66 84 0
		 71 80 0 70 83 0;
	setAttr ".ed[166:193]" 75 80 0 80 81 0 81 82 0 82 47 0 74 83 0 83 84 0 84 85 0
		 85 46 0 82 85 0 81 84 0 80 83 0 48 89 0 49 86 0 60 90 0 61 87 0 68 91 0 69 88 0 27 86 0
		 86 87 0 87 88 0 88 73 0 25 89 0 89 90 0 90 91 0 91 72 0 88 91 0 87 90 0 86 89 0;
	setAttr -s 104 -ch 388 ".fc[0:103]" -type "polyFaces" 
		f 4 -1 24 26 -26
		mu 0 4 24 25 1 0
		f 4 -2 28 29 -28
		mu 0 4 26 27 3 2
		f 4 -3 25 30 -29
		mu 0 4 27 24 0 3
		f 4 -4 31 32 -25
		mu 0 4 25 28 4 1
		f 4 -5 27 34 -34
		mu 0 4 29 26 2 5
		f 4 -6 35 36 -32
		mu 0 4 28 30 6 4
		f 4 -7 33 38 -38
		mu 0 4 31 29 5 7
		f 4 -8 39 40 -36
		mu 0 4 30 32 8 6
		f 4 -9 37 42 -42
		mu 0 4 33 31 7 9
		f 4 -10 43 44 -40
		mu 0 4 32 34 10 8
		f 4 -11 41 46 -46
		mu 0 4 35 33 9 11
		f 4 -12 47 48 -44
		mu 0 4 34 36 12 10
		f 4 -13 45 50 -50
		mu 0 4 37 35 11 13
		f 4 -14 51 52 -48
		mu 0 4 36 38 14 12
		f 4 -15 49 54 -54
		mu 0 4 39 37 13 15
		f 4 -16 55 56 -52
		mu 0 4 38 40 16 14
		f 4 -17 53 58 -58
		mu 0 4 41 39 15 17
		f 4 -18 59 60 -56
		mu 0 4 40 42 18 16
		f 4 -19 57 62 -62
		mu 0 4 43 41 17 19
		f 4 -20 63 64 -60
		mu 0 4 42 44 20 18
		f 4 -21 61 66 -66
		mu 0 4 45 43 19 21
		f 4 -22 67 68 -64
		mu 0 4 44 46 22 20
		f 4 22 69 -71 -68
		mu 0 4 46 47 23 22
		f 4 -24 65 71 -70
		mu 0 4 47 45 21 23
		f 4 21 72 23 -23
		mu 0 4 46 44 45 47
		f 4 19 73 20 -73
		mu 0 4 44 42 43 45
		f 4 17 74 18 -74
		mu 0 4 42 40 41 43
		f 4 15 75 16 -75
		mu 0 4 40 38 39 41
		f 4 13 76 14 -76
		mu 0 4 38 36 37 39
		f 4 11 77 12 -77
		mu 0 4 36 34 35 37
		f 4 9 78 10 -78
		mu 0 4 34 32 33 35
		f 4 7 79 8 -79
		mu 0 4 32 30 31 33
		f 4 5 80 6 -80
		mu 0 4 30 28 29 31
		f 4 3 81 4 -81
		mu 0 4 28 25 26 29
		f 4 0 2 1 -82
		mu 0 4 25 24 27 26
		f 3 -27 82 -84
		mu 0 3 48 49 50
		f 3 -30 84 -86
		mu 0 3 51 52 53
		f 4 -33 86 87 -83
		mu 0 4 56 57 58 59
		f 4 -35 85 89 -89
		mu 0 4 60 61 62 63
		f 3 -37 90 -87
		mu 0 3 64 65 66
		f 3 -39 88 -92
		mu 0 3 67 68 69
		f 4 -41 92 93 -91
		mu 0 4 70 71 72 73
		f 4 -43 91 95 -95
		mu 0 4 74 75 76 77
		f 3 -45 96 -93
		mu 0 3 78 79 80
		f 3 -47 94 -98
		mu 0 3 81 82 83
		f 4 -49 98 99 -97
		mu 0 4 84 85 86 87
		f 4 -51 97 101 -101
		mu 0 4 88 89 90 91
		f 3 -53 102 -99
		mu 0 3 92 93 94
		f 3 -55 100 -104
		mu 0 3 95 96 97
		f 4 -57 104 105 -103
		mu 0 4 98 99 100 101
		f 4 -59 103 107 -107
		mu 0 4 102 103 104 105
		f 3 -61 108 -105
		mu 0 3 106 107 108
		f 3 -63 106 -110
		mu 0 3 109 110 111
		f 4 -65 110 111 -109
		mu 0 4 112 113 114 115
		f 4 -67 109 113 -113
		mu 0 4 116 117 118 119
		f 3 -69 114 -111
		mu 0 3 120 121 122
		f 3 -72 112 -116
		mu 0 3 125 126 127
		f 4 -88 118 119 -117
		mu 0 4 132 133 134 135
		f 4 -90 117 121 -121
		mu 0 4 136 137 138 139
		f 3 -94 122 -119
		mu 0 3 140 141 142
		f 3 -96 120 -124
		mu 0 3 143 144 145
		f 4 -100 124 125 -123
		mu 0 4 146 147 148 149
		f 4 -102 123 127 -127
		mu 0 4 150 151 152 153
		f 3 -106 128 -125
		mu 0 3 154 155 156
		f 3 -108 126 -130
		mu 0 3 157 158 159
		f 4 -112 130 131 -129
		mu 0 4 160 161 162 163
		f 4 -114 129 133 -133
		mu 0 4 164 165 166 167
		f 3 -120 136 -135
		mu 0 3 176 177 178
		f 3 -122 135 -138
		mu 0 3 179 180 181
		f 4 -126 138 139 -137
		mu 0 4 182 183 184 185
		f 4 -128 137 141 -141
		mu 0 4 186 187 188 189
		f 3 -132 142 -139
		mu 0 3 190 191 192
		f 3 -134 140 -144
		mu 0 3 193 194 195
		f 4 150 152 -155 -156
		mu 0 4 200 201 202 203
		f 4 144 149 -151 -149
		mu 0 4 204 205 201 200
		f 4 147 151 -153 -150
		mu 0 4 205 206 202 201
		f 4 -146 153 154 -152
		mu 0 4 206 207 203 202
		f 4 -147 148 155 -154
		mu 0 4 207 204 200 203
		f 4 -140 158 -145 -158
		mu 0 4 185 184 205 204
		f 4 -142 156 145 -160
		mu 0 4 189 188 207 206
		f 3 115 160 169
		mu 0 3 23 123 211
		f 4 132 162 168 -161
		mu 0 4 169 170 209 212
		f 4 143 164 167 -163
		mu 0 4 197 198 208 210
		f 3 159 166 -165
		mu 0 3 198 206 208
		f 3 -159 165 -171
		mu 0 3 205 199 213
		f 4 -143 163 -172 -166
		mu 0 4 199 196 214 213
		f 4 -131 161 -173 -164
		mu 0 4 171 168 216 215
		f 3 -115 -174 -162
		mu 0 3 124 22 217
		f 4 -170 174 173 70
		mu 0 4 23 211 217 22
		f 4 -169 175 172 -175
		mu 0 4 212 209 215 216
		f 4 -168 176 171 -176
		mu 0 4 210 208 213 214
		f 4 -167 -148 170 -177
		mu 0 4 208 206 205 213
		f 3 -85 183 -179
		mu 0 3 55 3 219
		f 4 -118 178 184 -181
		mu 0 4 131 128 218 221
		f 4 -136 180 185 -183
		mu 0 4 175 172 220 222
		f 3 -157 182 186
		mu 0 3 207 175 222
		f 3 83 177 -188
		mu 0 3 0 54 223
		f 4 116 179 -189 -178
		mu 0 4 129 130 225 224
		f 4 134 181 -190 -180
		mu 0 4 173 174 227 226
		f 3 157 -191 -182
		mu 0 3 174 204 227
		f 4 -187 191 190 146
		mu 0 4 207 222 227 204
		f 4 -186 192 189 -192
		mu 0 4 222 220 226 227
		f 4 -185 193 188 -193
		mu 0 4 221 218 224 225
		f 4 -184 -31 187 -194
		mu 0 4 219 3 0 223;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "SpecialPlank1" -p "Floor";
	rename -uid "24352090-0A49-EB6E-AA10-8E922F5A6098";
	setAttr ".t" -type "double3" 3.0829628284873332 0 0 ;
createNode transform -n "specialplank3a" -p "SpecialPlank1";
	rename -uid "27698AE6-434C-7968-44ED-A0A9CF2368D7";
	setAttr ".t" -type "double3" 1.98 0 0 ;
	setAttr ".s" -type "double3" 0.2 0.05 5 ;
createNode mesh -n "specialplank3aShape" -p "|Floor|SpecialPlank1|specialplank3a";
	rename -uid "56E06FD5-C345-4AB1-0511-FCB069CAEBF8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 162 ".uvst[0].uvsp[0:161]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 1 0.625 1 0.68578303 0.310783 0.55619377 0.36813226 0.58179629
		 0.87777829 0.68525916 0.43974087 0.55142099 0.37048247 0.55533183 0.88271362 0.50406778
		 0.36562777 0.52327621 0.87801766 0.50387299 0.3710345 0.49598229 0.88305902 0.47525978
		 0.36896199 0.50050652 0.87631726 0.43408549 0.36996171 0.42725751 0.8811388 0.31670839
		 0.30829161 0.31467125 0.43967128 0.68578303 0.310783 0.55619377 0.36813226 0.58179629
		 0.87777829 0.68525916 0.43974087 0.55142099 0.37048247 0.55533183 0.88271362 0.50406778
		 0.36562777 0.52327621 0.87801766 0.50387299 0.3710345 0.49598229 0.88305902 0.47525978
		 0.36896199 0.50050652 0.87631726 0.43408549 0.36996171 0.42725751 0.8811388 0.31670839
		 0.30829161 0.31467125 0.43967128 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0
		 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 13 ".pt";
	setAttr ".pt[47]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".pt[49]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".pt[50]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".pt[51]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".pt[52]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".pt[53]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr -s 58 ".vt[0:57]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.045077659 0.334939 0.5 0.015774548 0.32718563 -0.5 0.01821111 0.5 -0.5 0.037356168
		 0.20568657 0.5 0.041725259 0.22132778 -0.5 0.048097685 0.038716316 0.5 0.022107193
		 0.09310627 -0.5 0.024359079 -0.059087753 0.5 0.040113896 -0.12038803 -0.5 0.040349707
		 -0.14836407 0.5 0.019891996 -0.14874268 -0.5 0.012367113 -0.36752796 0.5 0.035536554
		 -0.38158512 -0.5 0.031653076 -0.5 0.5 0.032113627 -0.5 -0.5 0.024468206 0.5 0.5 0.051209148
		 0.40236092 0.5 0.05120885 0.35116196 -0.5 0.05120888 0.5 -0.5 0.05120907 0.31052971 0.5 0.051209118
		 0.27631378 -0.5 0.051209178 0.21718025 0.5 0.051208921 0.15753651 -0.5 0.051208939
		 0.15022469 0.5 0.0512091 -0.02610302 -0.5 0.0512091 -0.25677395 0.5 0.051208891 -0.14874268 -0.5 0.051208824
		 -0.36752796 0.5 0.051209044 -0.38158512 -0.5 0.05120901 -0.5 0.5 0.051209021 -0.5 -0.5 0.051208939
		 0.5 0.4999986 0.054988962 0.41665268 0.5 0.054988798 0.5 -0.50000143 0.054988887
		 0.36059284 -0.5 0.054988842 0.32291031 0.5 0.054988828 0.26010323 -0.5 0.054988839
		 -0.36941528 0.5 0.05498879 -0.26516724 -0.5 0.054988738 -0.5 0.49999845 0.054988839
		 -0.5 -0.50000155 0.054988753 0.5 0.4999986 0.057367522 0.45848656 0.5 0.057367373
		 0.5 -0.50000143 0.057367451 0.41435146 -0.5 0.057367403 -0.41955471 0.5 0.057367351
		 -0.26721096 -0.5 0.057367302 -0.5 0.49999845 0.057367396 -0.5 -0.50000155 0.057367314
		 0.49822807 0.49999928 0.059866499 0.5006218 -0.50000072 0.059866484 -0.49999619 0.49999923 0.059866425
		 -0.49973488 -0.50000077 0.059866365;
	setAttr -s 118 ".ed[0:117]"  0 1 0 2 3 0 0 2 0 1 3 0 4 5 0 7 6 0 4 7 0
		 5 8 0 6 9 0 8 10 0 9 11 0 10 12 0 11 13 0 12 14 0 13 15 0 14 16 0 15 17 0 16 18 0
		 19 18 0 17 19 0 4 20 0 5 21 0 20 21 1 6 22 0 7 23 0 23 22 1 20 23 1 8 24 0 21 24 1
		 9 25 0 22 25 1 10 26 0 24 26 1 11 27 0 25 27 1 12 28 0 26 28 1 13 29 0 27 29 1 14 30 0
		 28 30 1 15 31 0 29 31 1 16 32 0 30 32 1 17 33 0 31 33 1 18 34 0 32 34 1 19 35 0 35 34 1
		 33 35 1 16 17 0 14 15 0 12 13 0 10 11 0 8 9 0 5 6 0 20 36 0 21 37 1 36 37 0 23 38 0
		 22 39 1 38 39 0 36 38 0 24 37 1 25 39 1 26 40 1 37 40 0 27 41 1 39 41 0 28 40 1 29 41 1
		 30 42 1 40 42 0 31 43 1 41 43 0 32 42 1 33 43 1 34 44 0 42 44 0 35 45 0 45 44 0 43 45 0
		 36 46 0 37 47 0 46 47 0 38 48 0 39 49 0 48 49 0 46 48 0 40 47 0 41 49 0 42 50 0 47 50 0
		 43 51 0 49 51 0 44 52 0 50 52 0 45 53 0 53 52 0 51 53 0 46 54 0 47 54 0 48 55 0 49 55 0
		 54 55 0 50 56 0 54 56 0 51 57 0 55 57 0 52 56 0 53 57 0 57 56 0 2 56 0 3 54 0 1 55 0
		 0 57 0;
	setAttr -s 62 -ch 236 ".fc[0:61]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 0 1 3 2
		f 4 1 115 108 -115
		mu 0 4 2 3 147 146
		f 4 -4 116 -107 -116
		mu 0 4 3 1 143 142
		f 4 -1 117 -111 -117
		mu 0 4 5 4 151 150
		f 4 2 114 -114 -118
		mu 0 4 0 2 158 157
		f 4 4 21 -23 -21
		mu 0 4 6 7 23 22
		f 4 -6 24 25 -24
		mu 0 4 8 9 25 24
		f 4 -7 20 26 -25
		mu 0 4 9 6 22 25
		f 4 7 27 -29 -22
		mu 0 4 7 10 26 23
		f 4 -9 23 30 -30
		mu 0 4 11 8 24 27
		f 4 9 31 -33 -28
		mu 0 4 10 12 28 26
		f 4 -11 29 34 -34
		mu 0 4 13 11 27 29
		f 4 11 35 -37 -32
		mu 0 4 12 14 30 28
		f 4 -13 33 38 -38
		mu 0 4 15 13 29 31
		f 4 13 39 -41 -36
		mu 0 4 14 16 32 30
		f 4 -15 37 42 -42
		mu 0 4 17 15 31 33
		f 4 15 43 -45 -40
		mu 0 4 16 18 34 32
		f 4 -17 41 46 -46
		mu 0 4 19 17 33 35
		f 4 17 47 -49 -44
		mu 0 4 18 20 36 34
		f 4 -19 49 50 -48
		mu 0 4 20 21 37 36
		f 4 -20 45 51 -50
		mu 0 4 21 19 35 37
		f 4 -18 52 19 18
		mu 0 4 20 18 19 21
		f 4 -16 53 16 -53
		mu 0 4 18 16 17 19
		f 4 -14 54 14 -54
		mu 0 4 16 14 15 17
		f 4 -12 55 12 -55
		mu 0 4 14 12 13 15
		f 4 -10 56 10 -56
		mu 0 4 12 10 11 13
		f 4 -8 57 8 -57
		mu 0 4 10 7 8 11
		f 4 -5 6 5 -58
		mu 0 4 7 6 9 8
		f 4 22 59 -61 -59
		mu 0 4 38 39 40 41
		f 4 -26 61 63 -63
		mu 0 4 42 43 44 45
		f 4 -27 58 64 -62
		mu 0 4 46 47 48 49
		f 3 28 65 -60
		mu 0 3 50 51 52
		f 3 -31 62 -67
		mu 0 3 53 54 55
		f 4 32 67 -69 -66
		mu 0 4 56 57 58 59
		f 4 -35 66 70 -70
		mu 0 4 60 61 62 63
		f 3 36 71 -68
		mu 0 3 64 65 66
		f 3 -39 69 -73
		mu 0 3 67 68 69
		f 4 40 73 -75 -72
		mu 0 4 70 71 72 73
		f 4 -43 72 76 -76
		mu 0 4 74 75 76 77
		f 3 44 77 -74
		mu 0 3 78 79 80
		f 3 -47 75 -79
		mu 0 3 81 82 83
		f 4 48 79 -81 -78
		mu 0 4 84 85 86 87
		f 4 -51 81 82 -80
		mu 0 4 88 89 90 91
		f 4 -52 78 83 -82
		mu 0 4 92 93 94 95
		f 4 60 85 -87 -85
		mu 0 4 96 97 98 99
		f 4 -64 87 89 -89
		mu 0 4 100 101 102 103
		f 4 -65 84 90 -88
		mu 0 4 104 105 106 107
		f 3 68 91 -86
		mu 0 3 108 109 110
		f 3 -71 88 -93
		mu 0 3 111 112 113
		f 4 74 93 -95 -92
		mu 0 4 114 115 116 117
		f 4 -77 92 96 -96
		mu 0 4 118 119 120 121
		f 4 80 97 -99 -94
		mu 0 4 122 123 124 125
		f 4 -83 99 100 -98
		mu 0 4 126 127 128 129
		f 4 -84 95 101 -100
		mu 0 4 130 131 132 133
		f 3 86 103 -103
		mu 0 3 134 135 136
		f 3 -90 104 -106
		mu 0 3 137 138 139
		f 4 -91 102 106 -105
		mu 0 4 140 141 142 143
		f 4 94 107 -109 -104
		mu 0 4 144 145 146 147
		f 4 -97 105 110 -110
		mu 0 4 148 149 150 151
		f 3 98 111 -108
		mu 0 3 152 153 154
		f 4 -101 112 113 -112
		mu 0 4 155 156 157 158
		f 3 -102 109 -113
		mu 0 3 159 160 161;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "plankPiece3" -p "SpecialPlank1";
	rename -uid "61AB63AE-A347-B75A-202C-8A8BB3327764";
	setAttr ".t" -type "double3" 0 -0.20003589729263849 -0.09147376701277829 ;
	setAttr ".rp" -type "double3" 1.9797153887639658 0.20054238310805139 0.014568429138370281 ;
	setAttr ".sp" -type "double3" 1.9797153887639658 0.20054238310805139 0.014568429138370281 ;
createNode mesh -n "plankPiece3Shape" -p "|Floor|SpecialPlank1|plankPiece3";
	rename -uid "A3B8B820-9045-FE8A-6960-6BB3639073DA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.6583564430475235 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 112 ".uvst[0].uvsp[0:111]" -type "float2" 0.31670839 0.30829161
		 0.43408549 0.36996171 0.42725751 0.8811388 0.31467125 0.43967128 0.47525978 0.36896199
		 0.50050652 0.87631726 0.50387299 0.3710345 0.49598229 0.88305902 0.50406778 0.36562777
		 0.52327621 0.87801766 0.55142099 0.37048247 0.55533183 0.88271362 0.55619377 0.36813226
		 0.58179629 0.87777829 0.68578303 0.310783 0.68525916 0.43974087 0.625 0.39350885
		 0.58372778 0.38768026 0.58713681 0.86380357 0.625 0.86123002 0.57589173 0.39159828
		 0.56599903 0.86007851 0.55870879 0.38934252 0.53175873 0.86368096 0.52489901 0.39064997
		 0.51629078 0.8573873 0.50760925 0.38748875 0.47286552 0.86314249 0.50248098 0.39241046
		 0.46930027 0.8614015 0.46903676 0.39054751 0.45509624 0.86447102 0.45086053 0.3954725
		 0.44368124 0.85911775 0.42892504 0.38893449 0.42113 0.86315906 0.41352624 0.39054573
		 0.40419152 0.85995203 0.30828711 0.31671289 0.30813873 0.43313876 1 1 0 1 1 1 0 1
		 1 1 0 1 0.5 1 0.5 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 0.5 1 0.5 1 1
		 1 0 1 1 1 0 1 0.5 1 0.5 1 1 1 0 1 1 1 0 1 0.5 1 0.5 1 1 1 0 1 1 1 0 1 1 1 0 1 0.068494275
		 0.94399995 0.96854043 0.94399995 0.068546638 0.93111014 0.96859282 0.93111014 0.055593699
		 0.93684238 0.95563984 0.93684238 0.055116639 0.93707728 0.95516282 0.93707728 0.050383504
		 0.93659204 0.95042968 0.93659204 0.050364036 0.93713248 0.95041019 0.93713248 0.047504034
		 0.93692535 0.94755018 0.93692535 0.043388508 0.93702525 0.94343466 0.93702525 0.031656217
		 0.93086112 0.93170238 0.93086112 0.031452596 0.94399297 0.93149877 0.94399297 0.042706024
		 0.98811936 0.94275218 0.98811936 0.050027546 0.98763746 0.95007372 0.98763746 0.049575329
		 0.98831129 0.9496215 0.98831129 0.052303463 0.98780739 0.95234966 0.98780739 0.055507544
		 0.98827678 0.95555371 0.98827678 0.058152769 0.98778349 0.95819896 0.98778349;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 57 ".pt";
	setAttr ".pt[16]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[17]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[18]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[19]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[20]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[21]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[22]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[23]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[24]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[25]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[26]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[27]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[28]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[29]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[30]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[31]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[32]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[33]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[34]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[35]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[36]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[37]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[38]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[39]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[40]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[41]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[42]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[43]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[44]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[45]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[46]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[47]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[48]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[49]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[50]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[51]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[52]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[53]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[54]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[55]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[56]" -type "float3" 2.2351742e-08 4.6566129e-09 0.011745155 ;
	setAttr ".pt[57]" -type "float3" 2.2351742e-08 -6.519258e-09 0.007887125 ;
	setAttr ".pt[58]" -type "float3" 7.4505806e-08 -6.519258e-09 0.022530943 ;
	setAttr ".pt[59]" -type "float3" 6.519258e-08 -6.519258e-09 0.0095615983 ;
	setAttr ".pt[60]" -type "float3" 2.514571e-08 -6.519258e-09 0.019366473 ;
	setAttr ".pt[61]" -type "float3" -3.2829121e-08 -6.519258e-09 0.010367185 ;
	setAttr ".pt[62]" -type "float3" 5.7742e-08 -6.519258e-09 0.020473421 ;
	setAttr ".pt[63]" -type "float3" -5.5879354e-08 -6.519258e-09 0.012654811 ;
	setAttr ".pt[64]" -type "float3" -2.2351742e-08 -6.519258e-09 0.014364243 ;
	setAttr ".pt[65]" -type "float3" -2.2351742e-08 4.6566129e-09 0.018185169 ;
	setAttr ".pt[66]" -type "float3" 2.2351742e-08 4.6566129e-09 0.0145953 ;
	setAttr ".pt[67]" -type "float3" -9.3132257e-09 4.6566129e-09 0.024233609 ;
	setAttr ".pt[68]" -type "float3" -4.4230546e-08 4.6566129e-09 0.010248899 ;
	setAttr ".pt[69]" -type "float3" -4.0046871e-08 4.6566129e-09 0.018241137 ;
	setAttr ".pt[70]" -type "float3" -2.9802322e-08 4.6566129e-09 0.0063765347 ;
	setAttr ".pt[71]" -type "float3" -2.6077032e-08 4.6566129e-09 0.021312952 ;
	setAttr -s 72 ".vt[0:71]"  2.079430819 0.22635442 0.31731001 2.046418428 0.22635442 0.17079437
		 2.020568132 0.22635442 0.30054799 1.98717403 0.22635442 0.20245761 1.96761322 0.22635442 0.29249114
		 1.94975781 0.22635442 0.19138174 1.90592504 0.22635442 0.2696045 1.87943077 0.22635442 0.25248984
		 2.079430819 0.17635441 0.27870259 1.9031136 0.17635441 0.25018719 1.87943077 0.17635441 0.21426274
		 1.94968224 0.17635441 0.15375727 1.95535302 0.17635441 0.29367027 1.99805188 0.17635441 0.21371707
		 2.023696184 0.17635441 0.3324101 2.044867754 0.17635441 0.18297727 1.88 0.22473037 -0.087558925
		 2.057155609 0.22473037 -0.16169238 2.04071331 0.22473037 -0.25100827 2.021449089 0.22473037 -0.18711182
		 2.0038321018 0.22473037 -0.24534687 1.98608768 0.22473037 -0.16881827 1.98198497 0.22473037 -0.26725322
		 1.95601261 0.22473037 -0.16112773 1.94068837 0.22473037 -0.30327326 1.91935718 0.22473037 -0.19773322
		 1.90325534 0.22473037 -0.24887325 1.88 0.17473035 -0.093493223 1.90335321 0.17473035 -0.22000325
		 1.91690433 0.17473035 -0.15586324 1.93494499 0.17473035 -0.23668827 1.94407701 0.17473035 -0.12962325
		 1.97343946 0.17473035 -0.21135989 1.99116027 0.17473035 -0.1288036 2.0016412735 0.17473035 -0.25251672
		 2.023406267 0.17473035 -0.14542326 2.037494659 0.17473035 -0.21747324 2.057535172 0.17473035 -0.13514765
		 2.079999924 0.22473037 -0.28921962 2.079999924 0.17473035 -0.19444326 2.079999924 0.22473037 0.022424173
		 2.04893446 0.22473037 0.022425029 2.047514915 0.17473035 0.02242532 2.079999924 0.17473035 0.022425141
		 2.021449089 0.22473037 0.022425208 2.023406267 0.17473035 0.022425625 2.0038321018 0.22473037 0.02242462
		 2.0016412735 0.17473035 0.022424545 1.98403633 0.22473037 0.022424892 1.9822998 0.17473035 0.022425376
		 1.94835043 0.22473037 0.022424761 1.93951106 0.17473035 0.022425259 1.91130626 0.22473037 0.022424849
		 1.91012883 0.17473035 0.022425203 1.88 0.22473037 0.022426207 1.88 0.17473035 0.022426147
		 2.079942942 0.17489268 0.048041053 2.079942942 0.22489271 0.051899143 2.048682928 0.22489271 0.037255112
		 2.021361113 0.22489271 0.050224647 2.0021669865 0.22489271 0.040419608 1.9823947 0.22489271 0.049419045
		 1.9484911 0.22489271 0.039312661 1.91076839 0.22489271 0.047131404 1.87994313 0.22489271 0.045421947
		 1.87994313 0.17489268 0.04160095 1.90942764 0.17489268 0.045190886 1.94052768 0.17489268 0.035552397
		 1.97960639 0.17489268 0.049537342 2.0012824535 0.17489268 0.041544966 2.023435116 0.17489268 0.053409763
		 2.047250271 0.17489268 0.038473103;
	setAttr -s 144 ".ed[0:143]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 0 8 0 9 10 0 11 9 0 12 11 0 13 12 0 14 13 0 15 14 0 8 15 0 10 7 0 1 15 0 2 14 0 3 13 0
		 4 12 0 5 11 0 6 9 0 38 17 0 17 18 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0
		 24 25 0 25 26 0 26 16 0 16 27 0 27 28 0 28 29 0 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0
		 34 35 0 35 36 0 36 37 0 37 39 0 38 39 0 26 28 0 25 29 0 24 30 0 23 31 0 22 32 0 21 33 0
		 20 34 0 19 35 0 18 36 0 17 37 0 38 40 0 17 41 0 40 41 0 37 42 0 39 43 0 42 43 0 40 43 0
		 18 41 0 36 42 0 19 44 0 41 44 0 35 45 0 45 42 0 20 46 0 44 46 0 34 47 0 47 45 0 21 48 0
		 46 48 0 33 49 0 49 47 0 22 48 0 32 49 0 23 50 0 48 50 0 31 51 0 51 49 0 24 50 0 30 51 0
		 25 52 0 50 52 0 29 53 0 53 51 0 26 52 0 28 53 0 16 54 0 52 54 0 27 55 0 54 55 0 55 53 0
		 7 64 0 6 63 0 5 62 0 4 61 0 3 60 0 2 59 0 1 58 0 0 57 0 8 56 0 15 71 0 14 70 0 13 69 0
		 12 68 0 11 67 0 9 66 0 10 65 0 56 43 0 57 40 0 56 57 1 58 41 0 57 58 1 59 44 0 58 59 1
		 60 46 0 59 60 1 61 48 0 60 61 1 62 50 0 61 62 1 63 52 0 62 63 1 64 54 0 63 64 1 65 55 0
		 64 65 1 66 53 0 65 66 1 67 51 0 66 67 1 68 49 0 67 68 1 69 47 0 68 69 1 70 45 0 69 70 1
		 71 42 0 70 71 1 71 56 1;
	setAttr -s 74 -ch 288 ".fc[0:73]" -type "polyFaces" 
		f 4 -7 97 128 -97
		mu 0 4 0 1 94 97
		f 4 -6 98 126 -98
		mu 0 4 1 4 92 95
		f 4 -5 99 124 -99
		mu 0 4 4 6 90 93
		f 4 -4 100 122 -100
		mu 0 4 6 8 88 91
		f 4 -3 101 120 -101
		mu 0 4 8 10 86 89
		f 4 -2 102 118 -102
		mu 0 4 10 12 84 87
		f 4 -1 103 116 -103
		mu 0 4 12 14 82 85
		f 4 0 16 -15 -8
		mu 0 4 14 12 13 15
		f 4 1 17 -14 -17
		mu 0 4 12 10 11 13
		f 4 2 18 -13 -18
		mu 0 4 10 8 9 11
		f 4 3 19 -12 -19
		mu 0 4 8 6 7 9
		f 4 4 20 -11 -20
		mu 0 4 6 4 5 7
		f 4 5 21 -10 -21
		mu 0 4 4 1 2 5
		f 4 6 -16 -9 -22
		mu 0 4 1 0 3 2
		f 4 -46 56 62 -61
		mu 0 4 19 16 44 45
		f 4 -33 46 -35 -34
		mu 0 4 38 36 37 39
		f 4 -32 47 -36 -47
		mu 0 4 36 34 35 37
		f 4 -31 48 -37 -48
		mu 0 4 34 32 33 35
		f 4 -30 49 -38 -49
		mu 0 4 32 30 31 33
		f 4 -29 50 -39 -50
		mu 0 4 30 28 29 31
		f 4 -28 51 -40 -51
		mu 0 4 28 26 27 29
		f 4 -27 52 -41 -52
		mu 0 4 26 24 25 27
		f 4 -26 53 -42 -53
		mu 0 4 24 22 23 25
		f 4 -25 54 -43 -54
		mu 0 4 22 20 21 23
		f 4 -24 55 -44 -55
		mu 0 4 20 17 18 21
		f 4 -23 45 -45 -56
		mu 0 4 17 16 19 18
		f 4 57 -59 -57 22
		mu 0 4 17 40 41 16
		f 4 60 -62 -60 44
		mu 0 4 19 42 43 18
		f 3 63 -58 23
		mu 0 3 20 46 17
		f 3 59 -65 43
		mu 0 3 18 47 21
		f 4 65 -67 -64 24
		mu 0 4 22 48 49 20
		f 4 64 -69 -68 42
		mu 0 4 21 50 51 23
		f 4 69 -71 -66 25
		mu 0 4 24 52 53 22
		f 4 67 -73 -72 41
		mu 0 4 23 54 55 25
		f 4 73 -75 -70 26
		mu 0 4 26 56 57 24
		f 4 71 -77 -76 40
		mu 0 4 25 58 59 27
		f 3 77 -74 27
		mu 0 3 28 60 26
		f 3 75 -79 39
		mu 0 3 27 61 29
		f 4 79 -81 -78 28
		mu 0 4 30 62 63 28
		f 4 78 -83 -82 38
		mu 0 4 29 64 65 31
		f 3 83 -80 29
		mu 0 3 32 66 30
		f 3 81 -85 37
		mu 0 3 31 67 33
		f 4 85 -87 -84 30
		mu 0 4 34 68 69 32
		f 4 84 -89 -88 36
		mu 0 4 33 70 71 35
		f 3 89 -86 31
		mu 0 3 36 72 34
		f 3 87 -91 35
		mu 0 3 35 73 37
		f 4 91 -93 -90 32
		mu 0 4 38 74 75 36
		f 4 93 -95 -92 33
		mu 0 4 39 76 77 38
		f 4 90 -96 -94 34
		mu 0 4 37 78 79 39
		f 4 104 114 -104 7
		mu 0 4 15 80 83 14
		f 4 105 143 -105 14
		mu 0 4 13 110 81 15
		f 4 106 142 -106 13
		mu 0 4 11 108 111 13
		f 4 107 140 -107 12
		mu 0 4 9 106 109 11
		f 4 108 138 -108 11
		mu 0 4 7 104 107 9
		f 4 109 136 -109 10
		mu 0 4 5 102 105 7
		f 4 110 134 -110 9
		mu 0 4 2 100 103 5
		f 4 111 132 -111 8
		mu 0 4 3 98 101 2
		f 4 96 130 -112 15
		mu 0 4 0 96 99 3
		f 4 112 -63 -114 -115
		mu 0 4 80 45 44 83
		f 4 -117 113 58 -116
		mu 0 4 85 82 41 40
		f 4 -119 115 66 -118
		mu 0 4 87 84 49 48
		f 4 -121 117 70 -120
		mu 0 4 89 86 53 52
		f 4 -123 119 74 -122
		mu 0 4 91 88 57 56
		f 4 -125 121 80 -124
		mu 0 4 93 90 63 62
		f 4 -127 123 86 -126
		mu 0 4 95 92 69 68
		f 4 -129 125 92 -128
		mu 0 4 97 94 75 74
		f 4 -131 127 94 -130
		mu 0 4 99 96 77 76
		f 4 -133 129 95 -132
		mu 0 4 101 98 79 78
		f 4 -135 131 88 -134
		mu 0 4 103 100 71 70
		f 4 -137 133 82 -136
		mu 0 4 105 102 65 64
		f 4 -139 135 76 -138
		mu 0 4 107 104 59 58
		f 4 -141 137 72 -140
		mu 0 4 109 106 55 54
		f 4 -143 139 68 -142
		mu 0 4 111 108 51 50
		f 4 -144 141 61 -113
		mu 0 4 81 110 43 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape1" -p "|Floor|SpecialPlank1|plankPiece3";
	rename -uid "86D01177-BA4F-95DE-B6A9-C39449841F2F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 80 ".uvst[0].uvsp[0:79]" -type "float2" 0.31670839 0.30829161
		 0.43408549 0.36996171 0.42725751 0.8811388 0.31467125 0.43967128 0.47525978 0.36896199
		 0.50050652 0.87631726 0.50387299 0.3710345 0.49598229 0.88305902 0.50406778 0.36562777
		 0.52327621 0.87801766 0.55142099 0.37048247 0.55533183 0.88271362 0.55619377 0.36813226
		 0.58179629 0.87777829 0.68578303 0.310783 0.68525916 0.43974087 0.625 0.39350885
		 0.58372778 0.38768026 0.58713681 0.86380357 0.625 0.86123002 0.57589173 0.39159828
		 0.56599903 0.86007851 0.55870879 0.38934252 0.53175873 0.86368096 0.52489901 0.39064997
		 0.51629078 0.8573873 0.50760925 0.38748875 0.47286552 0.86314249 0.50248098 0.39241046
		 0.46930027 0.8614015 0.46903676 0.39054751 0.45509624 0.86447102 0.45086053 0.3954725
		 0.44368124 0.85911775 0.42892504 0.38893449 0.42113 0.86315906 0.41352624 0.39054573
		 0.40419152 0.85995203 0.30828711 0.31671289 0.30813873 0.43313876 1 1 0 1 1 1 0 1
		 1 1 0 1 0.5 1 0.5 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 0.5 1 0.5 1 1
		 1 0 1 1 1 0 1 0.5 1 0.5 1 1 1 0 1 1 1 0 1 0.5 1 0.5 1 1 1 0 1 1 1 0 1 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt";
	setAttr ".pt[40]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[41]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[42]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[43]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[44]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[45]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[46]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[47]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[48]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[49]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[50]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[51]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[52]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[53]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[54]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[55]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr -s 56 ".vt[0:55]"  2.079430819 0.22635442 0.31731001 2.046418428 0.22635442 0.17079437
		 2.020568132 0.22635442 0.30054799 1.98717403 0.22635442 0.20245761 1.96761322 0.22635442 0.29249114
		 1.94975781 0.22635442 0.19138174 1.90592504 0.22635442 0.2696045 1.87943077 0.22635442 0.25248984
		 2.079430819 0.17635441 0.27870259 1.9031136 0.17635441 0.25018719 1.87943077 0.17635441 0.21426274
		 1.94968224 0.17635441 0.15375727 1.95535302 0.17635441 0.29367027 1.99805188 0.17635441 0.21371707
		 2.023696184 0.17635441 0.3324101 2.044867754 0.17635441 0.18297727 1.88 0.22473037 -0.087558925
		 2.057155609 0.22473037 -0.16169238 2.04071331 0.22473037 -0.25100827 2.021449089 0.22473037 -0.18711182
		 2.0038321018 0.22473037 -0.24534687 1.98608768 0.22473037 -0.16881827 1.98198497 0.22473037 -0.26725322
		 1.95601261 0.22473037 -0.16112773 1.94068837 0.22473037 -0.30327326 1.91935718 0.22473037 -0.19773322
		 1.90325534 0.22473037 -0.24887325 1.88 0.17473035 -0.093493223 1.90335321 0.17473035 -0.22000325
		 1.91690433 0.17473035 -0.15586324 1.93494499 0.17473035 -0.23668827 1.94407701 0.17473035 -0.12962325
		 1.97343946 0.17473035 -0.21135989 1.99116027 0.17473035 -0.1288036 2.0016412735 0.17473035 -0.25251672
		 2.023406267 0.17473035 -0.14542326 2.037494659 0.17473035 -0.21747324 2.057535172 0.17473035 -0.13514765
		 2.079999924 0.22473037 -0.28921962 2.079999924 0.17473035 -0.19444326 2.079999924 0.22473037 -0.022393476
		 2.04893446 0.22473037 -0.022392619 2.047514915 0.17473035 -0.022392329 2.079999924 0.17473035 -0.022392508
		 2.021449089 0.22473037 -0.022392441 2.023406267 0.17473035 -0.022392023 2.0038321018 0.22473037 -0.022393029
		 2.0016412735 0.17473035 -0.022393104 1.98403633 0.22473037 -0.022392757 1.9822998 0.17473035 -0.022392273
		 1.94835043 0.22473037 -0.022392888 1.93951106 0.17473035 -0.02239239 1.91130626 0.22473037 -0.0223928
		 1.91012883 0.17473035 -0.022392446 1.88 0.22473037 -0.022391442 1.88 0.17473035 -0.022391502;
	setAttr -s 112 ".ed[0:111]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 0 8 0 9 10 0 11 9 0 12 11 0 13 12 0 14 13 0 15 14 0 8 15 0 10 7 0 1 15 0 2 14 0 3 13 0
		 4 12 0 5 11 0 6 9 0 38 17 0 17 18 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0
		 24 25 0 25 26 0 26 16 0 16 27 0 27 28 0 28 29 0 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0
		 34 35 0 35 36 0 36 37 0 37 39 0 38 39 0 26 28 0 25 29 0 24 30 0 23 31 0 22 32 0 21 33 0
		 20 34 0 19 35 0 18 36 0 17 37 0 38 40 0 17 41 0 40 41 0 37 42 0 39 43 0 42 43 0 40 43 0
		 18 41 0 36 42 0 19 44 0 41 44 0 35 45 0 45 42 0 20 46 0 44 46 0 34 47 0 47 45 0 21 48 0
		 46 48 0 33 49 0 49 47 0 22 48 0 32 49 0 23 50 0 48 50 0 31 51 0 51 49 0 24 50 0 30 51 0
		 25 52 0 50 52 0 29 53 0 53 51 0 26 52 0 28 53 0 16 54 0 52 54 0 27 55 0 54 55 0 55 53 0
		 7 54 0 6 52 0 5 50 0 4 48 0 3 46 0 2 44 0 1 41 0 0 40 0 8 43 0 15 42 0 14 45 0 13 47 0
		 12 49 0 11 51 0 9 53 0 10 55 0;
	setAttr -s 58 -ch 224 ".fc[0:57]" -type "polyFaces" 
		f 4 -7 97 92 -97
		mu 0 4 0 1 75 74
		f 4 -6 98 86 -98
		mu 0 4 1 4 69 68
		f 4 -5 99 80 -99
		mu 0 4 4 6 63 62
		f 4 -4 100 74 -100
		mu 0 4 6 8 57 56
		f 4 -3 101 70 -101
		mu 0 4 8 10 53 52
		f 4 -2 102 66 -102
		mu 0 4 10 12 49 48
		f 4 -1 103 58 -103
		mu 0 4 12 14 41 40
		f 4 0 16 -15 -8
		mu 0 4 14 12 13 15
		f 4 1 17 -14 -17
		mu 0 4 12 10 11 13
		f 4 2 18 -13 -18
		mu 0 4 10 8 9 11
		f 4 3 19 -12 -19
		mu 0 4 8 6 7 9
		f 4 4 20 -11 -20
		mu 0 4 6 4 5 7
		f 4 5 21 -10 -21
		mu 0 4 4 1 2 5
		f 4 6 -16 -9 -22
		mu 0 4 1 0 3 2
		f 4 -46 56 62 -61
		mu 0 4 19 16 44 45
		f 4 -33 46 -35 -34
		mu 0 4 38 36 37 39
		f 4 -32 47 -36 -47
		mu 0 4 36 34 35 37
		f 4 -31 48 -37 -48
		mu 0 4 34 32 33 35
		f 4 -30 49 -38 -49
		mu 0 4 32 30 31 33
		f 4 -29 50 -39 -50
		mu 0 4 30 28 29 31
		f 4 -28 51 -40 -51
		mu 0 4 28 26 27 29
		f 4 -27 52 -41 -52
		mu 0 4 26 24 25 27
		f 4 -26 53 -42 -53
		mu 0 4 24 22 23 25
		f 4 -25 54 -43 -54
		mu 0 4 22 20 21 23
		f 4 -24 55 -44 -55
		mu 0 4 20 17 18 21
		f 4 -23 45 -45 -56
		mu 0 4 17 16 19 18
		f 4 57 -59 -57 22
		mu 0 4 17 40 41 16
		f 4 60 -62 -60 44
		mu 0 4 19 42 43 18
		f 3 63 -58 23
		mu 0 3 20 46 17
		f 3 59 -65 43
		mu 0 3 18 47 21
		f 4 65 -67 -64 24
		mu 0 4 22 48 49 20
		f 4 64 -69 -68 42
		mu 0 4 21 50 51 23
		f 4 69 -71 -66 25
		mu 0 4 24 52 53 22
		f 4 67 -73 -72 41
		mu 0 4 23 54 55 25
		f 4 73 -75 -70 26
		mu 0 4 26 56 57 24
		f 4 71 -77 -76 40
		mu 0 4 25 58 59 27
		f 3 77 -74 27
		mu 0 3 28 60 26
		f 3 75 -79 39
		mu 0 3 27 61 29
		f 4 79 -81 -78 28
		mu 0 4 30 62 63 28
		f 4 78 -83 -82 38
		mu 0 4 29 64 65 31
		f 3 83 -80 29
		mu 0 3 32 66 30
		f 3 81 -85 37
		mu 0 3 31 67 33
		f 4 85 -87 -84 30
		mu 0 4 34 68 69 32
		f 4 84 -89 -88 36
		mu 0 4 33 70 71 35
		f 3 89 -86 31
		mu 0 3 36 72 34
		f 3 87 -91 35
		mu 0 3 35 73 37
		f 4 91 -93 -90 32
		mu 0 4 38 74 75 36
		f 4 93 -95 -92 33
		mu 0 4 39 76 77 38
		f 4 90 -96 -94 34
		mu 0 4 37 78 79 39
		f 4 104 -63 -104 7
		mu 0 4 15 45 44 14
		f 4 105 61 -105 14
		mu 0 4 13 43 42 15
		f 4 106 68 -106 13
		mu 0 4 11 51 50 13
		f 4 107 72 -107 12
		mu 0 4 9 55 54 11
		f 4 108 76 -108 11
		mu 0 4 7 59 58 9
		f 4 109 82 -109 10
		mu 0 4 5 65 64 7
		f 4 110 88 -110 9
		mu 0 4 2 71 70 5
		f 4 111 95 -111 8
		mu 0 4 3 79 78 2
		f 4 96 94 -112 15
		mu 0 4 0 77 76 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "specialplank3b" -p "SpecialPlank1";
	rename -uid "46A86B1B-3649-62BC-A74E-C7BDF61E7943";
	setAttr ".t" -type "double3" 0 0 -0.71504445218239798 ;
	setAttr ".rp" -type "double3" 1.9800000000000002 0.0042442671105761103 -1.2502669111667508 ;
	setAttr ".sp" -type "double3" 1.9800000000000002 0.0042442671105761103 -1.2502669111667508 ;
createNode mesh -n "specialplank3bShape" -p "|Floor|SpecialPlank1|specialplank3b";
	rename -uid "975E5804-1447-BEDF-B941-7792F81C73E0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 228 ".uvst[0].uvsp[0:227]" -type "float2" 0.65414357 0.15835644
		 0.41352624 0.39054573 0.40419152 0.85995203 0.15406936 0.21656938 0.42892504 0.38893449
		 0.42113 0.86315906 0.45086053 0.3954725 0.44368124 0.85911775 0.46903676 0.39054751
		 0.45509624 0.86447102 0.50248098 0.39241046 0.46930027 0.8614015 0.50760925 0.38748875
		 0.47286552 0.86314249 0.52489901 0.39064997 0.51629078 0.8573873 0.55870879 0.38934252
		 0.53175873 0.86368096 0.57589173 0.39159828 0.56599903 0.86007851 0.58372778 0.38768026
		 0.58713681 0.86380357 0.3125 0.19675443 0.8125 0.43061501 0.30828711 0.31671289 0.41352624
		 0.39054573 0.40419152 0.85995203 0.30813873 0.43313876 0.42892504 0.38893449 0.42113
		 0.86315906 0.45086053 0.3954725 0.44368124 0.85911775 0.46903676 0.39054751 0.45509624
		 0.86447102 0.50248098 0.39241046 0.46930027 0.8614015 0.50760925 0.38748875 0.47286552
		 0.86314249 0.52489901 0.39064997 0.51629078 0.8573873 0.55870879 0.38934252 0.53175873
		 0.86368096 0.57589173 0.39159828 0.56599903 0.86007851 0.58372778 0.38768026 0.58713681
		 0.86380357 0.625 0.39350885 0.625 0.86123002 0 0 1 0 0.5 1 0 0 1 0 0.5 1 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5
		 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.375
		 0.5 0.625 0.5 0.625 0.75 0.375 0.75 1 1 1 1 1 0 1 1 1 0 0 1 0 0 0 1 0 0 0 1 0 0 0
		 1 0 0 0 1 0 1 1 1 1 0 1 1 1 0 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 13 ".pt";
	setAttr ".pt[25]" -type "float3" -4.6566129e-10 -2.3283064e-10 0 ;
	setAttr ".pt[72]" -type "float3" 0 0 -0.011700097 ;
	setAttr ".pt[73]" -type "float3" 0 0 -0.011700157 ;
	setAttr ".pt[74]" -type "float3" 0 0 -0.011700097 ;
	setAttr ".pt[75]" -type "float3" 0 0 -0.011700157 ;
	setAttr ".pt[76]" -type "float3" 0 0 0.72991019 ;
	setAttr ".pt[77]" -type "float3" 0 0 0.72991019 ;
	setAttr ".pt[78]" -type "float3" 0 0 0.72991019 ;
	setAttr ".pt[79]" -type "float3" 0 0 0.72991019 ;
	setAttr -s 92 ".vt[0:91]"  1.90325534 0.025004502 -0.14752811 1.88 0.025004502 0.013786197
		 1.90335321 -0.024995517 -0.11865813 1.88 -0.024995517 0.0078518689 1.91935718 0.025004502 -0.096388072
		 1.91690433 -0.024995517 -0.054518163 1.94068837 0.025004502 -0.2019282 1.93494499 -0.024995517 -0.13534313
		 1.95601261 0.025004502 -0.059782594 1.94407701 -0.024995517 -0.028278083 1.98198497 0.025004502 -0.16590807
		 1.97343946 -0.024995517 -0.11001486 1.98608768 0.025004502 -0.067473114 1.99116027 -0.024995517 -0.027458429
		 2.0038321018 0.025004502 -0.14400172 2.0016412735 -0.024995517 -0.15117159 2.021449089 0.025004502 -0.085766643
		 2.023406267 -0.024995517 -0.044078141 2.04071331 0.025004502 -0.14966327 2.037494659 -0.024995517 -0.11612806
		 2.057155609 0.025004502 -0.060347199 2.057535172 -0.024995517 -0.033802539 2.079999924 0.025004502 -0.1878745
		 2.079999924 -0.024995517 -0.093098164 1.89488435 0.025004502 -0.2133708 1.88 0.025004502 -0.21336916
		 1.89498222 -0.024995517 -0.21337053 1.88 -0.024995517 -0.21336916 1.91086221 0.025004502 -0.21337023
		 1.90840936 -0.024995517 -0.21336976 1.92519236 0.025004502 -0.21337125 1.91944873 -0.024995517 -0.21337065
		 1.94811237 0.025004502 -0.21336994 1.93997502 -0.024995517 -0.21336961 1.96262634 0.025004502 -0.21337095
		 1.95726287 -0.024995517 -0.21337035 1.9976176 0.025004502 -0.21336994 1.99323106 -0.024995517 -0.21336961
		 2.011740208 0.025004502 -0.2133708 2.021632195 -0.024995517 -0.2133708 2.031912804 0.025004502 -0.2133702
		 2.033869743 -0.024995517 -0.21336976 2.05401516 0.025004502 -0.2133708 2.050796509 -0.024995517 -0.2133705
		 2.068802357 0.025004502 -0.21336994 2.069181919 -0.024995517 -0.21336964 2.079999924 0.025004502 -0.21337113
		 2.079999924 -0.024995517 -0.2133702 1.88775873 0.025004502 -0.22719029 1.88774097 -0.024995517 -0.2271902
		 1.90387464 0.025004502 -0.22719109 1.90211666 -0.024995517 -0.22719058 1.95536923 0.025004502 -0.22719079
		 1.94861913 -0.024995517 -0.22719032 2.0046789646 0.025004502 -0.22719073 2.0074315071 -0.024995517 -0.22719049
		 2.05875802 0.025004502 -0.22719079 2.055297852 -0.024995517 -0.22719046 2.074076653 0.025004502 -0.22719088
		 2.074304581 -0.024995517 -0.22719029 1.88775873 0.025004502 -0.23753893 1.88774097 -0.024995517 -0.23753887
		 1.90016317 0.025004502 -0.23753959 1.89488101 -0.024995517 -0.23753905 2.031718493 0.025004502 -0.23753947
		 2.032601595 -0.024995517 -0.23753911 2.074076653 0.025004502 -0.23753953 2.074304581 -0.024995517 -0.23753893
		 1.88750637 0.025004502 -0.24771932 1.8873539 -0.024995517 -0.24771896 2.073477983 0.025004502 -0.24771956
		 2.073866129 -0.024995517 -0.24771908 1.88 0.025 -0.26353899 1.88 -0.025 -0.26353899
		 2.079999924 0.025 -0.26353899 2.079999924 -0.025 -0.26353899 1.88 0.025 -2.5143199
		 2.079999924 0.025 -2.5143199 2.079999924 -0.025 -2.5143199 1.88 -0.025 -2.5143199
		 2.07999897 -0.024995517 -0.24771908 2.079999208 -0.024995517 -0.23753893 2.079999685 -0.024995517 -0.22719029
		 2.080000639 0.025004502 -0.24771956 2.080000401 0.025004502 -0.23753953 2.080000401 0.025004502 -0.22719088
		 1.88000107 -0.024995517 -0.2271902 1.88000202 -0.024995517 -0.23753887 1.88000298 -0.024995517 -0.24771896
		 1.87999988 0.025004502 -0.22719029 1.87999964 0.025004502 -0.23753893 1.8799994 0.025004502 -0.24771932;
	setAttr -s 194 ".ed";
	setAttr ".ed[0:165]"  0 1 0 3 2 0 1 3 0 4 0 0 2 5 0 6 4 0 5 7 0 8 6 0 7 9 0
		 10 8 0 9 11 0 12 10 0 11 13 0 14 12 0 13 15 0 16 14 0 15 17 0 18 16 0 17 19 0 20 18 0
		 19 21 0 22 20 0 22 23 0 21 23 0 0 24 0 1 25 0 24 25 0 2 26 0 3 27 0 27 26 0 25 27 0
		 4 28 0 28 24 0 5 29 0 26 29 0 6 30 0 30 28 0 7 31 0 29 31 0 8 32 0 32 30 0 9 33 0
		 31 33 0 10 34 0 34 32 0 11 35 0 33 35 0 12 36 0 36 34 0 13 37 0 35 37 0 14 38 0 38 36 0
		 15 39 0 37 39 0 16 40 0 40 38 0 17 41 0 39 41 0 18 42 0 42 40 0 19 43 0 41 43 0 20 44 0
		 44 42 0 21 45 0 43 45 0 22 46 0 46 44 0 23 47 0 46 47 0 45 47 0 20 21 0 18 19 0 16 17 0
		 14 15 0 12 13 0 10 11 0 8 9 0 6 7 0 4 5 0 0 2 0 24 48 0 25 48 0 27 49 0 26 49 0 28 50 0
		 50 48 0 29 51 0 49 51 0 30 50 0 31 51 0 32 52 0 52 50 0 33 53 0 51 53 0 34 52 0 35 53 0
		 36 54 0 54 52 0 37 55 0 53 55 0 38 54 0 39 55 0 40 56 0 56 54 0 41 57 0 55 57 0 42 56 0
		 43 57 0 44 58 0 58 56 0 45 59 0 57 59 0 46 58 0 47 59 0 48 60 0 49 61 0 50 62 0 62 60 0
		 51 63 0 61 63 0 52 62 0 53 63 0 54 64 0 64 62 0 55 65 0 63 65 0 56 64 0 57 65 0 58 66 0
		 66 64 0 59 67 0 65 67 0 60 68 0 61 69 0 62 68 0 63 69 0 64 70 0 70 68 0 65 71 0 69 71 0
		 66 70 0 67 71 0 72 74 0 73 75 0 72 73 0 74 75 0 72 76 0 74 77 0 76 77 0 75 78 0 77 78 0
		 73 79 0 79 78 0 76 79 0 69 73 0 68 72 0 70 74 0 71 75 0 59 82 0 58 85 0 67 81 0 66 84 0
		 71 80 0 70 83 0;
	setAttr ".ed[166:193]" 75 80 0 80 81 0 81 82 0 82 47 0 74 83 0 83 84 0 84 85 0
		 85 46 0 82 85 0 81 84 0 80 83 0 48 89 0 49 86 0 60 90 0 61 87 0 68 91 0 69 88 0 27 86 0
		 86 87 0 87 88 0 88 73 0 25 89 0 89 90 0 90 91 0 91 72 0 88 91 0 87 90 0 86 89 0;
	setAttr -s 104 -ch 388 ".fc[0:103]" -type "polyFaces" 
		f 4 -1 24 26 -26
		mu 0 4 24 25 1 0
		f 4 -2 28 29 -28
		mu 0 4 26 27 3 2
		f 4 -3 25 30 -29
		mu 0 4 27 24 0 3
		f 4 -4 31 32 -25
		mu 0 4 25 28 4 1
		f 4 -5 27 34 -34
		mu 0 4 29 26 2 5
		f 4 -6 35 36 -32
		mu 0 4 28 30 6 4
		f 4 -7 33 38 -38
		mu 0 4 31 29 5 7
		f 4 -8 39 40 -36
		mu 0 4 30 32 8 6
		f 4 -9 37 42 -42
		mu 0 4 33 31 7 9
		f 4 -10 43 44 -40
		mu 0 4 32 34 10 8
		f 4 -11 41 46 -46
		mu 0 4 35 33 9 11
		f 4 -12 47 48 -44
		mu 0 4 34 36 12 10
		f 4 -13 45 50 -50
		mu 0 4 37 35 11 13
		f 4 -14 51 52 -48
		mu 0 4 36 38 14 12
		f 4 -15 49 54 -54
		mu 0 4 39 37 13 15
		f 4 -16 55 56 -52
		mu 0 4 38 40 16 14
		f 4 -17 53 58 -58
		mu 0 4 41 39 15 17
		f 4 -18 59 60 -56
		mu 0 4 40 42 18 16
		f 4 -19 57 62 -62
		mu 0 4 43 41 17 19
		f 4 -20 63 64 -60
		mu 0 4 42 44 20 18
		f 4 -21 61 66 -66
		mu 0 4 45 43 19 21
		f 4 -22 67 68 -64
		mu 0 4 44 46 22 20
		f 4 22 69 -71 -68
		mu 0 4 46 47 23 22
		f 4 -24 65 71 -70
		mu 0 4 47 45 21 23
		f 4 21 72 23 -23
		mu 0 4 46 44 45 47
		f 4 19 73 20 -73
		mu 0 4 44 42 43 45
		f 4 17 74 18 -74
		mu 0 4 42 40 41 43
		f 4 15 75 16 -75
		mu 0 4 40 38 39 41
		f 4 13 76 14 -76
		mu 0 4 38 36 37 39
		f 4 11 77 12 -77
		mu 0 4 36 34 35 37
		f 4 9 78 10 -78
		mu 0 4 34 32 33 35
		f 4 7 79 8 -79
		mu 0 4 32 30 31 33
		f 4 5 80 6 -80
		mu 0 4 30 28 29 31
		f 4 3 81 4 -81
		mu 0 4 28 25 26 29
		f 4 0 2 1 -82
		mu 0 4 25 24 27 26
		f 3 -27 82 -84
		mu 0 3 48 49 50
		f 3 -30 84 -86
		mu 0 3 51 52 53
		f 4 -33 86 87 -83
		mu 0 4 56 57 58 59
		f 4 -35 85 89 -89
		mu 0 4 60 61 62 63
		f 3 -37 90 -87
		mu 0 3 64 65 66
		f 3 -39 88 -92
		mu 0 3 67 68 69
		f 4 -41 92 93 -91
		mu 0 4 70 71 72 73
		f 4 -43 91 95 -95
		mu 0 4 74 75 76 77
		f 3 -45 96 -93
		mu 0 3 78 79 80
		f 3 -47 94 -98
		mu 0 3 81 82 83
		f 4 -49 98 99 -97
		mu 0 4 84 85 86 87
		f 4 -51 97 101 -101
		mu 0 4 88 89 90 91
		f 3 -53 102 -99
		mu 0 3 92 93 94
		f 3 -55 100 -104
		mu 0 3 95 96 97
		f 4 -57 104 105 -103
		mu 0 4 98 99 100 101
		f 4 -59 103 107 -107
		mu 0 4 102 103 104 105
		f 3 -61 108 -105
		mu 0 3 106 107 108
		f 3 -63 106 -110
		mu 0 3 109 110 111
		f 4 -65 110 111 -109
		mu 0 4 112 113 114 115
		f 4 -67 109 113 -113
		mu 0 4 116 117 118 119
		f 3 -69 114 -111
		mu 0 3 120 121 122
		f 3 -72 112 -116
		mu 0 3 125 126 127
		f 4 -88 118 119 -117
		mu 0 4 132 133 134 135
		f 4 -90 117 121 -121
		mu 0 4 136 137 138 139
		f 3 -94 122 -119
		mu 0 3 140 141 142
		f 3 -96 120 -124
		mu 0 3 143 144 145
		f 4 -100 124 125 -123
		mu 0 4 146 147 148 149
		f 4 -102 123 127 -127
		mu 0 4 150 151 152 153
		f 3 -106 128 -125
		mu 0 3 154 155 156
		f 3 -108 126 -130
		mu 0 3 157 158 159
		f 4 -112 130 131 -129
		mu 0 4 160 161 162 163
		f 4 -114 129 133 -133
		mu 0 4 164 165 166 167
		f 3 -120 136 -135
		mu 0 3 176 177 178
		f 3 -122 135 -138
		mu 0 3 179 180 181
		f 4 -126 138 139 -137
		mu 0 4 182 183 184 185
		f 4 -128 137 141 -141
		mu 0 4 186 187 188 189
		f 3 -132 142 -139
		mu 0 3 190 191 192
		f 3 -134 140 -144
		mu 0 3 193 194 195
		f 4 150 152 -155 -156
		mu 0 4 200 201 202 203
		f 4 144 149 -151 -149
		mu 0 4 204 205 201 200
		f 4 147 151 -153 -150
		mu 0 4 205 206 202 201
		f 4 -146 153 154 -152
		mu 0 4 206 207 203 202
		f 4 -147 148 155 -154
		mu 0 4 207 204 200 203
		f 4 -140 158 -145 -158
		mu 0 4 185 184 205 204
		f 4 -142 156 145 -160
		mu 0 4 189 188 207 206
		f 3 115 160 169
		mu 0 3 23 123 211
		f 4 132 162 168 -161
		mu 0 4 169 170 209 212
		f 4 143 164 167 -163
		mu 0 4 197 198 208 210
		f 3 159 166 -165
		mu 0 3 198 206 208
		f 3 -159 165 -171
		mu 0 3 205 199 213
		f 4 -143 163 -172 -166
		mu 0 4 199 196 214 213
		f 4 -131 161 -173 -164
		mu 0 4 171 168 216 215
		f 3 -115 -174 -162
		mu 0 3 124 22 217
		f 4 -170 174 173 70
		mu 0 4 23 211 217 22
		f 4 -169 175 172 -175
		mu 0 4 212 209 215 216
		f 4 -168 176 171 -176
		mu 0 4 210 208 213 214
		f 4 -167 -148 170 -177
		mu 0 4 208 206 205 213
		f 3 -85 183 -179
		mu 0 3 55 3 219
		f 4 -118 178 184 -181
		mu 0 4 131 128 218 221
		f 4 -136 180 185 -183
		mu 0 4 175 172 220 222
		f 3 -157 182 186
		mu 0 3 207 175 222
		f 3 83 177 -188
		mu 0 3 0 54 223
		f 4 116 179 -189 -178
		mu 0 4 129 130 225 224
		f 4 134 181 -190 -180
		mu 0 4 173 174 227 226
		f 3 157 -191 -182
		mu 0 3 174 204 227
		f 4 -187 191 190 146
		mu 0 4 207 222 227 204
		f 4 -186 192 189 -192
		mu 0 4 222 220 226 227
		f 4 -185 193 188 -193
		mu 0 4 221 218 224 225
		f 4 -184 -31 187 -194
		mu 0 4 219 3 0 223;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "SpecialPlank2" -p "Floor";
	rename -uid "20D063AB-AE4A-97F5-298F-CF89A542F8F7";
	setAttr ".t" -type "double3" 2.862962828487333 0 0 ;
createNode transform -n "specialplank3a" -p "SpecialPlank2";
	rename -uid "8768BB6F-F044-FD23-848B-A794F82D0599";
	setAttr ".t" -type "double3" 1.98 0 0 ;
	setAttr ".s" -type "double3" 0.2 0.05 5 ;
createNode mesh -n "specialplank3aShape" -p "|Floor|SpecialPlank2|specialplank3a";
	rename -uid "CD70DDDB-2545-A32F-B834-9EA359685F6D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 162 ".uvst[0].uvsp[0:161]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 1 0.625 1 0.68578303 0.310783 0.55619377 0.36813226 0.58179629
		 0.87777829 0.68525916 0.43974087 0.55142099 0.37048247 0.55533183 0.88271362 0.50406778
		 0.36562777 0.52327621 0.87801766 0.50387299 0.3710345 0.49598229 0.88305902 0.47525978
		 0.36896199 0.50050652 0.87631726 0.43408549 0.36996171 0.42725751 0.8811388 0.31670839
		 0.30829161 0.31467125 0.43967128 0.68578303 0.310783 0.55619377 0.36813226 0.58179629
		 0.87777829 0.68525916 0.43974087 0.55142099 0.37048247 0.55533183 0.88271362 0.50406778
		 0.36562777 0.52327621 0.87801766 0.50387299 0.3710345 0.49598229 0.88305902 0.47525978
		 0.36896199 0.50050652 0.87631726 0.43408549 0.36996171 0.42725751 0.8811388 0.31670839
		 0.30829161 0.31467125 0.43967128 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0
		 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 13 ".pt";
	setAttr ".pt[47]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".pt[49]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".pt[50]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".pt[51]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".pt[52]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".pt[53]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr -s 58 ".vt[0:57]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.045077659 0.334939 0.5 0.015774548 0.32718563 -0.5 0.01821111 0.5 -0.5 0.037356168
		 0.20568657 0.5 0.041725259 0.22132778 -0.5 0.048097685 0.038716316 0.5 0.022107193
		 0.09310627 -0.5 0.024359079 -0.059087753 0.5 0.040113896 -0.12038803 -0.5 0.040349707
		 -0.14836407 0.5 0.019891996 -0.14874268 -0.5 0.012367113 -0.36752796 0.5 0.035536554
		 -0.38158512 -0.5 0.031653076 -0.5 0.5 0.032113627 -0.5 -0.5 0.024468206 0.5 0.5 0.051209148
		 0.40236092 0.5 0.05120885 0.35116196 -0.5 0.05120888 0.5 -0.5 0.05120907 0.31052971 0.5 0.051209118
		 0.27631378 -0.5 0.051209178 0.21718025 0.5 0.051208921 0.15753651 -0.5 0.051208939
		 0.15022469 0.5 0.0512091 -0.02610302 -0.5 0.0512091 -0.25677395 0.5 0.051208891 -0.14874268 -0.5 0.051208824
		 -0.36752796 0.5 0.051209044 -0.38158512 -0.5 0.05120901 -0.5 0.5 0.051209021 -0.5 -0.5 0.051208939
		 0.5 0.4999986 0.054988962 0.41665268 0.5 0.054988798 0.5 -0.50000143 0.054988887
		 0.36059284 -0.5 0.054988842 0.32291031 0.5 0.054988828 0.26010323 -0.5 0.054988839
		 -0.36941528 0.5 0.05498879 -0.26516724 -0.5 0.054988738 -0.5 0.49999845 0.054988839
		 -0.5 -0.50000155 0.054988753 0.5 0.4999986 0.057367522 0.45848656 0.5 0.057367373
		 0.5 -0.50000143 0.057367451 0.41435146 -0.5 0.057367403 -0.41955471 0.5 0.057367351
		 -0.26721096 -0.5 0.057367302 -0.5 0.49999845 0.057367396 -0.5 -0.50000155 0.057367314
		 0.49822807 0.49999928 0.059866499 0.5006218 -0.50000072 0.059866484 -0.49999619 0.49999923 0.059866425
		 -0.49973488 -0.50000077 0.059866365;
	setAttr -s 118 ".ed[0:117]"  0 1 0 2 3 0 0 2 0 1 3 0 4 5 0 7 6 0 4 7 0
		 5 8 0 6 9 0 8 10 0 9 11 0 10 12 0 11 13 0 12 14 0 13 15 0 14 16 0 15 17 0 16 18 0
		 19 18 0 17 19 0 4 20 0 5 21 0 20 21 1 6 22 0 7 23 0 23 22 1 20 23 1 8 24 0 21 24 1
		 9 25 0 22 25 1 10 26 0 24 26 1 11 27 0 25 27 1 12 28 0 26 28 1 13 29 0 27 29 1 14 30 0
		 28 30 1 15 31 0 29 31 1 16 32 0 30 32 1 17 33 0 31 33 1 18 34 0 32 34 1 19 35 0 35 34 1
		 33 35 1 16 17 0 14 15 0 12 13 0 10 11 0 8 9 0 5 6 0 20 36 0 21 37 1 36 37 0 23 38 0
		 22 39 1 38 39 0 36 38 0 24 37 1 25 39 1 26 40 1 37 40 0 27 41 1 39 41 0 28 40 1 29 41 1
		 30 42 1 40 42 0 31 43 1 41 43 0 32 42 1 33 43 1 34 44 0 42 44 0 35 45 0 45 44 0 43 45 0
		 36 46 0 37 47 0 46 47 0 38 48 0 39 49 0 48 49 0 46 48 0 40 47 0 41 49 0 42 50 0 47 50 0
		 43 51 0 49 51 0 44 52 0 50 52 0 45 53 0 53 52 0 51 53 0 46 54 0 47 54 0 48 55 0 49 55 0
		 54 55 0 50 56 0 54 56 0 51 57 0 55 57 0 52 56 0 53 57 0 57 56 0 2 56 0 3 54 0 1 55 0
		 0 57 0;
	setAttr -s 62 -ch 236 ".fc[0:61]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 0 1 3 2
		f 4 1 115 108 -115
		mu 0 4 2 3 147 146
		f 4 -4 116 -107 -116
		mu 0 4 3 1 143 142
		f 4 -1 117 -111 -117
		mu 0 4 5 4 151 150
		f 4 2 114 -114 -118
		mu 0 4 0 2 158 157
		f 4 4 21 -23 -21
		mu 0 4 6 7 23 22
		f 4 -6 24 25 -24
		mu 0 4 8 9 25 24
		f 4 -7 20 26 -25
		mu 0 4 9 6 22 25
		f 4 7 27 -29 -22
		mu 0 4 7 10 26 23
		f 4 -9 23 30 -30
		mu 0 4 11 8 24 27
		f 4 9 31 -33 -28
		mu 0 4 10 12 28 26
		f 4 -11 29 34 -34
		mu 0 4 13 11 27 29
		f 4 11 35 -37 -32
		mu 0 4 12 14 30 28
		f 4 -13 33 38 -38
		mu 0 4 15 13 29 31
		f 4 13 39 -41 -36
		mu 0 4 14 16 32 30
		f 4 -15 37 42 -42
		mu 0 4 17 15 31 33
		f 4 15 43 -45 -40
		mu 0 4 16 18 34 32
		f 4 -17 41 46 -46
		mu 0 4 19 17 33 35
		f 4 17 47 -49 -44
		mu 0 4 18 20 36 34
		f 4 -19 49 50 -48
		mu 0 4 20 21 37 36
		f 4 -20 45 51 -50
		mu 0 4 21 19 35 37
		f 4 -18 52 19 18
		mu 0 4 20 18 19 21
		f 4 -16 53 16 -53
		mu 0 4 18 16 17 19
		f 4 -14 54 14 -54
		mu 0 4 16 14 15 17
		f 4 -12 55 12 -55
		mu 0 4 14 12 13 15
		f 4 -10 56 10 -56
		mu 0 4 12 10 11 13
		f 4 -8 57 8 -57
		mu 0 4 10 7 8 11
		f 4 -5 6 5 -58
		mu 0 4 7 6 9 8
		f 4 22 59 -61 -59
		mu 0 4 38 39 40 41
		f 4 -26 61 63 -63
		mu 0 4 42 43 44 45
		f 4 -27 58 64 -62
		mu 0 4 46 47 48 49
		f 3 28 65 -60
		mu 0 3 50 51 52
		f 3 -31 62 -67
		mu 0 3 53 54 55
		f 4 32 67 -69 -66
		mu 0 4 56 57 58 59
		f 4 -35 66 70 -70
		mu 0 4 60 61 62 63
		f 3 36 71 -68
		mu 0 3 64 65 66
		f 3 -39 69 -73
		mu 0 3 67 68 69
		f 4 40 73 -75 -72
		mu 0 4 70 71 72 73
		f 4 -43 72 76 -76
		mu 0 4 74 75 76 77
		f 3 44 77 -74
		mu 0 3 78 79 80
		f 3 -47 75 -79
		mu 0 3 81 82 83
		f 4 48 79 -81 -78
		mu 0 4 84 85 86 87
		f 4 -51 81 82 -80
		mu 0 4 88 89 90 91
		f 4 -52 78 83 -82
		mu 0 4 92 93 94 95
		f 4 60 85 -87 -85
		mu 0 4 96 97 98 99
		f 4 -64 87 89 -89
		mu 0 4 100 101 102 103
		f 4 -65 84 90 -88
		mu 0 4 104 105 106 107
		f 3 68 91 -86
		mu 0 3 108 109 110
		f 3 -71 88 -93
		mu 0 3 111 112 113
		f 4 74 93 -95 -92
		mu 0 4 114 115 116 117
		f 4 -77 92 96 -96
		mu 0 4 118 119 120 121
		f 4 80 97 -99 -94
		mu 0 4 122 123 124 125
		f 4 -83 99 100 -98
		mu 0 4 126 127 128 129
		f 4 -84 95 101 -100
		mu 0 4 130 131 132 133
		f 3 86 103 -103
		mu 0 3 134 135 136
		f 3 -90 104 -106
		mu 0 3 137 138 139
		f 4 -91 102 106 -105
		mu 0 4 140 141 142 143
		f 4 94 107 -109 -104
		mu 0 4 144 145 146 147
		f 4 -97 105 110 -110
		mu 0 4 148 149 150 151
		f 3 98 111 -108
		mu 0 3 152 153 154
		f 4 -101 112 113 -112
		mu 0 4 155 156 157 158
		f 3 -102 109 -113
		mu 0 3 159 160 161;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "plankPiece3" -p "SpecialPlank2";
	rename -uid "485151D3-A647-5846-DB78-E9BB24E78AB8";
	setAttr ".t" -type "double3" 0 -0.20003589729263849 -0.09147376701277829 ;
	setAttr ".rp" -type "double3" 1.9797153887639658 0.20054238310805139 0.014568429138370281 ;
	setAttr ".sp" -type "double3" 1.9797153887639658 0.20054238310805139 0.014568429138370281 ;
createNode mesh -n "plankPiece3Shape" -p "|Floor|SpecialPlank2|plankPiece3";
	rename -uid "B0685DB0-C24D-07E6-FF02-00BE13B1A08F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.6583564430475235 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 112 ".uvst[0].uvsp[0:111]" -type "float2" 0.31670839 0.30829161
		 0.43408549 0.36996171 0.42725751 0.8811388 0.31467125 0.43967128 0.47525978 0.36896199
		 0.50050652 0.87631726 0.50387299 0.3710345 0.49598229 0.88305902 0.50406778 0.36562777
		 0.52327621 0.87801766 0.55142099 0.37048247 0.55533183 0.88271362 0.55619377 0.36813226
		 0.58179629 0.87777829 0.68578303 0.310783 0.68525916 0.43974087 0.625 0.39350885
		 0.58372778 0.38768026 0.58713681 0.86380357 0.625 0.86123002 0.57589173 0.39159828
		 0.56599903 0.86007851 0.55870879 0.38934252 0.53175873 0.86368096 0.52489901 0.39064997
		 0.51629078 0.8573873 0.50760925 0.38748875 0.47286552 0.86314249 0.50248098 0.39241046
		 0.46930027 0.8614015 0.46903676 0.39054751 0.45509624 0.86447102 0.45086053 0.3954725
		 0.44368124 0.85911775 0.42892504 0.38893449 0.42113 0.86315906 0.41352624 0.39054573
		 0.40419152 0.85995203 0.30828711 0.31671289 0.30813873 0.43313876 1 1 0 1 1 1 0 1
		 1 1 0 1 0.5 1 0.5 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 0.5 1 0.5 1 1
		 1 0 1 1 1 0 1 0.5 1 0.5 1 1 1 0 1 1 1 0 1 0.5 1 0.5 1 1 1 0 1 1 1 0 1 1 1 0 1 0.068494275
		 0.94399995 0.96854043 0.94399995 0.068546638 0.93111014 0.96859282 0.93111014 0.055593699
		 0.93684238 0.95563984 0.93684238 0.055116639 0.93707728 0.95516282 0.93707728 0.050383504
		 0.93659204 0.95042968 0.93659204 0.050364036 0.93713248 0.95041019 0.93713248 0.047504034
		 0.93692535 0.94755018 0.93692535 0.043388508 0.93702525 0.94343466 0.93702525 0.031656217
		 0.93086112 0.93170238 0.93086112 0.031452596 0.94399297 0.93149877 0.94399297 0.042706024
		 0.98811936 0.94275218 0.98811936 0.050027546 0.98763746 0.95007372 0.98763746 0.049575329
		 0.98831129 0.9496215 0.98831129 0.052303463 0.98780739 0.95234966 0.98780739 0.055507544
		 0.98827678 0.95555371 0.98827678 0.058152769 0.98778349 0.95819896 0.98778349;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 57 ".pt";
	setAttr ".pt[16]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[17]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[18]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[19]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[20]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[21]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[22]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[23]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[24]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[25]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[26]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[27]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[28]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[29]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[30]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[31]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[32]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[33]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[34]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[35]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[36]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[37]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[38]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[39]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[40]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[41]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[42]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[43]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[44]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[45]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[46]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[47]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[48]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[49]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[50]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[51]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[52]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[53]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[54]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[55]" -type "float3" 0 0 -0.52038771 ;
	setAttr ".pt[56]" -type "float3" 2.2351742e-08 4.6566129e-09 0.011745155 ;
	setAttr ".pt[57]" -type "float3" 2.2351742e-08 -6.519258e-09 0.007887125 ;
	setAttr ".pt[58]" -type "float3" 7.4505806e-08 -6.519258e-09 0.022530943 ;
	setAttr ".pt[59]" -type "float3" 6.519258e-08 -6.519258e-09 0.0095615983 ;
	setAttr ".pt[60]" -type "float3" 2.514571e-08 -6.519258e-09 0.019366473 ;
	setAttr ".pt[61]" -type "float3" -3.2829121e-08 -6.519258e-09 0.010367185 ;
	setAttr ".pt[62]" -type "float3" 5.7742e-08 -6.519258e-09 0.020473421 ;
	setAttr ".pt[63]" -type "float3" -5.5879354e-08 -6.519258e-09 0.012654811 ;
	setAttr ".pt[64]" -type "float3" -2.2351742e-08 -6.519258e-09 0.014364243 ;
	setAttr ".pt[65]" -type "float3" -2.2351742e-08 4.6566129e-09 0.018185169 ;
	setAttr ".pt[66]" -type "float3" 2.2351742e-08 4.6566129e-09 0.0145953 ;
	setAttr ".pt[67]" -type "float3" -9.3132257e-09 4.6566129e-09 0.024233609 ;
	setAttr ".pt[68]" -type "float3" -4.4230546e-08 4.6566129e-09 0.010248899 ;
	setAttr ".pt[69]" -type "float3" -4.0046871e-08 4.6566129e-09 0.018241137 ;
	setAttr ".pt[70]" -type "float3" -2.9802322e-08 4.6566129e-09 0.0063765347 ;
	setAttr ".pt[71]" -type "float3" -2.6077032e-08 4.6566129e-09 0.021312952 ;
	setAttr -s 72 ".vt[0:71]"  2.079430819 0.22635442 0.31731001 2.046418428 0.22635442 0.17079437
		 2.020568132 0.22635442 0.30054799 1.98717403 0.22635442 0.20245761 1.96761322 0.22635442 0.29249114
		 1.94975781 0.22635442 0.19138174 1.90592504 0.22635442 0.2696045 1.87943077 0.22635442 0.25248984
		 2.079430819 0.17635441 0.27870259 1.9031136 0.17635441 0.25018719 1.87943077 0.17635441 0.21426274
		 1.94968224 0.17635441 0.15375727 1.95535302 0.17635441 0.29367027 1.99805188 0.17635441 0.21371707
		 2.023696184 0.17635441 0.3324101 2.044867754 0.17635441 0.18297727 1.88 0.22473037 -0.087558925
		 2.057155609 0.22473037 -0.16169238 2.04071331 0.22473037 -0.25100827 2.021449089 0.22473037 -0.18711182
		 2.0038321018 0.22473037 -0.24534687 1.98608768 0.22473037 -0.16881827 1.98198497 0.22473037 -0.26725322
		 1.95601261 0.22473037 -0.16112773 1.94068837 0.22473037 -0.30327326 1.91935718 0.22473037 -0.19773322
		 1.90325534 0.22473037 -0.24887325 1.88 0.17473035 -0.093493223 1.90335321 0.17473035 -0.22000325
		 1.91690433 0.17473035 -0.15586324 1.93494499 0.17473035 -0.23668827 1.94407701 0.17473035 -0.12962325
		 1.97343946 0.17473035 -0.21135989 1.99116027 0.17473035 -0.1288036 2.0016412735 0.17473035 -0.25251672
		 2.023406267 0.17473035 -0.14542326 2.037494659 0.17473035 -0.21747324 2.057535172 0.17473035 -0.13514765
		 2.079999924 0.22473037 -0.28921962 2.079999924 0.17473035 -0.19444326 2.079999924 0.22473037 0.022424173
		 2.04893446 0.22473037 0.022425029 2.047514915 0.17473035 0.02242532 2.079999924 0.17473035 0.022425141
		 2.021449089 0.22473037 0.022425208 2.023406267 0.17473035 0.022425625 2.0038321018 0.22473037 0.02242462
		 2.0016412735 0.17473035 0.022424545 1.98403633 0.22473037 0.022424892 1.9822998 0.17473035 0.022425376
		 1.94835043 0.22473037 0.022424761 1.93951106 0.17473035 0.022425259 1.91130626 0.22473037 0.022424849
		 1.91012883 0.17473035 0.022425203 1.88 0.22473037 0.022426207 1.88 0.17473035 0.022426147
		 2.079942942 0.17489268 0.048041053 2.079942942 0.22489271 0.051899143 2.048682928 0.22489271 0.037255112
		 2.021361113 0.22489271 0.050224647 2.0021669865 0.22489271 0.040419608 1.9823947 0.22489271 0.049419045
		 1.9484911 0.22489271 0.039312661 1.91076839 0.22489271 0.047131404 1.87994313 0.22489271 0.045421947
		 1.87994313 0.17489268 0.04160095 1.90942764 0.17489268 0.045190886 1.94052768 0.17489268 0.035552397
		 1.97960639 0.17489268 0.049537342 2.0012824535 0.17489268 0.041544966 2.023435116 0.17489268 0.053409763
		 2.047250271 0.17489268 0.038473103;
	setAttr -s 144 ".ed[0:143]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 0 8 0 9 10 0 11 9 0 12 11 0 13 12 0 14 13 0 15 14 0 8 15 0 10 7 0 1 15 0 2 14 0 3 13 0
		 4 12 0 5 11 0 6 9 0 38 17 0 17 18 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0
		 24 25 0 25 26 0 26 16 0 16 27 0 27 28 0 28 29 0 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0
		 34 35 0 35 36 0 36 37 0 37 39 0 38 39 0 26 28 0 25 29 0 24 30 0 23 31 0 22 32 0 21 33 0
		 20 34 0 19 35 0 18 36 0 17 37 0 38 40 0 17 41 0 40 41 0 37 42 0 39 43 0 42 43 0 40 43 0
		 18 41 0 36 42 0 19 44 0 41 44 0 35 45 0 45 42 0 20 46 0 44 46 0 34 47 0 47 45 0 21 48 0
		 46 48 0 33 49 0 49 47 0 22 48 0 32 49 0 23 50 0 48 50 0 31 51 0 51 49 0 24 50 0 30 51 0
		 25 52 0 50 52 0 29 53 0 53 51 0 26 52 0 28 53 0 16 54 0 52 54 0 27 55 0 54 55 0 55 53 0
		 7 64 0 6 63 0 5 62 0 4 61 0 3 60 0 2 59 0 1 58 0 0 57 0 8 56 0 15 71 0 14 70 0 13 69 0
		 12 68 0 11 67 0 9 66 0 10 65 0 56 43 0 57 40 0 56 57 1 58 41 0 57 58 1 59 44 0 58 59 1
		 60 46 0 59 60 1 61 48 0 60 61 1 62 50 0 61 62 1 63 52 0 62 63 1 64 54 0 63 64 1 65 55 0
		 64 65 1 66 53 0 65 66 1 67 51 0 66 67 1 68 49 0 67 68 1 69 47 0 68 69 1 70 45 0 69 70 1
		 71 42 0 70 71 1 71 56 1;
	setAttr -s 74 -ch 288 ".fc[0:73]" -type "polyFaces" 
		f 4 -7 97 128 -97
		mu 0 4 0 1 94 97
		f 4 -6 98 126 -98
		mu 0 4 1 4 92 95
		f 4 -5 99 124 -99
		mu 0 4 4 6 90 93
		f 4 -4 100 122 -100
		mu 0 4 6 8 88 91
		f 4 -3 101 120 -101
		mu 0 4 8 10 86 89
		f 4 -2 102 118 -102
		mu 0 4 10 12 84 87
		f 4 -1 103 116 -103
		mu 0 4 12 14 82 85
		f 4 0 16 -15 -8
		mu 0 4 14 12 13 15
		f 4 1 17 -14 -17
		mu 0 4 12 10 11 13
		f 4 2 18 -13 -18
		mu 0 4 10 8 9 11
		f 4 3 19 -12 -19
		mu 0 4 8 6 7 9
		f 4 4 20 -11 -20
		mu 0 4 6 4 5 7
		f 4 5 21 -10 -21
		mu 0 4 4 1 2 5
		f 4 6 -16 -9 -22
		mu 0 4 1 0 3 2
		f 4 -46 56 62 -61
		mu 0 4 19 16 44 45
		f 4 -33 46 -35 -34
		mu 0 4 38 36 37 39
		f 4 -32 47 -36 -47
		mu 0 4 36 34 35 37
		f 4 -31 48 -37 -48
		mu 0 4 34 32 33 35
		f 4 -30 49 -38 -49
		mu 0 4 32 30 31 33
		f 4 -29 50 -39 -50
		mu 0 4 30 28 29 31
		f 4 -28 51 -40 -51
		mu 0 4 28 26 27 29
		f 4 -27 52 -41 -52
		mu 0 4 26 24 25 27
		f 4 -26 53 -42 -53
		mu 0 4 24 22 23 25
		f 4 -25 54 -43 -54
		mu 0 4 22 20 21 23
		f 4 -24 55 -44 -55
		mu 0 4 20 17 18 21
		f 4 -23 45 -45 -56
		mu 0 4 17 16 19 18
		f 4 57 -59 -57 22
		mu 0 4 17 40 41 16
		f 4 60 -62 -60 44
		mu 0 4 19 42 43 18
		f 3 63 -58 23
		mu 0 3 20 46 17
		f 3 59 -65 43
		mu 0 3 18 47 21
		f 4 65 -67 -64 24
		mu 0 4 22 48 49 20
		f 4 64 -69 -68 42
		mu 0 4 21 50 51 23
		f 4 69 -71 -66 25
		mu 0 4 24 52 53 22
		f 4 67 -73 -72 41
		mu 0 4 23 54 55 25
		f 4 73 -75 -70 26
		mu 0 4 26 56 57 24
		f 4 71 -77 -76 40
		mu 0 4 25 58 59 27
		f 3 77 -74 27
		mu 0 3 28 60 26
		f 3 75 -79 39
		mu 0 3 27 61 29
		f 4 79 -81 -78 28
		mu 0 4 30 62 63 28
		f 4 78 -83 -82 38
		mu 0 4 29 64 65 31
		f 3 83 -80 29
		mu 0 3 32 66 30
		f 3 81 -85 37
		mu 0 3 31 67 33
		f 4 85 -87 -84 30
		mu 0 4 34 68 69 32
		f 4 84 -89 -88 36
		mu 0 4 33 70 71 35
		f 3 89 -86 31
		mu 0 3 36 72 34
		f 3 87 -91 35
		mu 0 3 35 73 37
		f 4 91 -93 -90 32
		mu 0 4 38 74 75 36
		f 4 93 -95 -92 33
		mu 0 4 39 76 77 38
		f 4 90 -96 -94 34
		mu 0 4 37 78 79 39
		f 4 104 114 -104 7
		mu 0 4 15 80 83 14
		f 4 105 143 -105 14
		mu 0 4 13 110 81 15
		f 4 106 142 -106 13
		mu 0 4 11 108 111 13
		f 4 107 140 -107 12
		mu 0 4 9 106 109 11
		f 4 108 138 -108 11
		mu 0 4 7 104 107 9
		f 4 109 136 -109 10
		mu 0 4 5 102 105 7
		f 4 110 134 -110 9
		mu 0 4 2 100 103 5
		f 4 111 132 -111 8
		mu 0 4 3 98 101 2
		f 4 96 130 -112 15
		mu 0 4 0 96 99 3
		f 4 112 -63 -114 -115
		mu 0 4 80 45 44 83
		f 4 -117 113 58 -116
		mu 0 4 85 82 41 40
		f 4 -119 115 66 -118
		mu 0 4 87 84 49 48
		f 4 -121 117 70 -120
		mu 0 4 89 86 53 52
		f 4 -123 119 74 -122
		mu 0 4 91 88 57 56
		f 4 -125 121 80 -124
		mu 0 4 93 90 63 62
		f 4 -127 123 86 -126
		mu 0 4 95 92 69 68
		f 4 -129 125 92 -128
		mu 0 4 97 94 75 74
		f 4 -131 127 94 -130
		mu 0 4 99 96 77 76
		f 4 -133 129 95 -132
		mu 0 4 101 98 79 78
		f 4 -135 131 88 -134
		mu 0 4 103 100 71 70
		f 4 -137 133 82 -136
		mu 0 4 105 102 65 64
		f 4 -139 135 76 -138
		mu 0 4 107 104 59 58
		f 4 -141 137 72 -140
		mu 0 4 109 106 55 54
		f 4 -143 139 68 -142
		mu 0 4 111 108 51 50
		f 4 -144 141 61 -113
		mu 0 4 81 110 43 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape1" -p "|Floor|SpecialPlank2|plankPiece3";
	rename -uid "3EBB4C3A-EA43-7FCC-D42E-C1BDE9D9BB7F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 80 ".uvst[0].uvsp[0:79]" -type "float2" 0.31670839 0.30829161
		 0.43408549 0.36996171 0.42725751 0.8811388 0.31467125 0.43967128 0.47525978 0.36896199
		 0.50050652 0.87631726 0.50387299 0.3710345 0.49598229 0.88305902 0.50406778 0.36562777
		 0.52327621 0.87801766 0.55142099 0.37048247 0.55533183 0.88271362 0.55619377 0.36813226
		 0.58179629 0.87777829 0.68578303 0.310783 0.68525916 0.43974087 0.625 0.39350885
		 0.58372778 0.38768026 0.58713681 0.86380357 0.625 0.86123002 0.57589173 0.39159828
		 0.56599903 0.86007851 0.55870879 0.38934252 0.53175873 0.86368096 0.52489901 0.39064997
		 0.51629078 0.8573873 0.50760925 0.38748875 0.47286552 0.86314249 0.50248098 0.39241046
		 0.46930027 0.8614015 0.46903676 0.39054751 0.45509624 0.86447102 0.45086053 0.3954725
		 0.44368124 0.85911775 0.42892504 0.38893449 0.42113 0.86315906 0.41352624 0.39054573
		 0.40419152 0.85995203 0.30828711 0.31671289 0.30813873 0.43313876 1 1 0 1 1 1 0 1
		 1 1 0 1 0.5 1 0.5 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 0.5 1 0.5 1 1
		 1 0 1 1 1 0 1 0.5 1 0.5 1 1 1 0 1 1 1 0 1 0.5 1 0.5 1 1 1 0 1 1 1 0 1 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt";
	setAttr ".pt[40]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[41]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[42]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[43]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[44]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[45]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[46]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[47]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[48]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[49]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[50]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[51]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[52]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[53]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[54]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr ".pt[55]" -type "float3" -7.4505806e-09 0 0.044817649 ;
	setAttr -s 56 ".vt[0:55]"  2.079430819 0.22635442 0.31731001 2.046418428 0.22635442 0.17079437
		 2.020568132 0.22635442 0.30054799 1.98717403 0.22635442 0.20245761 1.96761322 0.22635442 0.29249114
		 1.94975781 0.22635442 0.19138174 1.90592504 0.22635442 0.2696045 1.87943077 0.22635442 0.25248984
		 2.079430819 0.17635441 0.27870259 1.9031136 0.17635441 0.25018719 1.87943077 0.17635441 0.21426274
		 1.94968224 0.17635441 0.15375727 1.95535302 0.17635441 0.29367027 1.99805188 0.17635441 0.21371707
		 2.023696184 0.17635441 0.3324101 2.044867754 0.17635441 0.18297727 1.88 0.22473037 -0.087558925
		 2.057155609 0.22473037 -0.16169238 2.04071331 0.22473037 -0.25100827 2.021449089 0.22473037 -0.18711182
		 2.0038321018 0.22473037 -0.24534687 1.98608768 0.22473037 -0.16881827 1.98198497 0.22473037 -0.26725322
		 1.95601261 0.22473037 -0.16112773 1.94068837 0.22473037 -0.30327326 1.91935718 0.22473037 -0.19773322
		 1.90325534 0.22473037 -0.24887325 1.88 0.17473035 -0.093493223 1.90335321 0.17473035 -0.22000325
		 1.91690433 0.17473035 -0.15586324 1.93494499 0.17473035 -0.23668827 1.94407701 0.17473035 -0.12962325
		 1.97343946 0.17473035 -0.21135989 1.99116027 0.17473035 -0.1288036 2.0016412735 0.17473035 -0.25251672
		 2.023406267 0.17473035 -0.14542326 2.037494659 0.17473035 -0.21747324 2.057535172 0.17473035 -0.13514765
		 2.079999924 0.22473037 -0.28921962 2.079999924 0.17473035 -0.19444326 2.079999924 0.22473037 -0.022393476
		 2.04893446 0.22473037 -0.022392619 2.047514915 0.17473035 -0.022392329 2.079999924 0.17473035 -0.022392508
		 2.021449089 0.22473037 -0.022392441 2.023406267 0.17473035 -0.022392023 2.0038321018 0.22473037 -0.022393029
		 2.0016412735 0.17473035 -0.022393104 1.98403633 0.22473037 -0.022392757 1.9822998 0.17473035 -0.022392273
		 1.94835043 0.22473037 -0.022392888 1.93951106 0.17473035 -0.02239239 1.91130626 0.22473037 -0.0223928
		 1.91012883 0.17473035 -0.022392446 1.88 0.22473037 -0.022391442 1.88 0.17473035 -0.022391502;
	setAttr -s 112 ".ed[0:111]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 0 8 0 9 10 0 11 9 0 12 11 0 13 12 0 14 13 0 15 14 0 8 15 0 10 7 0 1 15 0 2 14 0 3 13 0
		 4 12 0 5 11 0 6 9 0 38 17 0 17 18 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0
		 24 25 0 25 26 0 26 16 0 16 27 0 27 28 0 28 29 0 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0
		 34 35 0 35 36 0 36 37 0 37 39 0 38 39 0 26 28 0 25 29 0 24 30 0 23 31 0 22 32 0 21 33 0
		 20 34 0 19 35 0 18 36 0 17 37 0 38 40 0 17 41 0 40 41 0 37 42 0 39 43 0 42 43 0 40 43 0
		 18 41 0 36 42 0 19 44 0 41 44 0 35 45 0 45 42 0 20 46 0 44 46 0 34 47 0 47 45 0 21 48 0
		 46 48 0 33 49 0 49 47 0 22 48 0 32 49 0 23 50 0 48 50 0 31 51 0 51 49 0 24 50 0 30 51 0
		 25 52 0 50 52 0 29 53 0 53 51 0 26 52 0 28 53 0 16 54 0 52 54 0 27 55 0 54 55 0 55 53 0
		 7 54 0 6 52 0 5 50 0 4 48 0 3 46 0 2 44 0 1 41 0 0 40 0 8 43 0 15 42 0 14 45 0 13 47 0
		 12 49 0 11 51 0 9 53 0 10 55 0;
	setAttr -s 58 -ch 224 ".fc[0:57]" -type "polyFaces" 
		f 4 -7 97 92 -97
		mu 0 4 0 1 75 74
		f 4 -6 98 86 -98
		mu 0 4 1 4 69 68
		f 4 -5 99 80 -99
		mu 0 4 4 6 63 62
		f 4 -4 100 74 -100
		mu 0 4 6 8 57 56
		f 4 -3 101 70 -101
		mu 0 4 8 10 53 52
		f 4 -2 102 66 -102
		mu 0 4 10 12 49 48
		f 4 -1 103 58 -103
		mu 0 4 12 14 41 40
		f 4 0 16 -15 -8
		mu 0 4 14 12 13 15
		f 4 1 17 -14 -17
		mu 0 4 12 10 11 13
		f 4 2 18 -13 -18
		mu 0 4 10 8 9 11
		f 4 3 19 -12 -19
		mu 0 4 8 6 7 9
		f 4 4 20 -11 -20
		mu 0 4 6 4 5 7
		f 4 5 21 -10 -21
		mu 0 4 4 1 2 5
		f 4 6 -16 -9 -22
		mu 0 4 1 0 3 2
		f 4 -46 56 62 -61
		mu 0 4 19 16 44 45
		f 4 -33 46 -35 -34
		mu 0 4 38 36 37 39
		f 4 -32 47 -36 -47
		mu 0 4 36 34 35 37
		f 4 -31 48 -37 -48
		mu 0 4 34 32 33 35
		f 4 -30 49 -38 -49
		mu 0 4 32 30 31 33
		f 4 -29 50 -39 -50
		mu 0 4 30 28 29 31
		f 4 -28 51 -40 -51
		mu 0 4 28 26 27 29
		f 4 -27 52 -41 -52
		mu 0 4 26 24 25 27
		f 4 -26 53 -42 -53
		mu 0 4 24 22 23 25
		f 4 -25 54 -43 -54
		mu 0 4 22 20 21 23
		f 4 -24 55 -44 -55
		mu 0 4 20 17 18 21
		f 4 -23 45 -45 -56
		mu 0 4 17 16 19 18
		f 4 57 -59 -57 22
		mu 0 4 17 40 41 16
		f 4 60 -62 -60 44
		mu 0 4 19 42 43 18
		f 3 63 -58 23
		mu 0 3 20 46 17
		f 3 59 -65 43
		mu 0 3 18 47 21
		f 4 65 -67 -64 24
		mu 0 4 22 48 49 20
		f 4 64 -69 -68 42
		mu 0 4 21 50 51 23
		f 4 69 -71 -66 25
		mu 0 4 24 52 53 22
		f 4 67 -73 -72 41
		mu 0 4 23 54 55 25
		f 4 73 -75 -70 26
		mu 0 4 26 56 57 24
		f 4 71 -77 -76 40
		mu 0 4 25 58 59 27
		f 3 77 -74 27
		mu 0 3 28 60 26
		f 3 75 -79 39
		mu 0 3 27 61 29
		f 4 79 -81 -78 28
		mu 0 4 30 62 63 28
		f 4 78 -83 -82 38
		mu 0 4 29 64 65 31
		f 3 83 -80 29
		mu 0 3 32 66 30
		f 3 81 -85 37
		mu 0 3 31 67 33
		f 4 85 -87 -84 30
		mu 0 4 34 68 69 32
		f 4 84 -89 -88 36
		mu 0 4 33 70 71 35
		f 3 89 -86 31
		mu 0 3 36 72 34
		f 3 87 -91 35
		mu 0 3 35 73 37
		f 4 91 -93 -90 32
		mu 0 4 38 74 75 36
		f 4 93 -95 -92 33
		mu 0 4 39 76 77 38
		f 4 90 -96 -94 34
		mu 0 4 37 78 79 39
		f 4 104 -63 -104 7
		mu 0 4 15 45 44 14
		f 4 105 61 -105 14
		mu 0 4 13 43 42 15
		f 4 106 68 -106 13
		mu 0 4 11 51 50 13
		f 4 107 72 -107 12
		mu 0 4 9 55 54 11
		f 4 108 76 -108 11
		mu 0 4 7 59 58 9
		f 4 109 82 -109 10
		mu 0 4 5 65 64 7
		f 4 110 88 -110 9
		mu 0 4 2 71 70 5
		f 4 111 95 -111 8
		mu 0 4 3 79 78 2
		f 4 96 94 -112 15
		mu 0 4 0 77 76 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "specialplank3b" -p "SpecialPlank2";
	rename -uid "3BE8EF17-A942-ECE4-5BC1-E59FF8411BF4";
	setAttr ".t" -type "double3" 0 0 -0.71504445218239798 ;
	setAttr ".rp" -type "double3" 1.9800000000000002 0.0042442671105761103 -1.2502669111667508 ;
	setAttr ".sp" -type "double3" 1.9800000000000002 0.0042442671105761103 -1.2502669111667508 ;
createNode mesh -n "specialplank3bShape" -p "|Floor|SpecialPlank2|specialplank3b";
	rename -uid "C2F79542-3648-FDCD-4B90-A4AB365A8C09";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 228 ".uvst[0].uvsp[0:227]" -type "float2" 0.65414357 0.15835644
		 0.41352624 0.39054573 0.40419152 0.85995203 0.15406936 0.21656938 0.42892504 0.38893449
		 0.42113 0.86315906 0.45086053 0.3954725 0.44368124 0.85911775 0.46903676 0.39054751
		 0.45509624 0.86447102 0.50248098 0.39241046 0.46930027 0.8614015 0.50760925 0.38748875
		 0.47286552 0.86314249 0.52489901 0.39064997 0.51629078 0.8573873 0.55870879 0.38934252
		 0.53175873 0.86368096 0.57589173 0.39159828 0.56599903 0.86007851 0.58372778 0.38768026
		 0.58713681 0.86380357 0.3125 0.19675443 0.8125 0.43061501 0.30828711 0.31671289 0.41352624
		 0.39054573 0.40419152 0.85995203 0.30813873 0.43313876 0.42892504 0.38893449 0.42113
		 0.86315906 0.45086053 0.3954725 0.44368124 0.85911775 0.46903676 0.39054751 0.45509624
		 0.86447102 0.50248098 0.39241046 0.46930027 0.8614015 0.50760925 0.38748875 0.47286552
		 0.86314249 0.52489901 0.39064997 0.51629078 0.8573873 0.55870879 0.38934252 0.53175873
		 0.86368096 0.57589173 0.39159828 0.56599903 0.86007851 0.58372778 0.38768026 0.58713681
		 0.86380357 0.625 0.39350885 0.625 0.86123002 0 0 1 0 0.5 1 0 0 1 0 0.5 1 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5
		 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.375
		 0.5 0.625 0.5 0.625 0.75 0.375 0.75 1 1 1 1 1 0 1 1 1 0 0 1 0 0 0 1 0 0 0 1 0 0 0
		 1 0 0 0 1 0 1 1 1 1 0 1 1 1 0 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 13 ".pt";
	setAttr ".pt[25]" -type "float3" -4.6566129e-10 -2.3283064e-10 0 ;
	setAttr ".pt[72]" -type "float3" 0 0 -0.011700097 ;
	setAttr ".pt[73]" -type "float3" 0 0 -0.011700157 ;
	setAttr ".pt[74]" -type "float3" 0 0 -0.011700097 ;
	setAttr ".pt[75]" -type "float3" 0 0 -0.011700157 ;
	setAttr ".pt[76]" -type "float3" 0 0 0.72991019 ;
	setAttr ".pt[77]" -type "float3" 0 0 0.72991019 ;
	setAttr ".pt[78]" -type "float3" 0 0 0.72991019 ;
	setAttr ".pt[79]" -type "float3" 0 0 0.72991019 ;
	setAttr -s 92 ".vt[0:91]"  1.90325534 0.025004502 -0.14752811 1.88 0.025004502 0.013786197
		 1.90335321 -0.024995517 -0.11865813 1.88 -0.024995517 0.0078518689 1.91935718 0.025004502 -0.096388072
		 1.91690433 -0.024995517 -0.054518163 1.94068837 0.025004502 -0.2019282 1.93494499 -0.024995517 -0.13534313
		 1.95601261 0.025004502 -0.059782594 1.94407701 -0.024995517 -0.028278083 1.98198497 0.025004502 -0.16590807
		 1.97343946 -0.024995517 -0.11001486 1.98608768 0.025004502 -0.067473114 1.99116027 -0.024995517 -0.027458429
		 2.0038321018 0.025004502 -0.14400172 2.0016412735 -0.024995517 -0.15117159 2.021449089 0.025004502 -0.085766643
		 2.023406267 -0.024995517 -0.044078141 2.04071331 0.025004502 -0.14966327 2.037494659 -0.024995517 -0.11612806
		 2.057155609 0.025004502 -0.060347199 2.057535172 -0.024995517 -0.033802539 2.079999924 0.025004502 -0.1878745
		 2.079999924 -0.024995517 -0.093098164 1.89488435 0.025004502 -0.2133708 1.88 0.025004502 -0.21336916
		 1.89498222 -0.024995517 -0.21337053 1.88 -0.024995517 -0.21336916 1.91086221 0.025004502 -0.21337023
		 1.90840936 -0.024995517 -0.21336976 1.92519236 0.025004502 -0.21337125 1.91944873 -0.024995517 -0.21337065
		 1.94811237 0.025004502 -0.21336994 1.93997502 -0.024995517 -0.21336961 1.96262634 0.025004502 -0.21337095
		 1.95726287 -0.024995517 -0.21337035 1.9976176 0.025004502 -0.21336994 1.99323106 -0.024995517 -0.21336961
		 2.011740208 0.025004502 -0.2133708 2.021632195 -0.024995517 -0.2133708 2.031912804 0.025004502 -0.2133702
		 2.033869743 -0.024995517 -0.21336976 2.05401516 0.025004502 -0.2133708 2.050796509 -0.024995517 -0.2133705
		 2.068802357 0.025004502 -0.21336994 2.069181919 -0.024995517 -0.21336964 2.079999924 0.025004502 -0.21337113
		 2.079999924 -0.024995517 -0.2133702 1.88775873 0.025004502 -0.22719029 1.88774097 -0.024995517 -0.2271902
		 1.90387464 0.025004502 -0.22719109 1.90211666 -0.024995517 -0.22719058 1.95536923 0.025004502 -0.22719079
		 1.94861913 -0.024995517 -0.22719032 2.0046789646 0.025004502 -0.22719073 2.0074315071 -0.024995517 -0.22719049
		 2.05875802 0.025004502 -0.22719079 2.055297852 -0.024995517 -0.22719046 2.074076653 0.025004502 -0.22719088
		 2.074304581 -0.024995517 -0.22719029 1.88775873 0.025004502 -0.23753893 1.88774097 -0.024995517 -0.23753887
		 1.90016317 0.025004502 -0.23753959 1.89488101 -0.024995517 -0.23753905 2.031718493 0.025004502 -0.23753947
		 2.032601595 -0.024995517 -0.23753911 2.074076653 0.025004502 -0.23753953 2.074304581 -0.024995517 -0.23753893
		 1.88750637 0.025004502 -0.24771932 1.8873539 -0.024995517 -0.24771896 2.073477983 0.025004502 -0.24771956
		 2.073866129 -0.024995517 -0.24771908 1.88 0.025 -0.26353899 1.88 -0.025 -0.26353899
		 2.079999924 0.025 -0.26353899 2.079999924 -0.025 -0.26353899 1.88 0.025 -2.5143199
		 2.079999924 0.025 -2.5143199 2.079999924 -0.025 -2.5143199 1.88 -0.025 -2.5143199
		 2.07999897 -0.024995517 -0.24771908 2.079999208 -0.024995517 -0.23753893 2.079999685 -0.024995517 -0.22719029
		 2.080000639 0.025004502 -0.24771956 2.080000401 0.025004502 -0.23753953 2.080000401 0.025004502 -0.22719088
		 1.88000107 -0.024995517 -0.2271902 1.88000202 -0.024995517 -0.23753887 1.88000298 -0.024995517 -0.24771896
		 1.87999988 0.025004502 -0.22719029 1.87999964 0.025004502 -0.23753893 1.8799994 0.025004502 -0.24771932;
	setAttr -s 194 ".ed";
	setAttr ".ed[0:165]"  0 1 0 3 2 0 1 3 0 4 0 0 2 5 0 6 4 0 5 7 0 8 6 0 7 9 0
		 10 8 0 9 11 0 12 10 0 11 13 0 14 12 0 13 15 0 16 14 0 15 17 0 18 16 0 17 19 0 20 18 0
		 19 21 0 22 20 0 22 23 0 21 23 0 0 24 0 1 25 0 24 25 0 2 26 0 3 27 0 27 26 0 25 27 0
		 4 28 0 28 24 0 5 29 0 26 29 0 6 30 0 30 28 0 7 31 0 29 31 0 8 32 0 32 30 0 9 33 0
		 31 33 0 10 34 0 34 32 0 11 35 0 33 35 0 12 36 0 36 34 0 13 37 0 35 37 0 14 38 0 38 36 0
		 15 39 0 37 39 0 16 40 0 40 38 0 17 41 0 39 41 0 18 42 0 42 40 0 19 43 0 41 43 0 20 44 0
		 44 42 0 21 45 0 43 45 0 22 46 0 46 44 0 23 47 0 46 47 0 45 47 0 20 21 0 18 19 0 16 17 0
		 14 15 0 12 13 0 10 11 0 8 9 0 6 7 0 4 5 0 0 2 0 24 48 0 25 48 0 27 49 0 26 49 0 28 50 0
		 50 48 0 29 51 0 49 51 0 30 50 0 31 51 0 32 52 0 52 50 0 33 53 0 51 53 0 34 52 0 35 53 0
		 36 54 0 54 52 0 37 55 0 53 55 0 38 54 0 39 55 0 40 56 0 56 54 0 41 57 0 55 57 0 42 56 0
		 43 57 0 44 58 0 58 56 0 45 59 0 57 59 0 46 58 0 47 59 0 48 60 0 49 61 0 50 62 0 62 60 0
		 51 63 0 61 63 0 52 62 0 53 63 0 54 64 0 64 62 0 55 65 0 63 65 0 56 64 0 57 65 0 58 66 0
		 66 64 0 59 67 0 65 67 0 60 68 0 61 69 0 62 68 0 63 69 0 64 70 0 70 68 0 65 71 0 69 71 0
		 66 70 0 67 71 0 72 74 0 73 75 0 72 73 0 74 75 0 72 76 0 74 77 0 76 77 0 75 78 0 77 78 0
		 73 79 0 79 78 0 76 79 0 69 73 0 68 72 0 70 74 0 71 75 0 59 82 0 58 85 0 67 81 0 66 84 0
		 71 80 0 70 83 0;
	setAttr ".ed[166:193]" 75 80 0 80 81 0 81 82 0 82 47 0 74 83 0 83 84 0 84 85 0
		 85 46 0 82 85 0 81 84 0 80 83 0 48 89 0 49 86 0 60 90 0 61 87 0 68 91 0 69 88 0 27 86 0
		 86 87 0 87 88 0 88 73 0 25 89 0 89 90 0 90 91 0 91 72 0 88 91 0 87 90 0 86 89 0;
	setAttr -s 104 -ch 388 ".fc[0:103]" -type "polyFaces" 
		f 4 -1 24 26 -26
		mu 0 4 24 25 1 0
		f 4 -2 28 29 -28
		mu 0 4 26 27 3 2
		f 4 -3 25 30 -29
		mu 0 4 27 24 0 3
		f 4 -4 31 32 -25
		mu 0 4 25 28 4 1
		f 4 -5 27 34 -34
		mu 0 4 29 26 2 5
		f 4 -6 35 36 -32
		mu 0 4 28 30 6 4
		f 4 -7 33 38 -38
		mu 0 4 31 29 5 7
		f 4 -8 39 40 -36
		mu 0 4 30 32 8 6
		f 4 -9 37 42 -42
		mu 0 4 33 31 7 9
		f 4 -10 43 44 -40
		mu 0 4 32 34 10 8
		f 4 -11 41 46 -46
		mu 0 4 35 33 9 11
		f 4 -12 47 48 -44
		mu 0 4 34 36 12 10
		f 4 -13 45 50 -50
		mu 0 4 37 35 11 13
		f 4 -14 51 52 -48
		mu 0 4 36 38 14 12
		f 4 -15 49 54 -54
		mu 0 4 39 37 13 15
		f 4 -16 55 56 -52
		mu 0 4 38 40 16 14
		f 4 -17 53 58 -58
		mu 0 4 41 39 15 17
		f 4 -18 59 60 -56
		mu 0 4 40 42 18 16
		f 4 -19 57 62 -62
		mu 0 4 43 41 17 19
		f 4 -20 63 64 -60
		mu 0 4 42 44 20 18
		f 4 -21 61 66 -66
		mu 0 4 45 43 19 21
		f 4 -22 67 68 -64
		mu 0 4 44 46 22 20
		f 4 22 69 -71 -68
		mu 0 4 46 47 23 22
		f 4 -24 65 71 -70
		mu 0 4 47 45 21 23
		f 4 21 72 23 -23
		mu 0 4 46 44 45 47
		f 4 19 73 20 -73
		mu 0 4 44 42 43 45
		f 4 17 74 18 -74
		mu 0 4 42 40 41 43
		f 4 15 75 16 -75
		mu 0 4 40 38 39 41
		f 4 13 76 14 -76
		mu 0 4 38 36 37 39
		f 4 11 77 12 -77
		mu 0 4 36 34 35 37
		f 4 9 78 10 -78
		mu 0 4 34 32 33 35
		f 4 7 79 8 -79
		mu 0 4 32 30 31 33
		f 4 5 80 6 -80
		mu 0 4 30 28 29 31
		f 4 3 81 4 -81
		mu 0 4 28 25 26 29
		f 4 0 2 1 -82
		mu 0 4 25 24 27 26
		f 3 -27 82 -84
		mu 0 3 48 49 50
		f 3 -30 84 -86
		mu 0 3 51 52 53
		f 4 -33 86 87 -83
		mu 0 4 56 57 58 59
		f 4 -35 85 89 -89
		mu 0 4 60 61 62 63
		f 3 -37 90 -87
		mu 0 3 64 65 66
		f 3 -39 88 -92
		mu 0 3 67 68 69
		f 4 -41 92 93 -91
		mu 0 4 70 71 72 73
		f 4 -43 91 95 -95
		mu 0 4 74 75 76 77
		f 3 -45 96 -93
		mu 0 3 78 79 80
		f 3 -47 94 -98
		mu 0 3 81 82 83
		f 4 -49 98 99 -97
		mu 0 4 84 85 86 87
		f 4 -51 97 101 -101
		mu 0 4 88 89 90 91
		f 3 -53 102 -99
		mu 0 3 92 93 94
		f 3 -55 100 -104
		mu 0 3 95 96 97
		f 4 -57 104 105 -103
		mu 0 4 98 99 100 101
		f 4 -59 103 107 -107
		mu 0 4 102 103 104 105
		f 3 -61 108 -105
		mu 0 3 106 107 108
		f 3 -63 106 -110
		mu 0 3 109 110 111
		f 4 -65 110 111 -109
		mu 0 4 112 113 114 115
		f 4 -67 109 113 -113
		mu 0 4 116 117 118 119
		f 3 -69 114 -111
		mu 0 3 120 121 122
		f 3 -72 112 -116
		mu 0 3 125 126 127
		f 4 -88 118 119 -117
		mu 0 4 132 133 134 135
		f 4 -90 117 121 -121
		mu 0 4 136 137 138 139
		f 3 -94 122 -119
		mu 0 3 140 141 142
		f 3 -96 120 -124
		mu 0 3 143 144 145
		f 4 -100 124 125 -123
		mu 0 4 146 147 148 149
		f 4 -102 123 127 -127
		mu 0 4 150 151 152 153
		f 3 -106 128 -125
		mu 0 3 154 155 156
		f 3 -108 126 -130
		mu 0 3 157 158 159
		f 4 -112 130 131 -129
		mu 0 4 160 161 162 163
		f 4 -114 129 133 -133
		mu 0 4 164 165 166 167
		f 3 -120 136 -135
		mu 0 3 176 177 178
		f 3 -122 135 -138
		mu 0 3 179 180 181
		f 4 -126 138 139 -137
		mu 0 4 182 183 184 185
		f 4 -128 137 141 -141
		mu 0 4 186 187 188 189
		f 3 -132 142 -139
		mu 0 3 190 191 192
		f 3 -134 140 -144
		mu 0 3 193 194 195
		f 4 150 152 -155 -156
		mu 0 4 200 201 202 203
		f 4 144 149 -151 -149
		mu 0 4 204 205 201 200
		f 4 147 151 -153 -150
		mu 0 4 205 206 202 201
		f 4 -146 153 154 -152
		mu 0 4 206 207 203 202
		f 4 -147 148 155 -154
		mu 0 4 207 204 200 203
		f 4 -140 158 -145 -158
		mu 0 4 185 184 205 204
		f 4 -142 156 145 -160
		mu 0 4 189 188 207 206
		f 3 115 160 169
		mu 0 3 23 123 211
		f 4 132 162 168 -161
		mu 0 4 169 170 209 212
		f 4 143 164 167 -163
		mu 0 4 197 198 208 210
		f 3 159 166 -165
		mu 0 3 198 206 208
		f 3 -159 165 -171
		mu 0 3 205 199 213
		f 4 -143 163 -172 -166
		mu 0 4 199 196 214 213
		f 4 -131 161 -173 -164
		mu 0 4 171 168 216 215
		f 3 -115 -174 -162
		mu 0 3 124 22 217
		f 4 -170 174 173 70
		mu 0 4 23 211 217 22
		f 4 -169 175 172 -175
		mu 0 4 212 209 215 216
		f 4 -168 176 171 -176
		mu 0 4 210 208 213 214
		f 4 -167 -148 170 -177
		mu 0 4 208 206 205 213
		f 3 -85 183 -179
		mu 0 3 55 3 219
		f 4 -118 178 184 -181
		mu 0 4 131 128 218 221
		f 4 -136 180 185 -183
		mu 0 4 175 172 220 222
		f 3 -157 182 186
		mu 0 3 207 175 222
		f 3 83 177 -188
		mu 0 3 0 54 223
		f 4 116 179 -189 -178
		mu 0 4 129 130 225 224
		f 4 134 181 -190 -180
		mu 0 4 173 174 227 226
		f 3 157 -191 -182
		mu 0 3 174 204 227
		f 4 -187 191 190 146
		mu 0 4 207 222 227 204
		f 4 -186 192 189 -192
		mu 0 4 222 220 226 227
		f 4 -185 193 188 -193
		mu 0 4 221 218 224 225
		f 4 -184 -31 187 -194
		mu 0 4 219 3 0 223;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "7A4B4E7B-774C-2FD2-71CE-CDAD46DF386B";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "2525171C-3641-BDC7-894B-E882D3C7A043";
createNode displayLayer -n "defaultLayer";
	rename -uid "4B76A66F-6544-0429-A04B-3784D582C023";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F90A4EAF-9244-B11A-3349-879651591B7A";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "34FDFB2F-C247-F94D-9649-EC978EBBB0B8";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "D4EA14A5-F348-CF22-B8B9-278B6AC36554";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "88C2A591-5849-9468-446B-819D53CF76DF";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "25B660A4-D340-822C-C9B2-49848654338A";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 320\n                -height 324\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 320\n            -height 324\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 319\n                -height 323\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 319\n            -height 323\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 320\n                -height 323\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 320\n            -height 323\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 646\n                -height 692\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 646\n            -height 692\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n"
		+ "                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n"
		+ "                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n"
		+ "                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"contentBrowserPanel\" -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tshapePanel -unParent -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\tposePanel -unParent -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"timeEditorPanel\" -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                -renderFilterIndex 0\n                -selectionOrder \"chronological\" \n                -expandAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n"
		+ "            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n"
		+ "            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n"
		+ "                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n"
		+ "                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n"
		+ "                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n"
		+ "            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 0\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n"
		+ "            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n"
		+ "                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n"
		+ "            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 0\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n"
		+ "                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 0\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 0\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n"
		+ "\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 646\\n    -height 692\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 646\\n    -height 692\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "6CE10889-4C4D-64B3-43D1-F1B68F86E506";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode lambert -n "lambert2";
	rename -uid "DBD59740-C046-0570-7B08-79BD8299F4BB";
	setAttr ".c" -type "float3" 0.53899997 0.34884304 0.129899 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "C1AB298B-C34B-3E04-1ED5-BAABCD4DE491";
	setAttr ".ihi" 0;
	setAttr -s 30 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "9A8D3DD7-554F-329E-255D-BEA7C0854140";
createNode polySplitRing -n "polySplitRing1";
	rename -uid "F5FDDCFA-DE4C-F852-8D6D-2E9C9D3BEF09";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[96:111]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.3029628284873334 -0.20003589729263849 -0.09147376701277829 1;
	setAttr ".wt" 0.90004616975784302;
	setAttr ".dr" no;
	setAttr ".re" 104;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polySplitRing1.out" "|Floor|SpecialPlank3|plankPiece3|plankPiece3Shape.i"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "floorPlank25Shape.iog" "lambert2SG.dsm" -na;
connectAttr "floorPlank24Shape.iog" "lambert2SG.dsm" -na;
connectAttr "floorPlank23Shape.iog" "lambert2SG.dsm" -na;
connectAttr "|Floor|SpecialPlank3|plankPiece3|plankPiece3Shape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|Floor|SpecialPlank3|specialplank3b|specialplank3bShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|Floor|SpecialPlank3|specialplank3a|specialplank3aShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "floorPlank5Shape.iog" "lambert2SG.dsm" -na;
connectAttr "floorPlank6Shape.iog" "lambert2SG.dsm" -na;
connectAttr "floorPlank4Shape.iog" "lambert2SG.dsm" -na;
connectAttr "floorPlank8Shape.iog" "lambert2SG.dsm" -na;
connectAttr "floorPlank7Shape.iog" "lambert2SG.dsm" -na;
connectAttr "floorPlank14Shape.iog" "lambert2SG.dsm" -na;
connectAttr "floorPlank15Shape.iog" "lambert2SG.dsm" -na;
connectAttr "floorPlank16Shape.iog" "lambert2SG.dsm" -na;
connectAttr "floorPlank17Shape.iog" "lambert2SG.dsm" -na;
connectAttr "floorPlank18Shape.iog" "lambert2SG.dsm" -na;
connectAttr "floorPlank19Shape.iog" "lambert2SG.dsm" -na;
connectAttr "floorPlank20Shape.iog" "lambert2SG.dsm" -na;
connectAttr "floorPlank21Shape.iog" "lambert2SG.dsm" -na;
connectAttr "floorPlank22Shape.iog" "lambert2SG.dsm" -na;
connectAttr "floorPlank12Shape.iog" "lambert2SG.dsm" -na;
connectAttr "floorPlank13Shape.iog" "lambert2SG.dsm" -na;
connectAttr "floorPlank2Shape.iog" "lambert2SG.dsm" -na;
connectAttr "floorPlank3Shape.iog" "lambert2SG.dsm" -na;
connectAttr "|Floor|SpecialPlank1|specialplank3a|specialplank3aShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|Floor|SpecialPlank1|plankPiece3|plankPiece3Shape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|Floor|SpecialPlank1|specialplank3b|specialplank3bShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|Floor|SpecialPlank2|specialplank3a|specialplank3aShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|Floor|SpecialPlank2|plankPiece3|plankPiece3Shape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|Floor|SpecialPlank2|specialplank3b|specialplank3bShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "|Floor|SpecialPlank3|plankPiece3|polySurfaceShape1.o" "polySplitRing1.ip"
		;
connectAttr "|Floor|SpecialPlank3|plankPiece3|plankPiece3Shape.wm" "polySplitRing1.mp"
		;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of planks.ma
