//Maya ASCII 2018 scene
//Name: rope.ma
//Last modified: Mon, Dec 17, 2018 01:30:11 AM
//Codeset: 1252
requires maya "2018";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 , 64-bit  (Build 9200)\n";
fileInfo "license" "student";
fileInfo "vrayBuild" "3.60.04 39f5708";
createNode transform -s -n "persp";
	rename -uid "8ECCF225-4A1B-77DA-BC7C-24B135A77715";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.7049062739978498 12.819504592066609 11.273167390938774 ;
	setAttr ".r" -type "double3" -38.738352729606092 8.5999999999999783 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "160012B0-4EB6-DC17-29C9-2B8FC048B89D";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 14.616908745686679;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 3.6727558334914394 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "8A4A894A-4182-959D-EAA5-A38FB98D4B39";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "12A03A0B-4C42-0652-D0F2-78A350510A82";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "E1223EBD-4F72-728E-055F-EEBF02FEBA2F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "ACFF290E-4353-9492-BACA-30AAF25DBBB5";
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
	rename -uid "144F7D9F-4803-FB11-FE6D-989E8F8CCEA7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 9.9450251938749599 1.2396739651496924 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "BE99C696-417C-1BE6-A222-1B89132F76C8";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 9.4531708885789048;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCylinder1";
	rename -uid "5EF3288E-49DE-0AAE-E589-469D2889B094";
	setAttr ".t" -type "double3" 0 3.9567367126870856 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.025565355249003822 8 0.025565355249003822 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.025565355249003819 8.0432632873129144 0 ;
	setAttr ".sp" -type "double3" 0.99999999999999989 0.99999999999999978 0 ;
	setAttr ".spt" -type "double3" -0.97443464475099606 7.0432632873129135 0 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "3E6B5F30-41DA-2122-3807-AB99D88FFAD9";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "pCylinderShape1Orig" -p "pCylinder1";
	rename -uid "9D14DA22-4273-DA84-39DD-309319F2062F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "joint1";
	rename -uid "6EA15A24-4B2D-0252-BEEE-9C951EF768A6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0 12 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 12 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint2" -p "joint1";
	rename -uid "1DA4107A-42DF-E4B8-E714-AE88710B3B61";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 11.5 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint3" -p "|joint1|joint2";
	rename -uid "499F0116-404C-B04C-C615-4D9CAFE6724B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 11 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint4" -p "|joint1|joint2|joint3";
	rename -uid "ABF48327-4B56-CD62-F59F-A7A400EF94F7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 10.5 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint2" -p "|joint1|joint2|joint3|joint4";
	rename -uid "19C4A4AD-408B-AC07-B6C1-CCA1C4ED2CEC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 10 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint3" -p "|joint1|joint2|joint3|joint4|joint2";
	rename -uid "621036A6-4AB9-7425-7D90-BF83D378954D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 9.5 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint5" -p "|joint1|joint2|joint3|joint4|joint2|joint3";
	rename -uid "17C73BFF-4DF6-B826-0E54-B0AA926C40D9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 9 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint2" -p "|joint1|joint2|joint3|joint4|joint2|joint3|joint5";
	rename -uid "F607D532-4A00-A6C2-29A4-0EB0AAF8FB08";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.5 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint3" -p "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2";
	rename -uid "DBE9836E-422D-6502-41F7-B3A69AA2836F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint4" -p "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3";
	rename -uid "02670ABE-4FA6-985A-7422-2E9CA45212F6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 7.5 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint2" -p "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4";
	rename -uid "DC0E563B-495A-8430-86B1-EA97410488C6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 7 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint3" -p "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2";
	rename -uid "23C743C5-4E81-DC50-DFDE-DB8DC20F52C8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 6.5 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint6" -p "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3";
	rename -uid "92FF6311-46F8-E432-7193-ADB0D17C56A2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 6 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint2" -p "joint6";
	rename -uid "A40EFB81-44B7-481B-673C-96B0C8E8DF0E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5.5 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint3" -p "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2";
	rename -uid "6E07613B-4005-C714-3D29-7B9C08E00EDD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint4" -p "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3";
	rename -uid "3AEF4BC1-4B4D-5EB6-0B73-3CB1AAADAF58";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 4.5 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint2" -p "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4";
	rename -uid "54151C05-4BAF-B4E6-F855-E3BC83CC4279";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 4 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint3" -p "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2";
	rename -uid "204C0B52-4086-D1BA-132C-37B6F7501824";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.5 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint5" -p "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3";
	rename -uid "1E45A495-4060-15AD-B223-B083C324CDBE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint2" -p "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5";
	rename -uid "F8D84C87-414D-A4EB-0FB8-8785ACCBD19C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 2.5 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint3" -p "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2";
	rename -uid "C6CA50D3-45BC-0BBA-1604-29BE8409DE44";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 2 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint4" -p "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3";
	rename -uid "ABB01886-4ECD-6292-719B-51A233D5D6D3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.5 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint2" -p "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4";
	rename -uid "FF4607E7-4964-C3A5-C73A-7CA37566D64A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint3" -p "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2";
	rename -uid "8C97CCD2-4CE3-1B07-D61C-50A8E9E12832";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.5 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint7" -p "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3";
	rename -uid "4564FF45-4820-FDFA-BF10-2B8A5D5A2E02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint2" -p "joint7";
	rename -uid "28D4F2D1-4C0B-FCBB-C7C7-F0A061D411B2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.5 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint3" -p "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2";
	rename -uid "609424B3-4634-DC8F-826E-829B53F73649";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -1 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint4" -p "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3";
	rename -uid "449AE55F-4828-489E-A27B-0791FE6507E9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -1.5 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint2" -p "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4";
	rename -uid "E3F666AF-4C0A-848C-40E2-5F91FDC8B5C3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -2 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint3" -p "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2";
	rename -uid "9D3C0CD1-4795-A30A-9B8D-21964C6F1CC9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -2.5 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint5" -p "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3";
	rename -uid "FB8CC792-4CC8-58F5-DDDE-8D867BEE94D2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -3 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint2" -p "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3|joint5";
	rename -uid "E9EB49F7-4D8D-99AC-BFB1-CE84659890D1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -3.5 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint3" -p "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3|joint5|joint2";
	rename -uid "52BA73B5-4464-9055-27F5-ECB897840DB2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -4 0 1;
	setAttr ".radi" 0.5;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "674BFB17-40ED-C069-8DD4-38B220883263";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "3D3621E3-4FD9-D54F-397F-8A817E6EA844";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "CBA754AB-4278-645C-D277-A9B6BE0DF45B";
createNode displayLayerManager -n "layerManager";
	rename -uid "3EB49EBC-4C14-53CE-4FA6-C8B9A20B8150";
createNode displayLayer -n "defaultLayer";
	rename -uid "5244E365-44F0-3C92-0861-01BC6CE3BCD5";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "9DF5D3D2-4B89-51AE-671C-D19482039674";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "945A407B-462A-4391-FD69-F8A6757B7CCF";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "9504823E-4930-7011-36B5-23B9F5480F50";
	setAttr ".sa" 12;
	setAttr ".sh" 64;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode skinCluster -n "skinCluster1";
	rename -uid "1883E2F3-4BB5-3333-2809-8488BD702B42";
	setAttr -s 782 ".wl";
	setAttr ".wl[0:99].w"
		5 28 4.2165612294063168e-08 29 2.1330852271981006e-07 30 3.3996004028592167e-06 
		31 0.49999817246273121 32 0.49999817246273098
		5 28 4.2165612294063168e-08 29 2.1330852271981006e-07 30 3.3996004028592167e-06 
		31 0.49999817246273121 32 0.49999817246273098
		5 28 4.2165614563790137e-08 29 2.1330853419779887e-07 30 3.3996005854316911e-06 
		31 0.49999817246263289 32 0.49999817246263289
		5 28 4.2165612294063168e-08 29 2.1330852271981006e-07 30 3.3996004028592167e-06 
		31 0.49999817246273121 32 0.49999817246273098
		5 28 4.2165612294063168e-08 29 2.1330852271981006e-07 30 3.3996004028592167e-06 
		31 0.49999817246273121 32 0.49999817246273098
		5 28 4.2165614563790137e-08 29 2.1330853419779887e-07 30 3.3996005854316911e-06 
		31 0.49999817246263289 32 0.49999817246263289
		5 28 4.2165612294063168e-08 29 2.1330852271981006e-07 30 3.3996004028592167e-06 
		31 0.49999817246273121 32 0.49999817246273098
		5 28 4.2165612294063168e-08 29 2.1330852271981006e-07 30 3.3996004028592167e-06 
		31 0.49999817246273121 32 0.49999817246273098
		5 28 4.2165614563790137e-08 29 2.1330853419779887e-07 30 3.3996005854316911e-06 
		31 0.49999817246263289 32 0.49999817246263289
		5 28 4.2165612294063168e-08 29 2.1330852271981006e-07 30 3.3996004028592167e-06 
		31 0.49999817246273121 32 0.49999817246273098
		5 28 4.2165612294063168e-08 29 2.1330852271981006e-07 30 3.3996004028592167e-06 
		31 0.49999817246273121 32 0.49999817246273098
		5 28 4.2165614563790137e-08 29 2.1330853419779887e-07 30 3.3996005854316911e-06 
		31 0.49999817246263289 32 0.49999817246263289
		5 28 1.7478747950959189e-07 29 1.3466660548227181e-06 30 0.00010708227086680669 
		31 0.99978431400473211 32 0.00010708227086680369
		5 28 1.7478747950959189e-07 29 1.3466660548227181e-06 30 0.00010708227086680669 
		31 0.99978431400473211 32 0.00010708227086680369
		5 28 1.7478748891502649e-07 29 1.3466661272339092e-06 30 0.00010708227657171688 
		31 0.99978431399324041 32 0.00010708227657171388
		5 28 1.7478747950959189e-07 29 1.3466660548227181e-06 30 0.00010708227086680669 
		31 0.99978431400473211 32 0.00010708227086680369
		5 28 1.7478747950959189e-07 29 1.3466660548227181e-06 30 0.00010708227086680669 
		31 0.99978431400473211 32 0.00010708227086680369
		5 28 1.7478748891502649e-07 29 1.3466661272339092e-06 30 0.00010708227657171688 
		31 0.99978431399324041 32 0.00010708227657171388
		5 28 1.7478747950959189e-07 29 1.3466660548227181e-06 30 0.00010708227086680669 
		31 0.99978431400473211 32 0.00010708227086680369
		5 28 1.7478747950959189e-07 29 1.3466660548227181e-06 30 0.00010708227086680669 
		31 0.99978431400473211 32 0.00010708227086680369
		5 28 1.7478748891502649e-07 29 1.3466661272339092e-06 30 0.00010708227657171688 
		31 0.99978431399324041 32 0.00010708227657171388
		5 28 1.7478747950959189e-07 29 1.3466660548227181e-06 30 0.00010708227086680669 
		31 0.99978431400473211 32 0.00010708227086680369
		5 28 1.7478747950959189e-07 29 1.3466660548227181e-06 30 0.00010708227086680669 
		31 0.99978431400473211 32 0.00010708227086680369
		5 28 1.7478748891502649e-07 29 1.3466661272339092e-06 30 0.00010708227657171688 
		31 0.99978431399324041 32 0.00010708227657171388
		5 28 2.1330780655275925e-07 29 3.3995889889608715e-06 30 0.4999964937571077 
		31 0.4999964937571077 32 3.3995889889608237e-06
		5 28 2.1330780655275925e-07 29 3.3995889889608715e-06 30 0.4999964937571077 
		31 0.4999964937571077 32 3.3995889889608237e-06
		5 28 2.1330781803067108e-07 29 3.3995891715321207e-06 30 0.49999649375691951 
		31 0.49999649375691951 32 3.3995891715320725e-06
		5 28 2.1330780655275925e-07 29 3.3995889889608715e-06 30 0.4999964937571077 
		31 0.4999964937571077 32 3.3995889889608237e-06
		5 28 2.1330780655275925e-07 29 3.3995889889608715e-06 30 0.4999964937571077 
		31 0.4999964937571077 32 3.3995889889608237e-06
		5 28 2.1330781803067108e-07 29 3.3995891715321207e-06 30 0.49999649375691951 
		31 0.49999649375691951 32 3.3995891715320725e-06
		5 28 2.1330780655275925e-07 29 3.3995889889608715e-06 30 0.4999964937571077 
		31 0.4999964937571077 32 3.3995889889608237e-06
		5 28 2.1330780655275925e-07 29 3.3995889889608715e-06 30 0.4999964937571077 
		31 0.4999964937571077 32 3.3995889889608237e-06
		5 28 2.1330781803067108e-07 29 3.3995891715321207e-06 30 0.49999649375691951 
		31 0.49999649375691951 32 3.3995891715320725e-06
		5 28 2.1330780655275925e-07 29 3.3995889889608715e-06 30 0.4999964937571077 
		31 0.4999964937571077 32 3.3995889889608237e-06
		5 28 2.1330780655275925e-07 29 3.3995889889608715e-06 30 0.4999964937571077 
		31 0.4999964937571077 32 3.3995889889608237e-06
		5 28 2.1330781803067108e-07 29 3.3995891715321207e-06 30 0.49999649375691951 
		31 0.49999649375691951 32 3.3995891715320725e-06
		5 28 1.3466644766954698e-06 29 0.00010708214537953472 30 0.99978314238028754 
		31 0.00010708214537953173 32 1.3466644766954571e-06
		5 28 1.3466644766954698e-06 29 0.00010708214537953472 30 0.99978314238028754 
		31 0.00010708214537953173 32 1.3466644766954571e-06
		5 28 1.3466645491064913e-06 29 0.00010708215108443149 30 0.99978314236873289 
		31 0.0001070821510844285 32 1.3466645491064786e-06
		5 28 1.3466644766954698e-06 29 0.00010708214537953472 30 0.99978314238028754 
		31 0.00010708214537953173 32 1.3466644766954571e-06
		5 28 1.3466644766954698e-06 29 0.00010708214537953472 30 0.99978314238028754 
		31 0.00010708214537953173 32 1.3466644766954571e-06
		5 28 1.3466645491064913e-06 29 0.00010708215108443149 30 0.99978314236873289 
		31 0.0001070821510844285 32 1.3466645491064786e-06
		5 28 1.3466644766954698e-06 29 0.00010708214537953472 30 0.99978314238028754 
		31 0.00010708214537953173 32 1.3466644766954571e-06
		5 28 1.3466644766954698e-06 29 0.00010708214537953472 30 0.99978314238028754 
		31 0.00010708214537953173 32 1.3466644766954571e-06
		5 28 1.3466645491064913e-06 29 0.00010708215108443149 30 0.99978314236873289 
		31 0.0001070821510844285 32 1.3466645491064786e-06
		5 28 1.3466644766954698e-06 29 0.00010708214537953472 30 0.99978314238028754 
		31 0.00010708214537953173 32 1.3466644766954571e-06
		5 28 1.3466644766954698e-06 29 0.00010708214537953472 30 0.99978314238028754 
		31 0.00010708214537953173 32 1.3466644766954571e-06
		5 28 1.3466645491064913e-06 29 0.00010708215108443149 30 0.99978314236873289 
		31 0.0001070821510844285 32 1.3466645491064786e-06
		5 27 2.1330780655275925e-07 28 3.3995889889608715e-06 29 0.4999964937571077 
		30 0.4999964937571077 31 3.3995889889608237e-06
		5 27 2.1330780655275925e-07 28 3.3995889889608715e-06 29 0.4999964937571077 
		30 0.4999964937571077 31 3.3995889889608237e-06
		5 27 2.1330781803067108e-07 28 3.3995891715321207e-06 29 0.49999649375691951 
		30 0.49999649375691951 31 3.3995891715320725e-06
		5 27 2.1330780655275925e-07 28 3.3995889889608715e-06 29 0.4999964937571077 
		30 0.4999964937571077 31 3.3995889889608237e-06
		5 27 2.1330780655275925e-07 28 3.3995889889608715e-06 29 0.4999964937571077 
		30 0.4999964937571077 31 3.3995889889608237e-06
		5 27 2.1330781803067108e-07 28 3.3995891715321207e-06 29 0.49999649375691951 
		30 0.49999649375691951 31 3.3995891715320725e-06
		5 27 2.1330780655275925e-07 28 3.3995889889608715e-06 29 0.4999964937571077 
		30 0.4999964937571077 31 3.3995889889608237e-06
		5 27 2.1330780655275925e-07 28 3.3995889889608715e-06 29 0.4999964937571077 
		30 0.4999964937571077 31 3.3995889889608237e-06
		5 27 2.1330781803067108e-07 28 3.3995891715321207e-06 29 0.49999649375691951 
		30 0.49999649375691951 31 3.3995891715320725e-06
		5 27 2.1330780655275925e-07 28 3.3995889889608715e-06 29 0.4999964937571077 
		30 0.4999964937571077 31 3.3995889889608237e-06
		5 27 2.1330780655275925e-07 28 3.3995889889608715e-06 29 0.4999964937571077 
		30 0.4999964937571077 31 3.3995889889608237e-06
		5 27 2.1330781803067108e-07 28 3.3995891715321207e-06 29 0.49999649375691951 
		30 0.49999649375691951 31 3.3995891715320725e-06
		5 27 1.3466644766954698e-06 28 0.00010708214537953472 29 0.99978314238028754 
		30 0.00010708214537953173 31 1.3466644766954571e-06
		5 27 1.3466644766954698e-06 28 0.00010708214537953472 29 0.99978314238028754 
		30 0.00010708214537953173 31 1.3466644766954571e-06
		5 27 1.3466645491064913e-06 28 0.00010708215108443149 29 0.99978314236873289 
		30 0.0001070821510844285 31 1.3466645491064786e-06
		5 27 1.3466644766954698e-06 28 0.00010708214537953472 29 0.99978314238028754 
		30 0.00010708214537953173 31 1.3466644766954571e-06
		5 27 1.3466644766954698e-06 28 0.00010708214537953472 29 0.99978314238028754 
		30 0.00010708214537953173 31 1.3466644766954571e-06
		5 27 1.3466645491064913e-06 28 0.00010708215108443149 29 0.99978314236873289 
		30 0.0001070821510844285 31 1.3466645491064786e-06
		5 27 1.3466644766954698e-06 28 0.00010708214537953472 29 0.99978314238028754 
		30 0.00010708214537953173 31 1.3466644766954571e-06
		5 27 1.3466644766954698e-06 28 0.00010708214537953472 29 0.99978314238028754 
		30 0.00010708214537953173 31 1.3466644766954571e-06
		5 27 1.3466645491064913e-06 28 0.00010708215108443149 29 0.99978314236873289 
		30 0.0001070821510844285 31 1.3466645491064786e-06
		5 27 1.3466644766954698e-06 28 0.00010708214537953472 29 0.99978314238028754 
		30 0.00010708214537953173 31 1.3466644766954571e-06
		5 27 1.3466644766954698e-06 28 0.00010708214537953472 29 0.99978314238028754 
		30 0.00010708214537953173 31 1.3466644766954571e-06
		5 27 1.3466645491064913e-06 28 0.00010708215108443149 29 0.99978314236873289 
		30 0.0001070821510844285 31 1.3466645491064786e-06
		5 26 2.1330780655275925e-07 27 3.3995889889608715e-06 28 0.4999964937571077 
		29 0.4999964937571077 30 3.3995889889608237e-06
		5 26 2.1330780655275925e-07 27 3.3995889889608715e-06 28 0.4999964937571077 
		29 0.4999964937571077 30 3.3995889889608237e-06
		5 26 2.1330781803067108e-07 27 3.3995891715321207e-06 28 0.49999649375691951 
		29 0.49999649375691951 30 3.3995891715320725e-06
		5 26 2.1330780655275925e-07 27 3.3995889889608715e-06 28 0.4999964937571077 
		29 0.4999964937571077 30 3.3995889889608237e-06
		5 26 2.1330780655275925e-07 27 3.3995889889608715e-06 28 0.4999964937571077 
		29 0.4999964937571077 30 3.3995889889608237e-06
		5 26 2.1330781803067108e-07 27 3.3995891715321207e-06 28 0.49999649375691951 
		29 0.49999649375691951 30 3.3995891715320725e-06
		5 26 2.1330780655275925e-07 27 3.3995889889608715e-06 28 0.4999964937571077 
		29 0.4999964937571077 30 3.3995889889608237e-06
		5 26 2.1330780655275925e-07 27 3.3995889889608715e-06 28 0.4999964937571077 
		29 0.4999964937571077 30 3.3995889889608237e-06
		5 26 2.1330781803067108e-07 27 3.3995891715321207e-06 28 0.49999649375691951 
		29 0.49999649375691951 30 3.3995891715320725e-06
		5 26 2.1330780655275925e-07 27 3.3995889889608715e-06 28 0.4999964937571077 
		29 0.4999964937571077 30 3.3995889889608237e-06
		5 26 2.1330780655275925e-07 27 3.3995889889608715e-06 28 0.4999964937571077 
		29 0.4999964937571077 30 3.3995889889608237e-06
		5 26 2.1330781803067108e-07 27 3.3995891715321207e-06 28 0.49999649375691951 
		29 0.49999649375691951 30 3.3995891715320725e-06
		5 26 1.3466644766954698e-06 27 0.00010708214537953472 28 0.99978314238028754 
		29 0.00010708214537953173 30 1.3466644766954571e-06
		5 26 1.3466644766954698e-06 27 0.00010708214537953472 28 0.99978314238028754 
		29 0.00010708214537953173 30 1.3466644766954571e-06
		5 26 1.3466645491064913e-06 27 0.00010708215108443149 28 0.99978314236873289 
		29 0.0001070821510844285 30 1.3466645491064786e-06
		5 26 1.3466644766954698e-06 27 0.00010708214537953472 28 0.99978314238028754 
		29 0.00010708214537953173 30 1.3466644766954571e-06
		5 26 1.3466644766954698e-06 27 0.00010708214537953472 28 0.99978314238028754 
		29 0.00010708214537953173 30 1.3466644766954571e-06
		5 26 1.3466645491064913e-06 27 0.00010708215108443149 28 0.99978314236873289 
		29 0.0001070821510844285 30 1.3466645491064786e-06
		5 26 1.3466644766954698e-06 27 0.00010708214537953472 28 0.99978314238028754 
		29 0.00010708214537953173 30 1.3466644766954571e-06
		5 26 1.3466644766954698e-06 27 0.00010708214537953472 28 0.99978314238028754 
		29 0.00010708214537953173 30 1.3466644766954571e-06
		5 26 1.3466645491064913e-06 27 0.00010708215108443149 28 0.99978314236873289 
		29 0.0001070821510844285 30 1.3466645491064786e-06
		5 26 1.3466644766954698e-06 27 0.00010708214537953472 28 0.99978314238028754 
		29 0.00010708214537953173 30 1.3466644766954571e-06
		5 26 1.3466644766954698e-06 27 0.00010708214537953472 28 0.99978314238028754 
		29 0.00010708214537953173 30 1.3466644766954571e-06
		5 26 1.3466645491064913e-06 27 0.00010708215108443149 28 0.99978314236873289 
		29 0.0001070821510844285 30 1.3466645491064786e-06
		5 25 2.1330780655275925e-07 26 3.3995889889608715e-06 27 0.4999964937571077 
		28 0.4999964937571077 29 3.3995889889608237e-06
		5 25 2.1330780655275925e-07 26 3.3995889889608715e-06 27 0.4999964937571077 
		28 0.4999964937571077 29 3.3995889889608237e-06
		5 25 2.1330781803067108e-07 26 3.3995891715321207e-06 27 0.49999649375691951 
		28 0.49999649375691951 29 3.3995891715320725e-06
		5 25 2.1330780655275925e-07 26 3.3995889889608715e-06 27 0.4999964937571077 
		28 0.4999964937571077 29 3.3995889889608237e-06;
	setAttr ".wl[100:199].w"
		5 25 2.1330780655275925e-07 26 3.3995889889608715e-06 27 0.4999964937571077 
		28 0.4999964937571077 29 3.3995889889608237e-06
		5 25 2.1330781803067108e-07 26 3.3995891715321207e-06 27 0.49999649375691951 
		28 0.49999649375691951 29 3.3995891715320725e-06
		5 25 2.1330780655275925e-07 26 3.3995889889608715e-06 27 0.4999964937571077 
		28 0.4999964937571077 29 3.3995889889608237e-06
		5 25 2.1330780655275925e-07 26 3.3995889889608715e-06 27 0.4999964937571077 
		28 0.4999964937571077 29 3.3995889889608237e-06
		5 25 2.1330781803067108e-07 26 3.3995891715321207e-06 27 0.49999649375691951 
		28 0.49999649375691951 29 3.3995891715320725e-06
		5 25 2.1330780655275925e-07 26 3.3995889889608715e-06 27 0.4999964937571077 
		28 0.4999964937571077 29 3.3995889889608237e-06
		5 25 2.1330780655275925e-07 26 3.3995889889608715e-06 27 0.4999964937571077 
		28 0.4999964937571077 29 3.3995889889608237e-06
		5 25 2.1330781803067108e-07 26 3.3995891715321207e-06 27 0.49999649375691951 
		28 0.49999649375691951 29 3.3995891715320725e-06
		5 25 1.3466644766954698e-06 26 0.00010708214537953472 27 0.99978314238028754 
		28 0.00010708214537953173 29 1.3466644766954571e-06
		5 25 1.3466644766954698e-06 26 0.00010708214537953472 27 0.99978314238028754 
		28 0.00010708214537953173 29 1.3466644766954571e-06
		5 25 1.3466645491064913e-06 26 0.00010708215108443149 27 0.99978314236873289 
		28 0.0001070821510844285 29 1.3466645491064786e-06
		5 25 1.3466644766954698e-06 26 0.00010708214537953472 27 0.99978314238028754 
		28 0.00010708214537953173 29 1.3466644766954571e-06
		5 25 1.3466644766954698e-06 26 0.00010708214537953472 27 0.99978314238028754 
		28 0.00010708214537953173 29 1.3466644766954571e-06
		5 25 1.3466645491064913e-06 26 0.00010708215108443149 27 0.99978314236873289 
		28 0.0001070821510844285 29 1.3466645491064786e-06
		5 25 1.3466644766954698e-06 26 0.00010708214537953472 27 0.99978314238028754 
		28 0.00010708214537953173 29 1.3466644766954571e-06
		5 25 1.3466644766954698e-06 26 0.00010708214537953472 27 0.99978314238028754 
		28 0.00010708214537953173 29 1.3466644766954571e-06
		5 25 1.3466645491064913e-06 26 0.00010708215108443149 27 0.99978314236873289 
		28 0.0001070821510844285 29 1.3466645491064786e-06
		5 25 1.3466644766954698e-06 26 0.00010708214537953472 27 0.99978314238028754 
		28 0.00010708214537953173 29 1.3466644766954571e-06
		5 25 1.3466644766954698e-06 26 0.00010708214537953472 27 0.99978314238028754 
		28 0.00010708214537953173 29 1.3466644766954571e-06
		5 25 1.3466645491064913e-06 26 0.00010708215108443149 27 0.99978314236873289 
		28 0.0001070821510844285 29 1.3466645491064786e-06
		5 24 2.1330780655275925e-07 25 3.3995889889608715e-06 26 0.4999964937571077 
		27 0.4999964937571077 28 3.3995889889608237e-06
		5 24 2.1330780655275925e-07 25 3.3995889889608715e-06 26 0.4999964937571077 
		27 0.4999964937571077 28 3.3995889889608237e-06
		5 24 2.1330781803067108e-07 25 3.3995891715321207e-06 26 0.49999649375691951 
		27 0.49999649375691951 28 3.3995891715320725e-06
		5 24 2.1330780655275925e-07 25 3.3995889889608715e-06 26 0.4999964937571077 
		27 0.4999964937571077 28 3.3995889889608237e-06
		5 24 2.1330780655275925e-07 25 3.3995889889608715e-06 26 0.4999964937571077 
		27 0.4999964937571077 28 3.3995889889608237e-06
		5 24 2.1330781803067108e-07 25 3.3995891715321207e-06 26 0.49999649375691951 
		27 0.49999649375691951 28 3.3995891715320725e-06
		5 24 2.1330780655275925e-07 25 3.3995889889608715e-06 26 0.4999964937571077 
		27 0.4999964937571077 28 3.3995889889608237e-06
		5 24 2.1330780655275925e-07 25 3.3995889889608715e-06 26 0.4999964937571077 
		27 0.4999964937571077 28 3.3995889889608237e-06
		5 24 2.1330781803067108e-07 25 3.3995891715321207e-06 26 0.49999649375691951 
		27 0.49999649375691951 28 3.3995891715320725e-06
		5 24 2.1330780655275925e-07 25 3.3995889889608715e-06 26 0.4999964937571077 
		27 0.4999964937571077 28 3.3995889889608237e-06
		5 24 2.1330780655275925e-07 25 3.3995889889608715e-06 26 0.4999964937571077 
		27 0.4999964937571077 28 3.3995889889608237e-06
		5 24 2.1330781803067108e-07 25 3.3995891715321207e-06 26 0.49999649375691951 
		27 0.49999649375691951 28 3.3995891715320725e-06
		5 24 1.3466644766954698e-06 25 0.00010708214537953472 26 0.99978314238028754 
		27 0.00010708214537953173 28 1.3466644766954571e-06
		5 24 1.3466644766954698e-06 25 0.00010708214537953472 26 0.99978314238028754 
		27 0.00010708214537953173 28 1.3466644766954571e-06
		5 24 1.3466645491064913e-06 25 0.00010708215108443149 26 0.99978314236873289 
		27 0.0001070821510844285 28 1.3466645491064786e-06
		5 24 1.3466644766954698e-06 25 0.00010708214537953472 26 0.99978314238028754 
		27 0.00010708214537953173 28 1.3466644766954571e-06
		5 24 1.3466644766954698e-06 25 0.00010708214537953472 26 0.99978314238028754 
		27 0.00010708214537953173 28 1.3466644766954571e-06
		5 24 1.3466645491064913e-06 25 0.00010708215108443149 26 0.99978314236873289 
		27 0.0001070821510844285 28 1.3466645491064786e-06
		5 24 1.3466644766954698e-06 25 0.00010708214537953472 26 0.99978314238028754 
		27 0.00010708214537953173 28 1.3466644766954571e-06
		5 24 1.3466644766954698e-06 25 0.00010708214537953472 26 0.99978314238028754 
		27 0.00010708214537953173 28 1.3466644766954571e-06
		5 24 1.3466645491064913e-06 25 0.00010708215108443149 26 0.99978314236873289 
		27 0.0001070821510844285 28 1.3466645491064786e-06
		5 24 1.3466644766954698e-06 25 0.00010708214537953472 26 0.99978314238028754 
		27 0.00010708214537953173 28 1.3466644766954571e-06
		5 24 1.3466644766954698e-06 25 0.00010708214537953472 26 0.99978314238028754 
		27 0.00010708214537953173 28 1.3466644766954571e-06
		5 24 1.3466645491064913e-06 25 0.00010708215108443149 26 0.99978314236873289 
		27 0.0001070821510844285 28 1.3466645491064786e-06
		5 23 2.1330780655275925e-07 24 3.3995889889608715e-06 25 0.4999964937571077 
		26 0.4999964937571077 27 3.3995889889608237e-06
		5 23 2.1330780655275925e-07 24 3.3995889889608715e-06 25 0.4999964937571077 
		26 0.4999964937571077 27 3.3995889889608237e-06
		5 23 2.1330781803067108e-07 24 3.3995891715321207e-06 25 0.49999649375691951 
		26 0.49999649375691951 27 3.3995891715320725e-06
		5 23 2.1330780655275925e-07 24 3.3995889889608715e-06 25 0.4999964937571077 
		26 0.4999964937571077 27 3.3995889889608237e-06
		5 23 2.1330780655275925e-07 24 3.3995889889608715e-06 25 0.4999964937571077 
		26 0.4999964937571077 27 3.3995889889608237e-06
		5 23 2.1330781803067108e-07 24 3.3995891715321207e-06 25 0.49999649375691951 
		26 0.49999649375691951 27 3.3995891715320725e-06
		5 23 2.1330780655275925e-07 24 3.3995889889608715e-06 25 0.4999964937571077 
		26 0.4999964937571077 27 3.3995889889608237e-06
		5 23 2.1330780655275925e-07 24 3.3995889889608715e-06 25 0.4999964937571077 
		26 0.4999964937571077 27 3.3995889889608237e-06
		5 23 2.1330781803067108e-07 24 3.3995891715321207e-06 25 0.49999649375691951 
		26 0.49999649375691951 27 3.3995891715320725e-06
		5 23 2.1330780655275925e-07 24 3.3995889889608715e-06 25 0.4999964937571077 
		26 0.4999964937571077 27 3.3995889889608237e-06
		5 23 2.1330780655275925e-07 24 3.3995889889608715e-06 25 0.4999964937571077 
		26 0.4999964937571077 27 3.3995889889608237e-06
		5 23 2.1330781803067108e-07 24 3.3995891715321207e-06 25 0.49999649375691951 
		26 0.49999649375691951 27 3.3995891715320725e-06
		5 23 1.3466644766954698e-06 24 0.00010708214537953472 25 0.99978314238028754 
		26 0.00010708214537953173 27 1.3466644766954571e-06
		5 23 1.3466644766954698e-06 24 0.00010708214537953472 25 0.99978314238028754 
		26 0.00010708214537953173 27 1.3466644766954571e-06
		5 23 1.3466645491064913e-06 24 0.00010708215108443149 25 0.99978314236873289 
		26 0.0001070821510844285 27 1.3466645491064786e-06
		5 23 1.3466644766954698e-06 24 0.00010708214537953472 25 0.99978314238028754 
		26 0.00010708214537953173 27 1.3466644766954571e-06
		5 23 1.3466644766954698e-06 24 0.00010708214537953472 25 0.99978314238028754 
		26 0.00010708214537953173 27 1.3466644766954571e-06
		5 23 1.3466645491064913e-06 24 0.00010708215108443149 25 0.99978314236873289 
		26 0.0001070821510844285 27 1.3466645491064786e-06
		5 23 1.3466644766954698e-06 24 0.00010708214537953472 25 0.99978314238028754 
		26 0.00010708214537953173 27 1.3466644766954571e-06
		5 23 1.3466644766954698e-06 24 0.00010708214537953472 25 0.99978314238028754 
		26 0.00010708214537953173 27 1.3466644766954571e-06
		5 23 1.3466645491064913e-06 24 0.00010708215108443149 25 0.99978314236873289 
		26 0.0001070821510844285 27 1.3466645491064786e-06
		5 23 1.3466644766954698e-06 24 0.00010708214537953472 25 0.99978314238028754 
		26 0.00010708214537953173 27 1.3466644766954571e-06
		5 23 1.3466644766954698e-06 24 0.00010708214537953472 25 0.99978314238028754 
		26 0.00010708214537953173 27 1.3466644766954571e-06
		5 23 1.3466645491064913e-06 24 0.00010708215108443149 25 0.99978314236873289 
		26 0.0001070821510844285 27 1.3466645491064786e-06
		5 22 2.1330780655275925e-07 23 3.3995889889608715e-06 24 0.4999964937571077 
		25 0.4999964937571077 26 3.3995889889608237e-06
		5 22 2.1330780655275925e-07 23 3.3995889889608715e-06 24 0.4999964937571077 
		25 0.4999964937571077 26 3.3995889889608237e-06
		5 22 2.1330781803067108e-07 23 3.3995891715321207e-06 24 0.49999649375691951 
		25 0.49999649375691951 26 3.3995891715320725e-06
		5 22 2.1330780655275925e-07 23 3.3995889889608715e-06 24 0.4999964937571077 
		25 0.4999964937571077 26 3.3995889889608237e-06
		5 22 2.1330780655275925e-07 23 3.3995889889608715e-06 24 0.4999964937571077 
		25 0.4999964937571077 26 3.3995889889608237e-06
		5 22 2.1330781803067108e-07 23 3.3995891715321207e-06 24 0.49999649375691951 
		25 0.49999649375691951 26 3.3995891715320725e-06
		5 22 2.1330780655275925e-07 23 3.3995889889608715e-06 24 0.4999964937571077 
		25 0.4999964937571077 26 3.3995889889608237e-06
		5 22 2.1330780655275925e-07 23 3.3995889889608715e-06 24 0.4999964937571077 
		25 0.4999964937571077 26 3.3995889889608237e-06
		5 22 2.1330781803067108e-07 23 3.3995891715321207e-06 24 0.49999649375691951 
		25 0.49999649375691951 26 3.3995891715320725e-06
		5 22 2.1330780655275925e-07 23 3.3995889889608715e-06 24 0.4999964937571077 
		25 0.4999964937571077 26 3.3995889889608237e-06
		5 22 2.1330780655275925e-07 23 3.3995889889608715e-06 24 0.4999964937571077 
		25 0.4999964937571077 26 3.3995889889608237e-06
		5 22 2.1330781803067108e-07 23 3.3995891715321207e-06 24 0.49999649375691951 
		25 0.49999649375691951 26 3.3995891715320725e-06
		5 22 1.3466644766954698e-06 23 0.00010708214537953472 24 0.99978314238028754 
		25 0.00010708214537953173 26 1.3466644766954571e-06
		5 22 1.3466644766954698e-06 23 0.00010708214537953472 24 0.99978314238028754 
		25 0.00010708214537953173 26 1.3466644766954571e-06
		5 22 1.3466645491064913e-06 23 0.00010708215108443149 24 0.99978314236873289 
		25 0.0001070821510844285 26 1.3466645491064786e-06
		5 22 1.3466644766954698e-06 23 0.00010708214537953472 24 0.99978314238028754 
		25 0.00010708214537953173 26 1.3466644766954571e-06
		5 22 1.3466644766954698e-06 23 0.00010708214537953472 24 0.99978314238028754 
		25 0.00010708214537953173 26 1.3466644766954571e-06
		5 22 1.3466645491064913e-06 23 0.00010708215108443149 24 0.99978314236873289 
		25 0.0001070821510844285 26 1.3466645491064786e-06
		5 22 1.3466644766954698e-06 23 0.00010708214537953472 24 0.99978314238028754 
		25 0.00010708214537953173 26 1.3466644766954571e-06
		5 22 1.3466644766954698e-06 23 0.00010708214537953472 24 0.99978314238028754 
		25 0.00010708214537953173 26 1.3466644766954571e-06
		5 22 1.3466645491064913e-06 23 0.00010708215108443149 24 0.99978314236873289 
		25 0.0001070821510844285 26 1.3466645491064786e-06
		5 22 1.3466644766954698e-06 23 0.00010708214537953472 24 0.99978314238028754 
		25 0.00010708214537953173 26 1.3466644766954571e-06
		5 22 1.3466644766954698e-06 23 0.00010708214537953472 24 0.99978314238028754 
		25 0.00010708214537953173 26 1.3466644766954571e-06
		5 22 1.3466645491064913e-06 23 0.00010708215108443149 24 0.99978314236873289 
		25 0.0001070821510844285 26 1.3466645491064786e-06
		5 21 2.1330780655275925e-07 22 3.3995889889608715e-06 23 0.4999964937571077 
		24 0.4999964937571077 25 3.3995889889608237e-06
		5 21 2.1330780655275925e-07 22 3.3995889889608715e-06 23 0.4999964937571077 
		24 0.4999964937571077 25 3.3995889889608237e-06
		5 21 2.1330781803067108e-07 22 3.3995891715321207e-06 23 0.49999649375691951 
		24 0.49999649375691951 25 3.3995891715320725e-06
		5 21 2.1330780655275925e-07 22 3.3995889889608715e-06 23 0.4999964937571077 
		24 0.4999964937571077 25 3.3995889889608237e-06
		5 21 2.1330780655275925e-07 22 3.3995889889608715e-06 23 0.4999964937571077 
		24 0.4999964937571077 25 3.3995889889608237e-06
		5 21 2.1330781803067108e-07 22 3.3995891715321207e-06 23 0.49999649375691951 
		24 0.49999649375691951 25 3.3995891715320725e-06
		5 21 2.1330780655275925e-07 22 3.3995889889608715e-06 23 0.4999964937571077 
		24 0.4999964937571077 25 3.3995889889608237e-06
		5 21 2.1330780655275925e-07 22 3.3995889889608715e-06 23 0.4999964937571077 
		24 0.4999964937571077 25 3.3995889889608237e-06;
	setAttr ".wl[200:299].w"
		5 21 2.1330781803067108e-07 22 3.3995891715321207e-06 23 0.49999649375691951 
		24 0.49999649375691951 25 3.3995891715320725e-06
		5 21 2.1330780655275925e-07 22 3.3995889889608715e-06 23 0.4999964937571077 
		24 0.4999964937571077 25 3.3995889889608237e-06
		5 21 2.1330780655275925e-07 22 3.3995889889608715e-06 23 0.4999964937571077 
		24 0.4999964937571077 25 3.3995889889608237e-06
		5 21 2.1330781803067108e-07 22 3.3995891715321207e-06 23 0.49999649375691951 
		24 0.49999649375691951 25 3.3995891715320725e-06
		5 21 1.3466644766954698e-06 22 0.00010708214537953472 23 0.99978314238028754 
		24 0.00010708214537953173 25 1.3466644766954571e-06
		5 21 1.3466644766954698e-06 22 0.00010708214537953472 23 0.99978314238028754 
		24 0.00010708214537953173 25 1.3466644766954571e-06
		5 21 1.3466645491064913e-06 22 0.00010708215108443149 23 0.99978314236873289 
		24 0.0001070821510844285 25 1.3466645491064786e-06
		5 21 1.3466644766954698e-06 22 0.00010708214537953472 23 0.99978314238028754 
		24 0.00010708214537953173 25 1.3466644766954571e-06
		5 21 1.3466644766954698e-06 22 0.00010708214537953472 23 0.99978314238028754 
		24 0.00010708214537953173 25 1.3466644766954571e-06
		5 21 1.3466645491064913e-06 22 0.00010708215108443149 23 0.99978314236873289 
		24 0.0001070821510844285 25 1.3466645491064786e-06
		5 21 1.3466644766954698e-06 22 0.00010708214537953472 23 0.99978314238028754 
		24 0.00010708214537953173 25 1.3466644766954571e-06
		5 21 1.3466644766954698e-06 22 0.00010708214537953472 23 0.99978314238028754 
		24 0.00010708214537953173 25 1.3466644766954571e-06
		5 21 1.3466645491064913e-06 22 0.00010708215108443149 23 0.99978314236873289 
		24 0.0001070821510844285 25 1.3466645491064786e-06
		5 21 1.3466644766954698e-06 22 0.00010708214537953472 23 0.99978314238028754 
		24 0.00010708214537953173 25 1.3466644766954571e-06
		5 21 1.3466644766954698e-06 22 0.00010708214537953472 23 0.99978314238028754 
		24 0.00010708214537953173 25 1.3466644766954571e-06
		5 21 1.3466645491064913e-06 22 0.00010708215108443149 23 0.99978314236873289 
		24 0.0001070821510844285 25 1.3466645491064786e-06
		5 20 2.1330780655275925e-07 21 3.3995889889608715e-06 22 0.4999964937571077 
		23 0.4999964937571077 24 3.3995889889608237e-06
		5 20 2.1330780655275925e-07 21 3.3995889889608715e-06 22 0.4999964937571077 
		23 0.4999964937571077 24 3.3995889889608237e-06
		5 20 2.1330781803067108e-07 21 3.3995891715321207e-06 22 0.49999649375691951 
		23 0.49999649375691951 24 3.3995891715320725e-06
		5 20 2.1330780655275925e-07 21 3.3995889889608715e-06 22 0.4999964937571077 
		23 0.4999964937571077 24 3.3995889889608237e-06
		5 20 2.1330780655275925e-07 21 3.3995889889608715e-06 22 0.4999964937571077 
		23 0.4999964937571077 24 3.3995889889608237e-06
		5 20 2.1330781803067108e-07 21 3.3995891715321207e-06 22 0.49999649375691951 
		23 0.49999649375691951 24 3.3995891715320725e-06
		5 20 2.1330780655275925e-07 21 3.3995889889608715e-06 22 0.4999964937571077 
		23 0.4999964937571077 24 3.3995889889608237e-06
		5 20 2.1330780655275925e-07 21 3.3995889889608715e-06 22 0.4999964937571077 
		23 0.4999964937571077 24 3.3995889889608237e-06
		5 20 2.1330781803067108e-07 21 3.3995891715321207e-06 22 0.49999649375691951 
		23 0.49999649375691951 24 3.3995891715320725e-06
		5 20 2.1330780655275925e-07 21 3.3995889889608715e-06 22 0.4999964937571077 
		23 0.4999964937571077 24 3.3995889889608237e-06
		5 20 2.1330780655275925e-07 21 3.3995889889608715e-06 22 0.4999964937571077 
		23 0.4999964937571077 24 3.3995889889608237e-06
		5 20 2.1330781803067108e-07 21 3.3995891715321207e-06 22 0.49999649375691951 
		23 0.49999649375691951 24 3.3995891715320725e-06
		5 20 1.3466644766954698e-06 21 0.00010708214537953472 22 0.99978314238028754 
		23 0.00010708214537953173 24 1.3466644766954571e-06
		5 20 1.3466644766954698e-06 21 0.00010708214537953472 22 0.99978314238028754 
		23 0.00010708214537953173 24 1.3466644766954571e-06
		5 20 1.3466645491064913e-06 21 0.00010708215108443149 22 0.99978314236873289 
		23 0.0001070821510844285 24 1.3466645491064786e-06
		5 20 1.3466644766954698e-06 21 0.00010708214537953472 22 0.99978314238028754 
		23 0.00010708214537953173 24 1.3466644766954571e-06
		5 20 1.3466644766954698e-06 21 0.00010708214537953472 22 0.99978314238028754 
		23 0.00010708214537953173 24 1.3466644766954571e-06
		5 20 1.3466645491064913e-06 21 0.00010708215108443149 22 0.99978314236873289 
		23 0.0001070821510844285 24 1.3466645491064786e-06
		5 20 1.3466644766954698e-06 21 0.00010708214537953472 22 0.99978314238028754 
		23 0.00010708214537953173 24 1.3466644766954571e-06
		5 20 1.3466644766954698e-06 21 0.00010708214537953472 22 0.99978314238028754 
		23 0.00010708214537953173 24 1.3466644766954571e-06
		5 20 1.3466645491064913e-06 21 0.00010708215108443149 22 0.99978314236873289 
		23 0.0001070821510844285 24 1.3466645491064786e-06
		5 20 1.3466644766954698e-06 21 0.00010708214537953472 22 0.99978314238028754 
		23 0.00010708214537953173 24 1.3466644766954571e-06
		5 20 1.3466644766954698e-06 21 0.00010708214537953472 22 0.99978314238028754 
		23 0.00010708214537953173 24 1.3466644766954571e-06
		5 20 1.3466645491064913e-06 21 0.00010708215108443149 22 0.99978314236873289 
		23 0.0001070821510844285 24 1.3466645491064786e-06
		5 19 2.1330780655275925e-07 20 3.3995889889608715e-06 21 0.4999964937571077 
		22 0.4999964937571077 23 3.3995889889608237e-06
		5 19 2.1330780655275925e-07 20 3.3995889889608715e-06 21 0.4999964937571077 
		22 0.4999964937571077 23 3.3995889889608237e-06
		5 19 2.1330781803067108e-07 20 3.3995891715321207e-06 21 0.49999649375691951 
		22 0.49999649375691951 23 3.3995891715320725e-06
		5 19 2.1330780655275925e-07 20 3.3995889889608715e-06 21 0.4999964937571077 
		22 0.4999964937571077 23 3.3995889889608237e-06
		5 19 2.1330780655275925e-07 20 3.3995889889608715e-06 21 0.4999964937571077 
		22 0.4999964937571077 23 3.3995889889608237e-06
		5 19 2.1330781803067108e-07 20 3.3995891715321207e-06 21 0.49999649375691951 
		22 0.49999649375691951 23 3.3995891715320725e-06
		5 19 2.1330780655275925e-07 20 3.3995889889608715e-06 21 0.4999964937571077 
		22 0.4999964937571077 23 3.3995889889608237e-06
		5 19 2.1330780655275925e-07 20 3.3995889889608715e-06 21 0.4999964937571077 
		22 0.4999964937571077 23 3.3995889889608237e-06
		5 19 2.1330781803067108e-07 20 3.3995891715321207e-06 21 0.49999649375691951 
		22 0.49999649375691951 23 3.3995891715320725e-06
		5 19 2.1330780655275925e-07 20 3.3995889889608715e-06 21 0.4999964937571077 
		22 0.4999964937571077 23 3.3995889889608237e-06
		5 19 2.1330780655275925e-07 20 3.3995889889608715e-06 21 0.4999964937571077 
		22 0.4999964937571077 23 3.3995889889608237e-06
		5 19 2.1330781803067108e-07 20 3.3995891715321207e-06 21 0.49999649375691951 
		22 0.49999649375691951 23 3.3995891715320725e-06
		5 19 1.3466644766954698e-06 20 0.00010708214537953472 21 0.99978314238028754 
		22 0.00010708214537953173 23 1.3466644766954571e-06
		5 19 1.3466644766954698e-06 20 0.00010708214537953472 21 0.99978314238028754 
		22 0.00010708214537953173 23 1.3466644766954571e-06
		5 19 1.3466645491064913e-06 20 0.00010708215108443149 21 0.99978314236873289 
		22 0.0001070821510844285 23 1.3466645491064786e-06
		5 19 1.3466644766954698e-06 20 0.00010708214537953472 21 0.99978314238028754 
		22 0.00010708214537953173 23 1.3466644766954571e-06
		5 19 1.3466644766954698e-06 20 0.00010708214537953472 21 0.99978314238028754 
		22 0.00010708214537953173 23 1.3466644766954571e-06
		5 19 1.3466645491064913e-06 20 0.00010708215108443149 21 0.99978314236873289 
		22 0.0001070821510844285 23 1.3466645491064786e-06
		5 19 1.3466644766954698e-06 20 0.00010708214537953472 21 0.99978314238028754 
		22 0.00010708214537953173 23 1.3466644766954571e-06
		5 19 1.3466644766954698e-06 20 0.00010708214537953472 21 0.99978314238028754 
		22 0.00010708214537953173 23 1.3466644766954571e-06
		5 19 1.3466645491064913e-06 20 0.00010708215108443149 21 0.99978314236873289 
		22 0.0001070821510844285 23 1.3466645491064786e-06
		5 19 1.3466644766954698e-06 20 0.00010708214537953472 21 0.99978314238028754 
		22 0.00010708214537953173 23 1.3466644766954571e-06
		5 19 1.3466644766954698e-06 20 0.00010708214537953472 21 0.99978314238028754 
		22 0.00010708214537953173 23 1.3466644766954571e-06
		5 19 1.3466645491064913e-06 20 0.00010708215108443149 21 0.99978314236873289 
		22 0.0001070821510844285 23 1.3466645491064786e-06
		5 18 2.1330780655275925e-07 19 3.3995889889608715e-06 20 0.4999964937571077 
		21 0.4999964937571077 22 3.3995889889608237e-06
		5 18 2.1330780655275925e-07 19 3.3995889889608715e-06 20 0.4999964937571077 
		21 0.4999964937571077 22 3.3995889889608237e-06
		5 18 2.1330781803067108e-07 19 3.3995891715321207e-06 20 0.49999649375691951 
		21 0.49999649375691951 22 3.3995891715320725e-06
		5 18 2.1330780655275925e-07 19 3.3995889889608715e-06 20 0.4999964937571077 
		21 0.4999964937571077 22 3.3995889889608237e-06
		5 18 2.1330780655275925e-07 19 3.3995889889608715e-06 20 0.4999964937571077 
		21 0.4999964937571077 22 3.3995889889608237e-06
		5 18 2.1330781803067108e-07 19 3.3995891715321207e-06 20 0.49999649375691951 
		21 0.49999649375691951 22 3.3995891715320725e-06
		5 18 2.1330780655275925e-07 19 3.3995889889608715e-06 20 0.4999964937571077 
		21 0.4999964937571077 22 3.3995889889608237e-06
		5 18 2.1330780655275925e-07 19 3.3995889889608715e-06 20 0.4999964937571077 
		21 0.4999964937571077 22 3.3995889889608237e-06
		5 18 2.1330781803067108e-07 19 3.3995891715321207e-06 20 0.49999649375691951 
		21 0.49999649375691951 22 3.3995891715320725e-06
		5 18 2.1330780655275925e-07 19 3.3995889889608715e-06 20 0.4999964937571077 
		21 0.4999964937571077 22 3.3995889889608237e-06
		5 18 2.1330780655275925e-07 19 3.3995889889608715e-06 20 0.4999964937571077 
		21 0.4999964937571077 22 3.3995889889608237e-06
		5 18 2.1330781803067108e-07 19 3.3995891715321207e-06 20 0.49999649375691951 
		21 0.49999649375691951 22 3.3995891715320725e-06
		5 18 1.3466644766954698e-06 19 0.00010708214537953472 20 0.99978314238028754 
		21 0.00010708214537953173 22 1.3466644766954571e-06
		5 18 1.3466644766954698e-06 19 0.00010708214537953472 20 0.99978314238028754 
		21 0.00010708214537953173 22 1.3466644766954571e-06
		5 18 1.3466645491064913e-06 19 0.00010708215108443149 20 0.99978314236873289 
		21 0.0001070821510844285 22 1.3466645491064786e-06
		5 18 1.3466644766954698e-06 19 0.00010708214537953472 20 0.99978314238028754 
		21 0.00010708214537953173 22 1.3466644766954571e-06
		5 18 1.3466644766954698e-06 19 0.00010708214537953472 20 0.99978314238028754 
		21 0.00010708214537953173 22 1.3466644766954571e-06
		5 18 1.3466645491064913e-06 19 0.00010708215108443149 20 0.99978314236873289 
		21 0.0001070821510844285 22 1.3466645491064786e-06
		5 18 1.3466644766954698e-06 19 0.00010708214537953472 20 0.99978314238028754 
		21 0.00010708214537953173 22 1.3466644766954571e-06
		5 18 1.3466644766954698e-06 19 0.00010708214537953472 20 0.99978314238028754 
		21 0.00010708214537953173 22 1.3466644766954571e-06
		5 18 1.3466645491064913e-06 19 0.00010708215108443149 20 0.99978314236873289 
		21 0.0001070821510844285 22 1.3466645491064786e-06
		5 18 1.3466644766954698e-06 19 0.00010708214537953472 20 0.99978314238028754 
		21 0.00010708214537953173 22 1.3466644766954571e-06
		5 18 1.3466644766954698e-06 19 0.00010708214537953472 20 0.99978314238028754 
		21 0.00010708214537953173 22 1.3466644766954571e-06
		5 18 1.3466645491064913e-06 19 0.00010708215108443149 20 0.99978314236873289 
		21 0.0001070821510844285 22 1.3466645491064786e-06
		5 17 2.1330780655275925e-07 18 3.3995889889608715e-06 19 0.4999964937571077 
		20 0.4999964937571077 21 3.3995889889608237e-06
		5 17 2.1330780655275925e-07 18 3.3995889889608715e-06 19 0.4999964937571077 
		20 0.4999964937571077 21 3.3995889889608237e-06
		5 17 2.1330781803067108e-07 18 3.3995891715321207e-06 19 0.49999649375691951 
		20 0.49999649375691951 21 3.3995891715320725e-06
		5 17 2.1330780655275925e-07 18 3.3995889889608715e-06 19 0.4999964937571077 
		20 0.4999964937571077 21 3.3995889889608237e-06
		5 17 2.1330780655275925e-07 18 3.3995889889608715e-06 19 0.4999964937571077 
		20 0.4999964937571077 21 3.3995889889608237e-06
		5 17 2.1330781803067108e-07 18 3.3995891715321207e-06 19 0.49999649375691951 
		20 0.49999649375691951 21 3.3995891715320725e-06
		5 17 2.1330780655275925e-07 18 3.3995889889608715e-06 19 0.4999964937571077 
		20 0.4999964937571077 21 3.3995889889608237e-06
		5 17 2.1330780655275925e-07 18 3.3995889889608715e-06 19 0.4999964937571077 
		20 0.4999964937571077 21 3.3995889889608237e-06
		5 17 2.1330781803067108e-07 18 3.3995891715321207e-06 19 0.49999649375691951 
		20 0.49999649375691951 21 3.3995891715320725e-06
		5 17 2.1330780655275925e-07 18 3.3995889889608715e-06 19 0.4999964937571077 
		20 0.4999964937571077 21 3.3995889889608237e-06
		5 17 2.1330780655275925e-07 18 3.3995889889608715e-06 19 0.4999964937571077 
		20 0.4999964937571077 21 3.3995889889608237e-06
		5 17 2.1330781803067108e-07 18 3.3995891715321207e-06 19 0.49999649375691951 
		20 0.49999649375691951 21 3.3995891715320725e-06;
	setAttr ".wl[300:399].w"
		5 17 1.3466644766954698e-06 18 0.00010708214537953472 19 0.99978314238028754 
		20 0.00010708214537953173 21 1.3466644766954571e-06
		5 17 1.3466644766954698e-06 18 0.00010708214537953472 19 0.99978314238028754 
		20 0.00010708214537953173 21 1.3466644766954571e-06
		5 17 1.3466645491064913e-06 18 0.00010708215108443149 19 0.99978314236873289 
		20 0.0001070821510844285 21 1.3466645491064786e-06
		5 17 1.3466644766954698e-06 18 0.00010708214537953472 19 0.99978314238028754 
		20 0.00010708214537953173 21 1.3466644766954571e-06
		5 17 1.3466644766954698e-06 18 0.00010708214537953472 19 0.99978314238028754 
		20 0.00010708214537953173 21 1.3466644766954571e-06
		5 17 1.3466645491064913e-06 18 0.00010708215108443149 19 0.99978314236873289 
		20 0.0001070821510844285 21 1.3466645491064786e-06
		5 17 1.3466644766954698e-06 18 0.00010708214537953472 19 0.99978314238028754 
		20 0.00010708214537953173 21 1.3466644766954571e-06
		5 17 1.3466644766954698e-06 18 0.00010708214537953472 19 0.99978314238028754 
		20 0.00010708214537953173 21 1.3466644766954571e-06
		5 17 1.3466645491064913e-06 18 0.00010708215108443149 19 0.99978314236873289 
		20 0.0001070821510844285 21 1.3466645491064786e-06
		5 17 1.3466644766954698e-06 18 0.00010708214537953472 19 0.99978314238028754 
		20 0.00010708214537953173 21 1.3466644766954571e-06
		5 17 1.3466644766954698e-06 18 0.00010708214537953472 19 0.99978314238028754 
		20 0.00010708214537953173 21 1.3466644766954571e-06
		5 17 1.3466645491064913e-06 18 0.00010708215108443149 19 0.99978314236873289 
		20 0.0001070821510844285 21 1.3466645491064786e-06
		5 16 2.1330780655275925e-07 17 3.3995889889608715e-06 18 0.4999964937571077 
		19 0.4999964937571077 20 3.3995889889608237e-06
		5 16 2.1330780655275925e-07 17 3.3995889889608715e-06 18 0.4999964937571077 
		19 0.4999964937571077 20 3.3995889889608237e-06
		5 16 2.1330781803067108e-07 17 3.3995891715321207e-06 18 0.49999649375691951 
		19 0.49999649375691951 20 3.3995891715320725e-06
		5 16 2.1330780655275925e-07 17 3.3995889889608715e-06 18 0.4999964937571077 
		19 0.4999964937571077 20 3.3995889889608237e-06
		5 16 2.1330780655275925e-07 17 3.3995889889608715e-06 18 0.4999964937571077 
		19 0.4999964937571077 20 3.3995889889608237e-06
		5 16 2.1330781803067108e-07 17 3.3995891715321207e-06 18 0.49999649375691951 
		19 0.49999649375691951 20 3.3995891715320725e-06
		5 16 2.1330780655275925e-07 17 3.3995889889608715e-06 18 0.4999964937571077 
		19 0.4999964937571077 20 3.3995889889608237e-06
		5 16 2.1330780655275925e-07 17 3.3995889889608715e-06 18 0.4999964937571077 
		19 0.4999964937571077 20 3.3995889889608237e-06
		5 16 2.1330781803067108e-07 17 3.3995891715321207e-06 18 0.49999649375691951 
		19 0.49999649375691951 20 3.3995891715320725e-06
		5 16 2.1330780655275925e-07 17 3.3995889889608715e-06 18 0.4999964937571077 
		19 0.4999964937571077 20 3.3995889889608237e-06
		5 16 2.1330780655275925e-07 17 3.3995889889608715e-06 18 0.4999964937571077 
		19 0.4999964937571077 20 3.3995889889608237e-06
		5 16 2.1330781803067108e-07 17 3.3995891715321207e-06 18 0.49999649375691951 
		19 0.49999649375691951 20 3.3995891715320725e-06
		5 16 1.3466644766954698e-06 17 0.00010708214537953472 18 0.99978314238028754 
		19 0.00010708214537953173 20 1.3466644766954571e-06
		5 16 1.3466644766954698e-06 17 0.00010708214537953472 18 0.99978314238028754 
		19 0.00010708214537953173 20 1.3466644766954571e-06
		5 16 1.3466645491064913e-06 17 0.00010708215108443149 18 0.99978314236873289 
		19 0.0001070821510844285 20 1.3466645491064786e-06
		5 16 1.3466644766954698e-06 17 0.00010708214537953472 18 0.99978314238028754 
		19 0.00010708214537953173 20 1.3466644766954571e-06
		5 16 1.3466644766954698e-06 17 0.00010708214537953472 18 0.99978314238028754 
		19 0.00010708214537953173 20 1.3466644766954571e-06
		5 16 1.3466645491064913e-06 17 0.00010708215108443149 18 0.99978314236873289 
		19 0.0001070821510844285 20 1.3466645491064786e-06
		5 16 1.3466644766954698e-06 17 0.00010708214537953472 18 0.99978314238028754 
		19 0.00010708214537953173 20 1.3466644766954571e-06
		5 16 1.3466644766954698e-06 17 0.00010708214537953472 18 0.99978314238028754 
		19 0.00010708214537953173 20 1.3466644766954571e-06
		5 16 1.3466645491064913e-06 17 0.00010708215108443149 18 0.99978314236873289 
		19 0.0001070821510844285 20 1.3466645491064786e-06
		5 16 1.3466644766954698e-06 17 0.00010708214537953472 18 0.99978314238028754 
		19 0.00010708214537953173 20 1.3466644766954571e-06
		5 16 1.3466644766954698e-06 17 0.00010708214537953472 18 0.99978314238028754 
		19 0.00010708214537953173 20 1.3466644766954571e-06
		5 16 1.3466645491064913e-06 17 0.00010708215108443149 18 0.99978314236873289 
		19 0.0001070821510844285 20 1.3466645491064786e-06
		5 15 2.1330780655275925e-07 16 3.3995889889608715e-06 17 0.4999964937571077 
		18 0.4999964937571077 19 3.3995889889608237e-06
		5 15 2.1330780655275925e-07 16 3.3995889889608715e-06 17 0.4999964937571077 
		18 0.4999964937571077 19 3.3995889889608237e-06
		5 15 2.1330781803067108e-07 16 3.3995891715321207e-06 17 0.49999649375691951 
		18 0.49999649375691951 19 3.3995891715320725e-06
		5 15 2.1330780655275925e-07 16 3.3995889889608715e-06 17 0.4999964937571077 
		18 0.4999964937571077 19 3.3995889889608237e-06
		5 15 2.1330780655275925e-07 16 3.3995889889608715e-06 17 0.4999964937571077 
		18 0.4999964937571077 19 3.3995889889608237e-06
		5 15 2.1330781803067108e-07 16 3.3995891715321207e-06 17 0.49999649375691951 
		18 0.49999649375691951 19 3.3995891715320725e-06
		5 15 2.1330780655275925e-07 16 3.3995889889608715e-06 17 0.4999964937571077 
		18 0.4999964937571077 19 3.3995889889608237e-06
		5 15 2.1330780655275925e-07 16 3.3995889889608715e-06 17 0.4999964937571077 
		18 0.4999964937571077 19 3.3995889889608237e-06
		5 15 2.1330781803067108e-07 16 3.3995891715321207e-06 17 0.49999649375691951 
		18 0.49999649375691951 19 3.3995891715320725e-06
		5 15 2.1330780655275925e-07 16 3.3995889889608715e-06 17 0.4999964937571077 
		18 0.4999964937571077 19 3.3995889889608237e-06
		5 15 2.1330780655275925e-07 16 3.3995889889608715e-06 17 0.4999964937571077 
		18 0.4999964937571077 19 3.3995889889608237e-06
		5 15 2.1330781803067108e-07 16 3.3995891715321207e-06 17 0.49999649375691951 
		18 0.49999649375691951 19 3.3995891715320725e-06
		5 15 1.3466644766954698e-06 16 0.00010708214537953472 17 0.99978314238028754 
		18 0.00010708214537953173 19 1.3466644766954571e-06
		5 15 1.3466644766954698e-06 16 0.00010708214537953472 17 0.99978314238028754 
		18 0.00010708214537953173 19 1.3466644766954571e-06
		5 15 1.3466645491064913e-06 16 0.00010708215108443149 17 0.99978314236873289 
		18 0.0001070821510844285 19 1.3466645491064786e-06
		5 15 1.3466644766954698e-06 16 0.00010708214537953472 17 0.99978314238028754 
		18 0.00010708214537953173 19 1.3466644766954571e-06
		5 15 1.3466644766954698e-06 16 0.00010708214537953472 17 0.99978314238028754 
		18 0.00010708214537953173 19 1.3466644766954571e-06
		5 15 1.3466645491064913e-06 16 0.00010708215108443149 17 0.99978314236873289 
		18 0.0001070821510844285 19 1.3466645491064786e-06
		5 15 1.3466644766954698e-06 16 0.00010708214537953472 17 0.99978314238028754 
		18 0.00010708214537953173 19 1.3466644766954571e-06
		5 15 1.3466644766954698e-06 16 0.00010708214537953472 17 0.99978314238028754 
		18 0.00010708214537953173 19 1.3466644766954571e-06
		5 15 1.3466645491064913e-06 16 0.00010708215108443149 17 0.99978314236873289 
		18 0.0001070821510844285 19 1.3466645491064786e-06
		5 15 1.3466644766954698e-06 16 0.00010708214537953472 17 0.99978314238028754 
		18 0.00010708214537953173 19 1.3466644766954571e-06
		5 15 1.3466644766954698e-06 16 0.00010708214537953472 17 0.99978314238028754 
		18 0.00010708214537953173 19 1.3466644766954571e-06
		5 15 1.3466645491064913e-06 16 0.00010708215108443149 17 0.99978314236873289 
		18 0.0001070821510844285 19 1.3466645491064786e-06
		5 14 2.1330780655275925e-07 15 3.3995889889608715e-06 16 0.4999964937571077 
		17 0.4999964937571077 18 3.3995889889608237e-06
		5 14 2.1330780655275925e-07 15 3.3995889889608715e-06 16 0.4999964937571077 
		17 0.4999964937571077 18 3.3995889889608237e-06
		5 14 2.1330781803067108e-07 15 3.3995891715321207e-06 16 0.49999649375691951 
		17 0.49999649375691951 18 3.3995891715320725e-06
		5 14 2.1330780655275925e-07 15 3.3995889889608715e-06 16 0.4999964937571077 
		17 0.4999964937571077 18 3.3995889889608237e-06
		5 14 2.1330780655275925e-07 15 3.3995889889608715e-06 16 0.4999964937571077 
		17 0.4999964937571077 18 3.3995889889608237e-06
		5 14 2.1330781803067108e-07 15 3.3995891715321207e-06 16 0.49999649375691951 
		17 0.49999649375691951 18 3.3995891715320725e-06
		5 14 2.1330780655275925e-07 15 3.3995889889608715e-06 16 0.4999964937571077 
		17 0.4999964937571077 18 3.3995889889608237e-06
		5 14 2.1330780655275925e-07 15 3.3995889889608715e-06 16 0.4999964937571077 
		17 0.4999964937571077 18 3.3995889889608237e-06
		5 14 2.1330781803067108e-07 15 3.3995891715321207e-06 16 0.49999649375691951 
		17 0.49999649375691951 18 3.3995891715320725e-06
		5 14 2.1330780655275925e-07 15 3.3995889889608715e-06 16 0.4999964937571077 
		17 0.4999964937571077 18 3.3995889889608237e-06
		5 14 2.1330780655275925e-07 15 3.3995889889608715e-06 16 0.4999964937571077 
		17 0.4999964937571077 18 3.3995889889608237e-06
		5 14 2.1330781803067108e-07 15 3.3995891715321207e-06 16 0.49999649375691951 
		17 0.49999649375691951 18 3.3995891715320725e-06
		5 14 1.3466644766954698e-06 15 0.00010708214537953472 16 0.99978314238028754 
		17 0.00010708214537953173 18 1.3466644766954571e-06
		5 14 1.3466644766954698e-06 15 0.00010708214537953472 16 0.99978314238028754 
		17 0.00010708214537953173 18 1.3466644766954571e-06
		5 14 1.3466645491064913e-06 15 0.00010708215108443149 16 0.99978314236873289 
		17 0.0001070821510844285 18 1.3466645491064786e-06
		5 14 1.3466644766954698e-06 15 0.00010708214537953472 16 0.99978314238028754 
		17 0.00010708214537953173 18 1.3466644766954571e-06
		5 14 1.3466644766954698e-06 15 0.00010708214537953472 16 0.99978314238028754 
		17 0.00010708214537953173 18 1.3466644766954571e-06
		5 14 1.3466645491064913e-06 15 0.00010708215108443149 16 0.99978314236873289 
		17 0.0001070821510844285 18 1.3466645491064786e-06
		5 14 1.3466644766954698e-06 15 0.00010708214537953472 16 0.99978314238028754 
		17 0.00010708214537953173 18 1.3466644766954571e-06
		5 14 1.3466644766954698e-06 15 0.00010708214537953472 16 0.99978314238028754 
		17 0.00010708214537953173 18 1.3466644766954571e-06
		5 14 1.3466645491064913e-06 15 0.00010708215108443149 16 0.99978314236873289 
		17 0.0001070821510844285 18 1.3466645491064786e-06
		5 14 1.3466644766954698e-06 15 0.00010708214537953472 16 0.99978314238028754 
		17 0.00010708214537953173 18 1.3466644766954571e-06
		5 14 1.3466644766954698e-06 15 0.00010708214537953472 16 0.99978314238028754 
		17 0.00010708214537953173 18 1.3466644766954571e-06
		5 14 1.3466645491064913e-06 15 0.00010708215108443149 16 0.99978314236873289 
		17 0.0001070821510844285 18 1.3466645491064786e-06
		5 13 2.1330780655275925e-07 14 3.3995889889608715e-06 15 0.4999964937571077 
		16 0.4999964937571077 17 3.3995889889608237e-06
		5 13 2.1330780655275925e-07 14 3.3995889889608715e-06 15 0.4999964937571077 
		16 0.4999964937571077 17 3.3995889889608237e-06
		5 13 2.1330781803067108e-07 14 3.3995891715321207e-06 15 0.49999649375691951 
		16 0.49999649375691951 17 3.3995891715320725e-06
		5 13 2.1330780655275925e-07 14 3.3995889889608715e-06 15 0.4999964937571077 
		16 0.4999964937571077 17 3.3995889889608237e-06
		5 13 2.1330780655275925e-07 14 3.3995889889608715e-06 15 0.4999964937571077 
		16 0.4999964937571077 17 3.3995889889608237e-06
		5 13 2.1330781803067108e-07 14 3.3995891715321207e-06 15 0.49999649375691951 
		16 0.49999649375691951 17 3.3995891715320725e-06
		5 13 2.1330780655275925e-07 14 3.3995889889608715e-06 15 0.4999964937571077 
		16 0.4999964937571077 17 3.3995889889608237e-06
		5 13 2.1330780655275925e-07 14 3.3995889889608715e-06 15 0.4999964937571077 
		16 0.4999964937571077 17 3.3995889889608237e-06
		5 13 2.1330781803067108e-07 14 3.3995891715321207e-06 15 0.49999649375691951 
		16 0.49999649375691951 17 3.3995891715320725e-06
		5 13 2.1330780655275925e-07 14 3.3995889889608715e-06 15 0.4999964937571077 
		16 0.4999964937571077 17 3.3995889889608237e-06
		5 13 2.1330780655275925e-07 14 3.3995889889608715e-06 15 0.4999964937571077 
		16 0.4999964937571077 17 3.3995889889608237e-06
		5 13 2.1330781803067108e-07 14 3.3995891715321207e-06 15 0.49999649375691951 
		16 0.49999649375691951 17 3.3995891715320725e-06
		5 13 1.3466644766954698e-06 14 0.00010708214537953472 15 0.99978314238028754 
		16 0.00010708214537953173 17 1.3466644766954571e-06
		5 13 1.3466644766954698e-06 14 0.00010708214537953472 15 0.99978314238028754 
		16 0.00010708214537953173 17 1.3466644766954571e-06
		5 13 1.3466645491064913e-06 14 0.00010708215108443149 15 0.99978314236873289 
		16 0.0001070821510844285 17 1.3466645491064786e-06
		5 13 1.3466644766954698e-06 14 0.00010708214537953472 15 0.99978314238028754 
		16 0.00010708214537953173 17 1.3466644766954571e-06;
	setAttr ".wl[400:499].w"
		5 13 1.3466644766954698e-06 14 0.00010708214537953472 15 0.99978314238028754 
		16 0.00010708214537953173 17 1.3466644766954571e-06
		5 13 1.3466645491064913e-06 14 0.00010708215108443149 15 0.99978314236873289 
		16 0.0001070821510844285 17 1.3466645491064786e-06
		5 13 1.3466644766954698e-06 14 0.00010708214537953472 15 0.99978314238028754 
		16 0.00010708214537953173 17 1.3466644766954571e-06
		5 13 1.3466644766954698e-06 14 0.00010708214537953472 15 0.99978314238028754 
		16 0.00010708214537953173 17 1.3466644766954571e-06
		5 13 1.3466645491064913e-06 14 0.00010708215108443149 15 0.99978314236873289 
		16 0.0001070821510844285 17 1.3466645491064786e-06
		5 13 1.3466644766954698e-06 14 0.00010708214537953472 15 0.99978314238028754 
		16 0.00010708214537953173 17 1.3466644766954571e-06
		5 13 1.3466644766954698e-06 14 0.00010708214537953472 15 0.99978314238028754 
		16 0.00010708214537953173 17 1.3466644766954571e-06
		5 13 1.3466645491064913e-06 14 0.00010708215108443149 15 0.99978314236873289 
		16 0.0001070821510844285 17 1.3466645491064786e-06
		5 12 2.1330780655275925e-07 13 3.3995889889608715e-06 14 0.4999964937571077 
		15 0.4999964937571077 16 3.3995889889608237e-06
		5 12 2.1330780655275925e-07 13 3.3995889889608715e-06 14 0.4999964937571077 
		15 0.4999964937571077 16 3.3995889889608237e-06
		5 12 2.1330781803067108e-07 13 3.3995891715321207e-06 14 0.49999649375691951 
		15 0.49999649375691951 16 3.3995891715320725e-06
		5 12 2.1330780655275925e-07 13 3.3995889889608715e-06 14 0.4999964937571077 
		15 0.4999964937571077 16 3.3995889889608237e-06
		5 12 2.1330780655275925e-07 13 3.3995889889608715e-06 14 0.4999964937571077 
		15 0.4999964937571077 16 3.3995889889608237e-06
		5 12 2.1330781803067108e-07 13 3.3995891715321207e-06 14 0.49999649375691951 
		15 0.49999649375691951 16 3.3995891715320725e-06
		5 12 2.1330780655275925e-07 13 3.3995889889608715e-06 14 0.4999964937571077 
		15 0.4999964937571077 16 3.3995889889608237e-06
		5 12 2.1330780655275925e-07 13 3.3995889889608715e-06 14 0.4999964937571077 
		15 0.4999964937571077 16 3.3995889889608237e-06
		5 12 2.1330781803067108e-07 13 3.3995891715321207e-06 14 0.49999649375691951 
		15 0.49999649375691951 16 3.3995891715320725e-06
		5 12 2.1330780655275925e-07 13 3.3995889889608715e-06 14 0.4999964937571077 
		15 0.4999964937571077 16 3.3995889889608237e-06
		5 12 2.1330780655275925e-07 13 3.3995889889608715e-06 14 0.4999964937571077 
		15 0.4999964937571077 16 3.3995889889608237e-06
		5 12 2.1330781803067108e-07 13 3.3995891715321207e-06 14 0.49999649375691951 
		15 0.49999649375691951 16 3.3995891715320725e-06
		5 12 1.3466644766954698e-06 13 0.00010708214537953472 14 0.99978314238028754 
		15 0.00010708214537953173 16 1.3466644766954571e-06
		5 12 1.3466644766954698e-06 13 0.00010708214537953472 14 0.99978314238028754 
		15 0.00010708214537953173 16 1.3466644766954571e-06
		5 12 1.3466645491064913e-06 13 0.00010708215108443149 14 0.99978314236873289 
		15 0.0001070821510844285 16 1.3466645491064786e-06
		5 12 1.3466644766954698e-06 13 0.00010708214537953472 14 0.99978314238028754 
		15 0.00010708214537953173 16 1.3466644766954571e-06
		5 12 1.3466644766954698e-06 13 0.00010708214537953472 14 0.99978314238028754 
		15 0.00010708214537953173 16 1.3466644766954571e-06
		5 12 1.3466645491064913e-06 13 0.00010708215108443149 14 0.99978314236873289 
		15 0.0001070821510844285 16 1.3466645491064786e-06
		5 12 1.3466644766954698e-06 13 0.00010708214537953472 14 0.99978314238028754 
		15 0.00010708214537953173 16 1.3466644766954571e-06
		5 12 1.3466644766954698e-06 13 0.00010708214537953472 14 0.99978314238028754 
		15 0.00010708214537953173 16 1.3466644766954571e-06
		5 12 1.3466645491064913e-06 13 0.00010708215108443149 14 0.99978314236873289 
		15 0.0001070821510844285 16 1.3466645491064786e-06
		5 12 1.3466644766954698e-06 13 0.00010708214537953472 14 0.99978314238028754 
		15 0.00010708214537953173 16 1.3466644766954571e-06
		5 12 1.3466644766954698e-06 13 0.00010708214537953472 14 0.99978314238028754 
		15 0.00010708214537953173 16 1.3466644766954571e-06
		5 12 1.3466645491064913e-06 13 0.00010708215108443149 14 0.99978314236873289 
		15 0.0001070821510844285 16 1.3466645491064786e-06
		5 11 2.1330780655275925e-07 12 3.3995889889608715e-06 13 0.4999964937571077 
		14 0.4999964937571077 15 3.3995889889608237e-06
		5 11 2.1330780655275925e-07 12 3.3995889889608715e-06 13 0.4999964937571077 
		14 0.4999964937571077 15 3.3995889889608237e-06
		5 11 2.1330781803067108e-07 12 3.3995891715321207e-06 13 0.49999649375691951 
		14 0.49999649375691951 15 3.3995891715320725e-06
		5 11 2.1330780655275925e-07 12 3.3995889889608715e-06 13 0.4999964937571077 
		14 0.4999964937571077 15 3.3995889889608237e-06
		5 11 2.1330780655275925e-07 12 3.3995889889608715e-06 13 0.4999964937571077 
		14 0.4999964937571077 15 3.3995889889608237e-06
		5 11 2.1330781803067108e-07 12 3.3995891715321207e-06 13 0.49999649375691951 
		14 0.49999649375691951 15 3.3995891715320725e-06
		5 11 2.1330780655275925e-07 12 3.3995889889608715e-06 13 0.4999964937571077 
		14 0.4999964937571077 15 3.3995889889608237e-06
		5 11 2.1330780655275925e-07 12 3.3995889889608715e-06 13 0.4999964937571077 
		14 0.4999964937571077 15 3.3995889889608237e-06
		5 11 2.1330781803067108e-07 12 3.3995891715321207e-06 13 0.49999649375691951 
		14 0.49999649375691951 15 3.3995891715320725e-06
		5 11 2.1330780655275925e-07 12 3.3995889889608715e-06 13 0.4999964937571077 
		14 0.4999964937571077 15 3.3995889889608237e-06
		5 11 2.1330780655275925e-07 12 3.3995889889608715e-06 13 0.4999964937571077 
		14 0.4999964937571077 15 3.3995889889608237e-06
		5 11 2.1330781803067108e-07 12 3.3995891715321207e-06 13 0.49999649375691951 
		14 0.49999649375691951 15 3.3995891715320725e-06
		5 11 1.3466644766954698e-06 12 0.00010708214537953472 13 0.99978314238028754 
		14 0.00010708214537953173 15 1.3466644766954571e-06
		5 11 1.3466644766954698e-06 12 0.00010708214537953472 13 0.99978314238028754 
		14 0.00010708214537953173 15 1.3466644766954571e-06
		5 11 1.3466645491064913e-06 12 0.00010708215108443149 13 0.99978314236873289 
		14 0.0001070821510844285 15 1.3466645491064786e-06
		5 11 1.3466644766954698e-06 12 0.00010708214537953472 13 0.99978314238028754 
		14 0.00010708214537953173 15 1.3466644766954571e-06
		5 11 1.3466644766954698e-06 12 0.00010708214537953472 13 0.99978314238028754 
		14 0.00010708214537953173 15 1.3466644766954571e-06
		5 11 1.3466645491064913e-06 12 0.00010708215108443149 13 0.99978314236873289 
		14 0.0001070821510844285 15 1.3466645491064786e-06
		5 11 1.3466644766954698e-06 12 0.00010708214537953472 13 0.99978314238028754 
		14 0.00010708214537953173 15 1.3466644766954571e-06
		5 11 1.3466644766954698e-06 12 0.00010708214537953472 13 0.99978314238028754 
		14 0.00010708214537953173 15 1.3466644766954571e-06
		5 11 1.3466645491064913e-06 12 0.00010708215108443149 13 0.99978314236873289 
		14 0.0001070821510844285 15 1.3466645491064786e-06
		5 11 1.3466644766954698e-06 12 0.00010708214537953472 13 0.99978314238028754 
		14 0.00010708214537953173 15 1.3466644766954571e-06
		5 11 1.3466644766954698e-06 12 0.00010708214537953472 13 0.99978314238028754 
		14 0.00010708214537953173 15 1.3466644766954571e-06
		5 11 1.3466645491064913e-06 12 0.00010708215108443149 13 0.99978314236873289 
		14 0.0001070821510844285 15 1.3466645491064786e-06
		5 10 2.1330780655275925e-07 11 3.3995889889608715e-06 12 0.4999964937571077 
		13 0.4999964937571077 14 3.3995889889608237e-06
		5 10 2.1330780655275925e-07 11 3.3995889889608715e-06 12 0.4999964937571077 
		13 0.4999964937571077 14 3.3995889889608237e-06
		5 10 2.1330781803067108e-07 11 3.3995891715321207e-06 12 0.49999649375691951 
		13 0.49999649375691951 14 3.3995891715320725e-06
		5 10 2.1330780655275925e-07 11 3.3995889889608715e-06 12 0.4999964937571077 
		13 0.4999964937571077 14 3.3995889889608237e-06
		5 10 2.1330780655275925e-07 11 3.3995889889608715e-06 12 0.4999964937571077 
		13 0.4999964937571077 14 3.3995889889608237e-06
		5 10 2.1330781803067108e-07 11 3.3995891715321207e-06 12 0.49999649375691951 
		13 0.49999649375691951 14 3.3995891715320725e-06
		5 10 2.1330780655275925e-07 11 3.3995889889608715e-06 12 0.4999964937571077 
		13 0.4999964937571077 14 3.3995889889608237e-06
		5 10 2.1330780655275925e-07 11 3.3995889889608715e-06 12 0.4999964937571077 
		13 0.4999964937571077 14 3.3995889889608237e-06
		5 10 2.1330781803067108e-07 11 3.3995891715321207e-06 12 0.49999649375691951 
		13 0.49999649375691951 14 3.3995891715320725e-06
		5 10 2.1330780655275925e-07 11 3.3995889889608715e-06 12 0.4999964937571077 
		13 0.4999964937571077 14 3.3995889889608237e-06
		5 10 2.1330780655275925e-07 11 3.3995889889608715e-06 12 0.4999964937571077 
		13 0.4999964937571077 14 3.3995889889608237e-06
		5 10 2.1330781803067108e-07 11 3.3995891715321207e-06 12 0.49999649375691951 
		13 0.49999649375691951 14 3.3995891715320725e-06
		5 10 1.3466644766954698e-06 11 0.00010708214537953472 12 0.99978314238028754 
		13 0.00010708214537953173 14 1.3466644766954571e-06
		5 10 1.3466644766954698e-06 11 0.00010708214537953472 12 0.99978314238028754 
		13 0.00010708214537953173 14 1.3466644766954571e-06
		5 10 1.3466645491064913e-06 11 0.00010708215108443149 12 0.99978314236873289 
		13 0.0001070821510844285 14 1.3466645491064786e-06
		5 10 1.3466644766954698e-06 11 0.00010708214537953472 12 0.99978314238028754 
		13 0.00010708214537953173 14 1.3466644766954571e-06
		5 10 1.3466644766954698e-06 11 0.00010708214537953472 12 0.99978314238028754 
		13 0.00010708214537953173 14 1.3466644766954571e-06
		5 10 1.3466645491064913e-06 11 0.00010708215108443149 12 0.99978314236873289 
		13 0.0001070821510844285 14 1.3466645491064786e-06
		5 10 1.3466644766954698e-06 11 0.00010708214537953472 12 0.99978314238028754 
		13 0.00010708214537953173 14 1.3466644766954571e-06
		5 10 1.3466644766954698e-06 11 0.00010708214537953472 12 0.99978314238028754 
		13 0.00010708214537953173 14 1.3466644766954571e-06
		5 10 1.3466645491064913e-06 11 0.00010708215108443149 12 0.99978314236873289 
		13 0.0001070821510844285 14 1.3466645491064786e-06
		5 10 1.3466644766954698e-06 11 0.00010708214537953472 12 0.99978314238028754 
		13 0.00010708214537953173 14 1.3466644766954571e-06
		5 10 1.3466644766954698e-06 11 0.00010708214537953472 12 0.99978314238028754 
		13 0.00010708214537953173 14 1.3466644766954571e-06
		5 10 1.3466645491064913e-06 11 0.00010708215108443149 12 0.99978314236873289 
		13 0.0001070821510844285 14 1.3466645491064786e-06
		5 9 2.1330780655275925e-07 10 3.3995889889608715e-06 11 0.4999964937571077 
		12 0.4999964937571077 13 3.3995889889608237e-06
		5 9 2.1330780655275925e-07 10 3.3995889889608715e-06 11 0.4999964937571077 
		12 0.4999964937571077 13 3.3995889889608237e-06
		5 9 2.1330781803067108e-07 10 3.3995891715321207e-06 11 0.49999649375691951 
		12 0.49999649375691951 13 3.3995891715320725e-06
		5 9 2.1330780655275925e-07 10 3.3995889889608715e-06 11 0.4999964937571077 
		12 0.4999964937571077 13 3.3995889889608237e-06
		5 9 2.1330780655275925e-07 10 3.3995889889608715e-06 11 0.4999964937571077 
		12 0.4999964937571077 13 3.3995889889608237e-06
		5 9 2.1330781803067108e-07 10 3.3995891715321207e-06 11 0.49999649375691951 
		12 0.49999649375691951 13 3.3995891715320725e-06
		5 9 2.1330780655275925e-07 10 3.3995889889608715e-06 11 0.4999964937571077 
		12 0.4999964937571077 13 3.3995889889608237e-06
		5 9 2.1330780655275925e-07 10 3.3995889889608715e-06 11 0.4999964937571077 
		12 0.4999964937571077 13 3.3995889889608237e-06
		5 9 2.1330781803067108e-07 10 3.3995891715321207e-06 11 0.49999649375691951 
		12 0.49999649375691951 13 3.3995891715320725e-06
		5 9 2.1330780655275925e-07 10 3.3995889889608715e-06 11 0.4999964937571077 
		12 0.4999964937571077 13 3.3995889889608237e-06
		5 9 2.1330780655275925e-07 10 3.3995889889608715e-06 11 0.4999964937571077 
		12 0.4999964937571077 13 3.3995889889608237e-06
		5 9 2.1330781803067108e-07 10 3.3995891715321207e-06 11 0.49999649375691951 
		12 0.49999649375691951 13 3.3995891715320725e-06
		5 9 1.3466644766954698e-06 10 0.00010708214537953472 11 0.99978314238028754 
		12 0.00010708214537953173 13 1.3466644766954571e-06
		5 9 1.3466644766954698e-06 10 0.00010708214537953472 11 0.99978314238028754 
		12 0.00010708214537953173 13 1.3466644766954571e-06
		5 9 1.3466645491064913e-06 10 0.00010708215108443149 11 0.99978314236873289 
		12 0.0001070821510844285 13 1.3466645491064786e-06
		5 9 1.3466644766954698e-06 10 0.00010708214537953472 11 0.99978314238028754 
		12 0.00010708214537953173 13 1.3466644766954571e-06
		5 9 1.3466644766954698e-06 10 0.00010708214537953472 11 0.99978314238028754 
		12 0.00010708214537953173 13 1.3466644766954571e-06
		5 9 1.3466645491064913e-06 10 0.00010708215108443149 11 0.99978314236873289 
		12 0.0001070821510844285 13 1.3466645491064786e-06
		5 9 1.3466644766954698e-06 10 0.00010708214537953472 11 0.99978314238028754 
		12 0.00010708214537953173 13 1.3466644766954571e-06
		5 9 1.3466644766954698e-06 10 0.00010708214537953472 11 0.99978314238028754 
		12 0.00010708214537953173 13 1.3466644766954571e-06;
	setAttr ".wl[500:599].w"
		5 9 1.3466645491064913e-06 10 0.00010708215108443149 11 0.99978314236873289 
		12 0.0001070821510844285 13 1.3466645491064786e-06
		5 9 1.3466644766954698e-06 10 0.00010708214537953472 11 0.99978314238028754 
		12 0.00010708214537953173 13 1.3466644766954571e-06
		5 9 1.3466644766954698e-06 10 0.00010708214537953472 11 0.99978314238028754 
		12 0.00010708214537953173 13 1.3466644766954571e-06
		5 9 1.3466645491064913e-06 10 0.00010708215108443149 11 0.99978314236873289 
		12 0.0001070821510844285 13 1.3466645491064786e-06
		5 8 2.1330780655275925e-07 9 3.3995889889608715e-06 10 0.4999964937571077 
		11 0.4999964937571077 12 3.3995889889608237e-06
		5 8 2.1330780655275925e-07 9 3.3995889889608715e-06 10 0.4999964937571077 
		11 0.4999964937571077 12 3.3995889889608237e-06
		5 8 2.1330781803067108e-07 9 3.3995891715321207e-06 10 0.49999649375691951 
		11 0.49999649375691951 12 3.3995891715320725e-06
		5 8 2.1330780655275925e-07 9 3.3995889889608715e-06 10 0.4999964937571077 
		11 0.4999964937571077 12 3.3995889889608237e-06
		5 8 2.1330780655275925e-07 9 3.3995889889608715e-06 10 0.4999964937571077 
		11 0.4999964937571077 12 3.3995889889608237e-06
		5 8 2.1330781803067108e-07 9 3.3995891715321207e-06 10 0.49999649375691951 
		11 0.49999649375691951 12 3.3995891715320725e-06
		5 8 2.1330780655275925e-07 9 3.3995889889608715e-06 10 0.4999964937571077 
		11 0.4999964937571077 12 3.3995889889608237e-06
		5 8 2.1330780655275925e-07 9 3.3995889889608715e-06 10 0.4999964937571077 
		11 0.4999964937571077 12 3.3995889889608237e-06
		5 8 2.1330781803067108e-07 9 3.3995891715321207e-06 10 0.49999649375691951 
		11 0.49999649375691951 12 3.3995891715320725e-06
		5 8 2.1330780655275925e-07 9 3.3995889889608715e-06 10 0.4999964937571077 
		11 0.4999964937571077 12 3.3995889889608237e-06
		5 8 2.1330780655275925e-07 9 3.3995889889608715e-06 10 0.4999964937571077 
		11 0.4999964937571077 12 3.3995889889608237e-06
		5 8 2.1330781803067108e-07 9 3.3995891715321207e-06 10 0.49999649375691951 
		11 0.49999649375691951 12 3.3995891715320725e-06
		5 8 1.3466644766954698e-06 9 0.00010708214537953472 10 0.99978314238028754 
		11 0.00010708214537953173 12 1.3466644766954571e-06
		5 8 1.3466644766954698e-06 9 0.00010708214537953472 10 0.99978314238028754 
		11 0.00010708214537953173 12 1.3466644766954571e-06
		5 8 1.3466645491064913e-06 9 0.00010708215108443149 10 0.99978314236873289 
		11 0.0001070821510844285 12 1.3466645491064786e-06
		5 8 1.3466644766954698e-06 9 0.00010708214537953472 10 0.99978314238028754 
		11 0.00010708214537953173 12 1.3466644766954571e-06
		5 8 1.3466644766954698e-06 9 0.00010708214537953472 10 0.99978314238028754 
		11 0.00010708214537953173 12 1.3466644766954571e-06
		5 8 1.3466645491064913e-06 9 0.00010708215108443149 10 0.99978314236873289 
		11 0.0001070821510844285 12 1.3466645491064786e-06
		5 8 1.3466644766954698e-06 9 0.00010708214537953472 10 0.99978314238028754 
		11 0.00010708214537953173 12 1.3466644766954571e-06
		5 8 1.3466644766954698e-06 9 0.00010708214537953472 10 0.99978314238028754 
		11 0.00010708214537953173 12 1.3466644766954571e-06
		5 8 1.3466645491064913e-06 9 0.00010708215108443149 10 0.99978314236873289 
		11 0.0001070821510844285 12 1.3466645491064786e-06
		5 8 1.3466644766954698e-06 9 0.00010708214537953472 10 0.99978314238028754 
		11 0.00010708214537953173 12 1.3466644766954571e-06
		5 8 1.3466644766954698e-06 9 0.00010708214537953472 10 0.99978314238028754 
		11 0.00010708214537953173 12 1.3466644766954571e-06
		5 8 1.3466645491064913e-06 9 0.00010708215108443149 10 0.99978314236873289 
		11 0.0001070821510844285 12 1.3466645491064786e-06
		5 7 2.1330780655275925e-07 8 3.3995889889608715e-06 9 0.4999964937571077 
		10 0.4999964937571077 11 3.3995889889608237e-06
		5 7 2.1330780655275925e-07 8 3.3995889889608715e-06 9 0.4999964937571077 
		10 0.4999964937571077 11 3.3995889889608237e-06
		5 7 2.1330781803067108e-07 8 3.3995891715321207e-06 9 0.49999649375691951 
		10 0.49999649375691951 11 3.3995891715320725e-06
		5 7 2.1330780655275925e-07 8 3.3995889889608715e-06 9 0.4999964937571077 
		10 0.4999964937571077 11 3.3995889889608237e-06
		5 7 2.1330780655275925e-07 8 3.3995889889608715e-06 9 0.4999964937571077 
		10 0.4999964937571077 11 3.3995889889608237e-06
		5 7 2.1330781803067108e-07 8 3.3995891715321207e-06 9 0.49999649375691951 
		10 0.49999649375691951 11 3.3995891715320725e-06
		5 7 2.1330780655275925e-07 8 3.3995889889608715e-06 9 0.4999964937571077 
		10 0.4999964937571077 11 3.3995889889608237e-06
		5 7 2.1330780655275925e-07 8 3.3995889889608715e-06 9 0.4999964937571077 
		10 0.4999964937571077 11 3.3995889889608237e-06
		5 7 2.1330781803067108e-07 8 3.3995891715321207e-06 9 0.49999649375691951 
		10 0.49999649375691951 11 3.3995891715320725e-06
		5 7 2.1330780655275925e-07 8 3.3995889889608715e-06 9 0.4999964937571077 
		10 0.4999964937571077 11 3.3995889889608237e-06
		5 7 2.1330780655275925e-07 8 3.3995889889608715e-06 9 0.4999964937571077 
		10 0.4999964937571077 11 3.3995889889608237e-06
		5 7 2.1330781803067108e-07 8 3.3995891715321207e-06 9 0.49999649375691951 
		10 0.49999649375691951 11 3.3995891715320725e-06
		5 7 1.3466644766954698e-06 8 0.00010708214537953472 9 0.99978314238028754 
		10 0.00010708214537953173 11 1.3466644766954571e-06
		5 7 1.3466644766954698e-06 8 0.00010708214537953472 9 0.99978314238028754 
		10 0.00010708214537953173 11 1.3466644766954571e-06
		5 7 1.3466645491064913e-06 8 0.00010708215108443149 9 0.99978314236873289 
		10 0.0001070821510844285 11 1.3466645491064786e-06
		5 7 1.3466644766954698e-06 8 0.00010708214537953472 9 0.99978314238028754 
		10 0.00010708214537953173 11 1.3466644766954571e-06
		5 7 1.3466644766954698e-06 8 0.00010708214537953472 9 0.99978314238028754 
		10 0.00010708214537953173 11 1.3466644766954571e-06
		5 7 1.3466645491064913e-06 8 0.00010708215108443149 9 0.99978314236873289 
		10 0.0001070821510844285 11 1.3466645491064786e-06
		5 7 1.3466644766954698e-06 8 0.00010708214537953472 9 0.99978314238028754 
		10 0.00010708214537953173 11 1.3466644766954571e-06
		5 7 1.3466644766954698e-06 8 0.00010708214537953472 9 0.99978314238028754 
		10 0.00010708214537953173 11 1.3466644766954571e-06
		5 7 1.3466645491064913e-06 8 0.00010708215108443149 9 0.99978314236873289 
		10 0.0001070821510844285 11 1.3466645491064786e-06
		5 7 1.3466644766954698e-06 8 0.00010708214537953472 9 0.99978314238028754 
		10 0.00010708214537953173 11 1.3466644766954571e-06
		5 7 1.3466644766954698e-06 8 0.00010708214537953472 9 0.99978314238028754 
		10 0.00010708214537953173 11 1.3466644766954571e-06
		5 7 1.3466645491064913e-06 8 0.00010708215108443149 9 0.99978314236873289 
		10 0.0001070821510844285 11 1.3466645491064786e-06
		5 6 2.1330780655275925e-07 7 3.3995889889608715e-06 8 0.4999964937571077 
		9 0.4999964937571077 10 3.3995889889608237e-06
		5 6 2.1330780655275925e-07 7 3.3995889889608715e-06 8 0.4999964937571077 
		9 0.4999964937571077 10 3.3995889889608237e-06
		5 6 2.1330781803067108e-07 7 3.3995891715321207e-06 8 0.49999649375691951 
		9 0.49999649375691951 10 3.3995891715320725e-06
		5 6 2.1330780655275925e-07 7 3.3995889889608715e-06 8 0.4999964937571077 
		9 0.4999964937571077 10 3.3995889889608237e-06
		5 6 2.1330780655275925e-07 7 3.3995889889608715e-06 8 0.4999964937571077 
		9 0.4999964937571077 10 3.3995889889608237e-06
		5 6 2.1330781803067108e-07 7 3.3995891715321207e-06 8 0.49999649375691951 
		9 0.49999649375691951 10 3.3995891715320725e-06
		5 6 2.1330780655275925e-07 7 3.3995889889608715e-06 8 0.4999964937571077 
		9 0.4999964937571077 10 3.3995889889608237e-06
		5 6 2.1330780655275925e-07 7 3.3995889889608715e-06 8 0.4999964937571077 
		9 0.4999964937571077 10 3.3995889889608237e-06
		5 6 2.1330781803067108e-07 7 3.3995891715321207e-06 8 0.49999649375691951 
		9 0.49999649375691951 10 3.3995891715320725e-06
		5 6 2.1330780655275925e-07 7 3.3995889889608715e-06 8 0.4999964937571077 
		9 0.4999964937571077 10 3.3995889889608237e-06
		5 6 2.1330780655275925e-07 7 3.3995889889608715e-06 8 0.4999964937571077 
		9 0.4999964937571077 10 3.3995889889608237e-06
		5 6 2.1330781803067108e-07 7 3.3995891715321207e-06 8 0.49999649375691951 
		9 0.49999649375691951 10 3.3995891715320725e-06
		5 6 1.3466644766954698e-06 7 0.00010708214537953472 8 0.99978314238028754 
		9 0.00010708214537953173 10 1.3466644766954571e-06
		5 6 1.3466644766954698e-06 7 0.00010708214537953472 8 0.99978314238028754 
		9 0.00010708214537953173 10 1.3466644766954571e-06
		5 6 1.3466645491064913e-06 7 0.00010708215108443149 8 0.99978314236873289 
		9 0.0001070821510844285 10 1.3466645491064786e-06
		5 6 1.3466644766954698e-06 7 0.00010708214537953472 8 0.99978314238028754 
		9 0.00010708214537953173 10 1.3466644766954571e-06
		5 6 1.3466644766954698e-06 7 0.00010708214537953472 8 0.99978314238028754 
		9 0.00010708214537953173 10 1.3466644766954571e-06
		5 6 1.3466645491064913e-06 7 0.00010708215108443149 8 0.99978314236873289 
		9 0.0001070821510844285 10 1.3466645491064786e-06
		5 6 1.3466644766954698e-06 7 0.00010708214537953472 8 0.99978314238028754 
		9 0.00010708214537953173 10 1.3466644766954571e-06
		5 6 1.3466644766954698e-06 7 0.00010708214537953472 8 0.99978314238028754 
		9 0.00010708214537953173 10 1.3466644766954571e-06
		5 6 1.3466645491064913e-06 7 0.00010708215108443149 8 0.99978314236873289 
		9 0.0001070821510844285 10 1.3466645491064786e-06
		5 6 1.3466644766954698e-06 7 0.00010708214537953472 8 0.99978314238028754 
		9 0.00010708214537953173 10 1.3466644766954571e-06
		5 6 1.3466644766954698e-06 7 0.00010708214537953472 8 0.99978314238028754 
		9 0.00010708214537953173 10 1.3466644766954571e-06
		5 6 1.3466645491064913e-06 7 0.00010708215108443149 8 0.99978314236873289 
		9 0.0001070821510844285 10 1.3466645491064786e-06
		5 5 2.1330780655275849e-07 6 3.3995889889608474e-06 7 0.4999964937571077 
		8 0.4999964937571077 9 3.3995889889608474e-06
		5 5 2.1330780655275849e-07 6 3.3995889889608474e-06 7 0.4999964937571077 
		8 0.4999964937571077 9 3.3995889889608474e-06
		5 5 2.1330781803067034e-07 6 3.3995891715320966e-06 7 0.49999649375691951 
		8 0.49999649375691951 9 3.3995891715320966e-06
		5 5 2.1330780655275849e-07 6 3.3995889889608474e-06 7 0.4999964937571077 
		8 0.4999964937571077 9 3.3995889889608474e-06
		5 5 2.1330780655275849e-07 6 3.3995889889608474e-06 7 0.4999964937571077 
		8 0.4999964937571077 9 3.3995889889608474e-06
		5 5 2.1330781803067034e-07 6 3.3995891715320966e-06 7 0.49999649375691951 
		8 0.49999649375691951 9 3.3995891715320966e-06
		5 5 2.1330780655275849e-07 6 3.3995889889608474e-06 7 0.4999964937571077 
		8 0.4999964937571077 9 3.3995889889608474e-06
		5 5 2.1330780655275849e-07 6 3.3995889889608474e-06 7 0.4999964937571077 
		8 0.4999964937571077 9 3.3995889889608474e-06
		5 5 2.1330781803067034e-07 6 3.3995891715320966e-06 7 0.49999649375691951 
		8 0.49999649375691951 9 3.3995891715320966e-06
		5 5 2.1330780655275849e-07 6 3.3995889889608474e-06 7 0.4999964937571077 
		8 0.4999964937571077 9 3.3995889889608474e-06
		5 5 2.1330780655275849e-07 6 3.3995889889608474e-06 7 0.4999964937571077 
		8 0.4999964937571077 9 3.3995889889608474e-06
		5 5 2.1330781803067034e-07 6 3.3995891715320966e-06 7 0.49999649375691951 
		8 0.49999649375691951 9 3.3995891715320966e-06
		5 5 1.3466644766954632e-06 6 0.00010708214537953322 7 0.99978314238028754 
		8 0.00010708214537953322 9 1.3466644766954632e-06
		5 5 1.3466644766954632e-06 6 0.00010708214537953322 7 0.99978314238028754 
		8 0.00010708214537953322 9 1.3466644766954632e-06
		5 5 1.346664549106485e-06 6 0.00010708215108443 7 0.99978314236873289 
		8 0.00010708215108443 9 1.346664549106485e-06
		5 5 1.3466644766954632e-06 6 0.00010708214537953322 7 0.99978314238028754 
		8 0.00010708214537953322 9 1.3466644766954632e-06
		5 5 1.3466644766954632e-06 6 0.00010708214537953322 7 0.99978314238028754 
		8 0.00010708214537953322 9 1.3466644766954632e-06
		5 5 1.346664549106485e-06 6 0.00010708215108443 7 0.99978314236873289 
		8 0.00010708215108443 9 1.346664549106485e-06
		5 5 1.3466644766954632e-06 6 0.00010708214537953322 7 0.99978314238028754 
		8 0.00010708214537953322 9 1.3466644766954632e-06
		5 5 1.3466644766954632e-06 6 0.00010708214537953322 7 0.99978314238028754 
		8 0.00010708214537953322 9 1.3466644766954632e-06
		5 5 1.346664549106485e-06 6 0.00010708215108443 7 0.99978314236873289 
		8 0.00010708215108443 9 1.346664549106485e-06
		5 5 1.3466644766954632e-06 6 0.00010708214537953322 7 0.99978314238028754 
		8 0.00010708214537953322 9 1.3466644766954632e-06
		5 5 1.3466644766954632e-06 6 0.00010708214537953322 7 0.99978314238028754 
		8 0.00010708214537953322 9 1.3466644766954632e-06
		5 5 1.346664549106485e-06 6 0.00010708215108443 7 0.99978314236873289 
		8 0.00010708215108443 9 1.346664549106485e-06;
	setAttr ".wl[600:699].w"
		5 4 2.1330780655275849e-07 5 3.3995889889608474e-06 6 0.4999964937571077 
		7 0.4999964937571077 8 3.3995889889608474e-06
		5 4 2.1330780655275849e-07 5 3.3995889889608474e-06 6 0.4999964937571077 
		7 0.4999964937571077 8 3.3995889889608474e-06
		5 4 2.1330781803067034e-07 5 3.3995891715320966e-06 6 0.49999649375691951 
		7 0.49999649375691951 8 3.3995891715320966e-06
		5 4 2.1330780655275849e-07 5 3.3995889889608474e-06 6 0.4999964937571077 
		7 0.4999964937571077 8 3.3995889889608474e-06
		5 4 2.1330780655275849e-07 5 3.3995889889608474e-06 6 0.4999964937571077 
		7 0.4999964937571077 8 3.3995889889608474e-06
		5 4 2.1330781803067034e-07 5 3.3995891715320966e-06 6 0.49999649375691951 
		7 0.49999649375691951 8 3.3995891715320966e-06
		5 4 2.1330780655275849e-07 5 3.3995889889608474e-06 6 0.4999964937571077 
		7 0.4999964937571077 8 3.3995889889608474e-06
		5 4 2.1330780655275849e-07 5 3.3995889889608474e-06 6 0.4999964937571077 
		7 0.4999964937571077 8 3.3995889889608474e-06
		5 4 2.1330781803067034e-07 5 3.3995891715320966e-06 6 0.49999649375691951 
		7 0.49999649375691951 8 3.3995891715320966e-06
		5 4 2.1330780655275849e-07 5 3.3995889889608474e-06 6 0.4999964937571077 
		7 0.4999964937571077 8 3.3995889889608474e-06
		5 4 2.1330780655275849e-07 5 3.3995889889608474e-06 6 0.4999964937571077 
		7 0.4999964937571077 8 3.3995889889608474e-06
		5 4 2.1330781803067034e-07 5 3.3995891715320966e-06 6 0.49999649375691951 
		7 0.49999649375691951 8 3.3995891715320966e-06
		5 4 1.3466644766954632e-06 5 0.00010708214537953322 6 0.99978314238028754 
		7 0.00010708214537953322 8 1.3466644766954632e-06
		5 4 1.3466644766954632e-06 5 0.00010708214537953322 6 0.99978314238028754 
		7 0.00010708214537953322 8 1.3466644766954632e-06
		5 4 1.346664549106485e-06 5 0.00010708215108443 6 0.99978314236873289 
		7 0.00010708215108443 8 1.346664549106485e-06
		5 4 1.3466644766954632e-06 5 0.00010708214537953322 6 0.99978314238028754 
		7 0.00010708214537953322 8 1.3466644766954632e-06
		5 4 1.3466644766954632e-06 5 0.00010708214537953322 6 0.99978314238028754 
		7 0.00010708214537953322 8 1.3466644766954632e-06
		5 4 1.346664549106485e-06 5 0.00010708215108443 6 0.99978314236873289 
		7 0.00010708215108443 8 1.346664549106485e-06
		5 4 1.3466644766954632e-06 5 0.00010708214537953322 6 0.99978314238028754 
		7 0.00010708214537953322 8 1.3466644766954632e-06
		5 4 1.3466644766954632e-06 5 0.00010708214537953322 6 0.99978314238028754 
		7 0.00010708214537953322 8 1.3466644766954632e-06
		5 4 1.346664549106485e-06 5 0.00010708215108443 6 0.99978314236873289 
		7 0.00010708215108443 8 1.346664549106485e-06
		5 4 1.3466644766954632e-06 5 0.00010708214537953322 6 0.99978314238028754 
		7 0.00010708214537953322 8 1.3466644766954632e-06
		5 4 1.3466644766954632e-06 5 0.00010708214537953322 6 0.99978314238028754 
		7 0.00010708214537953322 8 1.3466644766954632e-06
		5 4 1.346664549106485e-06 5 0.00010708215108443 6 0.99978314236873289 
		7 0.00010708215108443 8 1.346664549106485e-06
		5 3 2.1330780655275849e-07 4 3.3995889889608474e-06 5 0.4999964937571077 
		6 0.4999964937571077 7 3.3995889889608474e-06
		5 3 2.1330780655275849e-07 4 3.3995889889608474e-06 5 0.4999964937571077 
		6 0.4999964937571077 7 3.3995889889608474e-06
		5 3 2.1330781803067034e-07 4 3.3995891715320966e-06 5 0.49999649375691951 
		6 0.49999649375691951 7 3.3995891715320966e-06
		5 3 2.1330780655275849e-07 4 3.3995889889608474e-06 5 0.4999964937571077 
		6 0.4999964937571077 7 3.3995889889608474e-06
		5 3 2.1330780655275849e-07 4 3.3995889889608474e-06 5 0.4999964937571077 
		6 0.4999964937571077 7 3.3995889889608474e-06
		5 3 2.1330781803067034e-07 4 3.3995891715320966e-06 5 0.49999649375691951 
		6 0.49999649375691951 7 3.3995891715320966e-06
		5 3 2.1330780655275849e-07 4 3.3995889889608474e-06 5 0.4999964937571077 
		6 0.4999964937571077 7 3.3995889889608474e-06
		5 3 2.1330780655275849e-07 4 3.3995889889608474e-06 5 0.4999964937571077 
		6 0.4999964937571077 7 3.3995889889608474e-06
		5 3 2.1330781803067034e-07 4 3.3995891715320966e-06 5 0.49999649375691951 
		6 0.49999649375691951 7 3.3995891715320966e-06
		5 3 2.1330780655275849e-07 4 3.3995889889608474e-06 5 0.4999964937571077 
		6 0.4999964937571077 7 3.3995889889608474e-06
		5 3 2.1330780655275849e-07 4 3.3995889889608474e-06 5 0.4999964937571077 
		6 0.4999964937571077 7 3.3995889889608474e-06
		5 3 2.1330781803067034e-07 4 3.3995891715320966e-06 5 0.49999649375691951 
		6 0.49999649375691951 7 3.3995891715320966e-06
		5 3 1.3466644766954632e-06 4 0.00010708214537953322 5 0.99978314238028754 
		6 0.00010708214537953322 7 1.3466644766954632e-06
		5 3 1.3466644766954632e-06 4 0.00010708214537953322 5 0.99978314238028754 
		6 0.00010708214537953322 7 1.3466644766954632e-06
		5 3 1.346664549106485e-06 4 0.00010708215108443 5 0.99978314236873289 
		6 0.00010708215108443 7 1.346664549106485e-06
		5 3 1.3466644766954632e-06 4 0.00010708214537953322 5 0.99978314238028754 
		6 0.00010708214537953322 7 1.3466644766954632e-06
		5 3 1.3466644766954632e-06 4 0.00010708214537953322 5 0.99978314238028754 
		6 0.00010708214537953322 7 1.3466644766954632e-06
		5 3 1.346664549106485e-06 4 0.00010708215108443 5 0.99978314236873289 
		6 0.00010708215108443 7 1.346664549106485e-06
		5 3 1.3466644766954632e-06 4 0.00010708214537953322 5 0.99978314238028754 
		6 0.00010708214537953322 7 1.3466644766954632e-06
		5 3 1.3466644766954632e-06 4 0.00010708214537953322 5 0.99978314238028754 
		6 0.00010708214537953322 7 1.3466644766954632e-06
		5 3 1.346664549106485e-06 4 0.00010708215108443 5 0.99978314236873289 
		6 0.00010708215108443 7 1.346664549106485e-06
		5 3 1.3466644766954632e-06 4 0.00010708214537953322 5 0.99978314238028754 
		6 0.00010708214537953322 7 1.3466644766954632e-06
		5 3 1.3466644766954632e-06 4 0.00010708214537953322 5 0.99978314238028754 
		6 0.00010708214537953322 7 1.3466644766954632e-06
		5 3 1.346664549106485e-06 4 0.00010708215108443 5 0.99978314236873289 
		6 0.00010708215108443 7 1.346664549106485e-06
		5 2 2.1330780655275849e-07 3 3.3995889889608474e-06 4 0.4999964937571077 
		5 0.4999964937571077 6 3.3995889889608474e-06
		5 2 2.1330780655275849e-07 3 3.3995889889608474e-06 4 0.4999964937571077 
		5 0.4999964937571077 6 3.3995889889608474e-06
		5 2 2.1330781803067034e-07 3 3.3995891715320966e-06 4 0.49999649375691951 
		5 0.49999649375691951 6 3.3995891715320966e-06
		5 2 2.1330780655275849e-07 3 3.3995889889608474e-06 4 0.4999964937571077 
		5 0.4999964937571077 6 3.3995889889608474e-06
		5 2 2.1330780655275849e-07 3 3.3995889889608474e-06 4 0.4999964937571077 
		5 0.4999964937571077 6 3.3995889889608474e-06
		5 2 2.1330781803067034e-07 3 3.3995891715320966e-06 4 0.49999649375691951 
		5 0.49999649375691951 6 3.3995891715320966e-06
		5 2 2.1330780655275849e-07 3 3.3995889889608474e-06 4 0.4999964937571077 
		5 0.4999964937571077 6 3.3995889889608474e-06
		5 2 2.1330780655275849e-07 3 3.3995889889608474e-06 4 0.4999964937571077 
		5 0.4999964937571077 6 3.3995889889608474e-06
		5 2 2.1330781803067034e-07 3 3.3995891715320966e-06 4 0.49999649375691951 
		5 0.49999649375691951 6 3.3995891715320966e-06
		5 2 2.1330780655275849e-07 3 3.3995889889608474e-06 4 0.4999964937571077 
		5 0.4999964937571077 6 3.3995889889608474e-06
		5 2 2.1330780655275849e-07 3 3.3995889889608474e-06 4 0.4999964937571077 
		5 0.4999964937571077 6 3.3995889889608474e-06
		5 2 2.1330781803067034e-07 3 3.3995891715320966e-06 4 0.49999649375691951 
		5 0.49999649375691951 6 3.3995891715320966e-06
		5 2 1.3466644766954632e-06 3 0.00010708214537953322 4 0.99978314238028754 
		5 0.00010708214537953322 6 1.3466644766954632e-06
		5 2 1.3466644766954632e-06 3 0.00010708214537953322 4 0.99978314238028754 
		5 0.00010708214537953322 6 1.3466644766954632e-06
		5 2 1.346664549106485e-06 3 0.00010708215108443 4 0.99978314236873289 
		5 0.00010708215108443 6 1.346664549106485e-06
		5 2 1.3466644766954632e-06 3 0.00010708214537953322 4 0.99978314238028754 
		5 0.00010708214537953322 6 1.3466644766954632e-06
		5 2 1.3466644766954632e-06 3 0.00010708214537953322 4 0.99978314238028754 
		5 0.00010708214537953322 6 1.3466644766954632e-06
		5 2 1.346664549106485e-06 3 0.00010708215108443 4 0.99978314236873289 
		5 0.00010708215108443 6 1.346664549106485e-06
		5 2 1.3466644766954632e-06 3 0.00010708214537953322 4 0.99978314238028754 
		5 0.00010708214537953322 6 1.3466644766954632e-06
		5 2 1.3466644766954632e-06 3 0.00010708214537953322 4 0.99978314238028754 
		5 0.00010708214537953322 6 1.3466644766954632e-06
		5 2 1.346664549106485e-06 3 0.00010708215108443 4 0.99978314236873289 
		5 0.00010708215108443 6 1.346664549106485e-06
		5 2 1.3466644766954632e-06 3 0.00010708214537953322 4 0.99978314238028754 
		5 0.00010708214537953322 6 1.3466644766954632e-06
		5 2 1.3466644766954632e-06 3 0.00010708214537953322 4 0.99978314238028754 
		5 0.00010708214537953322 6 1.3466644766954632e-06
		5 2 1.346664549106485e-06 3 0.00010708215108443 4 0.99978314236873289 
		5 0.00010708215108443 6 1.346664549106485e-06
		5 1 2.1330780655275849e-07 2 3.3995889889608474e-06 3 0.4999964937571077 
		4 0.4999964937571077 5 3.3995889889608474e-06
		5 1 2.1330780655275849e-07 2 3.3995889889608474e-06 3 0.4999964937571077 
		4 0.4999964937571077 5 3.3995889889608474e-06
		5 1 2.1330781803067034e-07 2 3.3995891715320966e-06 3 0.49999649375691951 
		4 0.49999649375691951 5 3.3995891715320966e-06
		5 1 2.1330780655275849e-07 2 3.3995889889608474e-06 3 0.4999964937571077 
		4 0.4999964937571077 5 3.3995889889608474e-06
		5 1 2.1330780655275849e-07 2 3.3995889889608474e-06 3 0.4999964937571077 
		4 0.4999964937571077 5 3.3995889889608474e-06
		5 1 2.1330781803067034e-07 2 3.3995891715320966e-06 3 0.49999649375691951 
		4 0.49999649375691951 5 3.3995891715320966e-06
		5 1 2.1330780655275849e-07 2 3.3995889889608474e-06 3 0.4999964937571077 
		4 0.4999964937571077 5 3.3995889889608474e-06
		5 1 2.1330780655275849e-07 2 3.3995889889608474e-06 3 0.4999964937571077 
		4 0.4999964937571077 5 3.3995889889608474e-06
		5 1 2.1330781803067034e-07 2 3.3995891715320966e-06 3 0.49999649375691951 
		4 0.49999649375691951 5 3.3995891715320966e-06
		5 1 2.1330780655275849e-07 2 3.3995889889608474e-06 3 0.4999964937571077 
		4 0.4999964937571077 5 3.3995889889608474e-06
		5 1 2.1330780655275849e-07 2 3.3995889889608474e-06 3 0.4999964937571077 
		4 0.4999964937571077 5 3.3995889889608474e-06
		5 1 2.1330781803067034e-07 2 3.3995891715320966e-06 3 0.49999649375691951 
		4 0.49999649375691951 5 3.3995891715320966e-06
		5 1 1.3466644766954632e-06 2 0.00010708214537953322 3 0.99978314238028754 
		4 0.00010708214537953322 5 1.3466644766954632e-06
		5 1 1.3466644766954632e-06 2 0.00010708214537953322 3 0.99978314238028754 
		4 0.00010708214537953322 5 1.3466644766954632e-06
		5 1 1.346664549106485e-06 2 0.00010708215108443 3 0.99978314236873289 
		4 0.00010708215108443 5 1.346664549106485e-06
		5 1 1.3466644766954632e-06 2 0.00010708214537953322 3 0.99978314238028754 
		4 0.00010708214537953322 5 1.3466644766954632e-06
		5 1 1.3466644766954632e-06 2 0.00010708214537953322 3 0.99978314238028754 
		4 0.00010708214537953322 5 1.3466644766954632e-06
		5 1 1.346664549106485e-06 2 0.00010708215108443 3 0.99978314236873289 
		4 0.00010708215108443 5 1.346664549106485e-06
		5 1 1.3466644766954632e-06 2 0.00010708214537953322 3 0.99978314238028754 
		4 0.00010708214537953322 5 1.3466644766954632e-06
		5 1 1.3466644766954632e-06 2 0.00010708214537953322 3 0.99978314238028754 
		4 0.00010708214537953322 5 1.3466644766954632e-06
		5 1 1.346664549106485e-06 2 0.00010708215108443 3 0.99978314236873289 
		4 0.00010708215108443 5 1.346664549106485e-06
		5 1 1.3466644766954632e-06 2 0.00010708214537953322 3 0.99978314238028754 
		4 0.00010708214537953322 5 1.3466644766954632e-06
		5 1 1.3466644766954632e-06 2 0.00010708214537953322 3 0.99978314238028754 
		4 0.00010708214537953322 5 1.3466644766954632e-06
		5 1 1.346664549106485e-06 2 0.00010708215108443 3 0.99978314236873289 
		4 0.00010708215108443 5 1.346664549106485e-06
		5 0 2.1330780655275849e-07 1 3.3995889889608474e-06 2 0.4999964937571077 
		3 0.4999964937571077 4 3.3995889889608474e-06
		5 0 2.1330780655275849e-07 1 3.3995889889608474e-06 2 0.4999964937571077 
		3 0.4999964937571077 4 3.3995889889608474e-06
		5 0 2.1330781803067034e-07 1 3.3995891715320966e-06 2 0.49999649375691951 
		3 0.49999649375691951 4 3.3995891715320966e-06
		5 0 2.1330780655275849e-07 1 3.3995889889608474e-06 2 0.4999964937571077 
		3 0.4999964937571077 4 3.3995889889608474e-06;
	setAttr ".wl[700:781].w"
		5 0 2.1330780655275849e-07 1 3.3995889889608474e-06 2 0.4999964937571077 
		3 0.4999964937571077 4 3.3995889889608474e-06
		5 0 2.1330781803067034e-07 1 3.3995891715320966e-06 2 0.49999649375691951 
		3 0.49999649375691951 4 3.3995891715320966e-06
		5 0 2.1330780655275849e-07 1 3.3995889889608474e-06 2 0.4999964937571077 
		3 0.4999964937571077 4 3.3995889889608474e-06
		5 0 2.1330780655275849e-07 1 3.3995889889608474e-06 2 0.4999964937571077 
		3 0.4999964937571077 4 3.3995889889608474e-06
		5 0 2.1330781803067034e-07 1 3.3995891715320966e-06 2 0.49999649375691951 
		3 0.49999649375691951 4 3.3995891715320966e-06
		5 0 2.1330780655275849e-07 1 3.3995889889608474e-06 2 0.4999964937571077 
		3 0.4999964937571077 4 3.3995889889608474e-06
		5 0 2.1330780655275849e-07 1 3.3995889889608474e-06 2 0.4999964937571077 
		3 0.4999964937571077 4 3.3995889889608474e-06
		5 0 2.1330781803067034e-07 1 3.3995891715320966e-06 2 0.49999649375691951 
		3 0.49999649375691951 4 3.3995891715320966e-06
		5 0 1.3466644766954632e-06 1 0.00010708214537953322 2 0.99978314238028754 
		3 0.00010708214537953322 4 1.3466644766954632e-06
		5 0 1.3466644766954632e-06 1 0.00010708214537953322 2 0.99978314238028754 
		3 0.00010708214537953322 4 1.3466644766954632e-06
		5 0 1.346664549106485e-06 1 0.00010708215108443 2 0.99978314236873289 
		3 0.00010708215108443 4 1.346664549106485e-06
		5 0 1.3466644766954632e-06 1 0.00010708214537953322 2 0.99978314238028754 
		3 0.00010708214537953322 4 1.3466644766954632e-06
		5 0 1.3466644766954632e-06 1 0.00010708214537953322 2 0.99978314238028754 
		3 0.00010708214537953322 4 1.3466644766954632e-06
		5 0 1.346664549106485e-06 1 0.00010708215108443 2 0.99978314236873289 
		3 0.00010708215108443 4 1.346664549106485e-06
		5 0 1.3466644766954632e-06 1 0.00010708214537953322 2 0.99978314238028754 
		3 0.00010708214537953322 4 1.3466644766954632e-06
		5 0 1.3466644766954632e-06 1 0.00010708214537953322 2 0.99978314238028754 
		3 0.00010708214537953322 4 1.3466644766954632e-06
		5 0 1.346664549106485e-06 1 0.00010708215108443 2 0.99978314236873289 
		3 0.00010708215108443 4 1.346664549106485e-06
		5 0 1.3466644766954632e-06 1 0.00010708214537953322 2 0.99978314238028754 
		3 0.00010708214537953322 4 1.3466644766954632e-06
		5 0 1.3466644766954632e-06 1 0.00010708214537953322 2 0.99978314238028754 
		3 0.00010708214537953322 4 1.3466644766954632e-06
		5 0 1.346664549106485e-06 1 0.00010708215108443 2 0.99978314236873289 
		3 0.00010708215108443 4 1.346664549106485e-06
		5 0 3.3995889889608474e-06 1 0.49999649375710781 2 0.4999964937571077 
		3 3.3995889889608474e-06 4 2.1330780655275849e-07
		5 0 3.3995889889608474e-06 1 0.49999649375710781 2 0.4999964937571077 
		3 3.3995889889608474e-06 4 2.1330780655275849e-07
		5 0 3.3995891715320966e-06 1 0.49999649375691951 2 0.49999649375691951 
		3 3.3995891715320966e-06 4 2.1330781803067034e-07
		5 0 3.3995889889608474e-06 1 0.49999649375710781 2 0.4999964937571077 
		3 3.3995889889608474e-06 4 2.1330780655275849e-07
		5 0 3.3995889889608474e-06 1 0.49999649375710781 2 0.4999964937571077 
		3 3.3995889889608474e-06 4 2.1330780655275849e-07
		5 0 3.3995891715320966e-06 1 0.49999649375691951 2 0.49999649375691951 
		3 3.3995891715320966e-06 4 2.1330781803067034e-07
		5 0 3.3995889889608474e-06 1 0.49999649375710781 2 0.4999964937571077 
		3 3.3995889889608474e-06 4 2.1330780655275849e-07
		5 0 3.3995889889608474e-06 1 0.49999649375710781 2 0.4999964937571077 
		3 3.3995889889608474e-06 4 2.1330780655275849e-07
		5 0 3.3995891715320966e-06 1 0.49999649375691951 2 0.49999649375691951 
		3 3.3995891715320966e-06 4 2.1330781803067034e-07
		5 0 3.3995889889608474e-06 1 0.49999649375710781 2 0.4999964937571077 
		3 3.3995889889608474e-06 4 2.1330780655275849e-07
		5 0 3.3995889889608474e-06 1 0.49999649375710781 2 0.4999964937571077 
		3 3.3995889889608474e-06 4 2.1330780655275849e-07
		5 0 3.3995891715320966e-06 1 0.49999649375691951 2 0.49999649375691951 
		3 3.3995891715320966e-06 4 2.1330781803067034e-07
		5 0 0.00010708227086680518 1 0.99978431400473222 2 0.00010708227086680518 
		3 1.3466660548227117e-06 4 1.7478747950959141e-07
		5 0 0.00010708227086680518 1 0.99978431400473222 2 0.00010708227086680518 
		3 1.3466660548227117e-06 4 1.7478747950959141e-07
		5 0 0.00010708227657171539 1 0.9997843139932403 2 0.00010708227657171539 
		3 1.3466661272339029e-06 4 1.7478748891502599e-07
		5 0 0.00010708227086680518 1 0.99978431400473222 2 0.00010708227086680518 
		3 1.3466660548227117e-06 4 1.7478747950959141e-07
		5 0 0.00010708227086680518 1 0.99978431400473222 2 0.00010708227086680518 
		3 1.3466660548227117e-06 4 1.7478747950959141e-07
		5 0 0.00010708227657171539 1 0.9997843139932403 2 0.00010708227657171539 
		3 1.3466661272339029e-06 4 1.7478748891502599e-07
		5 0 0.00010708227086680518 1 0.99978431400473222 2 0.00010708227086680518 
		3 1.3466660548227117e-06 4 1.7478747950959141e-07
		5 0 0.00010708227086680518 1 0.99978431400473222 2 0.00010708227086680518 
		3 1.3466660548227117e-06 4 1.7478747950959141e-07
		5 0 0.00010708227657171539 1 0.9997843139932403 2 0.00010708227657171539 
		3 1.3466661272339029e-06 4 1.7478748891502599e-07
		5 0 0.00010708227086680518 1 0.99978431400473222 2 0.00010708227086680518 
		3 1.3466660548227117e-06 4 1.7478747950959141e-07
		5 0 0.00010708227086680518 1 0.99978431400473222 2 0.00010708227086680518 
		3 1.3466660548227117e-06 4 1.7478747950959141e-07
		5 0 0.00010708227657171539 1 0.9997843139932403 2 0.00010708227657171539 
		3 1.3466661272339029e-06 4 1.7478748891502599e-07
		5 0 0.49999817246273109 1 0.49999817246273098 2 3.3996004028591925e-06 
		3 2.1330852271980929e-07 4 4.2165612294063062e-08
		5 0 0.49999817246273109 1 0.49999817246273098 2 3.3996004028591925e-06 
		3 2.1330852271980929e-07 4 4.2165612294063062e-08
		5 0 0.49999817246263289 1 0.49999817246263289 2 3.3996005854316674e-06 
		3 2.1330853419779813e-07 4 4.2165614563790044e-08
		5 0 0.49999817246273109 1 0.49999817246273098 2 3.3996004028591925e-06 
		3 2.1330852271980929e-07 4 4.2165612294063062e-08
		5 0 0.49999817246273109 1 0.49999817246273098 2 3.3996004028591925e-06 
		3 2.1330852271980929e-07 4 4.2165612294063062e-08
		5 0 0.49999817246263289 1 0.49999817246263289 2 3.3996005854316674e-06 
		3 2.1330853419779813e-07 4 4.2165614563790044e-08
		5 0 0.49999817246273109 1 0.49999817246273098 2 3.3996004028591925e-06 
		3 2.1330852271980929e-07 4 4.2165612294063062e-08
		5 0 0.49999817246273109 1 0.49999817246273098 2 3.3996004028591925e-06 
		3 2.1330852271980929e-07 4 4.2165612294063062e-08
		5 0 0.49999817246263289 1 0.49999817246263289 2 3.3996005854316674e-06 
		3 2.1330853419779813e-07 4 4.2165614563790044e-08
		5 0 0.49999817246273109 1 0.49999817246273098 2 3.3996004028591925e-06 
		3 2.1330852271980929e-07 4 4.2165612294063062e-08
		5 0 0.49999817246273109 1 0.49999817246273098 2 3.3996004028591925e-06 
		3 2.1330852271980929e-07 4 4.2165612294063062e-08
		5 0 0.49999817246263289 1 0.49999817246263289 2 3.3996005854316674e-06 
		3 2.1330853419779813e-07 4 4.2165614563790044e-08
		5 0 0.99989133912763539 1 0.00010709373383240662 2 1.3468102130156422e-06 
		3 1.7480619019670107e-07 4 4.5522128983757349e-08
		5 0 0.99989133912763539 1 0.00010709373383240662 2 1.3468102130156422e-06 
		3 1.7480619019670107e-07 4 4.5522128983757349e-08
		5 0 0.99989133912184502 1 0.0001070937395385383 2 1.3468102854422661e-06 
		3 1.7480619960413941e-07 4 4.5522131434095916e-08
		5 0 0.99989133912763539 1 0.00010709373383240662 2 1.3468102130156422e-06 
		3 1.7480619019670107e-07 4 4.5522128983757349e-08
		5 0 0.99989133912763539 1 0.00010709373383240662 2 1.3468102130156422e-06 
		3 1.7480619019670107e-07 4 4.5522128983757349e-08
		5 0 0.99989133912184502 1 0.0001070937395385383 2 1.3468102854422661e-06 
		3 1.7480619960413941e-07 4 4.5522131434095916e-08
		5 0 0.99989133912763539 1 0.00010709373383240662 2 1.3468102130156422e-06 
		3 1.7480619019670107e-07 4 4.5522128983757349e-08
		5 0 0.99989133912763539 1 0.00010709373383240662 2 1.3468102130156422e-06 
		3 1.7480619019670107e-07 4 4.5522128983757349e-08
		5 0 0.99989133912184502 1 0.0001070937395385383 2 1.3468102854422661e-06 
		3 1.7480619960413941e-07 4 4.5522131434095916e-08
		5 0 0.99989133912763539 1 0.00010709373383240662 2 1.3468102130156422e-06 
		3 1.7480619019670107e-07 4 4.5522128983757349e-08
		5 0 0.99989133912763539 1 0.00010709373383240662 2 1.3468102130156422e-06 
		3 1.7480619019670107e-07 4 4.5522128983757349e-08
		5 0 0.99989133912184502 1 0.0001070937395385383 2 1.3468102854422661e-06 
		3 1.7480619960413941e-07 4 4.5522131434095916e-08
		5 0 0.99999266318822866 1 6.7991757727561258e-06 2 4.266154747420171e-07 
		3 8.4330914101581798e-08 4 2.6689609663738522e-08
		5 0 0.99999266318822866 1 6.7991757727561258e-06 2 4.266154747420171e-07 
		3 8.4330914101581798e-08 4 2.6689609663738522e-08
		5 0 0.99999266318783464 1 6.7991761378983862e-06 2 4.2661549769782583e-07 
		3 8.4330918641002357e-08 4 2.6689611100587185e-08
		5 0 0.99999266318822866 1 6.7991757727561258e-06 2 4.266154747420171e-07 
		3 8.4330914101581798e-08 4 2.6689609663738522e-08
		5 0 0.99999266318822866 1 6.7991757727561258e-06 2 4.266154747420171e-07 
		3 8.4330914101581798e-08 4 2.6689609663738522e-08
		5 0 0.99999266318783464 1 6.7991761378983862e-06 2 4.2661549769782583e-07 
		3 8.4330918641002357e-08 4 2.6689611100587185e-08
		5 0 0.99999266318822866 1 6.7991757727561258e-06 2 4.266154747420171e-07 
		3 8.4330914101581798e-08 4 2.6689609663738522e-08
		5 0 0.99999266318822866 1 6.7991757727561258e-06 2 4.266154747420171e-07 
		3 8.4330914101581798e-08 4 2.6689609663738522e-08
		5 0 0.99999266318783464 1 6.7991761378983862e-06 2 4.2661549769782583e-07 
		3 8.4330918641002357e-08 4 2.6689611100587185e-08
		5 0 0.99999266318822866 1 6.7991757727561258e-06 2 4.266154747420171e-07 
		3 8.4330914101581798e-08 4 2.6689609663738522e-08
		5 0 0.99999266318822866 1 6.7991757727561258e-06 2 4.266154747420171e-07 
		3 8.4330914101581798e-08 4 2.6689609663738522e-08
		5 0 0.99999266318783464 1 6.7991761378983862e-06 2 4.2661549769782583e-07 
		3 8.4330918641002357e-08 4 2.6689611100587185e-08
		2 31 0.5 32 0.5
		1 0 1;
	setAttr -s 33 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -12 -0 1;
	setAttr ".pm[1]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -11.5 -0 1;
	setAttr ".pm[2]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -11 -0 1;
	setAttr ".pm[3]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -10.5 -0 1;
	setAttr ".pm[4]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -10 -0 1;
	setAttr ".pm[5]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -9.5 -0 1;
	setAttr ".pm[6]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -9 -0 1;
	setAttr ".pm[7]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -8.5 -0 1;
	setAttr ".pm[8]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -8 -0 1;
	setAttr ".pm[9]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -7.5 -0 1;
	setAttr ".pm[10]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -7 -0 1;
	setAttr ".pm[11]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -6.5 -0 1;
	setAttr ".pm[12]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -6 -0 1;
	setAttr ".pm[13]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -5.5 -0 1;
	setAttr ".pm[14]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -5 -0 1;
	setAttr ".pm[15]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -4.5 -0 1;
	setAttr ".pm[16]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -4 -0 1;
	setAttr ".pm[17]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -3.5 -0 1;
	setAttr ".pm[18]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -3 -0 1;
	setAttr ".pm[19]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -2.5 -0 1;
	setAttr ".pm[20]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -2 -0 1;
	setAttr ".pm[21]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -1.5 -0 1;
	setAttr ".pm[22]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -1 -0 1;
	setAttr ".pm[23]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -0.5 -0 1;
	setAttr ".pm[24]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 0 -0 1;
	setAttr ".pm[25]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 0.5 -0 1;
	setAttr ".pm[26]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 1 -0 1;
	setAttr ".pm[27]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 1.5 -0 1;
	setAttr ".pm[28]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 2 -0 1;
	setAttr ".pm[29]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 2.5 -0 1;
	setAttr ".pm[30]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 3 -0 1;
	setAttr ".pm[31]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 3.5 -0 1;
	setAttr ".pm[32]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 4 -0 1;
	setAttr ".gm" -type "matrix" 0.025565355249003822 0 0 0 0 8 0 0 0 0 0.025565355249003822 0
		 0 4.0000000000000009 0 1;
	setAttr -s 33 ".ma";
	setAttr -s 33 ".dpf[0:32]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 33 ".lw";
	setAttr -s 33 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 33 ".ifcl";
	setAttr -s 33 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "150CC47D-4332-96D1-9740-33A5ED886E65";
createNode objectSet -n "skinCluster1Set";
	rename -uid "E60D12D7-4BE9-3479-D3E8-7C8CE21B7DFD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "E7C0391D-4A76-3929-63C9-CDA670EB3E3B";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "AB10B335-4058-BDEA-366D-11A2F1B39059";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "61AD46F3-4F31-FF07-434E-CC8306705F11";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "907139C2-429D-D499-6761-18B591495524";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "3B814F0C-4244-5824-2AF3-1297055EDC31";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "A0271870-4CA3-5B57-EF3D-8C979E8FFBF2";
	setAttr -s 33 ".wm";
	setAttr -s 33 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 12 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 33 ".m";
	setAttr -s 33 ".p";
	setAttr ".bp" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "BB37CFD2-464F-3170-6CBF-418C8981FB9B";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 275\n            -height 492\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 275\n            -height 491\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 275\n            -height 491\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 557\n            -height 1027\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n"
		+ "                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 557\\n    -height 1027\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 557\\n    -height 1027\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "95CAAB30-4D75-E5C1-6674-F2B4909CD6FB";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
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
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
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
connectAttr "skinCluster1GroupId.id" "pCylinderShape1.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "pCylinderShape1.iog.og[0].gco";
connectAttr "groupId2.id" "pCylinderShape1.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "pCylinderShape1.iog.og[1].gco";
connectAttr "skinCluster1.og[0]" "pCylinderShape1.i";
connectAttr "tweak1.vl[0].vt[0]" "pCylinderShape1.twl";
connectAttr "polyCylinder1.out" "pCylinderShape1Orig.i";
connectAttr "joint1.s" "|joint1|joint2.is";
connectAttr "|joint1|joint2.s" "|joint1|joint2|joint3.is";
connectAttr "|joint1|joint2|joint3.s" "|joint1|joint2|joint3|joint4.is";
connectAttr "|joint1|joint2|joint3|joint4.s" "|joint1|joint2|joint3|joint4|joint2.is"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2.s" "|joint1|joint2|joint3|joint4|joint2|joint3.is"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3.s" "|joint1|joint2|joint3|joint4|joint2|joint3|joint5.is"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5.s" "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2.is"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2.s" "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3.is"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3.s" "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4.is"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4.s" "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2.is"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2.s" "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3.is"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3.s" "joint6.is"
		;
connectAttr "joint6.s" "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2.is"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2.s" "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3.is"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3.s" "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4.is"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4.s" "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2.is"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2.s" "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3.is"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3.s" "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5.is"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5.s" "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2.is"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2.s" "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3.is"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3.s" "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4.is"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4.s" "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2.is"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2.s" "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3.is"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3.s" "joint7.is"
		;
connectAttr "joint7.s" "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2.is"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2.s" "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3.is"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3.s" "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4.is"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4.s" "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2.is"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2.s" "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3.is"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3.s" "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3|joint5.is"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3|joint5.s" "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3|joint5|joint2.is"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3|joint5|joint2.s" "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3.is"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "joint1.wm" "skinCluster1.ma[0]";
connectAttr "|joint1|joint2.wm" "skinCluster1.ma[1]";
connectAttr "|joint1|joint2|joint3.wm" "skinCluster1.ma[2]";
connectAttr "|joint1|joint2|joint3|joint4.wm" "skinCluster1.ma[3]";
connectAttr "|joint1|joint2|joint3|joint4|joint2.wm" "skinCluster1.ma[4]";
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3.wm" "skinCluster1.ma[5]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5.wm" "skinCluster1.ma[6]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2.wm" "skinCluster1.ma[7]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3.wm" "skinCluster1.ma[8]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4.wm" "skinCluster1.ma[9]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2.wm" "skinCluster1.ma[10]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3.wm" "skinCluster1.ma[11]"
		;
connectAttr "joint6.wm" "skinCluster1.ma[12]";
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2.wm" "skinCluster1.ma[13]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3.wm" "skinCluster1.ma[14]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4.wm" "skinCluster1.ma[15]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2.wm" "skinCluster1.ma[16]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3.wm" "skinCluster1.ma[17]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5.wm" "skinCluster1.ma[18]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2.wm" "skinCluster1.ma[19]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3.wm" "skinCluster1.ma[20]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4.wm" "skinCluster1.ma[21]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2.wm" "skinCluster1.ma[22]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3.wm" "skinCluster1.ma[23]"
		;
connectAttr "joint7.wm" "skinCluster1.ma[24]";
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2.wm" "skinCluster1.ma[25]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3.wm" "skinCluster1.ma[26]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4.wm" "skinCluster1.ma[27]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2.wm" "skinCluster1.ma[28]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3.wm" "skinCluster1.ma[29]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3|joint5.wm" "skinCluster1.ma[30]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3|joint5|joint2.wm" "skinCluster1.ma[31]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3.wm" "skinCluster1.ma[32]"
		;
connectAttr "joint1.liw" "skinCluster1.lw[0]";
connectAttr "|joint1|joint2.liw" "skinCluster1.lw[1]";
connectAttr "|joint1|joint2|joint3.liw" "skinCluster1.lw[2]";
connectAttr "|joint1|joint2|joint3|joint4.liw" "skinCluster1.lw[3]";
connectAttr "|joint1|joint2|joint3|joint4|joint2.liw" "skinCluster1.lw[4]";
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3.liw" "skinCluster1.lw[5]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5.liw" "skinCluster1.lw[6]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2.liw" "skinCluster1.lw[7]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3.liw" "skinCluster1.lw[8]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4.liw" "skinCluster1.lw[9]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2.liw" "skinCluster1.lw[10]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3.liw" "skinCluster1.lw[11]"
		;
connectAttr "joint6.liw" "skinCluster1.lw[12]";
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2.liw" "skinCluster1.lw[13]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3.liw" "skinCluster1.lw[14]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4.liw" "skinCluster1.lw[15]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2.liw" "skinCluster1.lw[16]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3.liw" "skinCluster1.lw[17]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5.liw" "skinCluster1.lw[18]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2.liw" "skinCluster1.lw[19]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3.liw" "skinCluster1.lw[20]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4.liw" "skinCluster1.lw[21]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2.liw" "skinCluster1.lw[22]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3.liw" "skinCluster1.lw[23]"
		;
connectAttr "joint7.liw" "skinCluster1.lw[24]";
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2.liw" "skinCluster1.lw[25]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3.liw" "skinCluster1.lw[26]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4.liw" "skinCluster1.lw[27]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2.liw" "skinCluster1.lw[28]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3.liw" "skinCluster1.lw[29]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3|joint5.liw" "skinCluster1.lw[30]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3|joint5|joint2.liw" "skinCluster1.lw[31]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3.liw" "skinCluster1.lw[32]"
		;
connectAttr "joint1.obcc" "skinCluster1.ifcl[0]";
connectAttr "|joint1|joint2.obcc" "skinCluster1.ifcl[1]";
connectAttr "|joint1|joint2|joint3.obcc" "skinCluster1.ifcl[2]";
connectAttr "|joint1|joint2|joint3|joint4.obcc" "skinCluster1.ifcl[3]";
connectAttr "|joint1|joint2|joint3|joint4|joint2.obcc" "skinCluster1.ifcl[4]";
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3.obcc" "skinCluster1.ifcl[5]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5.obcc" "skinCluster1.ifcl[6]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2.obcc" "skinCluster1.ifcl[7]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3.obcc" "skinCluster1.ifcl[8]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4.obcc" "skinCluster1.ifcl[9]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2.obcc" "skinCluster1.ifcl[10]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3.obcc" "skinCluster1.ifcl[11]"
		;
connectAttr "joint6.obcc" "skinCluster1.ifcl[12]";
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2.obcc" "skinCluster1.ifcl[13]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3.obcc" "skinCluster1.ifcl[14]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4.obcc" "skinCluster1.ifcl[15]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2.obcc" "skinCluster1.ifcl[16]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3.obcc" "skinCluster1.ifcl[17]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5.obcc" "skinCluster1.ifcl[18]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2.obcc" "skinCluster1.ifcl[19]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3.obcc" "skinCluster1.ifcl[20]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4.obcc" "skinCluster1.ifcl[21]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2.obcc" "skinCluster1.ifcl[22]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3.obcc" "skinCluster1.ifcl[23]"
		;
connectAttr "joint7.obcc" "skinCluster1.ifcl[24]";
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2.obcc" "skinCluster1.ifcl[25]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3.obcc" "skinCluster1.ifcl[26]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4.obcc" "skinCluster1.ifcl[27]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2.obcc" "skinCluster1.ifcl[28]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3.obcc" "skinCluster1.ifcl[29]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3|joint5.obcc" "skinCluster1.ifcl[30]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3|joint5|joint2.obcc" "skinCluster1.ifcl[31]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3.obcc" "skinCluster1.ifcl[32]"
		;
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "pCylinderShape1.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "pCylinderShape1.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "pCylinderShape1Orig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "joint1.msg" "bindPose1.m[0]";
connectAttr "|joint1|joint2.msg" "bindPose1.m[1]";
connectAttr "|joint1|joint2|joint3.msg" "bindPose1.m[2]";
connectAttr "|joint1|joint2|joint3|joint4.msg" "bindPose1.m[3]";
connectAttr "|joint1|joint2|joint3|joint4|joint2.msg" "bindPose1.m[4]";
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3.msg" "bindPose1.m[5]";
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5.msg" "bindPose1.m[6]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2.msg" "bindPose1.m[7]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3.msg" "bindPose1.m[8]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4.msg" "bindPose1.m[9]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2.msg" "bindPose1.m[10]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3.msg" "bindPose1.m[11]"
		;
connectAttr "joint6.msg" "bindPose1.m[12]";
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2.msg" "bindPose1.m[13]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3.msg" "bindPose1.m[14]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4.msg" "bindPose1.m[15]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2.msg" "bindPose1.m[16]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3.msg" "bindPose1.m[17]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5.msg" "bindPose1.m[18]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2.msg" "bindPose1.m[19]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3.msg" "bindPose1.m[20]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4.msg" "bindPose1.m[21]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2.msg" "bindPose1.m[22]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3.msg" "bindPose1.m[23]"
		;
connectAttr "joint7.msg" "bindPose1.m[24]";
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2.msg" "bindPose1.m[25]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3.msg" "bindPose1.m[26]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4.msg" "bindPose1.m[27]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2.msg" "bindPose1.m[28]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3.msg" "bindPose1.m[29]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3|joint5.msg" "bindPose1.m[30]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3|joint5|joint2.msg" "bindPose1.m[31]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3.msg" "bindPose1.m[32]"
		;
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[20]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[24]";
connectAttr "bindPose1.m[24]" "bindPose1.p[25]";
connectAttr "bindPose1.m[25]" "bindPose1.p[26]";
connectAttr "bindPose1.m[26]" "bindPose1.p[27]";
connectAttr "bindPose1.m[27]" "bindPose1.p[28]";
connectAttr "bindPose1.m[28]" "bindPose1.p[29]";
connectAttr "bindPose1.m[29]" "bindPose1.p[30]";
connectAttr "bindPose1.m[30]" "bindPose1.p[31]";
connectAttr "bindPose1.m[31]" "bindPose1.p[32]";
connectAttr "joint1.bps" "bindPose1.wm[0]";
connectAttr "|joint1|joint2.bps" "bindPose1.wm[1]";
connectAttr "|joint1|joint2|joint3.bps" "bindPose1.wm[2]";
connectAttr "|joint1|joint2|joint3|joint4.bps" "bindPose1.wm[3]";
connectAttr "|joint1|joint2|joint3|joint4|joint2.bps" "bindPose1.wm[4]";
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3.bps" "bindPose1.wm[5]";
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5.bps" "bindPose1.wm[6]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2.bps" "bindPose1.wm[7]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3.bps" "bindPose1.wm[8]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4.bps" "bindPose1.wm[9]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2.bps" "bindPose1.wm[10]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3.bps" "bindPose1.wm[11]"
		;
connectAttr "joint6.bps" "bindPose1.wm[12]";
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2.bps" "bindPose1.wm[13]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3.bps" "bindPose1.wm[14]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4.bps" "bindPose1.wm[15]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2.bps" "bindPose1.wm[16]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3.bps" "bindPose1.wm[17]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5.bps" "bindPose1.wm[18]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2.bps" "bindPose1.wm[19]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3.bps" "bindPose1.wm[20]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4.bps" "bindPose1.wm[21]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2.bps" "bindPose1.wm[22]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3.bps" "bindPose1.wm[23]"
		;
connectAttr "joint7.bps" "bindPose1.wm[24]";
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2.bps" "bindPose1.wm[25]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3.bps" "bindPose1.wm[26]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4.bps" "bindPose1.wm[27]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2.bps" "bindPose1.wm[28]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3.bps" "bindPose1.wm[29]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3|joint5.bps" "bindPose1.wm[30]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3|joint5|joint2.bps" "bindPose1.wm[31]"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint6|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3|joint4|joint2|joint3|joint7|joint2|joint3|joint4|joint2|joint3|joint5|joint2|joint3.bps" "bindPose1.wm[32]"
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
// End of rope.ma
