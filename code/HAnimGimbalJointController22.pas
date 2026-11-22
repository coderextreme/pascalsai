unit HAnimGimbalJointController22;

interface

uses X3DNodes, CastleInternalNodesUnsupported, X3DFields;

function CreateHAnimGimbalJointController22: TX3DRootNode;

implementation

uses CastleVectors;

var
X3D0: TX3DRootNode;
Group12: TGroupNode;
NavigationInfo13: TNavigationInfoNode;
LayerSet14: TLayerSetNode;
Layer15: TLayerNode;
Viewpoint16: TViewpointNode;
Viewpoint17: TViewpointNode;
HAnimHumanoid18: THAnimHumanoidNode;
HAnimJoint19: THAnimJointNode;
HAnimSegment20: THAnimSegmentNode;
TouchSensor21: TTouchSensorNode;
Transform22: TTransformNode;
Transform23: TTransformNode;
Shape24: TShapeNode;
Appearance25: TAppearanceNode;
Material26: TMaterialNode;
Sphere27: TSphereNode;
Shape28: TShapeNode;
Appearance29: TAppearanceNode;
Material30: TMaterialNode;
LineProperties31: TLinePropertiesNode;
LineSet32: TLineSetNode;
Coordinate33: TCoordinateNode;
Shape34: TShapeNode;
Appearance35: TAppearanceNode;
LineSet36: TLineSetNode;
Coordinate37: TCoordinateNode;
HAnimJoint38: THAnimJointNode;
HAnimSegment39: THAnimSegmentNode;
TouchSensor40: TTouchSensorNode;
Transform41: TTransformNode;
Transform42: TTransformNode;
Shape43: TShapeNode;
Appearance44: TAppearanceNode;
Material45: TMaterialNode;
Sphere46: TSphereNode;
Shape47: TShapeNode;
Appearance48: TAppearanceNode;
Material49: TMaterialNode;
LineProperties50: TLinePropertiesNode;
LineSet51: TLineSetNode;
Coordinate52: TCoordinateNode;
Shape53: TShapeNode;
Appearance54: TAppearanceNode;
LineSet55: TLineSetNode;
Coordinate56: TCoordinateNode;
HAnimJoint57: THAnimJointNode;
HAnimSegment58: THAnimSegmentNode;
TouchSensor59: TTouchSensorNode;
Transform60: TTransformNode;
Transform61: TTransformNode;
Shape62: TShapeNode;
Appearance63: TAppearanceNode;
Material64: TMaterialNode;
Sphere65: TSphereNode;
Shape66: TShapeNode;
Appearance67: TAppearanceNode;
Material68: TMaterialNode;
LineProperties69: TLinePropertiesNode;
LineSet70: TLineSetNode;
Coordinate71: TCoordinateNode;
HAnimJoint72: THAnimJointNode;
HAnimSegment73: THAnimSegmentNode;
TouchSensor74: TTouchSensorNode;
Transform75: TTransformNode;
Transform76: TTransformNode;
Shape77: TShapeNode;
Appearance78: TAppearanceNode;
Material79: TMaterialNode;
Sphere80: TSphereNode;
Shape81: TShapeNode;
Appearance82: TAppearanceNode;
Material83: TMaterialNode;
LineProperties84: TLinePropertiesNode;
LineSet85: TLineSetNode;
Coordinate86: TCoordinateNode;
HAnimJoint87: THAnimJointNode;
HAnimSegment88: THAnimSegmentNode;
TouchSensor89: TTouchSensorNode;
Transform90: TTransformNode;
Transform91: TTransformNode;
Shape92: TShapeNode;
Appearance93: TAppearanceNode;
Material94: TMaterialNode;
Sphere95: TSphereNode;
Shape96: TShapeNode;
Appearance97: TAppearanceNode;
Material98: TMaterialNode;
LineProperties99: TLinePropertiesNode;
LineSet100: TLineSetNode;
Coordinate101: TCoordinateNode;
Shape102: TShapeNode;
Appearance103: TAppearanceNode;
LineSet104: TLineSetNode;
Coordinate105: TCoordinateNode;
HAnimJoint106: THAnimJointNode;
HAnimSegment107: THAnimSegmentNode;
TouchSensor108: TTouchSensorNode;
Transform109: TTransformNode;
Transform110: TTransformNode;
Shape111: TShapeNode;
Appearance112: TAppearanceNode;
Material113: TMaterialNode;
Sphere114: TSphereNode;
Shape115: TShapeNode;
Appearance116: TAppearanceNode;
Material117: TMaterialNode;
LineProperties118: TLinePropertiesNode;
LineSet119: TLineSetNode;
Coordinate120: TCoordinateNode;
Shape121: TShapeNode;
Appearance122: TAppearanceNode;
LineSet123: TLineSetNode;
Coordinate124: TCoordinateNode;
Shape125: TShapeNode;
Appearance126: TAppearanceNode;
LineSet127: TLineSetNode;
Coordinate128: TCoordinateNode;
HAnimJoint129: THAnimJointNode;
HAnimSegment130: THAnimSegmentNode;
TouchSensor131: TTouchSensorNode;
Transform132: TTransformNode;
Transform133: TTransformNode;
Shape134: TShapeNode;
Appearance135: TAppearanceNode;
Material136: TMaterialNode;
Sphere137: TSphereNode;
Shape138: TShapeNode;
Appearance139: TAppearanceNode;
Material140: TMaterialNode;
LineProperties141: TLinePropertiesNode;
LineSet142: TLineSetNode;
Coordinate143: TCoordinateNode;
HAnimJoint144: THAnimJointNode;
HAnimSegment145: THAnimSegmentNode;
TouchSensor146: TTouchSensorNode;
Transform147: TTransformNode;
Transform148: TTransformNode;
Shape149: TShapeNode;
Appearance150: TAppearanceNode;
Material151: TMaterialNode;
Sphere152: TSphereNode;
Shape153: TShapeNode;
Appearance154: TAppearanceNode;
Material155: TMaterialNode;
LineProperties156: TLinePropertiesNode;
LineSet157: TLineSetNode;
Coordinate158: TCoordinateNode;
HAnimJoint159: THAnimJointNode;
HAnimSegment160: THAnimSegmentNode;
TouchSensor161: TTouchSensorNode;
Transform162: TTransformNode;
Transform163: TTransformNode;
Shape164: TShapeNode;
Appearance165: TAppearanceNode;
Material166: TMaterialNode;
Sphere167: TSphereNode;
Shape168: TShapeNode;
Appearance169: TAppearanceNode;
Material170: TMaterialNode;
LineProperties171: TLinePropertiesNode;
LineSet172: TLineSetNode;
Coordinate173: TCoordinateNode;
HAnimJoint174: THAnimJointNode;
HAnimSegment175: THAnimSegmentNode;
Group176: TGroupNode;
TouchSensor177: TTouchSensorNode;
Transform178: TTransformNode;
Shape179: TShapeNode;
Appearance180: TAppearanceNode;
Material181: TMaterialNode;
Sphere182: TSphereNode;
Shape183: TShapeNode;
Appearance184: TAppearanceNode;
Material185: TMaterialNode;
LineProperties186: TLinePropertiesNode;
LineSet187: TLineSetNode;
Coordinate188: TCoordinateNode;
HAnimJoint189: THAnimJointNode;
HAnimSegment190: THAnimSegmentNode;
TouchSensor191: TTouchSensorNode;
Transform192: TTransformNode;
Transform193: TTransformNode;
Shape194: TShapeNode;
Appearance195: TAppearanceNode;
Material196: TMaterialNode;
Sphere197: TSphereNode;
Shape198: TShapeNode;
Appearance199: TAppearanceNode;
Material200: TMaterialNode;
LineProperties201: TLinePropertiesNode;
LineSet202: TLineSetNode;
Coordinate203: TCoordinateNode;
HAnimJoint204: THAnimJointNode;
HAnimSegment205: THAnimSegmentNode;
TouchSensor206: TTouchSensorNode;
Transform207: TTransformNode;
Transform208: TTransformNode;
Shape209: TShapeNode;
Appearance210: TAppearanceNode;
Material211: TMaterialNode;
Sphere212: TSphereNode;
Shape213: TShapeNode;
Appearance214: TAppearanceNode;
Material215: TMaterialNode;
LineProperties216: TLinePropertiesNode;
LineSet217: TLineSetNode;
Coordinate218: TCoordinateNode;
HAnimJoint219: THAnimJointNode;
HAnimSegment220: THAnimSegmentNode;
TouchSensor221: TTouchSensorNode;
Transform222: TTransformNode;
Transform223: TTransformNode;
Shape224: TShapeNode;
Appearance225: TAppearanceNode;
Material226: TMaterialNode;
Sphere227: TSphereNode;
Shape228: TShapeNode;
Appearance229: TAppearanceNode;
Material230: TMaterialNode;
LineProperties231: TLinePropertiesNode;
LineSet232: TLineSetNode;
Coordinate233: TCoordinateNode;
HAnimJoint234: THAnimJointNode;
HAnimSegment235: THAnimSegmentNode;
TouchSensor236: TTouchSensorNode;
Transform237: TTransformNode;
Transform238: TTransformNode;
Shape239: TShapeNode;
Appearance240: TAppearanceNode;
Material241: TMaterialNode;
Sphere242: TSphereNode;
Shape243: TShapeNode;
Appearance244: TAppearanceNode;
Material245: TMaterialNode;
LineProperties246: TLinePropertiesNode;
LineSet247: TLineSetNode;
Coordinate248: TCoordinateNode;
HAnimJoint249: THAnimJointNode;
HAnimSegment250: THAnimSegmentNode;
Group251: TGroupNode;
TouchSensor252: TTouchSensorNode;
Transform253: TTransformNode;
Shape254: TShapeNode;
Appearance255: TAppearanceNode;
Material256: TMaterialNode;
Sphere257: TSphereNode;
Shape258: TShapeNode;
Appearance259: TAppearanceNode;
Material260: TMaterialNode;
LineProperties261: TLinePropertiesNode;
LineSet262: TLineSetNode;
Coordinate263: TCoordinateNode;
HAnimJoint264: THAnimJointNode;
HAnimSegment265: THAnimSegmentNode;
TouchSensor266: TTouchSensorNode;
Transform267: TTransformNode;
Transform268: TTransformNode;
Shape269: TShapeNode;
Appearance270: TAppearanceNode;
Material271: TMaterialNode;
Sphere272: TSphereNode;
Shape273: TShapeNode;
Appearance274: TAppearanceNode;
Material275: TMaterialNode;
LineProperties276: TLinePropertiesNode;
LineSet277: TLineSetNode;
Coordinate278: TCoordinateNode;
HAnimJoint279: THAnimJointNode;
HAnimSegment280: THAnimSegmentNode;
TouchSensor281: TTouchSensorNode;
Transform282: TTransformNode;
Transform283: TTransformNode;
Shape284: TShapeNode;
Appearance285: TAppearanceNode;
Material286: TMaterialNode;
Sphere287: TSphereNode;
Shape288: TShapeNode;
Appearance289: TAppearanceNode;
Material290: TMaterialNode;
LineProperties291: TLinePropertiesNode;
LineSet292: TLineSetNode;
Coordinate293: TCoordinateNode;
HAnimJoint294: THAnimJointNode;
HAnimSegment295: THAnimSegmentNode;
TouchSensor296: TTouchSensorNode;
Transform297: TTransformNode;
Transform298: TTransformNode;
Shape299: TShapeNode;
Appearance300: TAppearanceNode;
Material301: TMaterialNode;
Sphere302: TSphereNode;
Shape303: TShapeNode;
Appearance304: TAppearanceNode;
Material305: TMaterialNode;
LineProperties306: TLinePropertiesNode;
LineSet307: TLineSetNode;
Coordinate308: TCoordinateNode;
HAnimJoint309: THAnimJointNode;
HAnimSegment310: THAnimSegmentNode;
TouchSensor311: TTouchSensorNode;
Transform312: TTransformNode;
Transform313: TTransformNode;
Shape314: TShapeNode;
Appearance315: TAppearanceNode;
Material316: TMaterialNode;
Sphere317: TSphereNode;
Shape318: TShapeNode;
Appearance319: TAppearanceNode;
Material320: TMaterialNode;
LineProperties321: TLinePropertiesNode;
LineSet322: TLineSetNode;
Coordinate323: TCoordinateNode;
HAnimJoint324: THAnimJointNode;
HAnimSegment325: THAnimSegmentNode;
Group326: TGroupNode;
TouchSensor327: TTouchSensorNode;
Transform328: TTransformNode;
Shape329: TShapeNode;
Appearance330: TAppearanceNode;
Material331: TMaterialNode;
Sphere332: TSphereNode;
Shape333: TShapeNode;
Appearance334: TAppearanceNode;
Material335: TMaterialNode;
LineProperties336: TLinePropertiesNode;
LineSet337: TLineSetNode;
Coordinate338: TCoordinateNode;
HAnimJoint339: THAnimJointNode;
HAnimSegment340: THAnimSegmentNode;
TouchSensor341: TTouchSensorNode;
Transform342: TTransformNode;
Transform343: TTransformNode;
Shape344: TShapeNode;
Appearance345: TAppearanceNode;
Material346: TMaterialNode;
Sphere347: TSphereNode;
Shape348: TShapeNode;
Appearance349: TAppearanceNode;
Material350: TMaterialNode;
LineProperties351: TLinePropertiesNode;
LineSet352: TLineSetNode;
Coordinate353: TCoordinateNode;
HAnimJoint354: THAnimJointNode;
HAnimSegment355: THAnimSegmentNode;
TouchSensor356: TTouchSensorNode;
Transform357: TTransformNode;
Transform358: TTransformNode;
Shape359: TShapeNode;
Appearance360: TAppearanceNode;
Material361: TMaterialNode;
Sphere362: TSphereNode;
Shape363: TShapeNode;
Appearance364: TAppearanceNode;
Material365: TMaterialNode;
LineProperties366: TLinePropertiesNode;
LineSet367: TLineSetNode;
Coordinate368: TCoordinateNode;
Shape369: TShapeNode;
Appearance370: TAppearanceNode;
LineSet371: TLineSetNode;
Coordinate372: TCoordinateNode;
HAnimJoint373: THAnimJointNode;
HAnimSegment374: THAnimSegmentNode;
TouchSensor375: TTouchSensorNode;
Transform376: TTransformNode;
Transform377: TTransformNode;
Shape378: TShapeNode;
Appearance379: TAppearanceNode;
Material380: TMaterialNode;
Sphere381: TSphereNode;
Shape382: TShapeNode;
Appearance383: TAppearanceNode;
Material384: TMaterialNode;
LineProperties385: TLinePropertiesNode;
LineSet386: TLineSetNode;
Coordinate387: TCoordinateNode;
HAnimJoint388: THAnimJointNode;
HAnimSegment389: THAnimSegmentNode;
TouchSensor390: TTouchSensorNode;
Transform391: TTransformNode;
Transform392: TTransformNode;
Shape393: TShapeNode;
Appearance394: TAppearanceNode;
Material395: TMaterialNode;
Sphere396: TSphereNode;
Shape397: TShapeNode;
Appearance398: TAppearanceNode;
Material399: TMaterialNode;
LineProperties400: TLinePropertiesNode;
LineSet401: TLineSetNode;
Coordinate402: TCoordinateNode;
HAnimJoint403: THAnimJointNode;
HAnimSegment404: THAnimSegmentNode;
TouchSensor405: TTouchSensorNode;
Transform406: TTransformNode;
Transform407: TTransformNode;
Shape408: TShapeNode;
Appearance409: TAppearanceNode;
Material410: TMaterialNode;
Sphere411: TSphereNode;
Shape412: TShapeNode;
Appearance413: TAppearanceNode;
Material414: TMaterialNode;
LineProperties415: TLinePropertiesNode;
LineSet416: TLineSetNode;
Coordinate417: TCoordinateNode;
HAnimJoint418: THAnimJointNode;
HAnimSegment419: THAnimSegmentNode;
Group420: TGroupNode;
TouchSensor421: TTouchSensorNode;
Transform422: TTransformNode;
Shape423: TShapeNode;
Appearance424: TAppearanceNode;
Material425: TMaterialNode;
Sphere426: TSphereNode;
Shape427: TShapeNode;
Appearance428: TAppearanceNode;
Material429: TMaterialNode;
LineProperties430: TLinePropertiesNode;
LineSet431: TLineSetNode;
Coordinate432: TCoordinateNode;
HAnimJoint433: THAnimJointNode;
HAnimSegment434: THAnimSegmentNode;
TouchSensor435: TTouchSensorNode;
Transform436: TTransformNode;
Transform437: TTransformNode;
Shape438: TShapeNode;
Appearance439: TAppearanceNode;
Material440: TMaterialNode;
Sphere441: TSphereNode;
Shape442: TShapeNode;
Appearance443: TAppearanceNode;
Material444: TMaterialNode;
LineProperties445: TLinePropertiesNode;
LineSet446: TLineSetNode;
Coordinate447: TCoordinateNode;
HAnimJoint448: THAnimJointNode;
HAnimSegment449: THAnimSegmentNode;
TouchSensor450: TTouchSensorNode;
Transform451: TTransformNode;
Transform452: TTransformNode;
Shape453: TShapeNode;
Appearance454: TAppearanceNode;
Material455: TMaterialNode;
Sphere456: TSphereNode;
Shape457: TShapeNode;
Appearance458: TAppearanceNode;
Material459: TMaterialNode;
LineProperties460: TLinePropertiesNode;
LineSet461: TLineSetNode;
Coordinate462: TCoordinateNode;
HAnimJoint463: THAnimJointNode;
HAnimSegment464: THAnimSegmentNode;
TouchSensor465: TTouchSensorNode;
Transform466: TTransformNode;
Transform467: TTransformNode;
Shape468: TShapeNode;
Appearance469: TAppearanceNode;
Material470: TMaterialNode;
Sphere471: TSphereNode;
Shape472: TShapeNode;
Appearance473: TAppearanceNode;
Material474: TMaterialNode;
LineProperties475: TLinePropertiesNode;
LineSet476: TLineSetNode;
Coordinate477: TCoordinateNode;
HAnimJoint478: THAnimJointNode;
HAnimSegment479: THAnimSegmentNode;
Group480: TGroupNode;
TouchSensor481: TTouchSensorNode;
Transform482: TTransformNode;
Shape483: TShapeNode;
Appearance484: TAppearanceNode;
Material485: TMaterialNode;
Sphere486: TSphereNode;
Shape487: TShapeNode;
Appearance488: TAppearanceNode;
Material489: TMaterialNode;
LineProperties490: TLinePropertiesNode;
LineSet491: TLineSetNode;
Coordinate492: TCoordinateNode;
HAnimJoint493: THAnimJointNode;
HAnimSegment494: THAnimSegmentNode;
TouchSensor495: TTouchSensorNode;
Transform496: TTransformNode;
Transform497: TTransformNode;
Shape498: TShapeNode;
Appearance499: TAppearanceNode;
Material500: TMaterialNode;
Sphere501: TSphereNode;
Shape502: TShapeNode;
Appearance503: TAppearanceNode;
Material504: TMaterialNode;
LineProperties505: TLinePropertiesNode;
LineSet506: TLineSetNode;
Coordinate507: TCoordinateNode;
HAnimJoint508: THAnimJointNode;
HAnimSegment509: THAnimSegmentNode;
TouchSensor510: TTouchSensorNode;
Transform511: TTransformNode;
Transform512: TTransformNode;
Shape513: TShapeNode;
Appearance514: TAppearanceNode;
Material515: TMaterialNode;
Sphere516: TSphereNode;
Shape517: TShapeNode;
Appearance518: TAppearanceNode;
Material519: TMaterialNode;
LineProperties520: TLinePropertiesNode;
LineSet521: TLineSetNode;
Coordinate522: TCoordinateNode;
HAnimJoint523: THAnimJointNode;
HAnimSegment524: THAnimSegmentNode;
TouchSensor525: TTouchSensorNode;
Transform526: TTransformNode;
Transform527: TTransformNode;
Shape528: TShapeNode;
Appearance529: TAppearanceNode;
Material530: TMaterialNode;
Sphere531: TSphereNode;
Shape532: TShapeNode;
Appearance533: TAppearanceNode;
Material534: TMaterialNode;
LineProperties535: TLinePropertiesNode;
LineSet536: TLineSetNode;
Coordinate537: TCoordinateNode;
Shape538: TShapeNode;
Appearance539: TAppearanceNode;
LineSet540: TLineSetNode;
Coordinate541: TCoordinateNode;
HAnimJoint542: THAnimJointNode;
HAnimSegment543: THAnimSegmentNode;
TouchSensor544: TTouchSensorNode;
Transform545: TTransformNode;
Transform546: TTransformNode;
Shape547: TShapeNode;
Appearance548: TAppearanceNode;
Material549: TMaterialNode;
Sphere550: TSphereNode;
Shape551: TShapeNode;
Appearance552: TAppearanceNode;
Material553: TMaterialNode;
LineProperties554: TLinePropertiesNode;
LineSet555: TLineSetNode;
Coordinate556: TCoordinateNode;
Shape557: TShapeNode;
Appearance558: TAppearanceNode;
LineSet559: TLineSetNode;
Coordinate560: TCoordinateNode;
Shape561: TShapeNode;
Appearance562: TAppearanceNode;
LineSet563: TLineSetNode;
Coordinate564: TCoordinateNode;
HAnimJoint565: THAnimJointNode;
HAnimSegment566: THAnimSegmentNode;
TouchSensor567: TTouchSensorNode;
Transform568: TTransformNode;
Transform569: TTransformNode;
Shape570: TShapeNode;
Appearance571: TAppearanceNode;
Material572: TMaterialNode;
Sphere573: TSphereNode;
Shape574: TShapeNode;
Appearance575: TAppearanceNode;
Material576: TMaterialNode;
LineProperties577: TLinePropertiesNode;
LineSet578: TLineSetNode;
Coordinate579: TCoordinateNode;
HAnimJoint580: THAnimJointNode;
HAnimSegment581: THAnimSegmentNode;
TouchSensor582: TTouchSensorNode;
Transform583: TTransformNode;
Transform584: TTransformNode;
Shape585: TShapeNode;
Appearance586: TAppearanceNode;
Material587: TMaterialNode;
Sphere588: TSphereNode;
Shape589: TShapeNode;
Appearance590: TAppearanceNode;
Material591: TMaterialNode;
LineProperties592: TLinePropertiesNode;
LineSet593: TLineSetNode;
Coordinate594: TCoordinateNode;
HAnimJoint595: THAnimJointNode;
HAnimSegment596: THAnimSegmentNode;
TouchSensor597: TTouchSensorNode;
Transform598: TTransformNode;
Transform599: TTransformNode;
Shape600: TShapeNode;
Appearance601: TAppearanceNode;
Material602: TMaterialNode;
Sphere603: TSphereNode;
Shape604: TShapeNode;
Appearance605: TAppearanceNode;
Material606: TMaterialNode;
LineProperties607: TLinePropertiesNode;
LineSet608: TLineSetNode;
Coordinate609: TCoordinateNode;
HAnimJoint610: THAnimJointNode;
HAnimSegment611: THAnimSegmentNode;
Group612: TGroupNode;
TouchSensor613: TTouchSensorNode;
Transform614: TTransformNode;
Shape615: TShapeNode;
Appearance616: TAppearanceNode;
Material617: TMaterialNode;
Sphere618: TSphereNode;
Shape619: TShapeNode;
Appearance620: TAppearanceNode;
Material621: TMaterialNode;
LineProperties622: TLinePropertiesNode;
LineSet623: TLineSetNode;
Coordinate624: TCoordinateNode;
HAnimJoint625: THAnimJointNode;
HAnimSegment626: THAnimSegmentNode;
TouchSensor627: TTouchSensorNode;
Transform628: TTransformNode;
Transform629: TTransformNode;
Shape630: TShapeNode;
Appearance631: TAppearanceNode;
Material632: TMaterialNode;
Sphere633: TSphereNode;
Shape634: TShapeNode;
Appearance635: TAppearanceNode;
Material636: TMaterialNode;
LineProperties637: TLinePropertiesNode;
LineSet638: TLineSetNode;
Coordinate639: TCoordinateNode;
HAnimJoint640: THAnimJointNode;
HAnimSegment641: THAnimSegmentNode;
TouchSensor642: TTouchSensorNode;
Transform643: TTransformNode;
Transform644: TTransformNode;
Shape645: TShapeNode;
Appearance646: TAppearanceNode;
Material647: TMaterialNode;
Sphere648: TSphereNode;
Shape649: TShapeNode;
Appearance650: TAppearanceNode;
Material651: TMaterialNode;
LineProperties652: TLinePropertiesNode;
LineSet653: TLineSetNode;
Coordinate654: TCoordinateNode;
HAnimJoint655: THAnimJointNode;
HAnimSegment656: THAnimSegmentNode;
TouchSensor657: TTouchSensorNode;
Transform658: TTransformNode;
Transform659: TTransformNode;
Shape660: TShapeNode;
Appearance661: TAppearanceNode;
Material662: TMaterialNode;
Sphere663: TSphereNode;
Shape664: TShapeNode;
Appearance665: TAppearanceNode;
Material666: TMaterialNode;
LineProperties667: TLinePropertiesNode;
LineSet668: TLineSetNode;
Coordinate669: TCoordinateNode;
HAnimJoint670: THAnimJointNode;
HAnimSegment671: THAnimSegmentNode;
TouchSensor672: TTouchSensorNode;
Transform673: TTransformNode;
Transform674: TTransformNode;
Shape675: TShapeNode;
Appearance676: TAppearanceNode;
Material677: TMaterialNode;
Sphere678: TSphereNode;
Shape679: TShapeNode;
Appearance680: TAppearanceNode;
Material681: TMaterialNode;
LineProperties682: TLinePropertiesNode;
LineSet683: TLineSetNode;
Coordinate684: TCoordinateNode;
HAnimJoint685: THAnimJointNode;
HAnimSegment686: THAnimSegmentNode;
Group687: TGroupNode;
TouchSensor688: TTouchSensorNode;
Transform689: TTransformNode;
Shape690: TShapeNode;
Appearance691: TAppearanceNode;
Material692: TMaterialNode;
Sphere693: TSphereNode;
Shape694: TShapeNode;
Appearance695: TAppearanceNode;
Material696: TMaterialNode;
LineProperties697: TLinePropertiesNode;
LineSet698: TLineSetNode;
Coordinate699: TCoordinateNode;
HAnimJoint700: THAnimJointNode;
HAnimSegment701: THAnimSegmentNode;
TouchSensor702: TTouchSensorNode;
Transform703: TTransformNode;
Transform704: TTransformNode;
Shape705: TShapeNode;
Appearance706: TAppearanceNode;
Material707: TMaterialNode;
Sphere708: TSphereNode;
Shape709: TShapeNode;
Appearance710: TAppearanceNode;
Material711: TMaterialNode;
LineProperties712: TLinePropertiesNode;
LineSet713: TLineSetNode;
Coordinate714: TCoordinateNode;
HAnimJoint715: THAnimJointNode;
HAnimSegment716: THAnimSegmentNode;
TouchSensor717: TTouchSensorNode;
Transform718: TTransformNode;
Transform719: TTransformNode;
Shape720: TShapeNode;
Appearance721: TAppearanceNode;
Material722: TMaterialNode;
Sphere723: TSphereNode;
Shape724: TShapeNode;
Appearance725: TAppearanceNode;
Material726: TMaterialNode;
LineProperties727: TLinePropertiesNode;
LineSet728: TLineSetNode;
Coordinate729: TCoordinateNode;
HAnimJoint730: THAnimJointNode;
HAnimSegment731: THAnimSegmentNode;
TouchSensor732: TTouchSensorNode;
Transform733: TTransformNode;
Transform734: TTransformNode;
Shape735: TShapeNode;
Appearance736: TAppearanceNode;
Material737: TMaterialNode;
Sphere738: TSphereNode;
Shape739: TShapeNode;
Appearance740: TAppearanceNode;
Material741: TMaterialNode;
LineProperties742: TLinePropertiesNode;
LineSet743: TLineSetNode;
Coordinate744: TCoordinateNode;
HAnimJoint745: THAnimJointNode;
HAnimSegment746: THAnimSegmentNode;
TouchSensor747: TTouchSensorNode;
Transform748: TTransformNode;
Transform749: TTransformNode;
Shape750: TShapeNode;
Appearance751: TAppearanceNode;
Material752: TMaterialNode;
Sphere753: TSphereNode;
Shape754: TShapeNode;
Appearance755: TAppearanceNode;
Material756: TMaterialNode;
LineProperties757: TLinePropertiesNode;
LineSet758: TLineSetNode;
Coordinate759: TCoordinateNode;
HAnimJoint760: THAnimJointNode;
HAnimSegment761: THAnimSegmentNode;
Group762: TGroupNode;
TouchSensor763: TTouchSensorNode;
Transform764: TTransformNode;
Shape765: TShapeNode;
Appearance766: TAppearanceNode;
Material767: TMaterialNode;
Sphere768: TSphereNode;
Shape769: TShapeNode;
Appearance770: TAppearanceNode;
Material771: TMaterialNode;
LineProperties772: TLinePropertiesNode;
LineSet773: TLineSetNode;
Coordinate774: TCoordinateNode;
HAnimJoint775: THAnimJointNode;
HAnimSegment776: THAnimSegmentNode;
TouchSensor777: TTouchSensorNode;
Transform778: TTransformNode;
Transform779: TTransformNode;
Shape780: TShapeNode;
Appearance781: TAppearanceNode;
Material782: TMaterialNode;
Sphere783: TSphereNode;
Shape784: TShapeNode;
Appearance785: TAppearanceNode;
Material786: TMaterialNode;
LineProperties787: TLinePropertiesNode;
LineSet788: TLineSetNode;
Coordinate789: TCoordinateNode;
HAnimJoint790: THAnimJointNode;
HAnimSegment791: THAnimSegmentNode;
TouchSensor792: TTouchSensorNode;
Transform793: TTransformNode;
Transform794: TTransformNode;
Shape795: TShapeNode;
Appearance796: TAppearanceNode;
Material797: TMaterialNode;
Sphere798: TSphereNode;
Shape799: TShapeNode;
Appearance800: TAppearanceNode;
Material801: TMaterialNode;
LineProperties802: TLinePropertiesNode;
LineSet803: TLineSetNode;
Coordinate804: TCoordinateNode;
Shape805: TShapeNode;
Appearance806: TAppearanceNode;
LineSet807: TLineSetNode;
Coordinate808: TCoordinateNode;
HAnimJoint809: THAnimJointNode;
HAnimSegment810: THAnimSegmentNode;
TouchSensor811: TTouchSensorNode;
Transform812: TTransformNode;
Transform813: TTransformNode;
Shape814: TShapeNode;
Appearance815: TAppearanceNode;
Material816: TMaterialNode;
Sphere817: TSphereNode;
Shape818: TShapeNode;
Appearance819: TAppearanceNode;
Material820: TMaterialNode;
LineProperties821: TLinePropertiesNode;
LineSet822: TLineSetNode;
Coordinate823: TCoordinateNode;
HAnimJoint824: THAnimJointNode;
HAnimSegment825: THAnimSegmentNode;
TouchSensor826: TTouchSensorNode;
Transform827: TTransformNode;
Transform828: TTransformNode;
Shape829: TShapeNode;
Appearance830: TAppearanceNode;
Material831: TMaterialNode;
Sphere832: TSphereNode;
Shape833: TShapeNode;
Appearance834: TAppearanceNode;
Material835: TMaterialNode;
LineProperties836: TLinePropertiesNode;
LineSet837: TLineSetNode;
Coordinate838: TCoordinateNode;
HAnimJoint839: THAnimJointNode;
HAnimSegment840: THAnimSegmentNode;
TouchSensor841: TTouchSensorNode;
Transform842: TTransformNode;
Transform843: TTransformNode;
Shape844: TShapeNode;
Appearance845: TAppearanceNode;
Material846: TMaterialNode;
Sphere847: TSphereNode;
Shape848: TShapeNode;
Appearance849: TAppearanceNode;
Material850: TMaterialNode;
LineProperties851: TLinePropertiesNode;
LineSet852: TLineSetNode;
Coordinate853: TCoordinateNode;
HAnimJoint854: THAnimJointNode;
HAnimSegment855: THAnimSegmentNode;
Group856: TGroupNode;
TouchSensor857: TTouchSensorNode;
Transform858: TTransformNode;
Shape859: TShapeNode;
Appearance860: TAppearanceNode;
Material861: TMaterialNode;
Sphere862: TSphereNode;
Shape863: TShapeNode;
Appearance864: TAppearanceNode;
Material865: TMaterialNode;
LineProperties866: TLinePropertiesNode;
LineSet867: TLineSetNode;
Coordinate868: TCoordinateNode;
HAnimJoint869: THAnimJointNode;
HAnimSegment870: THAnimSegmentNode;
TouchSensor871: TTouchSensorNode;
Transform872: TTransformNode;
Transform873: TTransformNode;
Shape874: TShapeNode;
Appearance875: TAppearanceNode;
Material876: TMaterialNode;
Sphere877: TSphereNode;
Shape878: TShapeNode;
Appearance879: TAppearanceNode;
Material880: TMaterialNode;
LineProperties881: TLinePropertiesNode;
LineSet882: TLineSetNode;
Coordinate883: TCoordinateNode;
HAnimJoint884: THAnimJointNode;
HAnimSegment885: THAnimSegmentNode;
TouchSensor886: TTouchSensorNode;
Transform887: TTransformNode;
Transform888: TTransformNode;
Shape889: TShapeNode;
Appearance890: TAppearanceNode;
Material891: TMaterialNode;
Sphere892: TSphereNode;
Shape893: TShapeNode;
Appearance894: TAppearanceNode;
Material895: TMaterialNode;
LineProperties896: TLinePropertiesNode;
LineSet897: TLineSetNode;
Coordinate898: TCoordinateNode;
HAnimJoint899: THAnimJointNode;
HAnimSegment900: THAnimSegmentNode;
TouchSensor901: TTouchSensorNode;
Transform902: TTransformNode;
Transform903: TTransformNode;
Shape904: TShapeNode;
Appearance905: TAppearanceNode;
Material906: TMaterialNode;
Sphere907: TSphereNode;
Shape908: TShapeNode;
Appearance909: TAppearanceNode;
Material910: TMaterialNode;
LineProperties911: TLinePropertiesNode;
LineSet912: TLineSetNode;
Coordinate913: TCoordinateNode;
HAnimJoint914: THAnimJointNode;
HAnimSegment915: THAnimSegmentNode;
Group916: TGroupNode;
TouchSensor917: TTouchSensorNode;
Transform918: TTransformNode;
Shape919: TShapeNode;
Appearance920: TAppearanceNode;
Material921: TMaterialNode;
Sphere922: TSphereNode;
Shape923: TShapeNode;
Appearance924: TAppearanceNode;
Material925: TMaterialNode;
LineProperties926: TLinePropertiesNode;
LineSet927: TLineSetNode;
Coordinate928: TCoordinateNode;
HAnimJoint929: THAnimJointNode;
HAnimSegment930: THAnimSegmentNode;
TouchSensor931: TTouchSensorNode;
Transform932: TTransformNode;
Transform933: TTransformNode;
Shape934: TShapeNode;
Appearance935: TAppearanceNode;
Material936: TMaterialNode;
Sphere937: TSphereNode;
Shape938: TShapeNode;
Appearance939: TAppearanceNode;
Material940: TMaterialNode;
LineProperties941: TLinePropertiesNode;
LineSet942: TLineSetNode;
Coordinate943: TCoordinateNode;
HAnimJoint944: THAnimJointNode;
HAnimSegment945: THAnimSegmentNode;
TouchSensor946: TTouchSensorNode;
Transform947: TTransformNode;
Transform948: TTransformNode;
Shape949: TShapeNode;
Appearance950: TAppearanceNode;
Material951: TMaterialNode;
Sphere952: TSphereNode;
Shape953: TShapeNode;
Appearance954: TAppearanceNode;
Material955: TMaterialNode;
LineProperties956: TLinePropertiesNode;
LineSet957: TLineSetNode;
Coordinate958: TCoordinateNode;
HAnimJoint959: THAnimJointNode;
HAnimSegment960: THAnimSegmentNode;
TouchSensor961: TTouchSensorNode;
Transform962: TTransformNode;
Transform963: TTransformNode;
Shape964: TShapeNode;
Appearance965: TAppearanceNode;
Material966: TMaterialNode;
Sphere967: TSphereNode;
Shape968: TShapeNode;
Appearance969: TAppearanceNode;
Material970: TMaterialNode;
LineProperties971: TLinePropertiesNode;
LineSet972: TLineSetNode;
Coordinate973: TCoordinateNode;
HAnimJoint974: THAnimJointNode;
HAnimSegment975: THAnimSegmentNode;
TouchSensor976: TTouchSensorNode;
Transform977: TTransformNode;
Transform978: TTransformNode;
Shape979: TShapeNode;
Appearance980: TAppearanceNode;
Material981: TMaterialNode;
Sphere982: TSphereNode;
Shape983: TShapeNode;
Appearance984: TAppearanceNode;
Material985: TMaterialNode;
LineProperties986: TLinePropertiesNode;
LineSet987: TLineSetNode;
Coordinate988: TCoordinateNode;
HAnimJoint989: THAnimJointNode;
HAnimSegment990: THAnimSegmentNode;
TouchSensor991: TTouchSensorNode;
Transform992: TTransformNode;
Transform993: TTransformNode;
Shape994: TShapeNode;
Appearance995: TAppearanceNode;
Material996: TMaterialNode;
Sphere997: TSphereNode;
Shape998: TShapeNode;
Appearance999: TAppearanceNode;
Material1000: TMaterialNode;
LineProperties1001: TLinePropertiesNode;
LineSet1002: TLineSetNode;
Coordinate1003: TCoordinateNode;
HAnimJoint1004: THAnimJointNode;
HAnimSegment1005: THAnimSegmentNode;
TouchSensor1006: TTouchSensorNode;
Transform1007: TTransformNode;
Transform1008: TTransformNode;
Shape1009: TShapeNode;
Appearance1010: TAppearanceNode;
Material1011: TMaterialNode;
Sphere1012: TSphereNode;
Shape1013: TShapeNode;
Appearance1014: TAppearanceNode;
Material1015: TMaterialNode;
LineProperties1016: TLinePropertiesNode;
LineSet1017: TLineSetNode;
Coordinate1018: TCoordinateNode;
HAnimJoint1019: THAnimJointNode;
HAnimSegment1020: THAnimSegmentNode;
TouchSensor1021: TTouchSensorNode;
Transform1022: TTransformNode;
Transform1023: TTransformNode;
Shape1024: TShapeNode;
Appearance1025: TAppearanceNode;
Material1026: TMaterialNode;
Sphere1027: TSphereNode;
Shape1028: TShapeNode;
Appearance1029: TAppearanceNode;
Material1030: TMaterialNode;
LineProperties1031: TLinePropertiesNode;
LineSet1032: TLineSetNode;
Coordinate1033: TCoordinateNode;
HAnimJoint1034: THAnimJointNode;
HAnimSegment1035: THAnimSegmentNode;
TouchSensor1036: TTouchSensorNode;
Transform1037: TTransformNode;
Transform1038: TTransformNode;
Shape1039: TShapeNode;
Appearance1040: TAppearanceNode;
Material1041: TMaterialNode;
Sphere1042: TSphereNode;
Shape1043: TShapeNode;
Appearance1044: TAppearanceNode;
Material1045: TMaterialNode;
LineProperties1046: TLinePropertiesNode;
LineSet1047: TLineSetNode;
Coordinate1048: TCoordinateNode;
HAnimJoint1049: THAnimJointNode;
HAnimSegment1050: THAnimSegmentNode;
TouchSensor1051: TTouchSensorNode;
Transform1052: TTransformNode;
Transform1053: TTransformNode;
Shape1054: TShapeNode;
Appearance1055: TAppearanceNode;
Material1056: TMaterialNode;
Sphere1057: TSphereNode;
Shape1058: TShapeNode;
Appearance1059: TAppearanceNode;
Material1060: TMaterialNode;
LineProperties1061: TLinePropertiesNode;
LineSet1062: TLineSetNode;
Coordinate1063: TCoordinateNode;
HAnimJoint1064: THAnimJointNode;
HAnimSegment1065: THAnimSegmentNode;
TouchSensor1066: TTouchSensorNode;
Transform1067: TTransformNode;
Transform1068: TTransformNode;
Shape1069: TShapeNode;
Appearance1070: TAppearanceNode;
Material1071: TMaterialNode;
Sphere1072: TSphereNode;
Shape1073: TShapeNode;
Appearance1074: TAppearanceNode;
Material1075: TMaterialNode;
LineProperties1076: TLinePropertiesNode;
LineSet1077: TLineSetNode;
Coordinate1078: TCoordinateNode;
HAnimJoint1079: THAnimJointNode;
HAnimSegment1080: THAnimSegmentNode;
TouchSensor1081: TTouchSensorNode;
Transform1082: TTransformNode;
Transform1083: TTransformNode;
Shape1084: TShapeNode;
Appearance1085: TAppearanceNode;
Material1086: TMaterialNode;
Sphere1087: TSphereNode;
Shape1088: TShapeNode;
Appearance1089: TAppearanceNode;
Material1090: TMaterialNode;
LineProperties1091: TLinePropertiesNode;
LineSet1092: TLineSetNode;
Coordinate1093: TCoordinateNode;
HAnimJoint1094: THAnimJointNode;
HAnimSegment1095: THAnimSegmentNode;
TouchSensor1096: TTouchSensorNode;
Transform1097: TTransformNode;
Transform1098: TTransformNode;
Shape1099: TShapeNode;
Appearance1100: TAppearanceNode;
Material1101: TMaterialNode;
Sphere1102: TSphereNode;
Shape1103: TShapeNode;
Appearance1104: TAppearanceNode;
Material1105: TMaterialNode;
LineProperties1106: TLinePropertiesNode;
LineSet1107: TLineSetNode;
Coordinate1108: TCoordinateNode;
HAnimJoint1109: THAnimJointNode;
HAnimSegment1110: THAnimSegmentNode;
TouchSensor1111: TTouchSensorNode;
Transform1112: TTransformNode;
Transform1113: TTransformNode;
Shape1114: TShapeNode;
Appearance1115: TAppearanceNode;
Material1116: TMaterialNode;
Sphere1117: TSphereNode;
Shape1118: TShapeNode;
Appearance1119: TAppearanceNode;
Material1120: TMaterialNode;
LineProperties1121: TLinePropertiesNode;
LineSet1122: TLineSetNode;
Coordinate1123: TCoordinateNode;
HAnimJoint1124: THAnimJointNode;
HAnimSegment1125: THAnimSegmentNode;
TouchSensor1126: TTouchSensorNode;
Transform1127: TTransformNode;
Transform1128: TTransformNode;
Shape1129: TShapeNode;
Appearance1130: TAppearanceNode;
Material1131: TMaterialNode;
Sphere1132: TSphereNode;
Shape1133: TShapeNode;
Appearance1134: TAppearanceNode;
Material1135: TMaterialNode;
LineProperties1136: TLinePropertiesNode;
LineSet1137: TLineSetNode;
Coordinate1138: TCoordinateNode;
HAnimJoint1139: THAnimJointNode;
HAnimSegment1140: THAnimSegmentNode;
TouchSensor1141: TTouchSensorNode;
Transform1142: TTransformNode;
Transform1143: TTransformNode;
Shape1144: TShapeNode;
Appearance1145: TAppearanceNode;
Material1146: TMaterialNode;
Sphere1147: TSphereNode;
Shape1148: TShapeNode;
Appearance1149: TAppearanceNode;
Material1150: TMaterialNode;
LineProperties1151: TLinePropertiesNode;
LineSet1152: TLineSetNode;
Coordinate1153: TCoordinateNode;
HAnimJoint1154: THAnimJointNode;
HAnimSegment1155: THAnimSegmentNode;
TouchSensor1156: TTouchSensorNode;
Transform1157: TTransformNode;
Transform1158: TTransformNode;
Shape1159: TShapeNode;
Appearance1160: TAppearanceNode;
Material1161: TMaterialNode;
Sphere1162: TSphereNode;
Shape1163: TShapeNode;
Appearance1164: TAppearanceNode;
Material1165: TMaterialNode;
LineProperties1166: TLinePropertiesNode;
LineSet1167: TLineSetNode;
Coordinate1168: TCoordinateNode;
HAnimJoint1169: THAnimJointNode;
HAnimSegment1170: THAnimSegmentNode;
TouchSensor1171: TTouchSensorNode;
Transform1172: TTransformNode;
Transform1173: TTransformNode;
Shape1174: TShapeNode;
Appearance1175: TAppearanceNode;
Material1176: TMaterialNode;
Sphere1177: TSphereNode;
Shape1178: TShapeNode;
Appearance1179: TAppearanceNode;
Material1180: TMaterialNode;
LineProperties1181: TLinePropertiesNode;
LineSet1182: TLineSetNode;
Coordinate1183: TCoordinateNode;
Shape1184: TShapeNode;
Appearance1185: TAppearanceNode;
LineSet1186: TLineSetNode;
Coordinate1187: TCoordinateNode;
Shape1188: TShapeNode;
Appearance1189: TAppearanceNode;
LineSet1190: TLineSetNode;
Coordinate1191: TCoordinateNode;
HAnimJoint1192: THAnimJointNode;
HAnimSegment1193: THAnimSegmentNode;
TouchSensor1194: TTouchSensorNode;
Transform1195: TTransformNode;
Transform1196: TTransformNode;
Shape1197: TShapeNode;
Appearance1198: TAppearanceNode;
Material1199: TMaterialNode;
Sphere1200: TSphereNode;
Shape1201: TShapeNode;
Appearance1202: TAppearanceNode;
Material1203: TMaterialNode;
LineProperties1204: TLinePropertiesNode;
LineSet1205: TLineSetNode;
Coordinate1206: TCoordinateNode;
HAnimJoint1207: THAnimJointNode;
HAnimSegment1208: THAnimSegmentNode;
TouchSensor1209: TTouchSensorNode;
Transform1210: TTransformNode;
Transform1211: TTransformNode;
Shape1212: TShapeNode;
Appearance1213: TAppearanceNode;
Material1214: TMaterialNode;
Sphere1215: TSphereNode;
Shape1216: TShapeNode;
Appearance1217: TAppearanceNode;
Material1218: TMaterialNode;
LineProperties1219: TLinePropertiesNode;
LineSet1220: TLineSetNode;
Coordinate1221: TCoordinateNode;
HAnimJoint1222: THAnimJointNode;
HAnimSegment1223: THAnimSegmentNode;
TouchSensor1224: TTouchSensorNode;
Transform1225: TTransformNode;
Transform1226: TTransformNode;
Shape1227: TShapeNode;
Appearance1228: TAppearanceNode;
Material1229: TMaterialNode;
Sphere1230: TSphereNode;
Shape1231: TShapeNode;
Appearance1232: TAppearanceNode;
Material1233: TMaterialNode;
LineProperties1234: TLinePropertiesNode;
LineSet1235: TLineSetNode;
Coordinate1236: TCoordinateNode;
HAnimJoint1237: THAnimJointNode;
HAnimSegment1238: THAnimSegmentNode;
TouchSensor1239: TTouchSensorNode;
Transform1240: TTransformNode;
Transform1241: TTransformNode;
Shape1242: TShapeNode;
Appearance1243: TAppearanceNode;
Material1244: TMaterialNode;
Sphere1245: TSphereNode;
Shape1246: TShapeNode;
Appearance1247: TAppearanceNode;
Material1248: TMaterialNode;
LineProperties1249: TLinePropertiesNode;
LineSet1250: TLineSetNode;
Coordinate1251: TCoordinateNode;
HAnimJoint1252: THAnimJointNode;
HAnimSegment1253: THAnimSegmentNode;
TouchSensor1254: TTouchSensorNode;
Transform1255: TTransformNode;
Transform1256: TTransformNode;
Shape1257: TShapeNode;
Appearance1258: TAppearanceNode;
Material1259: TMaterialNode;
Sphere1260: TSphereNode;
Shape1261: TShapeNode;
Appearance1262: TAppearanceNode;
Material1263: TMaterialNode;
LineProperties1264: TLinePropertiesNode;
LineSet1265: TLineSetNode;
Coordinate1266: TCoordinateNode;
HAnimJoint1267: THAnimJointNode;
HAnimSegment1268: THAnimSegmentNode;
TouchSensor1269: TTouchSensorNode;
Transform1270: TTransformNode;
Transform1271: TTransformNode;
Shape1272: TShapeNode;
Appearance1273: TAppearanceNode;
Material1274: TMaterialNode;
Sphere1275: TSphereNode;
Shape1276: TShapeNode;
Appearance1277: TAppearanceNode;
Material1278: TMaterialNode;
LineProperties1279: TLinePropertiesNode;
LineSet1280: TLineSetNode;
Coordinate1281: TCoordinateNode;
HAnimJoint1282: THAnimJointNode;
HAnimSegment1283: THAnimSegmentNode;
TouchSensor1284: TTouchSensorNode;
Transform1285: TTransformNode;
Transform1286: TTransformNode;
Shape1287: TShapeNode;
Appearance1288: TAppearanceNode;
Material1289: TMaterialNode;
Sphere1290: TSphereNode;
Shape1291: TShapeNode;
Appearance1292: TAppearanceNode;
Material1293: TMaterialNode;
LineProperties1294: TLinePropertiesNode;
LineSet1295: TLineSetNode;
Coordinate1296: TCoordinateNode;
HAnimJoint1297: THAnimJointNode;
HAnimSegment1298: THAnimSegmentNode;
TouchSensor1299: TTouchSensorNode;
Transform1300: TTransformNode;
Transform1301: TTransformNode;
Shape1302: TShapeNode;
Appearance1303: TAppearanceNode;
Material1304: TMaterialNode;
Sphere1305: TSphereNode;
Shape1306: TShapeNode;
Appearance1307: TAppearanceNode;
Material1308: TMaterialNode;
LineProperties1309: TLinePropertiesNode;
LineSet1310: TLineSetNode;
Coordinate1311: TCoordinateNode;
Shape1312: TShapeNode;
Appearance1313: TAppearanceNode;
LineSet1314: TLineSetNode;
Coordinate1315: TCoordinateNode;
Shape1316: TShapeNode;
Appearance1317: TAppearanceNode;
LineSet1318: TLineSetNode;
Coordinate1319: TCoordinateNode;
Shape1320: TShapeNode;
Appearance1321: TAppearanceNode;
LineSet1322: TLineSetNode;
Coordinate1323: TCoordinateNode;
Shape1324: TShapeNode;
Appearance1325: TAppearanceNode;
LineSet1326: TLineSetNode;
Coordinate1327: TCoordinateNode;
Shape1328: TShapeNode;
Appearance1329: TAppearanceNode;
LineSet1330: TLineSetNode;
Coordinate1331: TCoordinateNode;
Shape1332: TShapeNode;
Appearance1333: TAppearanceNode;
LineSet1334: TLineSetNode;
Coordinate1335: TCoordinateNode;
HAnimJoint1336: THAnimJointNode;
HAnimSegment1337: THAnimSegmentNode;
Group1338: TGroupNode;
TouchSensor1339: TTouchSensorNode;
Transform1340: TTransformNode;
Shape1341: TShapeNode;
Appearance1342: TAppearanceNode;
Material1343: TMaterialNode;
Sphere1344: TSphereNode;
Shape1345: TShapeNode;
Appearance1346: TAppearanceNode;
Material1347: TMaterialNode;
LineProperties1348: TLinePropertiesNode;
LineSet1349: TLineSetNode;
Coordinate1350: TCoordinateNode;
HAnimJoint1351: THAnimJointNode;
HAnimSegment1352: THAnimSegmentNode;
Group1353: TGroupNode;
TouchSensor1354: TTouchSensorNode;
Transform1355: TTransformNode;
Shape1356: TShapeNode;
Appearance1357: TAppearanceNode;
Material1358: TMaterialNode;
Sphere1359: TSphereNode;
Shape1360: TShapeNode;
Appearance1361: TAppearanceNode;
Material1362: TMaterialNode;
LineProperties1363: TLinePropertiesNode;
LineSet1364: TLineSetNode;
Coordinate1365: TCoordinateNode;
HAnimJoint1366: THAnimJointNode;
HAnimSegment1367: THAnimSegmentNode;
Group1368: TGroupNode;
TouchSensor1369: TTouchSensorNode;
Transform1370: TTransformNode;
Shape1371: TShapeNode;
Appearance1372: TAppearanceNode;
Material1373: TMaterialNode;
Sphere1374: TSphereNode;
Shape1375: TShapeNode;
Appearance1376: TAppearanceNode;
Material1377: TMaterialNode;
LineProperties1378: TLinePropertiesNode;
LineSet1379: TLineSetNode;
Coordinate1380: TCoordinateNode;
HAnimJoint1381: THAnimJointNode;
HAnimSegment1382: THAnimSegmentNode;
Group1383: TGroupNode;
TouchSensor1384: TTouchSensorNode;
Transform1385: TTransformNode;
Shape1386: TShapeNode;
Appearance1387: TAppearanceNode;
Material1388: TMaterialNode;
Sphere1389: TSphereNode;
Shape1390: TShapeNode;
Appearance1391: TAppearanceNode;
Material1392: TMaterialNode;
LineProperties1393: TLinePropertiesNode;
LineSet1394: TLineSetNode;
Coordinate1395: TCoordinateNode;
HAnimJoint1396: THAnimJointNode;
HAnimSegment1397: THAnimSegmentNode;
Group1398: TGroupNode;
TouchSensor1399: TTouchSensorNode;
Transform1400: TTransformNode;
Shape1401: TShapeNode;
Appearance1402: TAppearanceNode;
Material1403: TMaterialNode;
Sphere1404: TSphereNode;
Shape1405: TShapeNode;
Appearance1406: TAppearanceNode;
Material1407: TMaterialNode;
LineProperties1408: TLinePropertiesNode;
LineSet1409: TLineSetNode;
Coordinate1410: TCoordinateNode;
HAnimJoint1411: THAnimJointNode;
HAnimSegment1412: THAnimSegmentNode;
Group1413: TGroupNode;
TouchSensor1414: TTouchSensorNode;
Transform1415: TTransformNode;
Shape1416: TShapeNode;
Appearance1417: TAppearanceNode;
Material1418: TMaterialNode;
Sphere1419: TSphereNode;
Shape1420: TShapeNode;
Appearance1421: TAppearanceNode;
Material1422: TMaterialNode;
LineProperties1423: TLinePropertiesNode;
LineSet1424: TLineSetNode;
Coordinate1425: TCoordinateNode;
HAnimJoint1426: THAnimJointNode;
HAnimSegment1427: THAnimSegmentNode;
Group1428: TGroupNode;
TouchSensor1429: TTouchSensorNode;
Transform1430: TTransformNode;
Shape1431: TShapeNode;
Appearance1432: TAppearanceNode;
Material1433: TMaterialNode;
Sphere1434: TSphereNode;
Shape1435: TShapeNode;
Appearance1436: TAppearanceNode;
Material1437: TMaterialNode;
LineProperties1438: TLinePropertiesNode;
LineSet1439: TLineSetNode;
Coordinate1440: TCoordinateNode;
HAnimJoint1441: THAnimJointNode;
HAnimSegment1442: THAnimSegmentNode;
TouchSensor1443: TTouchSensorNode;
Transform1444: TTransformNode;
Transform1445: TTransformNode;
Shape1446: TShapeNode;
Appearance1447: TAppearanceNode;
Material1448: TMaterialNode;
Sphere1449: TSphereNode;
Shape1450: TShapeNode;
Appearance1451: TAppearanceNode;
Material1452: TMaterialNode;
LineProperties1453: TLinePropertiesNode;
LineSet1454: TLineSetNode;
Coordinate1455: TCoordinateNode;
HAnimJoint1456: THAnimJointNode;
HAnimSegment1457: THAnimSegmentNode;
TouchSensor1458: TTouchSensorNode;
Transform1459: TTransformNode;
Transform1460: TTransformNode;
Shape1461: TShapeNode;
Appearance1462: TAppearanceNode;
Material1463: TMaterialNode;
Sphere1464: TSphereNode;
Shape1465: TShapeNode;
Appearance1466: TAppearanceNode;
Material1467: TMaterialNode;
LineProperties1468: TLinePropertiesNode;
LineSet1469: TLineSetNode;
Coordinate1470: TCoordinateNode;
HAnimJoint1471: THAnimJointNode;
HAnimSegment1472: THAnimSegmentNode;
TouchSensor1473: TTouchSensorNode;
Transform1474: TTransformNode;
Transform1475: TTransformNode;
Shape1476: TShapeNode;
Appearance1477: TAppearanceNode;
Material1478: TMaterialNode;
Sphere1479: TSphereNode;
Shape1480: TShapeNode;
Appearance1481: TAppearanceNode;
Material1482: TMaterialNode;
LineProperties1483: TLinePropertiesNode;
LineSet1484: TLineSetNode;
Coordinate1485: TCoordinateNode;
HAnimJoint1486: THAnimJointNode;
HAnimSegment1487: THAnimSegmentNode;
TouchSensor1488: TTouchSensorNode;
Transform1489: TTransformNode;
Transform1490: TTransformNode;
Shape1491: TShapeNode;
Appearance1492: TAppearanceNode;
Material1493: TMaterialNode;
Sphere1494: TSphereNode;
Shape1495: TShapeNode;
Appearance1496: TAppearanceNode;
Material1497: TMaterialNode;
LineProperties1498: TLinePropertiesNode;
LineSet1499: TLineSetNode;
Coordinate1500: TCoordinateNode;
HAnimJoint1501: THAnimJointNode;
HAnimSegment1502: THAnimSegmentNode;
TouchSensor1503: TTouchSensorNode;
Transform1504: TTransformNode;
Transform1505: TTransformNode;
Shape1506: TShapeNode;
Appearance1507: TAppearanceNode;
Material1508: TMaterialNode;
Sphere1509: TSphereNode;
Shape1510: TShapeNode;
Appearance1511: TAppearanceNode;
Material1512: TMaterialNode;
LineProperties1513: TLinePropertiesNode;
LineSet1514: TLineSetNode;
Coordinate1515: TCoordinateNode;
Shape1516: TShapeNode;
Appearance1517: TAppearanceNode;
LineSet1518: TLineSetNode;
Coordinate1519: TCoordinateNode;
Shape1520: TShapeNode;
Appearance1521: TAppearanceNode;
LineSet1522: TLineSetNode;
Coordinate1523: TCoordinateNode;
Shape1524: TShapeNode;
Appearance1525: TAppearanceNode;
LineSet1526: TLineSetNode;
Coordinate1527: TCoordinateNode;
HAnimJoint1528: THAnimJointNode;
HAnimSegment1529: THAnimSegmentNode;
TouchSensor1530: TTouchSensorNode;
Transform1531: TTransformNode;
Transform1532: TTransformNode;
Shape1533: TShapeNode;
Appearance1534: TAppearanceNode;
Material1535: TMaterialNode;
Sphere1536: TSphereNode;
Shape1537: TShapeNode;
Appearance1538: TAppearanceNode;
Material1539: TMaterialNode;
LineProperties1540: TLinePropertiesNode;
LineSet1541: TLineSetNode;
Coordinate1542: TCoordinateNode;
HAnimJoint1543: THAnimJointNode;
HAnimSegment1544: THAnimSegmentNode;
TouchSensor1545: TTouchSensorNode;
Transform1546: TTransformNode;
Transform1547: TTransformNode;
Shape1548: TShapeNode;
Appearance1549: TAppearanceNode;
Material1550: TMaterialNode;
Sphere1551: TSphereNode;
Shape1552: TShapeNode;
Appearance1553: TAppearanceNode;
Material1554: TMaterialNode;
LineProperties1555: TLinePropertiesNode;
LineSet1556: TLineSetNode;
Coordinate1557: TCoordinateNode;
HAnimJoint1558: THAnimJointNode;
HAnimSegment1559: THAnimSegmentNode;
TouchSensor1560: TTouchSensorNode;
Transform1561: TTransformNode;
Transform1562: TTransformNode;
Shape1563: TShapeNode;
Appearance1564: TAppearanceNode;
Material1565: TMaterialNode;
Sphere1566: TSphereNode;
Shape1567: TShapeNode;
Appearance1568: TAppearanceNode;
Material1569: TMaterialNode;
LineProperties1570: TLinePropertiesNode;
LineSet1571: TLineSetNode;
Coordinate1572: TCoordinateNode;
HAnimJoint1573: THAnimJointNode;
HAnimSegment1574: THAnimSegmentNode;
Group1575: TGroupNode;
TouchSensor1576: TTouchSensorNode;
Transform1577: TTransformNode;
Shape1578: TShapeNode;
Appearance1579: TAppearanceNode;
Material1580: TMaterialNode;
Sphere1581: TSphereNode;
Shape1582: TShapeNode;
Appearance1583: TAppearanceNode;
Material1584: TMaterialNode;
LineProperties1585: TLinePropertiesNode;
LineSet1586: TLineSetNode;
Coordinate1587: TCoordinateNode;
HAnimJoint1588: THAnimJointNode;
HAnimSegment1589: THAnimSegmentNode;
TouchSensor1590: TTouchSensorNode;
Transform1591: TTransformNode;
Transform1592: TTransformNode;
Shape1593: TShapeNode;
Appearance1594: TAppearanceNode;
Material1595: TMaterialNode;
Sphere1596: TSphereNode;
Shape1597: TShapeNode;
Appearance1598: TAppearanceNode;
Material1599: TMaterialNode;
LineProperties1600: TLinePropertiesNode;
LineSet1601: TLineSetNode;
Coordinate1602: TCoordinateNode;
HAnimJoint1603: THAnimJointNode;
HAnimSegment1604: THAnimSegmentNode;
TouchSensor1605: TTouchSensorNode;
Transform1606: TTransformNode;
Transform1607: TTransformNode;
Shape1608: TShapeNode;
Appearance1609: TAppearanceNode;
Material1610: TMaterialNode;
Sphere1611: TSphereNode;
Shape1612: TShapeNode;
Appearance1613: TAppearanceNode;
Material1614: TMaterialNode;
LineProperties1615: TLinePropertiesNode;
LineSet1616: TLineSetNode;
Coordinate1617: TCoordinateNode;
HAnimJoint1618: THAnimJointNode;
HAnimSegment1619: THAnimSegmentNode;
TouchSensor1620: TTouchSensorNode;
Transform1621: TTransformNode;
Transform1622: TTransformNode;
Shape1623: TShapeNode;
Appearance1624: TAppearanceNode;
Material1625: TMaterialNode;
Sphere1626: TSphereNode;
Shape1627: TShapeNode;
Appearance1628: TAppearanceNode;
Material1629: TMaterialNode;
LineProperties1630: TLinePropertiesNode;
LineSet1631: TLineSetNode;
Coordinate1632: TCoordinateNode;
HAnimJoint1633: THAnimJointNode;
HAnimSegment1634: THAnimSegmentNode;
TouchSensor1635: TTouchSensorNode;
Transform1636: TTransformNode;
Transform1637: TTransformNode;
Shape1638: TShapeNode;
Appearance1639: TAppearanceNode;
Material1640: TMaterialNode;
Sphere1641: TSphereNode;
Shape1642: TShapeNode;
Appearance1643: TAppearanceNode;
Material1644: TMaterialNode;
LineProperties1645: TLinePropertiesNode;
LineSet1646: TLineSetNode;
Coordinate1647: TCoordinateNode;
HAnimJoint1648: THAnimJointNode;
HAnimSegment1649: THAnimSegmentNode;
Group1650: TGroupNode;
TouchSensor1651: TTouchSensorNode;
Transform1652: TTransformNode;
Shape1653: TShapeNode;
Appearance1654: TAppearanceNode;
Material1655: TMaterialNode;
Sphere1656: TSphereNode;
Shape1657: TShapeNode;
Appearance1658: TAppearanceNode;
Material1659: TMaterialNode;
LineProperties1660: TLinePropertiesNode;
LineSet1661: TLineSetNode;
Coordinate1662: TCoordinateNode;
HAnimJoint1663: THAnimJointNode;
HAnimSegment1664: THAnimSegmentNode;
TouchSensor1665: TTouchSensorNode;
Transform1666: TTransformNode;
Transform1667: TTransformNode;
Shape1668: TShapeNode;
Appearance1669: TAppearanceNode;
Material1670: TMaterialNode;
Sphere1671: TSphereNode;
Shape1672: TShapeNode;
Appearance1673: TAppearanceNode;
Material1674: TMaterialNode;
LineProperties1675: TLinePropertiesNode;
LineSet1676: TLineSetNode;
Coordinate1677: TCoordinateNode;
HAnimJoint1678: THAnimJointNode;
HAnimSegment1679: THAnimSegmentNode;
TouchSensor1680: TTouchSensorNode;
Transform1681: TTransformNode;
Transform1682: TTransformNode;
Shape1683: TShapeNode;
Appearance1684: TAppearanceNode;
Material1685: TMaterialNode;
Sphere1686: TSphereNode;
Shape1687: TShapeNode;
Appearance1688: TAppearanceNode;
Material1689: TMaterialNode;
LineProperties1690: TLinePropertiesNode;
LineSet1691: TLineSetNode;
Coordinate1692: TCoordinateNode;
HAnimJoint1693: THAnimJointNode;
HAnimSegment1694: THAnimSegmentNode;
TouchSensor1695: TTouchSensorNode;
Transform1696: TTransformNode;
Transform1697: TTransformNode;
Shape1698: TShapeNode;
Appearance1699: TAppearanceNode;
Material1700: TMaterialNode;
Sphere1701: TSphereNode;
Shape1702: TShapeNode;
Appearance1703: TAppearanceNode;
Material1704: TMaterialNode;
LineProperties1705: TLinePropertiesNode;
LineSet1706: TLineSetNode;
Coordinate1707: TCoordinateNode;
HAnimJoint1708: THAnimJointNode;
HAnimSegment1709: THAnimSegmentNode;
TouchSensor1710: TTouchSensorNode;
Transform1711: TTransformNode;
Transform1712: TTransformNode;
Shape1713: TShapeNode;
Appearance1714: TAppearanceNode;
Material1715: TMaterialNode;
Sphere1716: TSphereNode;
Shape1717: TShapeNode;
Appearance1718: TAppearanceNode;
Material1719: TMaterialNode;
LineProperties1720: TLinePropertiesNode;
LineSet1721: TLineSetNode;
Coordinate1722: TCoordinateNode;
HAnimJoint1723: THAnimJointNode;
HAnimSegment1724: THAnimSegmentNode;
Group1725: TGroupNode;
TouchSensor1726: TTouchSensorNode;
Transform1727: TTransformNode;
Shape1728: TShapeNode;
Appearance1729: TAppearanceNode;
Material1730: TMaterialNode;
Sphere1731: TSphereNode;
Shape1732: TShapeNode;
Appearance1733: TAppearanceNode;
Material1734: TMaterialNode;
LineProperties1735: TLinePropertiesNode;
LineSet1736: TLineSetNode;
Coordinate1737: TCoordinateNode;
HAnimJoint1738: THAnimJointNode;
HAnimSegment1739: THAnimSegmentNode;
TouchSensor1740: TTouchSensorNode;
Transform1741: TTransformNode;
Transform1742: TTransformNode;
Shape1743: TShapeNode;
Appearance1744: TAppearanceNode;
Material1745: TMaterialNode;
Sphere1746: TSphereNode;
Shape1747: TShapeNode;
Appearance1748: TAppearanceNode;
Material1749: TMaterialNode;
LineProperties1750: TLinePropertiesNode;
LineSet1751: TLineSetNode;
Coordinate1752: TCoordinateNode;
Shape1753: TShapeNode;
Appearance1754: TAppearanceNode;
LineSet1755: TLineSetNode;
Coordinate1756: TCoordinateNode;
HAnimJoint1757: THAnimJointNode;
HAnimSegment1758: THAnimSegmentNode;
TouchSensor1759: TTouchSensorNode;
Transform1760: TTransformNode;
Transform1761: TTransformNode;
Shape1762: TShapeNode;
Appearance1763: TAppearanceNode;
Material1764: TMaterialNode;
Sphere1765: TSphereNode;
Shape1766: TShapeNode;
Appearance1767: TAppearanceNode;
Material1768: TMaterialNode;
LineProperties1769: TLinePropertiesNode;
LineSet1770: TLineSetNode;
Coordinate1771: TCoordinateNode;
HAnimJoint1772: THAnimJointNode;
HAnimSegment1773: THAnimSegmentNode;
TouchSensor1774: TTouchSensorNode;
Transform1775: TTransformNode;
Transform1776: TTransformNode;
Shape1777: TShapeNode;
Appearance1778: TAppearanceNode;
Material1779: TMaterialNode;
Sphere1780: TSphereNode;
Shape1781: TShapeNode;
Appearance1782: TAppearanceNode;
Material1783: TMaterialNode;
LineProperties1784: TLinePropertiesNode;
LineSet1785: TLineSetNode;
Coordinate1786: TCoordinateNode;
HAnimJoint1787: THAnimJointNode;
HAnimSegment1788: THAnimSegmentNode;
TouchSensor1789: TTouchSensorNode;
Transform1790: TTransformNode;
Transform1791: TTransformNode;
Shape1792: TShapeNode;
Appearance1793: TAppearanceNode;
Material1794: TMaterialNode;
Sphere1795: TSphereNode;
Shape1796: TShapeNode;
Appearance1797: TAppearanceNode;
Material1798: TMaterialNode;
LineProperties1799: TLinePropertiesNode;
LineSet1800: TLineSetNode;
Coordinate1801: TCoordinateNode;
HAnimJoint1802: THAnimJointNode;
HAnimSegment1803: THAnimSegmentNode;
Group1804: TGroupNode;
TouchSensor1805: TTouchSensorNode;
Transform1806: TTransformNode;
Shape1807: TShapeNode;
Appearance1808: TAppearanceNode;
Material1809: TMaterialNode;
Sphere1810: TSphereNode;
Shape1811: TShapeNode;
Appearance1812: TAppearanceNode;
Material1813: TMaterialNode;
LineProperties1814: TLinePropertiesNode;
LineSet1815: TLineSetNode;
Coordinate1816: TCoordinateNode;
HAnimJoint1817: THAnimJointNode;
HAnimSegment1818: THAnimSegmentNode;
TouchSensor1819: TTouchSensorNode;
Transform1820: TTransformNode;
Transform1821: TTransformNode;
Shape1822: TShapeNode;
Appearance1823: TAppearanceNode;
Material1824: TMaterialNode;
Sphere1825: TSphereNode;
Shape1826: TShapeNode;
Appearance1827: TAppearanceNode;
Material1828: TMaterialNode;
LineProperties1829: TLinePropertiesNode;
LineSet1830: TLineSetNode;
Coordinate1831: TCoordinateNode;
HAnimJoint1832: THAnimJointNode;
HAnimSegment1833: THAnimSegmentNode;
TouchSensor1834: TTouchSensorNode;
Transform1835: TTransformNode;
Transform1836: TTransformNode;
Shape1837: TShapeNode;
Appearance1838: TAppearanceNode;
Material1839: TMaterialNode;
Sphere1840: TSphereNode;
Shape1841: TShapeNode;
Appearance1842: TAppearanceNode;
Material1843: TMaterialNode;
LineProperties1844: TLinePropertiesNode;
LineSet1845: TLineSetNode;
Coordinate1846: TCoordinateNode;
HAnimJoint1847: THAnimJointNode;
HAnimSegment1848: THAnimSegmentNode;
TouchSensor1849: TTouchSensorNode;
Transform1850: TTransformNode;
Transform1851: TTransformNode;
Shape1852: TShapeNode;
Appearance1853: TAppearanceNode;
Material1854: TMaterialNode;
Sphere1855: TSphereNode;
Shape1856: TShapeNode;
Appearance1857: TAppearanceNode;
Material1858: TMaterialNode;
LineProperties1859: TLinePropertiesNode;
LineSet1860: TLineSetNode;
Coordinate1861: TCoordinateNode;
HAnimJoint1862: THAnimJointNode;
HAnimSegment1863: THAnimSegmentNode;
Group1864: TGroupNode;
TouchSensor1865: TTouchSensorNode;
Transform1866: TTransformNode;
Shape1867: TShapeNode;
Appearance1868: TAppearanceNode;
Material1869: TMaterialNode;
Sphere1870: TSphereNode;
Shape1871: TShapeNode;
Appearance1872: TAppearanceNode;
Material1873: TMaterialNode;
LineProperties1874: TLinePropertiesNode;
LineSet1875: TLineSetNode;
Coordinate1876: TCoordinateNode;
HAnimJoint1877: THAnimJointNode;
HAnimSegment1878: THAnimSegmentNode;
TouchSensor1879: TTouchSensorNode;
Transform1880: TTransformNode;
Transform1881: TTransformNode;
Shape1882: TShapeNode;
Appearance1883: TAppearanceNode;
Material1884: TMaterialNode;
Sphere1885: TSphereNode;
Shape1886: TShapeNode;
Appearance1887: TAppearanceNode;
Material1888: TMaterialNode;
LineProperties1889: TLinePropertiesNode;
LineSet1890: TLineSetNode;
Coordinate1891: TCoordinateNode;
HAnimJoint1892: THAnimJointNode;
HAnimSegment1893: THAnimSegmentNode;
TouchSensor1894: TTouchSensorNode;
Transform1895: TTransformNode;
Transform1896: TTransformNode;
Shape1897: TShapeNode;
Appearance1898: TAppearanceNode;
Material1899: TMaterialNode;
Sphere1900: TSphereNode;
Shape1901: TShapeNode;
Appearance1902: TAppearanceNode;
Material1903: TMaterialNode;
LineProperties1904: TLinePropertiesNode;
LineSet1905: TLineSetNode;
Coordinate1906: TCoordinateNode;
HAnimJoint1907: THAnimJointNode;
HAnimSegment1908: THAnimSegmentNode;
TouchSensor1909: TTouchSensorNode;
Transform1910: TTransformNode;
Transform1911: TTransformNode;
Shape1912: TShapeNode;
Appearance1913: TAppearanceNode;
Material1914: TMaterialNode;
Sphere1915: TSphereNode;
Shape1916: TShapeNode;
Appearance1917: TAppearanceNode;
Material1918: TMaterialNode;
LineProperties1919: TLinePropertiesNode;
LineSet1920: TLineSetNode;
Coordinate1921: TCoordinateNode;
HAnimJoint1922: THAnimJointNode;
HAnimSegment1923: THAnimSegmentNode;
TouchSensor1924: TTouchSensorNode;
Transform1925: TTransformNode;
Transform1926: TTransformNode;
Shape1927: TShapeNode;
Appearance1928: TAppearanceNode;
Material1929: TMaterialNode;
Sphere1930: TSphereNode;
Shape1931: TShapeNode;
Appearance1932: TAppearanceNode;
Material1933: TMaterialNode;
LineProperties1934: TLinePropertiesNode;
LineSet1935: TLineSetNode;
Coordinate1936: TCoordinateNode;
HAnimJoint1937: THAnimJointNode;
HAnimSegment1938: THAnimSegmentNode;
TouchSensor1939: TTouchSensorNode;
Transform1940: TTransformNode;
Transform1941: TTransformNode;
Shape1942: TShapeNode;
Appearance1943: TAppearanceNode;
Material1944: TMaterialNode;
Sphere1945: TSphereNode;
Shape1946: TShapeNode;
Appearance1947: TAppearanceNode;
Material1948: TMaterialNode;
LineProperties1949: TLinePropertiesNode;
LineSet1950: TLineSetNode;
Coordinate1951: TCoordinateNode;
Shape1952: TShapeNode;
Appearance1953: TAppearanceNode;
LineSet1954: TLineSetNode;
Coordinate1955: TCoordinateNode;
Shape1956: TShapeNode;
Appearance1957: TAppearanceNode;
LineSet1958: TLineSetNode;
Coordinate1959: TCoordinateNode;
Shape1960: TShapeNode;
Appearance1961: TAppearanceNode;
LineSet1962: TLineSetNode;
Coordinate1963: TCoordinateNode;
HAnimJoint1964: THAnimJointNode;
HAnimSegment1965: THAnimSegmentNode;
TouchSensor1966: TTouchSensorNode;
Transform1967: TTransformNode;
Transform1968: TTransformNode;
Shape1969: TShapeNode;
Appearance1970: TAppearanceNode;
Material1971: TMaterialNode;
Sphere1972: TSphereNode;
Shape1973: TShapeNode;
Appearance1974: TAppearanceNode;
Material1975: TMaterialNode;
LineProperties1976: TLinePropertiesNode;
LineSet1977: TLineSetNode;
Coordinate1978: TCoordinateNode;
HAnimJoint1979: THAnimJointNode;
HAnimSegment1980: THAnimSegmentNode;
TouchSensor1981: TTouchSensorNode;
Transform1982: TTransformNode;
Transform1983: TTransformNode;
Shape1984: TShapeNode;
Appearance1985: TAppearanceNode;
Material1986: TMaterialNode;
Sphere1987: TSphereNode;
Shape1988: TShapeNode;
Appearance1989: TAppearanceNode;
Material1990: TMaterialNode;
LineProperties1991: TLinePropertiesNode;
LineSet1992: TLineSetNode;
Coordinate1993: TCoordinateNode;
HAnimJoint1994: THAnimJointNode;
HAnimSegment1995: THAnimSegmentNode;
TouchSensor1996: TTouchSensorNode;
Transform1997: TTransformNode;
Transform1998: TTransformNode;
Shape1999: TShapeNode;
Appearance2000: TAppearanceNode;
Material2001: TMaterialNode;
Sphere2002: TSphereNode;
Shape2003: TShapeNode;
Appearance2004: TAppearanceNode;
Material2005: TMaterialNode;
LineProperties2006: TLinePropertiesNode;
LineSet2007: TLineSetNode;
Coordinate2008: TCoordinateNode;
HAnimJoint2009: THAnimJointNode;
HAnimSegment2010: THAnimSegmentNode;
Group2011: TGroupNode;
TouchSensor2012: TTouchSensorNode;
Transform2013: TTransformNode;
Shape2014: TShapeNode;
Appearance2015: TAppearanceNode;
Material2016: TMaterialNode;
Sphere2017: TSphereNode;
Shape2018: TShapeNode;
Appearance2019: TAppearanceNode;
Material2020: TMaterialNode;
LineProperties2021: TLinePropertiesNode;
LineSet2022: TLineSetNode;
Coordinate2023: TCoordinateNode;
HAnimJoint2024: THAnimJointNode;
HAnimSegment2025: THAnimSegmentNode;
TouchSensor2026: TTouchSensorNode;
Transform2027: TTransformNode;
Transform2028: TTransformNode;
Shape2029: TShapeNode;
Appearance2030: TAppearanceNode;
Material2031: TMaterialNode;
Sphere2032: TSphereNode;
Shape2033: TShapeNode;
Appearance2034: TAppearanceNode;
Material2035: TMaterialNode;
LineProperties2036: TLinePropertiesNode;
LineSet2037: TLineSetNode;
Coordinate2038: TCoordinateNode;
HAnimJoint2039: THAnimJointNode;
HAnimSegment2040: THAnimSegmentNode;
TouchSensor2041: TTouchSensorNode;
Transform2042: TTransformNode;
Transform2043: TTransformNode;
Shape2044: TShapeNode;
Appearance2045: TAppearanceNode;
Material2046: TMaterialNode;
Sphere2047: TSphereNode;
Shape2048: TShapeNode;
Appearance2049: TAppearanceNode;
Material2050: TMaterialNode;
LineProperties2051: TLinePropertiesNode;
LineSet2052: TLineSetNode;
Coordinate2053: TCoordinateNode;
HAnimJoint2054: THAnimJointNode;
HAnimSegment2055: THAnimSegmentNode;
TouchSensor2056: TTouchSensorNode;
Transform2057: TTransformNode;
Transform2058: TTransformNode;
Shape2059: TShapeNode;
Appearance2060: TAppearanceNode;
Material2061: TMaterialNode;
Sphere2062: TSphereNode;
Shape2063: TShapeNode;
Appearance2064: TAppearanceNode;
Material2065: TMaterialNode;
LineProperties2066: TLinePropertiesNode;
LineSet2067: TLineSetNode;
Coordinate2068: TCoordinateNode;
HAnimJoint2069: THAnimJointNode;
HAnimSegment2070: THAnimSegmentNode;
TouchSensor2071: TTouchSensorNode;
Transform2072: TTransformNode;
Transform2073: TTransformNode;
Shape2074: TShapeNode;
Appearance2075: TAppearanceNode;
Material2076: TMaterialNode;
Sphere2077: TSphereNode;
Shape2078: TShapeNode;
Appearance2079: TAppearanceNode;
Material2080: TMaterialNode;
LineProperties2081: TLinePropertiesNode;
LineSet2082: TLineSetNode;
Coordinate2083: TCoordinateNode;
HAnimJoint2084: THAnimJointNode;
HAnimSegment2085: THAnimSegmentNode;
Group2086: TGroupNode;
TouchSensor2087: TTouchSensorNode;
Transform2088: TTransformNode;
Shape2089: TShapeNode;
Appearance2090: TAppearanceNode;
Material2091: TMaterialNode;
Sphere2092: TSphereNode;
Shape2093: TShapeNode;
Appearance2094: TAppearanceNode;
Material2095: TMaterialNode;
LineProperties2096: TLinePropertiesNode;
LineSet2097: TLineSetNode;
Coordinate2098: TCoordinateNode;
HAnimJoint2099: THAnimJointNode;
HAnimSegment2100: THAnimSegmentNode;
TouchSensor2101: TTouchSensorNode;
Transform2102: TTransformNode;
Transform2103: TTransformNode;
Shape2104: TShapeNode;
Appearance2105: TAppearanceNode;
Material2106: TMaterialNode;
Sphere2107: TSphereNode;
Shape2108: TShapeNode;
Appearance2109: TAppearanceNode;
Material2110: TMaterialNode;
LineProperties2111: TLinePropertiesNode;
LineSet2112: TLineSetNode;
Coordinate2113: TCoordinateNode;
HAnimJoint2114: THAnimJointNode;
HAnimSegment2115: THAnimSegmentNode;
TouchSensor2116: TTouchSensorNode;
Transform2117: TTransformNode;
Transform2118: TTransformNode;
Shape2119: TShapeNode;
Appearance2120: TAppearanceNode;
Material2121: TMaterialNode;
Sphere2122: TSphereNode;
Shape2123: TShapeNode;
Appearance2124: TAppearanceNode;
Material2125: TMaterialNode;
LineProperties2126: TLinePropertiesNode;
LineSet2127: TLineSetNode;
Coordinate2128: TCoordinateNode;
HAnimJoint2129: THAnimJointNode;
HAnimSegment2130: THAnimSegmentNode;
TouchSensor2131: TTouchSensorNode;
Transform2132: TTransformNode;
Transform2133: TTransformNode;
Shape2134: TShapeNode;
Appearance2135: TAppearanceNode;
Material2136: TMaterialNode;
Sphere2137: TSphereNode;
Shape2138: TShapeNode;
Appearance2139: TAppearanceNode;
Material2140: TMaterialNode;
LineProperties2141: TLinePropertiesNode;
LineSet2142: TLineSetNode;
Coordinate2143: TCoordinateNode;
HAnimJoint2144: THAnimJointNode;
HAnimSegment2145: THAnimSegmentNode;
TouchSensor2146: TTouchSensorNode;
Transform2147: TTransformNode;
Transform2148: TTransformNode;
Shape2149: TShapeNode;
Appearance2150: TAppearanceNode;
Material2151: TMaterialNode;
Sphere2152: TSphereNode;
Shape2153: TShapeNode;
Appearance2154: TAppearanceNode;
Material2155: TMaterialNode;
LineProperties2156: TLinePropertiesNode;
LineSet2157: TLineSetNode;
Coordinate2158: TCoordinateNode;
HAnimJoint2159: THAnimJointNode;
HAnimSegment2160: THAnimSegmentNode;
Group2161: TGroupNode;
TouchSensor2162: TTouchSensorNode;
Transform2163: TTransformNode;
Shape2164: TShapeNode;
Appearance2165: TAppearanceNode;
Material2166: TMaterialNode;
Sphere2167: TSphereNode;
Shape2168: TShapeNode;
Appearance2169: TAppearanceNode;
Material2170: TMaterialNode;
LineProperties2171: TLinePropertiesNode;
LineSet2172: TLineSetNode;
Coordinate2173: TCoordinateNode;
HAnimJoint2174: THAnimJointNode;
HAnimSegment2175: THAnimSegmentNode;
TouchSensor2176: TTouchSensorNode;
Transform2177: TTransformNode;
Transform2178: TTransformNode;
Shape2179: TShapeNode;
Appearance2180: TAppearanceNode;
Material2181: TMaterialNode;
Sphere2182: TSphereNode;
Shape2183: TShapeNode;
Appearance2184: TAppearanceNode;
Material2185: TMaterialNode;
LineProperties2186: TLinePropertiesNode;
LineSet2187: TLineSetNode;
Coordinate2188: TCoordinateNode;
Shape2189: TShapeNode;
Appearance2190: TAppearanceNode;
LineSet2191: TLineSetNode;
Coordinate2192: TCoordinateNode;
HAnimJoint2193: THAnimJointNode;
HAnimSegment2194: THAnimSegmentNode;
TouchSensor2195: TTouchSensorNode;
Transform2196: TTransformNode;
Transform2197: TTransformNode;
Shape2198: TShapeNode;
Appearance2199: TAppearanceNode;
Material2200: TMaterialNode;
Sphere2201: TSphereNode;
Shape2202: TShapeNode;
Appearance2203: TAppearanceNode;
Material2204: TMaterialNode;
LineProperties2205: TLinePropertiesNode;
LineSet2206: TLineSetNode;
Coordinate2207: TCoordinateNode;
HAnimJoint2208: THAnimJointNode;
HAnimSegment2209: THAnimSegmentNode;
TouchSensor2210: TTouchSensorNode;
Transform2211: TTransformNode;
Transform2212: TTransformNode;
Shape2213: TShapeNode;
Appearance2214: TAppearanceNode;
Material2215: TMaterialNode;
Sphere2216: TSphereNode;
Shape2217: TShapeNode;
Appearance2218: TAppearanceNode;
Material2219: TMaterialNode;
LineProperties2220: TLinePropertiesNode;
LineSet2221: TLineSetNode;
Coordinate2222: TCoordinateNode;
HAnimJoint2223: THAnimJointNode;
HAnimSegment2224: THAnimSegmentNode;
TouchSensor2225: TTouchSensorNode;
Transform2226: TTransformNode;
Transform2227: TTransformNode;
Shape2228: TShapeNode;
Appearance2229: TAppearanceNode;
Material2230: TMaterialNode;
Sphere2231: TSphereNode;
Shape2232: TShapeNode;
Appearance2233: TAppearanceNode;
Material2234: TMaterialNode;
LineProperties2235: TLinePropertiesNode;
LineSet2236: TLineSetNode;
Coordinate2237: TCoordinateNode;
HAnimJoint2238: THAnimJointNode;
HAnimSegment2239: THAnimSegmentNode;
Group2240: TGroupNode;
TouchSensor2241: TTouchSensorNode;
Transform2242: TTransformNode;
Shape2243: TShapeNode;
Appearance2244: TAppearanceNode;
Material2245: TMaterialNode;
Sphere2246: TSphereNode;
Shape2247: TShapeNode;
Appearance2248: TAppearanceNode;
Material2249: TMaterialNode;
LineProperties2250: TLinePropertiesNode;
LineSet2251: TLineSetNode;
Coordinate2252: TCoordinateNode;
HAnimJoint2253: THAnimJointNode;
HAnimSegment2254: THAnimSegmentNode;
TouchSensor2255: TTouchSensorNode;
Transform2256: TTransformNode;
Transform2257: TTransformNode;
Shape2258: TShapeNode;
Appearance2259: TAppearanceNode;
Material2260: TMaterialNode;
Sphere2261: TSphereNode;
Shape2262: TShapeNode;
Appearance2263: TAppearanceNode;
Material2264: TMaterialNode;
LineProperties2265: TLinePropertiesNode;
LineSet2266: TLineSetNode;
Coordinate2267: TCoordinateNode;
HAnimJoint2268: THAnimJointNode;
HAnimSegment2269: THAnimSegmentNode;
TouchSensor2270: TTouchSensorNode;
Transform2271: TTransformNode;
Transform2272: TTransformNode;
Shape2273: TShapeNode;
Appearance2274: TAppearanceNode;
Material2275: TMaterialNode;
Sphere2276: TSphereNode;
Shape2277: TShapeNode;
Appearance2278: TAppearanceNode;
Material2279: TMaterialNode;
LineProperties2280: TLinePropertiesNode;
LineSet2281: TLineSetNode;
Coordinate2282: TCoordinateNode;
HAnimJoint2283: THAnimJointNode;
HAnimSegment2284: THAnimSegmentNode;
TouchSensor2285: TTouchSensorNode;
Transform2286: TTransformNode;
Transform2287: TTransformNode;
Shape2288: TShapeNode;
Appearance2289: TAppearanceNode;
Material2290: TMaterialNode;
Sphere2291: TSphereNode;
Shape2292: TShapeNode;
Appearance2293: TAppearanceNode;
Material2294: TMaterialNode;
LineProperties2295: TLinePropertiesNode;
LineSet2296: TLineSetNode;
Coordinate2297: TCoordinateNode;
HAnimJoint2298: THAnimJointNode;
HAnimSegment2299: THAnimSegmentNode;
Group2300: TGroupNode;
TouchSensor2301: TTouchSensorNode;
Transform2302: TTransformNode;
Shape2303: TShapeNode;
Appearance2304: TAppearanceNode;
Material2305: TMaterialNode;
Sphere2306: TSphereNode;
Shape2307: TShapeNode;
Appearance2308: TAppearanceNode;
Material2309: TMaterialNode;
LineProperties2310: TLinePropertiesNode;
LineSet2311: TLineSetNode;
Coordinate2312: TCoordinateNode;
HAnimJoint2313: THAnimJointNode;
HAnimJoint2314: THAnimJointNode;
HAnimJoint2315: THAnimJointNode;
HAnimJoint2316: THAnimJointNode;
HAnimJoint2317: THAnimJointNode;
HAnimJoint2318: THAnimJointNode;
HAnimJoint2319: THAnimJointNode;
HAnimJoint2320: THAnimJointNode;
HAnimJoint2321: THAnimJointNode;
HAnimJoint2322: THAnimJointNode;
HAnimJoint2323: THAnimJointNode;
HAnimJoint2324: THAnimJointNode;
HAnimJoint2325: THAnimJointNode;
HAnimJoint2326: THAnimJointNode;
HAnimJoint2327: THAnimJointNode;
HAnimJoint2328: THAnimJointNode;
HAnimJoint2329: THAnimJointNode;
HAnimJoint2330: THAnimJointNode;
HAnimJoint2331: THAnimJointNode;
HAnimJoint2332: THAnimJointNode;
HAnimJoint2333: THAnimJointNode;
HAnimJoint2334: THAnimJointNode;
HAnimJoint2335: THAnimJointNode;
HAnimJoint2336: THAnimJointNode;
HAnimJoint2337: THAnimJointNode;
HAnimJoint2338: THAnimJointNode;
HAnimJoint2339: THAnimJointNode;
HAnimJoint2340: THAnimJointNode;
HAnimJoint2341: THAnimJointNode;
HAnimJoint2342: THAnimJointNode;
HAnimJoint2343: THAnimJointNode;
HAnimJoint2344: THAnimJointNode;
HAnimJoint2345: THAnimJointNode;
HAnimJoint2346: THAnimJointNode;
HAnimJoint2347: THAnimJointNode;
HAnimJoint2348: THAnimJointNode;
HAnimJoint2349: THAnimJointNode;
HAnimJoint2350: THAnimJointNode;
HAnimJoint2351: THAnimJointNode;
HAnimJoint2352: THAnimJointNode;
HAnimJoint2353: THAnimJointNode;
HAnimJoint2354: THAnimJointNode;
HAnimJoint2355: THAnimJointNode;
HAnimJoint2356: THAnimJointNode;
HAnimJoint2357: THAnimJointNode;
HAnimJoint2358: THAnimJointNode;
HAnimJoint2359: THAnimJointNode;
HAnimJoint2360: THAnimJointNode;
HAnimJoint2361: THAnimJointNode;
HAnimJoint2362: THAnimJointNode;
HAnimJoint2363: THAnimJointNode;
HAnimJoint2364: THAnimJointNode;
HAnimJoint2365: THAnimJointNode;
HAnimJoint2366: THAnimJointNode;
HAnimJoint2367: THAnimJointNode;
HAnimJoint2368: THAnimJointNode;
HAnimJoint2369: THAnimJointNode;
HAnimJoint2370: THAnimJointNode;
HAnimJoint2371: THAnimJointNode;
HAnimJoint2372: THAnimJointNode;
HAnimJoint2373: THAnimJointNode;
HAnimJoint2374: THAnimJointNode;
HAnimJoint2375: THAnimJointNode;
HAnimJoint2376: THAnimJointNode;
HAnimJoint2377: THAnimJointNode;
HAnimJoint2378: THAnimJointNode;
HAnimJoint2379: THAnimJointNode;
HAnimJoint2380: THAnimJointNode;
HAnimJoint2381: THAnimJointNode;
HAnimJoint2382: THAnimJointNode;
HAnimJoint2383: THAnimJointNode;
HAnimJoint2384: THAnimJointNode;
HAnimJoint2385: THAnimJointNode;
HAnimJoint2386: THAnimJointNode;
HAnimJoint2387: THAnimJointNode;
HAnimJoint2388: THAnimJointNode;
HAnimJoint2389: THAnimJointNode;
HAnimJoint2390: THAnimJointNode;
HAnimJoint2391: THAnimJointNode;
HAnimJoint2392: THAnimJointNode;
HAnimJoint2393: THAnimJointNode;
HAnimJoint2394: THAnimJointNode;
HAnimJoint2395: THAnimJointNode;
HAnimJoint2396: THAnimJointNode;
HAnimJoint2397: THAnimJointNode;
HAnimJoint2398: THAnimJointNode;
HAnimJoint2399: THAnimJointNode;
HAnimJoint2400: THAnimJointNode;
HAnimJoint2401: THAnimJointNode;
HAnimJoint2402: THAnimJointNode;
HAnimJoint2403: THAnimJointNode;
HAnimJoint2404: THAnimJointNode;
HAnimJoint2405: THAnimJointNode;
HAnimJoint2406: THAnimJointNode;
HAnimJoint2407: THAnimJointNode;
HAnimJoint2408: THAnimJointNode;
HAnimJoint2409: THAnimJointNode;
HAnimJoint2410: THAnimJointNode;
HAnimJoint2411: THAnimJointNode;
HAnimJoint2412: THAnimJointNode;
HAnimJoint2413: THAnimJointNode;
HAnimJoint2414: THAnimJointNode;
HAnimJoint2415: THAnimJointNode;
HAnimJoint2416: THAnimJointNode;
HAnimJoint2417: THAnimJointNode;
HAnimJoint2418: THAnimJointNode;
HAnimJoint2419: THAnimJointNode;
HAnimJoint2420: THAnimJointNode;
HAnimJoint2421: THAnimJointNode;
HAnimJoint2422: THAnimJointNode;
HAnimJoint2423: THAnimJointNode;
HAnimJoint2424: THAnimJointNode;
HAnimJoint2425: THAnimJointNode;
HAnimJoint2426: THAnimJointNode;
HAnimJoint2427: THAnimJointNode;
HAnimJoint2428: THAnimJointNode;
HAnimJoint2429: THAnimJointNode;
HAnimJoint2430: THAnimJointNode;
HAnimJoint2431: THAnimJointNode;
HAnimJoint2432: THAnimJointNode;
HAnimJoint2433: THAnimJointNode;
HAnimJoint2434: THAnimJointNode;
HAnimJoint2435: THAnimJointNode;
HAnimJoint2436: THAnimJointNode;
HAnimJoint2437: THAnimJointNode;
HAnimJoint2438: THAnimJointNode;
HAnimJoint2439: THAnimJointNode;
HAnimJoint2440: THAnimJointNode;
HAnimJoint2441: THAnimJointNode;
HAnimJoint2442: THAnimJointNode;
HAnimJoint2443: THAnimJointNode;
HAnimJoint2444: THAnimJointNode;
HAnimJoint2445: THAnimJointNode;
HAnimJoint2446: THAnimJointNode;
HAnimJoint2447: THAnimJointNode;
HAnimJoint2448: THAnimJointNode;
HAnimJoint2449: THAnimJointNode;
HAnimJoint2450: THAnimJointNode;
HAnimJoint2451: THAnimJointNode;
HAnimJoint2452: THAnimJointNode;
HAnimJoint2453: THAnimJointNode;
HAnimJoint2454: THAnimJointNode;
HAnimJoint2455: THAnimJointNode;
HAnimJoint2456: THAnimJointNode;
HAnimJoint2457: THAnimJointNode;
HAnimJoint2458: THAnimJointNode;
HAnimSegment2459: THAnimSegmentNode;
HAnimSegment2460: THAnimSegmentNode;
HAnimSegment2461: THAnimSegmentNode;
HAnimSegment2462: THAnimSegmentNode;
HAnimSegment2463: THAnimSegmentNode;
HAnimSegment2464: THAnimSegmentNode;
HAnimSegment2465: THAnimSegmentNode;
HAnimSegment2466: THAnimSegmentNode;
HAnimSegment2467: THAnimSegmentNode;
HAnimSegment2468: THAnimSegmentNode;
HAnimSegment2469: THAnimSegmentNode;
HAnimSegment2470: THAnimSegmentNode;
HAnimSegment2471: THAnimSegmentNode;
HAnimSegment2472: THAnimSegmentNode;
HAnimSegment2473: THAnimSegmentNode;
HAnimSegment2474: THAnimSegmentNode;
HAnimSegment2475: THAnimSegmentNode;
HAnimSegment2476: THAnimSegmentNode;
HAnimSegment2477: THAnimSegmentNode;
HAnimSegment2478: THAnimSegmentNode;
HAnimSegment2479: THAnimSegmentNode;
HAnimSegment2480: THAnimSegmentNode;
HAnimSegment2481: THAnimSegmentNode;
HAnimSegment2482: THAnimSegmentNode;
HAnimSegment2483: THAnimSegmentNode;
HAnimSegment2484: THAnimSegmentNode;
HAnimSegment2485: THAnimSegmentNode;
HAnimSegment2486: THAnimSegmentNode;
HAnimSegment2487: THAnimSegmentNode;
HAnimSegment2488: THAnimSegmentNode;
HAnimSegment2489: THAnimSegmentNode;
HAnimSegment2490: THAnimSegmentNode;
HAnimSegment2491: THAnimSegmentNode;
HAnimSegment2492: THAnimSegmentNode;
HAnimSegment2493: THAnimSegmentNode;
HAnimSegment2494: THAnimSegmentNode;
HAnimSegment2495: THAnimSegmentNode;
HAnimSegment2496: THAnimSegmentNode;
HAnimSegment2497: THAnimSegmentNode;
HAnimSegment2498: THAnimSegmentNode;
HAnimSegment2499: THAnimSegmentNode;
HAnimSegment2500: THAnimSegmentNode;
HAnimSegment2501: THAnimSegmentNode;
HAnimSegment2502: THAnimSegmentNode;
HAnimSegment2503: THAnimSegmentNode;
HAnimSegment2504: THAnimSegmentNode;
HAnimSegment2505: THAnimSegmentNode;
HAnimSegment2506: THAnimSegmentNode;
HAnimSegment2507: THAnimSegmentNode;
HAnimSegment2508: THAnimSegmentNode;
HAnimSegment2509: THAnimSegmentNode;
HAnimSegment2510: THAnimSegmentNode;
HAnimSegment2511: THAnimSegmentNode;
HAnimSegment2512: THAnimSegmentNode;
HAnimSegment2513: THAnimSegmentNode;
HAnimSegment2514: THAnimSegmentNode;
HAnimSegment2515: THAnimSegmentNode;
HAnimSegment2516: THAnimSegmentNode;
HAnimSegment2517: THAnimSegmentNode;
HAnimSegment2518: THAnimSegmentNode;
HAnimSegment2519: THAnimSegmentNode;
HAnimSegment2520: THAnimSegmentNode;
HAnimSegment2521: THAnimSegmentNode;
HAnimSegment2522: THAnimSegmentNode;
HAnimSegment2523: THAnimSegmentNode;
HAnimSegment2524: THAnimSegmentNode;
HAnimSegment2525: THAnimSegmentNode;
HAnimSegment2526: THAnimSegmentNode;
HAnimSegment2527: THAnimSegmentNode;
HAnimSegment2528: THAnimSegmentNode;
HAnimSegment2529: THAnimSegmentNode;
HAnimSegment2530: THAnimSegmentNode;
HAnimSegment2531: THAnimSegmentNode;
HAnimSegment2532: THAnimSegmentNode;
HAnimSegment2533: THAnimSegmentNode;
HAnimSegment2534: THAnimSegmentNode;
HAnimSegment2535: THAnimSegmentNode;
HAnimSegment2536: THAnimSegmentNode;
HAnimSegment2537: THAnimSegmentNode;
HAnimSegment2538: THAnimSegmentNode;
HAnimSegment2539: THAnimSegmentNode;
HAnimSegment2540: THAnimSegmentNode;
HAnimSegment2541: THAnimSegmentNode;
HAnimSegment2542: THAnimSegmentNode;
HAnimSegment2543: THAnimSegmentNode;
HAnimSegment2544: THAnimSegmentNode;
HAnimSegment2545: THAnimSegmentNode;
HAnimSegment2546: THAnimSegmentNode;
HAnimSegment2547: THAnimSegmentNode;
HAnimSegment2548: THAnimSegmentNode;
HAnimSegment2549: THAnimSegmentNode;
HAnimSegment2550: THAnimSegmentNode;
HAnimSegment2551: THAnimSegmentNode;
HAnimSegment2552: THAnimSegmentNode;
HAnimSegment2553: THAnimSegmentNode;
HAnimSegment2554: THAnimSegmentNode;
HAnimSegment2555: THAnimSegmentNode;
HAnimSegment2556: THAnimSegmentNode;
HAnimSegment2557: THAnimSegmentNode;
HAnimSegment2558: THAnimSegmentNode;
HAnimSegment2559: THAnimSegmentNode;
HAnimSegment2560: THAnimSegmentNode;
HAnimSegment2561: THAnimSegmentNode;
HAnimSegment2562: THAnimSegmentNode;
HAnimSegment2563: THAnimSegmentNode;
HAnimSegment2564: THAnimSegmentNode;
HAnimSegment2565: THAnimSegmentNode;
HAnimSegment2566: THAnimSegmentNode;
HAnimSegment2567: THAnimSegmentNode;
HAnimSegment2568: THAnimSegmentNode;
HAnimSegment2569: THAnimSegmentNode;
HAnimSegment2570: THAnimSegmentNode;
HAnimSegment2571: THAnimSegmentNode;
HAnimSegment2572: THAnimSegmentNode;
HAnimSegment2573: THAnimSegmentNode;
HAnimSegment2574: THAnimSegmentNode;
HAnimSegment2575: THAnimSegmentNode;
HAnimSegment2576: THAnimSegmentNode;
HAnimSegment2577: THAnimSegmentNode;
HAnimSegment2578: THAnimSegmentNode;
HAnimSegment2579: THAnimSegmentNode;
HAnimSegment2580: THAnimSegmentNode;
HAnimSegment2581: THAnimSegmentNode;
HAnimSegment2582: THAnimSegmentNode;
HAnimSegment2583: THAnimSegmentNode;
HAnimSegment2584: THAnimSegmentNode;
HAnimSegment2585: THAnimSegmentNode;
HAnimSegment2586: THAnimSegmentNode;
HAnimSegment2587: THAnimSegmentNode;
HAnimSegment2588: THAnimSegmentNode;
HAnimSegment2589: THAnimSegmentNode;
HAnimSegment2590: THAnimSegmentNode;
HAnimSegment2591: THAnimSegmentNode;
HAnimSegment2592: THAnimSegmentNode;
HAnimSegment2593: THAnimSegmentNode;
HAnimSegment2594: THAnimSegmentNode;
HAnimSegment2595: THAnimSegmentNode;
HAnimSegment2596: THAnimSegmentNode;
HAnimSegment2597: THAnimSegmentNode;
HAnimSegment2598: THAnimSegmentNode;
HAnimSegment2599: THAnimSegmentNode;
HAnimSegment2600: THAnimSegmentNode;
HAnimSegment2601: THAnimSegmentNode;
HAnimSegment2602: THAnimSegmentNode;
HAnimSegment2603: THAnimSegmentNode;
HAnimSegment2604: THAnimSegmentNode;
Layer2605: TLayerNode;
Background2606: TBackgroundNode;
Transform2607: TTransformNode;
Group2608: TGroupNode;
CylinderSensor2609: TCylinderSensorNode;
Transform2610: TTransformNode;
Transform2611: TTransformNode;
Shape2612: TShapeNode;
Appearance2613: TAppearanceNode;
Material2614: TMaterialNode;
Extrusion2615: TExtrusionNode;
Group2616: TGroupNode;
CylinderSensor2617: TCylinderSensorNode;
Transform2618: TTransformNode;
Transform2619: TTransformNode;
Shape2620: TShapeNode;
Appearance2621: TAppearanceNode;
Material2622: TMaterialNode;
Extrusion2623: TExtrusionNode;
Group2624: TGroupNode;
CylinderSensor2625: TCylinderSensorNode;
Transform2626: TTransformNode;
Transform2627: TTransformNode;
Shape2628: TShapeNode;
Appearance2629: TAppearanceNode;
Material2630: TMaterialNode;
Extrusion2631: TExtrusionNode;
Transform2632: TTransformNode;
Shape2633: TShapeNode;
Appearance2634: TAppearanceNode;
Material2635: TMaterialNode;
Cylinder2636: TCylinderNode;
Transform2637: TTransformNode;
Shape2638: TShapeNode;
Appearance2639: TAppearanceNode;
Material2640: TMaterialNode;
Cylinder2641: TCylinderNode;
Transform2642: TTransformNode;
Shape2643: TShapeNode;
Appearance2644: TAppearanceNode;
Material2645: TMaterialNode;
Cylinder2646: TCylinderNode;
Shape2647: TShapeNode;
Appearance2648: TAppearanceNode;
Material2649: TMaterialNode;
Sphere2650: TSphereNode;
Transform2651: TTransformNode;
Shape2652: TShapeNode;
Appearance2653: TAppearanceNode;
Material2654: TMaterialNode;
Text2655: TTextNode;
FontStyle2656: TFontStyleNode;
Group2657: TGroupNode;
TouchSensor2658: TTouchSensorNode;
Transform2659: TTransformNode;
Shape2660: TShapeNode;
Appearance2661: TAppearanceNode;
Material2662: TMaterialNode;
Box2663: TBoxNode;
Transform2664: TTransformNode;
Shape2665: TShapeNode;
Appearance2666: TAppearanceNode;
Material2667: TMaterialNode;
Text2668: TTextNode;
FontStyle2669: TFontStyleNode;
Group2670: TGroupNode;
TouchSensor2671: TTouchSensorNode;
Transform2672: TTransformNode;
Shape2673: TShapeNode;
Appearance2674: TAppearanceNode;
Material2675: TMaterialNode;
Box2676: TBoxNode;
Transform2677: TTransformNode;
Shape2678: TShapeNode;
Appearance2679: TAppearanceNode;
Material2680: TMaterialNode;
Text2681: TTextNode;
FontStyle2682: TFontStyleNode;
Group2683: TGroupNode;
TouchSensor2684: TTouchSensorNode;
Transform2685: TTransformNode;
Shape2686: TShapeNode;
Appearance2687: TAppearanceNode;
Material2688: TMaterialNode;
Box2689: TBoxNode;
Transform2690: TTransformNode;
Shape2691: TShapeNode;
Appearance2692: TAppearanceNode;
Material2693: TMaterialNode;
Text2694: TTextNode;
FontStyle2695: TFontStyleNode;
Group2696: TGroupNode;
TouchSensor2697: TTouchSensorNode;
Transform2698: TTransformNode;
Shape2699: TShapeNode;
Appearance2700: TAppearanceNode;
Material2701: TMaterialNode;
Box2702: TBoxNode;
Transform2703: TTransformNode;
Shape2704: TShapeNode;
Appearance2705: TAppearanceNode;
Material2706: TMaterialNode;
Text2707: TTextNode;
FontStyle2708: TFontStyleNode;
Group2709: TGroupNode;
TouchSensor2710: TTouchSensorNode;
Transform2711: TTransformNode;
Shape2712: TShapeNode;
Appearance2713: TAppearanceNode;
Material2714: TMaterialNode;
Box2715: TBoxNode;
Transform2716: TTransformNode;
Shape2717: TShapeNode;
Appearance2718: TAppearanceNode;
Material2719: TMaterialNode;
Text2720: TTextNode;
FontStyle2721: TFontStyleNode;
Group2722: TGroupNode;
TouchSensor2723: TTouchSensorNode;
Transform2724: TTransformNode;
Shape2725: TShapeNode;
Appearance2726: TAppearanceNode;
Material2727: TMaterialNode;
Box2728: TBoxNode;
Transform2729: TTransformNode;
Shape2730: TShapeNode;
Appearance2731: TAppearanceNode;
Material2732: TMaterialNode;
Text2733: TTextNode;
FontStyle2734: TFontStyleNode;
Group2735: TGroupNode;
TouchSensor2736: TTouchSensorNode;
Transform2737: TTransformNode;
Shape2738: TShapeNode;
Appearance2739: TAppearanceNode;
Material2740: TMaterialNode;
Box2741: TBoxNode;
Transform2742: TTransformNode;
Shape2743: TShapeNode;
Appearance2744: TAppearanceNode;
Material2745: TMaterialNode;
Text2746: TTextNode;
FontStyle2747: TFontStyleNode;
Group2748: TGroupNode;
TouchSensor2749: TTouchSensorNode;
Transform2750: TTransformNode;
Shape2751: TShapeNode;
Appearance2752: TAppearanceNode;
Material2753: TMaterialNode;
Box2754: TBoxNode;
Transform2755: TTransformNode;
Shape2756: TShapeNode;
Appearance2757: TAppearanceNode;
Material2758: TMaterialNode;
Text2759: TTextNode;
FontStyle2760: TFontStyleNode;
Transform2761: TTransformNode;
Group2762: TGroupNode;
TouchSensor2763: TTouchSensorNode;
Transform2764: TTransformNode;
Shape2765: TShapeNode;
Appearance2766: TAppearanceNode;
Material2767: TMaterialNode;
Box2768: TBoxNode;
Transform2769: TTransformNode;
Shape2770: TShapeNode;
Appearance2771: TAppearanceNode;
Material2772: TMaterialNode;
Text2773: TTextNode;
FontStyle2774: TFontStyleNode;
Group2775: TGroupNode;
TouchSensor2776: TTouchSensorNode;
Transform2777: TTransformNode;
Shape2778: TShapeNode;
Appearance2779: TAppearanceNode;
Material2780: TMaterialNode;
Box2781: TBoxNode;
Transform2782: TTransformNode;
Shape2783: TShapeNode;
Appearance2784: TAppearanceNode;
Material2785: TMaterialNode;
Text2786: TTextNode;
FontStyle2787: TFontStyleNode;
Transform2788: TTransformNode;
Shape2789: TShapeNode;
Appearance2790: TAppearanceNode;
Material2791: TMaterialNode;
Text2792: TTextNode;
FontStyle2793: TFontStyleNode;
Transform2794: TTransformNode;
Transform2795: TTransformNode;
Shape2796: TShapeNode;
Appearance2797: TAppearanceNode;
Material2798: TMaterialNode;
Box2799: TBoxNode;
Transform2800: TTransformNode;
Shape2801: TShapeNode;
Appearance2802: TAppearanceNode;
Material2803: TMaterialNode;
Text2804: TTextNode;
FontStyle2805: TFontStyleNode;
Transform2806: TTransformNode;
Transform2807: TTransformNode;
Shape2808: TShapeNode;
Appearance2809: TAppearanceNode;
Material2810: TMaterialNode;
Text2811: TTextNode;
FontStyle2812: TFontStyleNode;
Transform2813: TTransformNode;
Shape2814: TShapeNode;
Appearance2815: TAppearanceNode;
Material2816: TMaterialNode;
Box2817: TBoxNode;
Transform2818: TTransformNode;
Shape2819: TShapeNode;
Appearance2820: TAppearanceNode;
Material2821: TMaterialNode;
Box2822: TBoxNode;
Transform2823: TTransformNode;
Shape2824: TShapeNode;
Appearance2825: TAppearanceNode;
Material2826: TMaterialNode;
Box2827: TBoxNode;
Group2828: TGroupNode;
PlaneSensor2829: TPlaneSensorNode;
Transform2830: TTransformNode;
Shape2831: TShapeNode;
Appearance2832: TAppearanceNode;
Material2833: TMaterialNode;
Box2834: TBoxNode;
Transform2835: TTransformNode;
Shape2836: TShapeNode;
Appearance2837: TAppearanceNode;
Material2838: TMaterialNode;
Text2839: TTextNode;
FontStyle2840: TFontStyleNode;
Transform2841: TTransformNode;
Shape2842: TShapeNode;
Appearance2843: TAppearanceNode;
Material2844: TMaterialNode;
Text2845: TTextNode;
FontStyle2846: TFontStyleNode;
Transform2847: TTransformNode;
Group2848: TGroupNode;
TouchSensor2849: TTouchSensorNode;
Shape2850: TShapeNode;
Appearance2851: TAppearanceNode;
Material2852: TMaterialNode;
Box2853: TBoxNode;
Transform2854: TTransformNode;
Shape2855: TShapeNode;
Appearance2856: TAppearanceNode;
Material2857: TMaterialNode;
Text2858: TTextNode;
FontStyle2859: TFontStyleNode;
Transform2860: TTransformNode;
Transform2861: TTransformNode;
Shape2862: TShapeNode;
Appearance2863: TAppearanceNode;
Material2864: TMaterialNode;
Text2865: TTextNode;
FontStyle2866: TFontStyleNode;
Transform2867: TTransformNode;
Shape2868: TShapeNode;
Appearance2869: TAppearanceNode;
Material2870: TMaterialNode;
Box2871: TBoxNode;
Transform2872: TTransformNode;
Shape2873: TShapeNode;
Appearance2874: TAppearanceNode;
Material2875: TMaterialNode;
Box2876: TBoxNode;
Transform2877: TTransformNode;
Shape2878: TShapeNode;
Appearance2879: TAppearanceNode;
Material2880: TMaterialNode;
Box2881: TBoxNode;
Group2882: TGroupNode;
PlaneSensor2883: TPlaneSensorNode;
Transform2884: TTransformNode;
Shape2885: TShapeNode;
Appearance2886: TAppearanceNode;
Material2887: TMaterialNode;
Box2888: TBoxNode;
Transform2889: TTransformNode;
Shape2890: TShapeNode;
Appearance2891: TAppearanceNode;
Material2892: TMaterialNode;
Text2893: TTextNode;
FontStyle2894: TFontStyleNode;
Transform2895: TTransformNode;
Shape2896: TShapeNode;
Appearance2897: TAppearanceNode;
Material2898: TMaterialNode;
Text2899: TTextNode;
FontStyle2900: TFontStyleNode;
Transform2901: TTransformNode;
Group2902: TGroupNode;
TouchSensor2903: TTouchSensorNode;
Shape2904: TShapeNode;
Appearance2905: TAppearanceNode;
Material2906: TMaterialNode;
Box2907: TBoxNode;
Transform2908: TTransformNode;
Shape2909: TShapeNode;
Appearance2910: TAppearanceNode;
Material2911: TMaterialNode;
Text2912: TTextNode;
FontStyle2913: TFontStyleNode;
Transform2914: TTransformNode;
Transform2915: TTransformNode;
Shape2916: TShapeNode;
Appearance2917: TAppearanceNode;
Material2918: TMaterialNode;
Text2919: TTextNode;
FontStyle2920: TFontStyleNode;
Transform2921: TTransformNode;
Shape2922: TShapeNode;
Appearance2923: TAppearanceNode;
Material2924: TMaterialNode;
Box2925: TBoxNode;
Transform2926: TTransformNode;
Shape2927: TShapeNode;
Appearance2928: TAppearanceNode;
Material2929: TMaterialNode;
Box2930: TBoxNode;
Transform2931: TTransformNode;
Shape2932: TShapeNode;
Appearance2933: TAppearanceNode;
Material2934: TMaterialNode;
Box2935: TBoxNode;
Group2936: TGroupNode;
PlaneSensor2937: TPlaneSensorNode;
Transform2938: TTransformNode;
Shape2939: TShapeNode;
Appearance2940: TAppearanceNode;
Material2941: TMaterialNode;
Box2942: TBoxNode;
Transform2943: TTransformNode;
Shape2944: TShapeNode;
Appearance2945: TAppearanceNode;
Material2946: TMaterialNode;
Text2947: TTextNode;
FontStyle2948: TFontStyleNode;
Transform2949: TTransformNode;
Shape2950: TShapeNode;
Appearance2951: TAppearanceNode;
Material2952: TMaterialNode;
Text2953: TTextNode;
FontStyle2954: TFontStyleNode;
Transform2955: TTransformNode;
Group2956: TGroupNode;
TouchSensor2957: TTouchSensorNode;
Shape2958: TShapeNode;
Appearance2959: TAppearanceNode;
Material2960: TMaterialNode;
Box2961: TBoxNode;
Transform2962: TTransformNode;
Shape2963: TShapeNode;
Appearance2964: TAppearanceNode;
Material2965: TMaterialNode;
Text2966: TTextNode;
FontStyle2967: TFontStyleNode;
Transform2968: TTransformNode;
Shape2969: TShapeNode;
Appearance2970: TAppearanceNode;
Material2971: TMaterialNode;
Text2972: TTextNode;
FontStyle2973: TFontStyleNode;
Transform2974: TTransformNode;
Shape2975: TShapeNode;
Appearance2976: TAppearanceNode;
Material2977: TMaterialNode;
Box2978: TBoxNode;
Transform2979: TTransformNode;
Shape2980: TShapeNode;
Appearance2981: TAppearanceNode;
Material2982: TMaterialNode;
Text2983: TTextNode;
FontStyle2984: TFontStyleNode;
Transform2985: TTransformNode;
Transform2986: TTransformNode;
Shape2987: TShapeNode;
Appearance2988: TAppearanceNode;
Material2989: TMaterialNode;
Box2990: TBoxNode;
Transform2991: TTransformNode;
Shape2992: TShapeNode;
Appearance2993: TAppearanceNode;
Material2994: TMaterialNode;
Text2995: TTextNode;
FontStyle2996: TFontStyleNode;
Transform2997: TTransformNode;
Transform2998: TTransformNode;
Shape2999: TShapeNode;
Appearance3000: TAppearanceNode;
Material3001: TMaterialNode;
Text3002: TTextNode;
FontStyle3003: TFontStyleNode;
Transform3004: TTransformNode;
Shape3005: TShapeNode;
Appearance3006: TAppearanceNode;
Material3007: TMaterialNode;
Box3008: TBoxNode;
Transform3009: TTransformNode;
Shape3010: TShapeNode;
Appearance3011: TAppearanceNode;
Material3012: TMaterialNode;
Box3013: TBoxNode;
Transform3014: TTransformNode;
Shape3015: TShapeNode;
Appearance3016: TAppearanceNode;
Material3017: TMaterialNode;
Box3018: TBoxNode;
Transform3019: TTransformNode;
Shape3020: TShapeNode;
Appearance3021: TAppearanceNode;
Material3022: TMaterialNode;
Box3023: TBoxNode;
Group3024: TGroupNode;
PlaneSensor3025: TPlaneSensorNode;
Transform3026: TTransformNode;
Shape3027: TShapeNode;
Appearance3028: TAppearanceNode;
Material3029: TMaterialNode;
Box3030: TBoxNode;
Transform3031: TTransformNode;
Shape3032: TShapeNode;
Appearance3033: TAppearanceNode;
Material3034: TMaterialNode;
Text3035: TTextNode;
FontStyle3036: TFontStyleNode;
Transform3037: TTransformNode;
Shape3038: TShapeNode;
Appearance3039: TAppearanceNode;
Material3040: TMaterialNode;
Text3041: TTextNode;
FontStyle3042: TFontStyleNode;
Transform3043: TTransformNode;
Group3044: TGroupNode;
TouchSensor3045: TTouchSensorNode;
Shape3046: TShapeNode;
Appearance3047: TAppearanceNode;
Material3048: TMaterialNode;
Box3049: TBoxNode;
Transform3050: TTransformNode;
Shape3051: TShapeNode;
Appearance3052: TAppearanceNode;
Material3053: TMaterialNode;
Text3054: TTextNode;
FontStyle3055: TFontStyleNode;
Transform3056: TTransformNode;
Transform3057: TTransformNode;
Shape3058: TShapeNode;
Appearance3059: TAppearanceNode;
Material3060: TMaterialNode;
Text3061: TTextNode;
FontStyle3062: TFontStyleNode;
Transform3063: TTransformNode;
Shape3064: TShapeNode;
Appearance3065: TAppearanceNode;
Material3066: TMaterialNode;
Box3067: TBoxNode;
Transform3068: TTransformNode;
Shape3069: TShapeNode;
Appearance3070: TAppearanceNode;
Material3071: TMaterialNode;
Box3072: TBoxNode;
Transform3073: TTransformNode;
Shape3074: TShapeNode;
Appearance3075: TAppearanceNode;
Material3076: TMaterialNode;
Box3077: TBoxNode;
Transform3078: TTransformNode;
Shape3079: TShapeNode;
Appearance3080: TAppearanceNode;
Material3081: TMaterialNode;
Box3082: TBoxNode;
Group3083: TGroupNode;
PlaneSensor3084: TPlaneSensorNode;
Transform3085: TTransformNode;
Shape3086: TShapeNode;
Appearance3087: TAppearanceNode;
Material3088: TMaterialNode;
Box3089: TBoxNode;
Transform3090: TTransformNode;
Shape3091: TShapeNode;
Appearance3092: TAppearanceNode;
Material3093: TMaterialNode;
Text3094: TTextNode;
FontStyle3095: TFontStyleNode;
Transform3096: TTransformNode;
Shape3097: TShapeNode;
Appearance3098: TAppearanceNode;
Material3099: TMaterialNode;
Text3100: TTextNode;
FontStyle3101: TFontStyleNode;
Transform3102: TTransformNode;
Group3103: TGroupNode;
TouchSensor3104: TTouchSensorNode;
Shape3105: TShapeNode;
Appearance3106: TAppearanceNode;
Material3107: TMaterialNode;
Box3108: TBoxNode;
Transform3109: TTransformNode;
Shape3110: TShapeNode;
Appearance3111: TAppearanceNode;
Material3112: TMaterialNode;
Text3113: TTextNode;
FontStyle3114: TFontStyleNode;
Transform3115: TTransformNode;
Transform3116: TTransformNode;
Shape3117: TShapeNode;
Appearance3118: TAppearanceNode;
Material3119: TMaterialNode;
Text3120: TTextNode;
FontStyle3121: TFontStyleNode;
Transform3122: TTransformNode;
Shape3123: TShapeNode;
Appearance3124: TAppearanceNode;
Material3125: TMaterialNode;
Box3126: TBoxNode;
Transform3127: TTransformNode;
Shape3128: TShapeNode;
Appearance3129: TAppearanceNode;
Material3130: TMaterialNode;
Box3131: TBoxNode;
Transform3132: TTransformNode;
Shape3133: TShapeNode;
Appearance3134: TAppearanceNode;
Material3135: TMaterialNode;
Box3136: TBoxNode;
Transform3137: TTransformNode;
Shape3138: TShapeNode;
Appearance3139: TAppearanceNode;
Material3140: TMaterialNode;
Box3141: TBoxNode;
Group3142: TGroupNode;
PlaneSensor3143: TPlaneSensorNode;
Transform3144: TTransformNode;
Shape3145: TShapeNode;
Appearance3146: TAppearanceNode;
Material3147: TMaterialNode;
Box3148: TBoxNode;
Transform3149: TTransformNode;
Shape3150: TShapeNode;
Appearance3151: TAppearanceNode;
Material3152: TMaterialNode;
Text3153: TTextNode;
FontStyle3154: TFontStyleNode;
Transform3155: TTransformNode;
Shape3156: TShapeNode;
Appearance3157: TAppearanceNode;
Material3158: TMaterialNode;
Text3159: TTextNode;
FontStyle3160: TFontStyleNode;
Transform3161: TTransformNode;
Group3162: TGroupNode;
TouchSensor3163: TTouchSensorNode;
Shape3164: TShapeNode;
Appearance3165: TAppearanceNode;
Material3166: TMaterialNode;
Box3167: TBoxNode;
Transform3168: TTransformNode;
Shape3169: TShapeNode;
Appearance3170: TAppearanceNode;
Material3171: TMaterialNode;
Text3172: TTextNode;
FontStyle3173: TFontStyleNode;
Group3174: TGroupNode;
TouchSensor3175: TTouchSensorNode;
Transform3176: TTransformNode;
Shape3177: TShapeNode;
Appearance3178: TAppearanceNode;
Material3179: TMaterialNode;
Box3180: TBoxNode;
Transform3181: TTransformNode;
Shape3182: TShapeNode;
Appearance3183: TAppearanceNode;
Material3184: TMaterialNode;
Text3185: TTextNode;
FontStyle3186: TFontStyleNode;
Transform3187: TTransformNode;
Shape3188: TShapeNode;
Appearance3189: TAppearanceNode;
Material3190: TMaterialNode;
Text3191: TTextNode;
FontStyle3192: TFontStyleNode;
Transform3193: TTransformNode;
Shape3194: TShapeNode;
Appearance3195: TAppearanceNode;
Material3196: TMaterialNode;
Text3197: TTextNode;
FontStyle3198: TFontStyleNode;
Switch3199: TSwitchNode;
Transform3200: TTransformNode;
Transform3201: TTransformNode;
Shape3202: TShapeNode;
Appearance3203: TAppearanceNode;
Material3204: TMaterialNode;
Box3205: TBoxNode;
Transform3206: TTransformNode;
Shape3207: TShapeNode;
Appearance3208: TAppearanceNode;
Material3209: TMaterialNode;
Text3210: TTextNode;
FontStyle3211: TFontStyleNode;
StringSensor3212: TStringSensorNode;
StringSensor3213: TStringSensorNode;
Script3214: TScriptNode;
MFNode3215: TMFNode;
HAnimJoint3216: THAnimJointNode;
HAnimJoint3217: THAnimJointNode;
HAnimJoint3218: THAnimJointNode;
HAnimJoint3219: THAnimJointNode;
HAnimJoint3220: THAnimJointNode;
HAnimJoint3221: THAnimJointNode;
HAnimJoint3222: THAnimJointNode;
HAnimJoint3223: THAnimJointNode;
HAnimJoint3224: THAnimJointNode;
HAnimJoint3225: THAnimJointNode;
HAnimJoint3226: THAnimJointNode;
HAnimJoint3227: THAnimJointNode;
HAnimJoint3228: THAnimJointNode;
HAnimJoint3229: THAnimJointNode;
HAnimJoint3230: THAnimJointNode;
HAnimJoint3231: THAnimJointNode;
HAnimJoint3232: THAnimJointNode;
HAnimJoint3233: THAnimJointNode;
HAnimJoint3234: THAnimJointNode;
HAnimJoint3235: THAnimJointNode;
HAnimJoint3236: THAnimJointNode;
HAnimJoint3237: THAnimJointNode;
HAnimJoint3238: THAnimJointNode;
HAnimJoint3239: THAnimJointNode;
HAnimJoint3240: THAnimJointNode;
HAnimJoint3241: THAnimJointNode;
HAnimJoint3242: THAnimJointNode;
HAnimJoint3243: THAnimJointNode;
HAnimJoint3244: THAnimJointNode;
HAnimJoint3245: THAnimJointNode;
HAnimJoint3246: THAnimJointNode;
HAnimJoint3247: THAnimJointNode;
HAnimJoint3248: THAnimJointNode;
HAnimJoint3249: THAnimJointNode;
HAnimJoint3250: THAnimJointNode;
HAnimJoint3251: THAnimJointNode;
HAnimJoint3252: THAnimJointNode;
HAnimJoint3253: THAnimJointNode;
HAnimJoint3254: THAnimJointNode;
HAnimJoint3255: THAnimJointNode;
HAnimJoint3256: THAnimJointNode;
HAnimJoint3257: THAnimJointNode;
HAnimJoint3258: THAnimJointNode;
HAnimJoint3259: THAnimJointNode;
HAnimJoint3260: THAnimJointNode;
HAnimJoint3261: THAnimJointNode;
HAnimJoint3262: THAnimJointNode;
HAnimJoint3263: THAnimJointNode;
HAnimJoint3264: THAnimJointNode;
HAnimJoint3265: THAnimJointNode;
HAnimJoint3266: THAnimJointNode;
HAnimJoint3267: THAnimJointNode;
HAnimJoint3268: THAnimJointNode;
HAnimJoint3269: THAnimJointNode;
HAnimJoint3270: THAnimJointNode;
HAnimJoint3271: THAnimJointNode;
HAnimJoint3272: THAnimJointNode;
HAnimJoint3273: THAnimJointNode;
HAnimJoint3274: THAnimJointNode;
HAnimJoint3275: THAnimJointNode;
HAnimJoint3276: THAnimJointNode;
HAnimJoint3277: THAnimJointNode;
HAnimJoint3278: THAnimJointNode;
HAnimJoint3279: THAnimJointNode;
HAnimJoint3280: THAnimJointNode;
HAnimJoint3281: THAnimJointNode;
HAnimJoint3282: THAnimJointNode;
HAnimJoint3283: THAnimJointNode;
HAnimJoint3284: THAnimJointNode;
HAnimJoint3285: THAnimJointNode;
HAnimJoint3286: THAnimJointNode;
HAnimJoint3287: THAnimJointNode;
HAnimJoint3288: THAnimJointNode;
HAnimJoint3289: THAnimJointNode;
HAnimJoint3290: THAnimJointNode;
HAnimJoint3291: THAnimJointNode;
HAnimJoint3292: THAnimJointNode;
HAnimJoint3293: THAnimJointNode;
HAnimJoint3294: THAnimJointNode;
HAnimJoint3295: THAnimJointNode;
HAnimJoint3296: THAnimJointNode;
HAnimJoint3297: THAnimJointNode;
HAnimJoint3298: THAnimJointNode;
HAnimJoint3299: THAnimJointNode;
HAnimJoint3300: THAnimJointNode;
HAnimJoint3301: THAnimJointNode;
HAnimJoint3302: THAnimJointNode;
HAnimJoint3303: THAnimJointNode;
HAnimJoint3304: THAnimJointNode;
HAnimJoint3305: THAnimJointNode;
HAnimJoint3306: THAnimJointNode;
HAnimJoint3307: THAnimJointNode;
HAnimJoint3308: THAnimJointNode;
HAnimJoint3309: THAnimJointNode;
HAnimJoint3310: THAnimJointNode;
HAnimJoint3311: THAnimJointNode;
HAnimJoint3312: THAnimJointNode;
HAnimJoint3313: THAnimJointNode;
HAnimJoint3314: THAnimJointNode;
HAnimJoint3315: THAnimJointNode;
HAnimJoint3316: THAnimJointNode;
HAnimJoint3317: THAnimJointNode;
HAnimJoint3318: THAnimJointNode;
HAnimJoint3319: THAnimJointNode;
HAnimJoint3320: THAnimJointNode;
HAnimJoint3321: THAnimJointNode;
HAnimJoint3322: THAnimJointNode;
HAnimJoint3323: THAnimJointNode;
HAnimJoint3324: THAnimJointNode;
HAnimJoint3325: THAnimJointNode;
HAnimJoint3326: THAnimJointNode;
HAnimJoint3327: THAnimJointNode;
HAnimJoint3328: THAnimJointNode;
HAnimJoint3329: THAnimJointNode;
HAnimJoint3330: THAnimJointNode;
HAnimJoint3331: THAnimJointNode;
HAnimJoint3332: THAnimJointNode;
HAnimJoint3333: THAnimJointNode;
HAnimJoint3334: THAnimJointNode;
HAnimJoint3335: THAnimJointNode;
HAnimJoint3336: THAnimJointNode;
HAnimJoint3337: THAnimJointNode;
HAnimJoint3338: THAnimJointNode;
HAnimJoint3339: THAnimJointNode;
HAnimJoint3340: THAnimJointNode;
HAnimJoint3341: THAnimJointNode;
HAnimJoint3342: THAnimJointNode;
HAnimJoint3343: THAnimJointNode;
HAnimJoint3344: THAnimJointNode;
HAnimJoint3345: THAnimJointNode;
HAnimJoint3346: THAnimJointNode;
HAnimJoint3347: THAnimJointNode;
HAnimJoint3348: THAnimJointNode;
HAnimJoint3349: THAnimJointNode;
HAnimJoint3350: THAnimJointNode;
HAnimJoint3351: THAnimJointNode;
HAnimJoint3352: THAnimJointNode;
HAnimJoint3353: THAnimJointNode;
HAnimJoint3354: THAnimJointNode;
HAnimJoint3355: THAnimJointNode;
HAnimJoint3356: THAnimJointNode;
HAnimJoint3357: THAnimJointNode;
HAnimJoint3358: THAnimJointNode;
HAnimJoint3359: THAnimJointNode;
HAnimJoint3360: THAnimJointNode;
HAnimJoint3361: THAnimJointNode;
MFNode3362: TMFNode;
Material3363: TMaterialNode;
Material3364: TMaterialNode;
Material3365: TMaterialNode;
Material3366: TMaterialNode;
Material3367: TMaterialNode;
Material3368: TMaterialNode;
Material3369: TMaterialNode;
Material3370: TMaterialNode;
Material3371: TMaterialNode;
Material3372: TMaterialNode;
Material3373: TMaterialNode;
Material3374: TMaterialNode;
Material3375: TMaterialNode;
Material3376: TMaterialNode;
Material3377: TMaterialNode;
Material3378: TMaterialNode;
Material3379: TMaterialNode;
Material3380: TMaterialNode;
Material3381: TMaterialNode;
Material3382: TMaterialNode;
Material3383: TMaterialNode;
Material3384: TMaterialNode;
Material3385: TMaterialNode;
Material3386: TMaterialNode;
Material3387: TMaterialNode;
Material3388: TMaterialNode;
Material3389: TMaterialNode;
Material3390: TMaterialNode;
Material3391: TMaterialNode;
Material3392: TMaterialNode;
Material3393: TMaterialNode;
Material3394: TMaterialNode;
Material3395: TMaterialNode;
Material3396: TMaterialNode;
Material3397: TMaterialNode;
Material3398: TMaterialNode;
Material3399: TMaterialNode;
Material3400: TMaterialNode;
Material3401: TMaterialNode;
Material3402: TMaterialNode;
Material3403: TMaterialNode;
Material3404: TMaterialNode;
Material3405: TMaterialNode;
Material3406: TMaterialNode;
Material3407: TMaterialNode;
Material3408: TMaterialNode;
Material3409: TMaterialNode;
Material3410: TMaterialNode;
Material3411: TMaterialNode;
Material3412: TMaterialNode;
Material3413: TMaterialNode;
Material3414: TMaterialNode;
Material3415: TMaterialNode;
Material3416: TMaterialNode;
Material3417: TMaterialNode;
Material3418: TMaterialNode;
Material3419: TMaterialNode;
Material3420: TMaterialNode;
Material3421: TMaterialNode;
Material3422: TMaterialNode;
Material3423: TMaterialNode;
Material3424: TMaterialNode;
Material3425: TMaterialNode;
Material3426: TMaterialNode;
Material3427: TMaterialNode;
Material3428: TMaterialNode;
Material3429: TMaterialNode;
Material3430: TMaterialNode;
Material3431: TMaterialNode;
Material3432: TMaterialNode;
Material3433: TMaterialNode;
Material3434: TMaterialNode;
Material3435: TMaterialNode;
Material3436: TMaterialNode;
Material3437: TMaterialNode;
Material3438: TMaterialNode;
Material3439: TMaterialNode;
Material3440: TMaterialNode;
Material3441: TMaterialNode;
Material3442: TMaterialNode;
Material3443: TMaterialNode;
Material3444: TMaterialNode;
Material3445: TMaterialNode;
Material3446: TMaterialNode;
Material3447: TMaterialNode;
Material3448: TMaterialNode;
Material3449: TMaterialNode;
Material3450: TMaterialNode;
Material3451: TMaterialNode;
Material3452: TMaterialNode;
Material3453: TMaterialNode;
Material3454: TMaterialNode;
Material3455: TMaterialNode;
Material3456: TMaterialNode;
Material3457: TMaterialNode;
Material3458: TMaterialNode;
Material3459: TMaterialNode;
Material3460: TMaterialNode;
Material3461: TMaterialNode;
Material3462: TMaterialNode;
Material3463: TMaterialNode;
Material3464: TMaterialNode;
Material3465: TMaterialNode;
Material3466: TMaterialNode;
Material3467: TMaterialNode;
Material3468: TMaterialNode;
Material3469: TMaterialNode;
Material3470: TMaterialNode;
Material3471: TMaterialNode;
Material3472: TMaterialNode;
Material3473: TMaterialNode;
Material3474: TMaterialNode;
Material3475: TMaterialNode;
Material3476: TMaterialNode;
Material3477: TMaterialNode;
Material3478: TMaterialNode;
Material3479: TMaterialNode;
Material3480: TMaterialNode;
Material3481: TMaterialNode;
Material3482: TMaterialNode;
Material3483: TMaterialNode;
Material3484: TMaterialNode;
Material3485: TMaterialNode;
Material3486: TMaterialNode;
Material3487: TMaterialNode;
Material3488: TMaterialNode;
Material3489: TMaterialNode;
Material3490: TMaterialNode;
Material3491: TMaterialNode;
Material3492: TMaterialNode;
Material3493: TMaterialNode;
Material3494: TMaterialNode;
Material3495: TMaterialNode;
Material3496: TMaterialNode;
Material3497: TMaterialNode;
Material3498: TMaterialNode;
Material3499: TMaterialNode;
Material3500: TMaterialNode;
Material3501: TMaterialNode;
Material3502: TMaterialNode;
Material3503: TMaterialNode;
Material3504: TMaterialNode;
Material3505: TMaterialNode;
Material3506: TMaterialNode;
Material3507: TMaterialNode;
Material3508: TMaterialNode;
MFNode3509: TMFNode;
Material3510: TMaterialNode;
Material3511: TMaterialNode;
Material3512: TMaterialNode;
Material3513: TMaterialNode;
Material3514: TMaterialNode;
Material3515: TMaterialNode;
Material3516: TMaterialNode;
Material3517: TMaterialNode;
Material3518: TMaterialNode;
Material3519: TMaterialNode;
Material3520: TMaterialNode;
Material3521: TMaterialNode;
Material3522: TMaterialNode;
Material3523: TMaterialNode;
Material3524: TMaterialNode;
Material3525: TMaterialNode;
Material3526: TMaterialNode;
Material3527: TMaterialNode;
Material3528: TMaterialNode;
Material3529: TMaterialNode;
Material3530: TMaterialNode;
Material3531: TMaterialNode;
Material3532: TMaterialNode;
Material3533: TMaterialNode;
Material3534: TMaterialNode;
Material3535: TMaterialNode;
Material3536: TMaterialNode;
Material3537: TMaterialNode;
Material3538: TMaterialNode;
Material3539: TMaterialNode;
Material3540: TMaterialNode;
Material3541: TMaterialNode;
Material3542: TMaterialNode;
Material3543: TMaterialNode;
Material3544: TMaterialNode;
Material3545: TMaterialNode;
Material3546: TMaterialNode;
Material3547: TMaterialNode;
Material3548: TMaterialNode;
Material3549: TMaterialNode;
Material3550: TMaterialNode;
Material3551: TMaterialNode;
Material3552: TMaterialNode;
Material3553: TMaterialNode;
Material3554: TMaterialNode;
Material3555: TMaterialNode;
Material3556: TMaterialNode;
Material3557: TMaterialNode;
Material3558: TMaterialNode;
Material3559: TMaterialNode;
Material3560: TMaterialNode;
Material3561: TMaterialNode;
Material3562: TMaterialNode;
Material3563: TMaterialNode;
Material3564: TMaterialNode;
Material3565: TMaterialNode;
Material3566: TMaterialNode;
Material3567: TMaterialNode;
Material3568: TMaterialNode;
Material3569: TMaterialNode;
Material3570: TMaterialNode;
Material3571: TMaterialNode;
Material3572: TMaterialNode;
Material3573: TMaterialNode;
Material3574: TMaterialNode;
Material3575: TMaterialNode;
Material3576: TMaterialNode;
Material3577: TMaterialNode;
Material3578: TMaterialNode;
Material3579: TMaterialNode;
Material3580: TMaterialNode;
Material3581: TMaterialNode;
Material3582: TMaterialNode;
Material3583: TMaterialNode;
Material3584: TMaterialNode;
Material3585: TMaterialNode;
Material3586: TMaterialNode;
Material3587: TMaterialNode;
Material3588: TMaterialNode;
Material3589: TMaterialNode;
Material3590: TMaterialNode;
Material3591: TMaterialNode;
Material3592: TMaterialNode;
Material3593: TMaterialNode;
Material3594: TMaterialNode;
Material3595: TMaterialNode;
Material3596: TMaterialNode;
Material3597: TMaterialNode;
Material3598: TMaterialNode;
Material3599: TMaterialNode;
Material3600: TMaterialNode;
Material3601: TMaterialNode;
Material3602: TMaterialNode;
Material3603: TMaterialNode;
Material3604: TMaterialNode;
Material3605: TMaterialNode;
Material3606: TMaterialNode;
Material3607: TMaterialNode;
Material3608: TMaterialNode;
Material3609: TMaterialNode;
Material3610: TMaterialNode;
Material3611: TMaterialNode;
Material3612: TMaterialNode;
Material3613: TMaterialNode;
Material3614: TMaterialNode;
Material3615: TMaterialNode;
Material3616: TMaterialNode;
Material3617: TMaterialNode;
Material3618: TMaterialNode;
Material3619: TMaterialNode;
Material3620: TMaterialNode;
Material3621: TMaterialNode;
Material3622: TMaterialNode;
Material3623: TMaterialNode;
Material3624: TMaterialNode;
Material3625: TMaterialNode;
Material3626: TMaterialNode;
Material3627: TMaterialNode;
Material3628: TMaterialNode;
Material3629: TMaterialNode;
Material3630: TMaterialNode;
Material3631: TMaterialNode;
Material3632: TMaterialNode;
Material3633: TMaterialNode;
Material3634: TMaterialNode;
Material3635: TMaterialNode;
Material3636: TMaterialNode;
Material3637: TMaterialNode;
Material3638: TMaterialNode;
Material3639: TMaterialNode;
Material3640: TMaterialNode;
Material3641: TMaterialNode;
Material3642: TMaterialNode;
Material3643: TMaterialNode;
Material3644: TMaterialNode;
Material3645: TMaterialNode;
Material3646: TMaterialNode;
Material3647: TMaterialNode;
Material3648: TMaterialNode;
Material3649: TMaterialNode;
Material3650: TMaterialNode;
Material3651: TMaterialNode;
Material3652: TMaterialNode;
Material3653: TMaterialNode;
Material3654: TMaterialNode;
Material3655: TMaterialNode;
MFNode3656: TMFNode;
CylinderSensor3657: TCylinderSensorNode;
CylinderSensor3658: TCylinderSensorNode;
CylinderSensor3659: TCylinderSensorNode;
MFNode3660: TMFNode;
Transform3661: TTransformNode;
Transform3662: TTransformNode;
Transform3663: TTransformNode;
MFNode3664: TMFNode;
Material3665: TMaterialNode;
Material3666: TMaterialNode;
Material3667: TMaterialNode;
SFNode3668: TSFNode;
Text3669: TTextNode;
SFNode3670: TSFNode;
HAnimHumanoid3671: THAnimHumanoidNode;
SFNode3672: TSFNode;
Text3673: TTextNode;
MFNode3674: TMFNode;
Transform3675: TTransformNode;
Transform3676: TTransformNode;
Transform3677: TTransformNode;
Transform3678: TTransformNode;
Transform3679: TTransformNode;
Transform3680: TTransformNode;
Transform3681: TTransformNode;
Transform3682: TTransformNode;
Transform3683: TTransformNode;
Transform3684: TTransformNode;
Transform3685: TTransformNode;
Transform3686: TTransformNode;
Transform3687: TTransformNode;
Transform3688: TTransformNode;
Transform3689: TTransformNode;
Transform3690: TTransformNode;
Transform3691: TTransformNode;
Transform3692: TTransformNode;
Transform3693: TTransformNode;
Transform3694: TTransformNode;
Transform3695: TTransformNode;
Transform3696: TTransformNode;
Transform3697: TTransformNode;
Transform3698: TTransformNode;
Transform3699: TTransformNode;
Transform3700: TTransformNode;
Transform3701: TTransformNode;
Transform3702: TTransformNode;
Transform3703: TTransformNode;
Transform3704: TTransformNode;
Transform3705: TTransformNode;
Transform3706: TTransformNode;
Transform3707: TTransformNode;
Transform3708: TTransformNode;
Transform3709: TTransformNode;
Transform3710: TTransformNode;
Transform3711: TTransformNode;
Transform3712: TTransformNode;
Transform3713: TTransformNode;
Transform3714: TTransformNode;
Transform3715: TTransformNode;
Transform3716: TTransformNode;
Transform3717: TTransformNode;
Transform3718: TTransformNode;
Transform3719: TTransformNode;
Transform3720: TTransformNode;
Transform3721: TTransformNode;
Transform3722: TTransformNode;
Transform3723: TTransformNode;
Transform3724: TTransformNode;
Transform3725: TTransformNode;
Transform3726: TTransformNode;
Transform3727: TTransformNode;
Transform3728: TTransformNode;
Transform3729: TTransformNode;
Transform3730: TTransformNode;
Transform3731: TTransformNode;
Transform3732: TTransformNode;
Transform3733: TTransformNode;
Transform3734: TTransformNode;
Transform3735: TTransformNode;
Transform3736: TTransformNode;
Transform3737: TTransformNode;
Transform3738: TTransformNode;
Transform3739: TTransformNode;
Transform3740: TTransformNode;
Transform3741: TTransformNode;
Transform3742: TTransformNode;
Transform3743: TTransformNode;
Transform3744: TTransformNode;
Transform3745: TTransformNode;
Transform3746: TTransformNode;
Transform3747: TTransformNode;
Transform3748: TTransformNode;
Transform3749: TTransformNode;
Transform3750: TTransformNode;
Transform3751: TTransformNode;
Transform3752: TTransformNode;
Transform3753: TTransformNode;
Transform3754: TTransformNode;
Transform3755: TTransformNode;
Transform3756: TTransformNode;
Transform3757: TTransformNode;
Transform3758: TTransformNode;
Transform3759: TTransformNode;
Transform3760: TTransformNode;
Transform3761: TTransformNode;
Transform3762: TTransformNode;
Transform3763: TTransformNode;
Transform3764: TTransformNode;
Transform3765: TTransformNode;
Transform3766: TTransformNode;
Transform3767: TTransformNode;
Transform3768: TTransformNode;
Transform3769: TTransformNode;
Transform3770: TTransformNode;
Transform3771: TTransformNode;
Transform3772: TTransformNode;
Transform3773: TTransformNode;
Transform3774: TTransformNode;
Transform3775: TTransformNode;
Transform3776: TTransformNode;
Transform3777: TTransformNode;
Transform3778: TTransformNode;
Transform3779: TTransformNode;
Transform3780: TTransformNode;
Transform3781: TTransformNode;
Transform3782: TTransformNode;
Transform3783: TTransformNode;
Transform3784: TTransformNode;
Transform3785: TTransformNode;
Transform3786: TTransformNode;
Transform3787: TTransformNode;
Transform3788: TTransformNode;
Transform3789: TTransformNode;
Transform3790: TTransformNode;
Transform3791: TTransformNode;
Transform3792: TTransformNode;
Transform3793: TTransformNode;
Transform3794: TTransformNode;
Transform3795: TTransformNode;
Transform3796: TTransformNode;
Transform3797: TTransformNode;
Transform3798: TTransformNode;
Transform3799: TTransformNode;
Transform3800: TTransformNode;
Transform3801: TTransformNode;
Transform3802: TTransformNode;
Transform3803: TTransformNode;
Transform3804: TTransformNode;
Transform3805: TTransformNode;
Transform3806: TTransformNode;
Transform3807: TTransformNode;
Transform3808: TTransformNode;
Transform3809: TTransformNode;
Transform3810: TTransformNode;
Transform3811: TTransformNode;
Transform3812: TTransformNode;
Transform3813: TTransformNode;
Transform3814: TTransformNode;
Transform3815: TTransformNode;
Transform3816: TTransformNode;
Transform3817: TTransformNode;
Transform3818: TTransformNode;
Transform3819: TTransformNode;
Transform3820: TTransformNode;
MFNode3821: TMFNode;
Coordinate3822: TCoordinateNode;
Coordinate3823: TCoordinateNode;
Coordinate3824: TCoordinateNode;
Coordinate3825: TCoordinateNode;
Coordinate3826: TCoordinateNode;
Coordinate3827: TCoordinateNode;
Coordinate3828: TCoordinateNode;
Coordinate3829: TCoordinateNode;
Coordinate3830: TCoordinateNode;
Coordinate3831: TCoordinateNode;
Coordinate3832: TCoordinateNode;
Coordinate3833: TCoordinateNode;
Coordinate3834: TCoordinateNode;
Coordinate3835: TCoordinateNode;
Coordinate3836: TCoordinateNode;
Coordinate3837: TCoordinateNode;
Coordinate3838: TCoordinateNode;
Coordinate3839: TCoordinateNode;
Coordinate3840: TCoordinateNode;
Coordinate3841: TCoordinateNode;
Coordinate3842: TCoordinateNode;
Coordinate3843: TCoordinateNode;
Coordinate3844: TCoordinateNode;
Coordinate3845: TCoordinateNode;
Coordinate3846: TCoordinateNode;
Coordinate3847: TCoordinateNode;
Coordinate3848: TCoordinateNode;
Coordinate3849: TCoordinateNode;
Coordinate3850: TCoordinateNode;
Coordinate3851: TCoordinateNode;
Coordinate3852: TCoordinateNode;
Coordinate3853: TCoordinateNode;
Coordinate3854: TCoordinateNode;
Coordinate3855: TCoordinateNode;
Coordinate3856: TCoordinateNode;
Coordinate3857: TCoordinateNode;
Coordinate3858: TCoordinateNode;
Coordinate3859: TCoordinateNode;
Coordinate3860: TCoordinateNode;
Coordinate3861: TCoordinateNode;
Coordinate3862: TCoordinateNode;
Coordinate3863: TCoordinateNode;
Coordinate3864: TCoordinateNode;
Coordinate3865: TCoordinateNode;
Coordinate3866: TCoordinateNode;
Coordinate3867: TCoordinateNode;
Coordinate3868: TCoordinateNode;
Coordinate3869: TCoordinateNode;
Coordinate3870: TCoordinateNode;
Coordinate3871: TCoordinateNode;
Coordinate3872: TCoordinateNode;
Coordinate3873: TCoordinateNode;
Coordinate3874: TCoordinateNode;
Coordinate3875: TCoordinateNode;
Coordinate3876: TCoordinateNode;
Coordinate3877: TCoordinateNode;
Coordinate3878: TCoordinateNode;
Coordinate3879: TCoordinateNode;
Coordinate3880: TCoordinateNode;
Coordinate3881: TCoordinateNode;
Coordinate3882: TCoordinateNode;
Coordinate3883: TCoordinateNode;
Coordinate3884: TCoordinateNode;
Coordinate3885: TCoordinateNode;
Coordinate3886: TCoordinateNode;
Coordinate3887: TCoordinateNode;
Coordinate3888: TCoordinateNode;
Coordinate3889: TCoordinateNode;
Coordinate3890: TCoordinateNode;
Coordinate3891: TCoordinateNode;
Coordinate3892: TCoordinateNode;
Coordinate3893: TCoordinateNode;
Coordinate3894: TCoordinateNode;
Coordinate3895: TCoordinateNode;
Coordinate3896: TCoordinateNode;
Coordinate3897: TCoordinateNode;
Coordinate3898: TCoordinateNode;
Coordinate3899: TCoordinateNode;
Coordinate3900: TCoordinateNode;
Coordinate3901: TCoordinateNode;
Coordinate3902: TCoordinateNode;
Coordinate3903: TCoordinateNode;
Coordinate3904: TCoordinateNode;
Coordinate3905: TCoordinateNode;
Coordinate3906: TCoordinateNode;
Coordinate3907: TCoordinateNode;
Coordinate3908: TCoordinateNode;
Coordinate3909: TCoordinateNode;
Coordinate3910: TCoordinateNode;
Coordinate3911: TCoordinateNode;
Coordinate3912: TCoordinateNode;
Coordinate3913: TCoordinateNode;
Coordinate3914: TCoordinateNode;
Coordinate3915: TCoordinateNode;
Coordinate3916: TCoordinateNode;
Coordinate3917: TCoordinateNode;
Coordinate3918: TCoordinateNode;
Coordinate3919: TCoordinateNode;
Coordinate3920: TCoordinateNode;
Coordinate3921: TCoordinateNode;
Coordinate3922: TCoordinateNode;
Coordinate3923: TCoordinateNode;
Coordinate3924: TCoordinateNode;
Coordinate3925: TCoordinateNode;
Coordinate3926: TCoordinateNode;
Coordinate3927: TCoordinateNode;
Coordinate3928: TCoordinateNode;
Coordinate3929: TCoordinateNode;
Coordinate3930: TCoordinateNode;
Coordinate3931: TCoordinateNode;
Coordinate3932: TCoordinateNode;
Coordinate3933: TCoordinateNode;
Coordinate3934: TCoordinateNode;
Coordinate3935: TCoordinateNode;
Coordinate3936: TCoordinateNode;
Coordinate3937: TCoordinateNode;
Coordinate3938: TCoordinateNode;
Coordinate3939: TCoordinateNode;
Coordinate3940: TCoordinateNode;
Coordinate3941: TCoordinateNode;
Coordinate3942: TCoordinateNode;
Coordinate3943: TCoordinateNode;
Coordinate3944: TCoordinateNode;
Coordinate3945: TCoordinateNode;
Coordinate3946: TCoordinateNode;
Coordinate3947: TCoordinateNode;
Coordinate3948: TCoordinateNode;
Coordinate3949: TCoordinateNode;
Coordinate3950: TCoordinateNode;
Coordinate3951: TCoordinateNode;
Coordinate3952: TCoordinateNode;
Coordinate3953: TCoordinateNode;
Coordinate3954: TCoordinateNode;
Coordinate3955: TCoordinateNode;
Coordinate3956: TCoordinateNode;
Coordinate3957: TCoordinateNode;
Coordinate3958: TCoordinateNode;
Coordinate3959: TCoordinateNode;
Coordinate3960: TCoordinateNode;
Coordinate3961: TCoordinateNode;
Coordinate3962: TCoordinateNode;
Coordinate3963: TCoordinateNode;
Coordinate3964: TCoordinateNode;
Coordinate3965: TCoordinateNode;
Coordinate3966: TCoordinateNode;
Coordinate3967: TCoordinateNode;
Coordinate3968: TCoordinateNode;
Coordinate3969: TCoordinateNode;
Coordinate3970: TCoordinateNode;
Coordinate3971: TCoordinateNode;
Coordinate3972: TCoordinateNode;
Coordinate3973: TCoordinateNode;
Coordinate3974: TCoordinateNode;
Coordinate3975: TCoordinateNode;
Coordinate3976: TCoordinateNode;
Coordinate3977: TCoordinateNode;
Coordinate3978: TCoordinateNode;
Coordinate3979: TCoordinateNode;
Coordinate3980: TCoordinateNode;
Coordinate3981: TCoordinateNode;
Coordinate3982: TCoordinateNode;
Coordinate3983: TCoordinateNode;
Coordinate3984: TCoordinateNode;
Coordinate3985: TCoordinateNode;
Coordinate3986: TCoordinateNode;
Coordinate3987: TCoordinateNode;
Coordinate3988: TCoordinateNode;
Coordinate3989: TCoordinateNode;
Coordinate3990: TCoordinateNode;
Coordinate3991: TCoordinateNode;
Coordinate3992: TCoordinateNode;
Coordinate3993: TCoordinateNode;
SFTime3994: TSFTime;
SFTime3995: TSFTime;
SFRotation3996: TSFRotation;
SFRotation3997: TSFRotation;
SFRotation3998: TSFRotation;
SFTime3999: TSFTime;
SFTime4000: TSFTime;
SFTime4001: TSFTime;
SFTime4002: TSFTime;
SFTime4003: TSFTime;
SFTime4004: TSFTime;
SFTime4005: TSFTime;
SFTime4006: TSFTime;
SFTime4007: TSFTime;
SFTime4008: TSFTime;
SFTime4009: TSFTime;
SFTime4010: TSFTime;
SFTime4011: TSFTime;
SFTime4012: TSFTime;
SFTime4013: TSFTime;
SFTime4014: TSFTime;
SFTime4015: TSFTime;
SFTime4016: TSFTime;
SFTime4017: TSFTime;
SFTime4018: TSFTime;
SFTime4019: TSFTime;
SFTime4020: TSFTime;
SFTime4021: TSFTime;
SFTime4022: TSFTime;
SFTime4023: TSFTime;
SFTime4024: TSFTime;
SFTime4025: TSFTime;
SFTime4026: TSFTime;
SFTime4027: TSFTime;
SFTime4028: TSFTime;
SFTime4029: TSFTime;
SFTime4030: TSFTime;
SFTime4031: TSFTime;
SFTime4032: TSFTime;
SFTime4033: TSFTime;
SFTime4034: TSFTime;
SFTime4035: TSFTime;
SFTime4036: TSFTime;
SFTime4037: TSFTime;
SFTime4038: TSFTime;
SFTime4039: TSFTime;
SFTime4040: TSFTime;
SFTime4041: TSFTime;
SFTime4042: TSFTime;
SFTime4043: TSFTime;
SFTime4044: TSFTime;
SFTime4045: TSFTime;
SFTime4046: TSFTime;
SFTime4047: TSFTime;
SFTime4048: TSFTime;
SFTime4049: TSFTime;
SFTime4050: TSFTime;
SFTime4051: TSFTime;
SFTime4052: TSFTime;
SFTime4053: TSFTime;
SFTime4054: TSFTime;
SFTime4055: TSFTime;
SFTime4056: TSFTime;
SFTime4057: TSFTime;
SFTime4058: TSFTime;
SFTime4059: TSFTime;
SFTime4060: TSFTime;
SFTime4061: TSFTime;
SFTime4062: TSFTime;
SFTime4063: TSFTime;
SFTime4064: TSFTime;
SFTime4065: TSFTime;
SFTime4066: TSFTime;
SFTime4067: TSFTime;
SFTime4068: TSFTime;
SFTime4069: TSFTime;
SFTime4070: TSFTime;
SFTime4071: TSFTime;
SFTime4072: TSFTime;
SFTime4073: TSFTime;
SFTime4074: TSFTime;
SFTime4075: TSFTime;
SFTime4076: TSFTime;
SFTime4077: TSFTime;
SFTime4078: TSFTime;
SFTime4079: TSFTime;
SFTime4080: TSFTime;
SFTime4081: TSFTime;
SFTime4082: TSFTime;
SFTime4083: TSFTime;
SFTime4084: TSFTime;
SFTime4085: TSFTime;
SFTime4086: TSFTime;
SFTime4087: TSFTime;
SFTime4088: TSFTime;
SFTime4089: TSFTime;
SFTime4090: TSFTime;
SFTime4091: TSFTime;
SFTime4092: TSFTime;
SFTime4093: TSFTime;
SFTime4094: TSFTime;
SFTime4095: TSFTime;
SFTime4096: TSFTime;
SFTime4097: TSFTime;
SFTime4098: TSFTime;
SFTime4099: TSFTime;
SFTime4100: TSFTime;
SFTime4101: TSFTime;
SFTime4102: TSFTime;
SFTime4103: TSFTime;
SFTime4104: TSFTime;
SFTime4105: TSFTime;
SFTime4106: TSFTime;
SFTime4107: TSFTime;
SFTime4108: TSFTime;
SFTime4109: TSFTime;
SFTime4110: TSFTime;
SFTime4111: TSFTime;
SFTime4112: TSFTime;
SFTime4113: TSFTime;
SFTime4114: TSFTime;
SFTime4115: TSFTime;
SFTime4116: TSFTime;
SFTime4117: TSFTime;
SFTime4118: TSFTime;
SFTime4119: TSFTime;
SFTime4120: TSFTime;
SFTime4121: TSFTime;
SFTime4122: TSFTime;
SFTime4123: TSFTime;
SFTime4124: TSFTime;
SFTime4125: TSFTime;
SFTime4126: TSFTime;
SFTime4127: TSFTime;
SFTime4128: TSFTime;
SFTime4129: TSFTime;
SFTime4130: TSFTime;
SFTime4131: TSFTime;
SFTime4132: TSFTime;
SFTime4133: TSFTime;
SFTime4134: TSFTime;
SFTime4135: TSFTime;
SFTime4136: TSFTime;
SFTime4137: TSFTime;
SFTime4138: TSFTime;
SFTime4139: TSFTime;
SFTime4140: TSFTime;
SFTime4141: TSFTime;
SFTime4142: TSFTime;
SFTime4143: TSFTime;
SFTime4144: TSFTime;
SFTime4145: TSFTime;
SFTime4146: TSFTime;
SFTime4147: TSFTime;
SFTime4148: TSFTime;
SFTime4149: TSFTime;
SFTime4150: TSFTime;
SFTime4151: TSFTime;
SFTime4152: TSFTime;
MFNode4153: TMFNode;
Transform4154: TTransformNode;
Transform4155: TTransformNode;
Transform4156: TTransformNode;
MFNode4157: TMFNode;
PlaneSensor4158: TPlaneSensorNode;
PlaneSensor4159: TPlaneSensorNode;
PlaneSensor4160: TPlaneSensorNode;
MFNode4161: TMFNode;
Material4162: TMaterialNode;
Material4163: TMaterialNode;
Material4164: TMaterialNode;
MFNode4165: TMFNode;
Text4166: TTextNode;
Text4167: TTextNode;
Text4168: TTextNode;
MFNode4169: TMFNode;
Text4170: TTextNode;
Text4171: TTextNode;
Text4172: TTextNode;
MFNode4173: TMFNode;
Text4174: TTextNode;
Text4175: TTextNode;
Text4176: TTextNode;
SFNode4177: TSFNode;
Text4178: TTextNode;
SFVec3f4179: TSFVec3f;
SFTime4180: TSFTime;
SFVec3f4181: TSFVec3f;
SFTime4182: TSFTime;
SFVec3f4183: TSFVec3f;
SFTime4184: TSFTime;
SFString4185: TSFString;
SFString4186: TSFString;
MFNode4187: TMFNode;
Transform4188: TTransformNode;
Transform4189: TTransformNode;
Transform4190: TTransformNode;
MFNode4191: TMFNode;
PlaneSensor4192: TPlaneSensorNode;
PlaneSensor4193: TPlaneSensorNode;
PlaneSensor4194: TPlaneSensorNode;
MFNode4195: TMFNode;
Material4196: TMaterialNode;
Material4197: TMaterialNode;
Material4198: TMaterialNode;
MFNode4199: TMFNode;
Text4200: TTextNode;
Text4201: TTextNode;
Text4202: TTextNode;
SFVec3f4203: TSFVec3f;
SFVec3f4204: TSFVec3f;
SFVec3f4205: TSFVec3f;
SFTime4206: TSFTime;
SFTime4207: TSFTime;
SFTime4208: TSFTime;
SFString4209: TSFString;
SFString4210: TSFString;
SFTime4211: TSFTime;
SFNode4212: TSFNode;
StringSensor4213: TStringSensorNode;
SFNode4214: TSFNode;
StringSensor4215: TStringSensorNode;
SFNode4216: TSFNode;
Text4217: TTextNode;
SFNode4218: TSFNode;
Switch4219: TSwitchNode;
MFNode4220: TMFNode;
Material4221: TMaterialNode;
Material4222: TMaterialNode;
Material4223: TMaterialNode;
Material4224: TMaterialNode;
Material4225: TMaterialNode;
Material4226: TMaterialNode;
Material4227: TMaterialNode;
Material4228: TMaterialNode;
Material4229: TMaterialNode;
Material4230: TMaterialNode;
Material4231: TMaterialNode;
MFNode4232: TMFNode;
Material4233: TMaterialNode;
Material4234: TMaterialNode;
Material4235: TMaterialNode;
Material4236: TMaterialNode;
Material4237: TMaterialNode;
Material4238: TMaterialNode;
SFBool4239: TSFBool;
SFBool4240: TSFBool;
SFBool4241: TSFBool;
SFBool4242: TSFBool;
SFBool4243: TSFBool;
SFBool4244: TSFBool;
SFBool4245: TSFBool;
SFBool4246: TSFBool;
SFBool4247: TSFBool;
SFBool4248: TSFBool;
SFBool4249: TSFBool;
SFBool4250: TSFBool;
SFBool4251: TSFBool;
SFBool4252: TSFBool;
SFBool4253: TSFBool;
SFBool4254: TSFBool;
SFBool4255: TSFBool;
SFBool4256: TSFBool;
SFBool4257: TSFBool;
SFBool4258: TSFBool;
SFBool4259: TSFBool;
SFBool4260: TSFBool;
SFBool4261: TSFBool;
SFBool4262: TSFBool;
SFBool4263: TSFBool;
SFBool4264: TSFBool;
SFBool4265: TSFBool;
SFBool4266: TSFBool;
SFBool4267: TSFBool;
SFBool4268: TSFBool;
SFBool4269: TSFBool;
SFBool4270: TSFBool;
SFBool4271: TSFBool;
SFBool4272: TSFBool;
SFBool4273: TSFBool;
SFBool4274: TSFBool;
SFBool4275: TSFBool;
SFBool4276: TSFBool;
SFBool4277: TSFBool;
SFBool4278: TSFBool;
SFBool4279: TSFBool;
SFBool4280: TSFBool;
SFBool4281: TSFBool;
SFBool4282: TSFBool;
SFBool4283: TSFBool;
SFBool4284: TSFBool;
SFBool4285: TSFBool;
SFBool4286: TSFBool;
SFBool4287: TSFBool;
SFBool4288: TSFBool;
SFBool4289: TSFBool;
SFBool4290: TSFBool;
SFBool4291: TSFBool;
SFBool4292: TSFBool;
SFBool4293: TSFBool;
SFBool4294: TSFBool;
SFBool4295: TSFBool;
SFBool4296: TSFBool;
SFBool4297: TSFBool;
SFBool4298: TSFBool;
SFBool4299: TSFBool;
SFBool4300: TSFBool;
SFBool4301: TSFBool;
SFBool4302: TSFBool;
SFBool4303: TSFBool;
SFBool4304: TSFBool;
SFBool4305: TSFBool;
SFBool4306: TSFBool;
SFBool4307: TSFBool;
SFBool4308: TSFBool;
SFBool4309: TSFBool;
SFBool4310: TSFBool;
SFBool4311: TSFBool;
SFBool4312: TSFBool;
SFBool4313: TSFBool;
SFBool4314: TSFBool;
SFBool4315: TSFBool;
SFBool4316: TSFBool;
SFBool4317: TSFBool;
SFBool4318: TSFBool;
SFBool4319: TSFBool;
SFBool4320: TSFBool;
SFBool4321: TSFBool;
SFBool4322: TSFBool;
SFBool4323: TSFBool;
SFBool4324: TSFBool;
SFBool4325: TSFBool;
SFBool4326: TSFBool;
SFBool4327: TSFBool;
SFBool4328: TSFBool;
SFBool4329: TSFBool;
SFBool4330: TSFBool;
SFBool4331: TSFBool;
SFBool4332: TSFBool;
SFBool4333: TSFBool;
SFBool4334: TSFBool;
SFBool4335: TSFBool;
SFBool4336: TSFBool;
SFBool4337: TSFBool;
SFBool4338: TSFBool;
SFBool4339: TSFBool;
SFBool4340: TSFBool;
SFBool4341: TSFBool;
SFBool4342: TSFBool;
SFBool4343: TSFBool;
SFBool4344: TSFBool;
SFBool4345: TSFBool;
SFBool4346: TSFBool;
SFBool4347: TSFBool;
SFBool4348: TSFBool;
SFBool4349: TSFBool;
SFBool4350: TSFBool;
SFBool4351: TSFBool;
SFBool4352: TSFBool;
SFBool4353: TSFBool;
SFBool4354: TSFBool;
SFBool4355: TSFBool;
SFBool4356: TSFBool;
SFBool4357: TSFBool;
SFBool4358: TSFBool;
SFBool4359: TSFBool;
SFBool4360: TSFBool;
SFBool4361: TSFBool;
SFBool4362: TSFBool;
SFBool4363: TSFBool;
SFBool4364: TSFBool;
SFBool4365: TSFBool;
SFBool4366: TSFBool;
SFBool4367: TSFBool;
SFBool4368: TSFBool;
SFBool4369: TSFBool;
SFBool4370: TSFBool;
SFBool4371: TSFBool;
SFBool4372: TSFBool;
SFBool4373: TSFBool;
SFBool4374: TSFBool;
SFBool4375: TSFBool;
SFBool4376: TSFBool;
SFBool4377: TSFBool;
SFBool4378: TSFBool;
SFBool4379: TSFBool;
SFBool4380: TSFBool;
SFBool4381: TSFBool;
SFBool4382: TSFBool;
SFBool4383: TSFBool;
SFBool4384: TSFBool;
SFBool4385: TSFBool;
SFBool4386: TSFBool;
SFBool4387: TSFBool;
SFBool4388: TSFBool;
SFBool4389: TSFBool;
SFBool4390: TSFBool;
SFBool4391: TSFBool;
SFBool4392: TSFBool;
SFBool4393: TSFBool;
SFBool4394: TSFBool;
SFBool4395: TSFBool;
SFBool4396: TSFBool;
SFBool4397: TSFBool;
SFBool4398: TSFBool;
SFBool4399: TSFBool;
SFBool4400: TSFBool;
SFBool4401: TSFBool;
SFBool4402: TSFBool;
SFBool4403: TSFBool;
SFBool4404: TSFBool;
SFBool4405: TSFBool;
SFBool4406: TSFBool;
SFBool4407: TSFBool;
SFBool4408: TSFBool;
SFBool4409: TSFBool;
SFBool4410: TSFBool;
SFBool4411: TSFBool;
SFBool4412: TSFBool;
SFBool4413: TSFBool;
SFBool4414: TSFBool;
SFBool4415: TSFBool;
SFBool4416: TSFBool;
SFBool4417: TSFBool;
SFBool4418: TSFBool;
SFBool4419: TSFBool;

procedure InitHAnimGimbalJointController22Part0;
begin
X3D0 := TX3DRootNode.Create;
X3D0.Profile := 'Immersive';
X3D0.ForceVersion.Major := 4;
X3D0.ForceVersion.Minor := 0;
X3D0.Components['Shape'] := 2;
X3D0.Components['Layering'] := 1;
X3D0.Components['HAnim'] := 1;
X3D0.Meta['title'] := 'HAnimGimbalJointController22.x3d';
X3D0.Meta['description'] := 'Humanoid with unique selectable material per joint, depth-first and hierarchy traversal, and gimbal controller aligned to HAnim Hierarchy.txt. Accessibility: hover (isOver) sounds, per-axis slider tones, spoken announcements, caption line, and keyboard joint/rotate/translate modes (press H).';
X3D0.Meta['accessibility'] := 'Keyboard modes J (joint), R (rotate), T (translate); H help; I status; M sound toggle; V speech toggle. Axis earcons: X low tone 1 pulse, Y mid tone 2 pulses, Z high tone 3 pulses.';
X3D0.Meta['identifier'] := 'https://github.com/coderextreme/X3DJSONLD/gltf/HAnimGimbalJointController.x3d';
X3D0.Meta['generator'] := 'Claude.ai https://claude.ai/';
X3D0.Meta['generator'] := 'ChatGPT https://chatgpt.com/';
X3D0.Meta['generator'] := 'Gemini Flash https://ai.dev/';
Group12 := TGroupNode.Create;
NavigationInfo13 := TNavigationInfoNode.Create;
NavigationInfo13.SetType(['NONE']);
{ .AddChildren }
Group12.AddChildren([NavigationInfo13]);
LayerSet14 := TLayerSetNode.Create;
LayerSet14.ActiveLayer := 1;
LayerSet14.SetOrder([2,1]);
Layer15 := TLayerNode.Create;
Layer15.X3DName := 'Model';
Layer15.Pickable := True;
Layer15.SetObjectType(['ALL']);
Viewpoint16 := TViewpointNode.Create;
Viewpoint16.Description := 'Front (wide)';
Viewpoint16.Position := Vector3(-0.3,1.3,7);
{ .FdChildren.Add }
Layer15.FdChildren.Add(Viewpoint16);
Viewpoint17 := TViewpointNode.Create;
Viewpoint17.Description := 'Front (close)';
Viewpoint17.Position := Vector3(0.9,1.1,5.8);
{ .FdChildren.Add }
Layer15.FdChildren.Add(Viewpoint17);
HAnimHumanoid18 := THAnimHumanoidNode.Create;
HAnimHumanoid18.X3DName := 'humanoid';
HAnimHumanoid18.Version := '2.0';
HAnimHumanoid18.Loa := 4;
{ ==================== ROOT: humanoid_root / sacrum ==================== }
{ ==================== HAnimHumanoid JOINTS LIST ==================== }
{ ==================== HAnimHumanoid SEGMENTS LIST ==================== }
HAnimJoint19 := THAnimJointNode.Create;
HAnimJoint19.X3DName := 'hanim_humanoid_root';
HAnimJoint19.Center := Vector3(0,0.824,0.0277);
end;

procedure InitHAnimGimbalJointController22Part1;
begin

HAnimJoint19.SetLlimit([-0.7854,-3.1416,-0.7854]);
HAnimJoint19.SetUlimit([0.7854,3.1416,0.7854]);
HAnimSegment20 := THAnimSegmentNode.Create;
HAnimSegment20.X3DName := 'hanim_sacrum';
TouchSensor21 := TTouchSensorNode.Create;
TouchSensor21.X3DName := 'ts_humanoid_root';
TouchSensor21.Description := 'humanoid_root';
{ .AddChildren }
HAnimSegment20.AddChildren([TouchSensor21]);
Transform22 := TTransformNode.Create;
Transform22.X3DName := 'jx_humanoid_root';
Transform22.Translation := Vector3(0,0.824,0.0277);
Transform23 := TTransformNode.Create;
Shape24 := TShapeNode.Create;
Appearance25 := TAppearanceNode.Create;
Appearance25.X3DName := 'ap_humanoid_root';
Material26 := TMaterialNode.Create;
Material26.X3DName := 'm_humanoid_root';
Material26.DiffuseColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance25.Material := Material26;
{ .SetAppearance }
Shape24.Appearance := Appearance25;
Sphere27 := TSphereNode.Create;
Sphere27.Radius := 0.03;
{ .SetGeometry }
Shape24.Geometry := Sphere27;
{ .AddChild }
Transform23.AddChildren([Shape24]);
{ .AddChildren }
Transform22.AddChildren([Transform23]);
{ .AddChildren }
HAnimSegment20.AddChildren([Transform22]);
Shape28 := TShapeNode.Create;
Appearance29 := TAppearanceNode.Create;
Appearance29.X3DName := 'apl_humanoid_root';
Material30 := TMaterialNode.Create;
Material30.X3DName := 'lm_humanoid_root';
Material30.DiffuseColor := Vector3(0,0,0);
Material30.EmissiveColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance29.Material := Material30;
LineProperties31 := TLinePropertiesNode.Create;
LineProperties31.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance29.LineProperties := LineProperties31;
{ .SetAppearance }
Shape28.Appearance := Appearance29;
LineSet32 := TLineSetNode.Create;
LineSet32.SetVertexCount([2]);
end;

procedure InitHAnimGimbalJointController22Part2;
begin

Coordinate33 := TCoordinateNode.Create;
Coordinate33.X3DName := 'lc_humanoid_root_0';
Coordinate33.SetPoint([Vector3(0,0.824,0.0277),Vector3(0,0.9149,0.0016)]);
{ .SetCoord }
LineSet32.Coord := Coordinate33;
{ .SetGeometry }
Shape28.Geometry := LineSet32;
{ .AddChildren }
HAnimSegment20.AddChildren([Shape28]);
Shape34 := TShapeNode.Create;
{ .SetAppearance }
Shape34.Appearance := Appearance29;
LineSet36 := TLineSetNode.Create;
LineSet36.SetVertexCount([2]);
Coordinate37 := TCoordinateNode.Create;
Coordinate37.X3DName := 'lc_humanoid_root_1';
Coordinate37.SetPoint([Vector3(0,0.824,0.0277),Vector3(0.0028,1.0568,-0.0776)]);
{ .SetCoord }
LineSet36.Coord := Coordinate37;
{ .SetGeometry }
Shape34.Geometry := LineSet36;
{ .AddChildren }
HAnimSegment20.AddChildren([Shape34]);
{ .AddChildren }
HAnimJoint19.AddChildren([HAnimSegment20]);
{ ==================== BRANCH 1: PELVIS & LOWER BODY ==================== }
HAnimJoint38 := THAnimJointNode.Create;
HAnimJoint38.X3DName := 'hanim_sacroiliac';
HAnimJoint38.Center := Vector3(0,0.9149,0.0016);
HAnimJoint38.SetLlimit([-0.1745,-0.1745,-0.1745]);
HAnimJoint38.SetUlimit([0.2618,0.1745,0.1745]);
HAnimSegment39 := THAnimSegmentNode.Create;
HAnimSegment39.X3DName := 'hanim_pelvis';
TouchSensor40 := TTouchSensorNode.Create;
TouchSensor40.X3DName := 'ts_sacroiliac';
TouchSensor40.Description := 'sacroiliac';
{ .AddChildren }
HAnimSegment39.AddChildren([TouchSensor40]);
Transform41 := TTransformNode.Create;
Transform41.X3DName := 'jx_sacroiliac';
Transform41.Translation := Vector3(0,0.9149,0.0016);
Transform42 := TTransformNode.Create;
Shape43 := TShapeNode.Create;
Appearance44 := TAppearanceNode.Create;
Appearance44.X3DName := 'ap_sacroiliac';
Material45 := TMaterialNode.Create;
Material45.X3DName := 'm_sacroiliac';
Material45.DiffuseColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance44.Material := Material45;
{ .SetAppearance }
Shape43.Appearance := Appearance44;
end;

procedure InitHAnimGimbalJointController22Part3;
begin

Sphere46 := TSphereNode.Create;
Sphere46.Radius := 0.03;
{ .SetGeometry }
Shape43.Geometry := Sphere46;
{ .AddChild }
Transform42.AddChildren([Shape43]);
{ .AddChildren }
Transform41.AddChildren([Transform42]);
{ .AddChildren }
HAnimSegment39.AddChildren([Transform41]);
Shape47 := TShapeNode.Create;
Appearance48 := TAppearanceNode.Create;
Appearance48.X3DName := 'apl_sacroiliac';
Material49 := TMaterialNode.Create;
Material49.X3DName := 'lm_sacroiliac';
Material49.DiffuseColor := Vector3(0,0,0);
Material49.EmissiveColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance48.Material := Material49;
LineProperties50 := TLinePropertiesNode.Create;
LineProperties50.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance48.LineProperties := LineProperties50;
{ .SetAppearance }
Shape47.Appearance := Appearance48;
LineSet51 := TLineSetNode.Create;
LineSet51.SetVertexCount([2]);
Coordinate52 := TCoordinateNode.Create;
Coordinate52.X3DName := 'lc_sacroiliac_0';
Coordinate52.SetPoint([Vector3(0,0.9149,0.0016),Vector3(0.0961,0.9124,-0.0001)]);
{ .SetCoord }
LineSet51.Coord := Coordinate52;
{ .SetGeometry }
Shape47.Geometry := LineSet51;
{ .AddChildren }
HAnimSegment39.AddChildren([Shape47]);
Shape53 := TShapeNode.Create;
{ .SetAppearance }
Shape53.Appearance := Appearance48;
LineSet55 := TLineSetNode.Create;
LineSet55.SetVertexCount([2]);
Coordinate56 := TCoordinateNode.Create;
Coordinate56.X3DName := 'lc_sacroiliac_1';
Coordinate56.SetPoint([Vector3(0,0.9149,0.0016),Vector3(-0.095,0.9171,0.0029)]);
{ .SetCoord }
LineSet55.Coord := Coordinate56;
{ .SetGeometry }
Shape53.Geometry := LineSet55;
{ .AddChildren }
HAnimSegment39.AddChildren([Shape53]);
{ .AddChildren }
HAnimJoint38.AddChildren([HAnimSegment39]);
{ LEFT LEG }
HAnimJoint57 := THAnimJointNode.Create;
HAnimJoint57.X3DName := 'hanim_l_hip';
HAnimJoint57.Center := Vector3(0.0961,0.9124,-0.0001);
end;

procedure InitHAnimGimbalJointController22Part4;
begin

HAnimJoint57.SetLlimit([-2.0944,-0.7854,-0.5236]);
HAnimJoint57.SetUlimit([0.5236,0.7854,0.7854]);
HAnimSegment58 := THAnimSegmentNode.Create;
HAnimSegment58.X3DName := 'hanim_l_thigh';
TouchSensor59 := TTouchSensorNode.Create;
TouchSensor59.X3DName := 'ts_l_hip';
TouchSensor59.Description := 'l_hip';
{ .AddChildren }
HAnimSegment58.AddChildren([TouchSensor59]);
Transform60 := TTransformNode.Create;
Transform60.X3DName := 'jx_l_hip';
Transform60.Translation := Vector3(0.0961,0.9124,-0.0001);
Transform61 := TTransformNode.Create;
Shape62 := TShapeNode.Create;
Appearance63 := TAppearanceNode.Create;
Appearance63.X3DName := 'ap_l_hip';
Material64 := TMaterialNode.Create;
Material64.X3DName := 'm_l_hip';
Material64.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance63.Material := Material64;
{ .SetAppearance }
Shape62.Appearance := Appearance63;
Sphere65 := TSphereNode.Create;
Sphere65.Radius := 0.03;
{ .SetGeometry }
Shape62.Geometry := Sphere65;
{ .AddChild }
Transform61.AddChildren([Shape62]);
{ .AddChildren }
Transform60.AddChildren([Transform61]);
{ .AddChildren }
HAnimSegment58.AddChildren([Transform60]);
Shape66 := TShapeNode.Create;
Appearance67 := TAppearanceNode.Create;
Appearance67.X3DName := 'apl_l_hip';
Material68 := TMaterialNode.Create;
Material68.X3DName := 'lm_l_hip';
Material68.DiffuseColor := Vector3(0,0,0);
Material68.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance67.Material := Material68;
LineProperties69 := TLinePropertiesNode.Create;
LineProperties69.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance67.LineProperties := LineProperties69;
{ .SetAppearance }
Shape66.Appearance := Appearance67;
LineSet70 := TLineSetNode.Create;
LineSet70.SetVertexCount([2]);
end;

procedure InitHAnimGimbalJointController22Part5;
begin

Coordinate71 := TCoordinateNode.Create;
Coordinate71.X3DName := 'lc_l_hip_0';
Coordinate71.SetPoint([Vector3(0.0961,0.9124,-0.0001),Vector3(0.104,0.4867,0.0308)]);
{ .SetCoord }
LineSet70.Coord := Coordinate71;
{ .SetGeometry }
Shape66.Geometry := LineSet70;
{ .AddChildren }
HAnimSegment58.AddChildren([Shape66]);
{ .AddChildren }
HAnimJoint57.AddChildren([HAnimSegment58]);
HAnimJoint72 := THAnimJointNode.Create;
HAnimJoint72.X3DName := 'hanim_l_knee';
HAnimJoint72.Center := Vector3(0.104,0.4867,0.0308);
HAnimJoint72.SetLlimit([0,-0.0873,-0.0175]);
HAnimJoint72.SetUlimit([2.3562,0.0873,0.0175]);
HAnimSegment73 := THAnimSegmentNode.Create;
HAnimSegment73.X3DName := 'hanim_l_calf';
TouchSensor74 := TTouchSensorNode.Create;
TouchSensor74.X3DName := 'ts_l_knee';
TouchSensor74.Description := 'l_knee';
{ .AddChildren }
HAnimSegment73.AddChildren([TouchSensor74]);
Transform75 := TTransformNode.Create;
Transform75.X3DName := 'jx_l_knee';
Transform75.Translation := Vector3(0.104,0.4867,0.0308);
Transform76 := TTransformNode.Create;
Shape77 := TShapeNode.Create;
Appearance78 := TAppearanceNode.Create;
Appearance78.X3DName := 'ap_l_knee';
Material79 := TMaterialNode.Create;
Material79.X3DName := 'm_l_knee';
Material79.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance78.Material := Material79;
{ .SetAppearance }
Shape77.Appearance := Appearance78;
Sphere80 := TSphereNode.Create;
Sphere80.Radius := 0.03;
{ .SetGeometry }
Shape77.Geometry := Sphere80;
{ .AddChild }
Transform76.AddChildren([Shape77]);
{ .AddChildren }
Transform75.AddChildren([Transform76]);
{ .AddChildren }
HAnimSegment73.AddChildren([Transform75]);
Shape81 := TShapeNode.Create;
Appearance82 := TAppearanceNode.Create;
Appearance82.X3DName := 'apl_l_knee';
Material83 := TMaterialNode.Create;
end;

procedure InitHAnimGimbalJointController22Part6;
begin

Material83.X3DName := 'lm_l_knee';
Material83.DiffuseColor := Vector3(0,0,0);
Material83.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance82.Material := Material83;
LineProperties84 := TLinePropertiesNode.Create;
LineProperties84.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance82.LineProperties := LineProperties84;
{ .SetAppearance }
Shape81.Appearance := Appearance82;
LineSet85 := TLineSetNode.Create;
LineSet85.SetVertexCount([2]);
Coordinate86 := TCoordinateNode.Create;
Coordinate86.X3DName := 'lc_l_knee_0';
Coordinate86.SetPoint([Vector3(0.104,0.4867,0.0308),Vector3(0.1101,0.0656,-0.0736)]);
{ .SetCoord }
LineSet85.Coord := Coordinate86;
{ .SetGeometry }
Shape81.Geometry := LineSet85;
{ .AddChildren }
HAnimSegment73.AddChildren([Shape81]);
{ .AddChildren }
HAnimJoint72.AddChildren([HAnimSegment73]);
HAnimJoint87 := THAnimJointNode.Create;
HAnimJoint87.X3DName := 'hanim_l_talocrural';
HAnimJoint87.Center := Vector3(0.1101,0.0656,-0.0736);
HAnimJoint87.SetLlimit([-0.4363,-0.2618,-0.1745]);
HAnimJoint87.SetUlimit([0.8727,0.2618,0.1745]);
HAnimSegment88 := THAnimSegmentNode.Create;
HAnimSegment88.X3DName := 'hanim_l_talus';
TouchSensor89 := TTouchSensorNode.Create;
TouchSensor89.X3DName := 'ts_l_talocrural';
TouchSensor89.Description := 'l_talocrural';
{ .AddChildren }
HAnimSegment88.AddChildren([TouchSensor89]);
Transform90 := TTransformNode.Create;
Transform90.X3DName := 'jx_l_talocrural';
Transform90.Scale := Vector3(0.15,0.15,0.15);
Transform90.Translation := Vector3(0.08,0.06,-0.025);
Transform90.Rotation := Vector4(1,0,0,-1.57);
Transform91 := TTransformNode.Create;
Shape92 := TShapeNode.Create;
Appearance93 := TAppearanceNode.Create;
Appearance93.X3DName := 'ap_l_talocrural';
Material94 := TMaterialNode.Create;
Material94.X3DName := 'm_l_talocrural';
Material94.DiffuseColor := Vector3(0.35,0.55,0.95);
end;

procedure InitHAnimGimbalJointController22Part7;
begin

{ .SetMaterial }
Appearance93.Material := Material94;
{ .SetAppearance }
Shape92.Appearance := Appearance93;
Sphere95 := TSphereNode.Create;
Sphere95.Radius := 0.03;
{ .SetGeometry }
Shape92.Geometry := Sphere95;
{ .AddChild }
Transform91.AddChildren([Shape92]);
{ .AddChildren }
Transform90.AddChildren([Transform91]);
{ .AddChildren }
HAnimSegment88.AddChildren([Transform90]);
Shape96 := TShapeNode.Create;
Appearance97 := TAppearanceNode.Create;
Appearance97.X3DName := 'apl_l_talocrural';
Material98 := TMaterialNode.Create;
Material98.X3DName := 'lm_l_talocrural';
Material98.DiffuseColor := Vector3(0,0,0);
Material98.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance97.Material := Material98;
LineProperties99 := TLinePropertiesNode.Create;
LineProperties99.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance97.LineProperties := LineProperties99;
{ .SetAppearance }
Shape96.Appearance := Appearance97;
LineSet100 := TLineSetNode.Create;
LineSet100.SetVertexCount([2]);
Coordinate101 := TCoordinateNode.Create;
Coordinate101.X3DName := 'lc_l_talocrural_0';
Coordinate101.SetPoint([Vector3(0.1101,0.0656,-0.0736),Vector3(0.0781,0.0283,-0.097)]);
{ .SetCoord }
LineSet100.Coord := Coordinate101;
{ .SetGeometry }
Shape96.Geometry := LineSet100;
{ .AddChildren }
HAnimSegment88.AddChildren([Shape96]);
Shape102 := TShapeNode.Create;
{ .SetAppearance }
Shape102.Appearance := Appearance97;
LineSet104 := TLineSetNode.Create;
LineSet104.SetVertexCount([2]);
Coordinate105 := TCoordinateNode.Create;
Coordinate105.X3DName := 'lc_l_talocrural_1';
Coordinate105.SetPoint([Vector3(0.1101,0.0656,-0.0736),Vector3(0.0889,0.0494,-0.1278)]);
{ .SetCoord }
LineSet104.Coord := Coordinate105;
{ .SetGeometry }
Shape102.Geometry := LineSet104;
{ .AddChildren }
HAnimSegment88.AddChildren([Shape102]);
{ .AddChildren }
HAnimJoint87.AddChildren([HAnimSegment88]);
HAnimJoint106 := THAnimJointNode.Create;
end;

procedure InitHAnimGimbalJointController22Part8;
begin

HAnimJoint106.X3DName := 'hanim_l_talocalcaneonavicular';
HAnimJoint106.Center := Vector3(0.0781,0.0283,-0.097);
HAnimJoint106.SetLlimit([-0.1745,-0.1396,-0.1396]);
HAnimJoint106.SetUlimit([0.1745,0.1396,0.1396]);
HAnimSegment107 := THAnimSegmentNode.Create;
HAnimSegment107.X3DName := 'hanim_l_navicular';
TouchSensor108 := TTouchSensorNode.Create;
TouchSensor108.X3DName := 'ts_l_talocalcaneonavicular';
TouchSensor108.Description := 'l_talocalcaneonavicular';
{ .AddChildren }
HAnimSegment107.AddChildren([TouchSensor108]);
Transform109 := TTransformNode.Create;
Transform109.X3DName := 'jx_l_talocalcaneonavicular';
Transform109.Translation := Vector3(0.0781,0.0283,-0.097);
Transform110 := TTransformNode.Create;
Shape111 := TShapeNode.Create;
Appearance112 := TAppearanceNode.Create;
Appearance112.X3DName := 'ap_l_talocalcaneonavicular';
Material113 := TMaterialNode.Create;
Material113.X3DName := 'm_l_talocalcaneonavicular';
Material113.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance112.Material := Material113;
{ .SetAppearance }
Shape111.Appearance := Appearance112;
Sphere114 := TSphereNode.Create;
Sphere114.Radius := 0.03;
{ .SetGeometry }
Shape111.Geometry := Sphere114;
{ .AddChild }
Transform110.AddChildren([Shape111]);
{ .AddChildren }
Transform109.AddChildren([Transform110]);
{ .AddChildren }
HAnimSegment107.AddChildren([Transform109]);
Shape115 := TShapeNode.Create;
Appearance116 := TAppearanceNode.Create;
Appearance116.X3DName := 'apl_l_talocalcaneonavicular';
Material117 := TMaterialNode.Create;
Material117.X3DName := 'lm_l_talocalcaneonavicular';
Material117.DiffuseColor := Vector3(0,0,0);
Material117.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance116.Material := Material117;
LineProperties118 := TLinePropertiesNode.Create;
LineProperties118.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance116.LineProperties := LineProperties118;
{ .SetAppearance }
Shape115.Appearance := Appearance116;
end;

procedure InitHAnimGimbalJointController22Part9;
begin

LineSet119 := TLineSetNode.Create;
LineSet119.SetVertexCount([2]);
Coordinate120 := TCoordinateNode.Create;
Coordinate120.X3DName := 'lc_l_talocalcaneonavicular_0';
Coordinate120.SetPoint([Vector3(0.0781,0.0283,-0.097),Vector3(0.0672,0.0235,-0.0835)]);
{ .SetCoord }
LineSet119.Coord := Coordinate120;
{ .SetGeometry }
Shape115.Geometry := LineSet119;
{ .AddChildren }
HAnimSegment107.AddChildren([Shape115]);
Shape121 := TShapeNode.Create;
{ .SetAppearance }
Shape121.Appearance := Appearance116;
LineSet123 := TLineSetNode.Create;
LineSet123.SetVertexCount([2]);
Coordinate124 := TCoordinateNode.Create;
Coordinate124.X3DName := 'lc_l_talocalcaneonavicular_1';
Coordinate124.SetPoint([Vector3(0.0781,0.0283,-0.097),Vector3(0.0812,0.025,-0.0805)]);
{ .SetCoord }
LineSet123.Coord := Coordinate124;
{ .SetGeometry }
Shape121.Geometry := LineSet123;
{ .AddChildren }
HAnimSegment107.AddChildren([Shape121]);
Shape125 := TShapeNode.Create;
{ .SetAppearance }
Shape125.Appearance := Appearance116;
LineSet127 := TLineSetNode.Create;
LineSet127.SetVertexCount([2]);
Coordinate128 := TCoordinateNode.Create;
Coordinate128.X3DName := 'lc_l_talocalcaneonavicular_2';
Coordinate128.SetPoint([Vector3(0.0781,0.0283,-0.097),Vector3(0.0928,0.0248,-0.0821)]);
{ .SetCoord }
LineSet127.Coord := Coordinate128;
{ .SetGeometry }
Shape125.Geometry := LineSet127;
{ .AddChildren }
HAnimSegment107.AddChildren([Shape125]);
{ .AddChildren }
HAnimJoint106.AddChildren([HAnimSegment107]);
HAnimJoint129 := THAnimJointNode.Create;
HAnimJoint129.X3DName := 'hanim_l_cuneonavicular_1';
HAnimJoint129.Center := Vector3(0.0672,0.0235,-0.0835);
HAnimJoint129.SetLlimit([-0.1745,-0.1396,-0.1396]);
HAnimJoint129.SetUlimit([0.1745,0.1396,0.1396]);
HAnimSegment130 := THAnimSegmentNode.Create;
HAnimSegment130.X3DName := 'hanim_l_cuneiform_1';
TouchSensor131 := TTouchSensorNode.Create;
TouchSensor131.X3DName := 'ts_l_cuneonavicular_1';
TouchSensor131.Description := 'l_cuneonavicular_1';
{ .AddChildren }
HAnimSegment130.AddChildren([TouchSensor131]);
end;

procedure InitHAnimGimbalJointController22Part10;
begin

Transform132 := TTransformNode.Create;
Transform132.X3DName := 'jx_l_cuneonavicular_1';
Transform132.Translation := Vector3(0.0672,0.0235,-0.0835);
Transform133 := TTransformNode.Create;
Shape134 := TShapeNode.Create;
Appearance135 := TAppearanceNode.Create;
Appearance135.X3DName := 'ap_l_cuneonavicular_1';
Material136 := TMaterialNode.Create;
Material136.X3DName := 'm_l_cuneonavicular_1';
Material136.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance135.Material := Material136;
{ .SetAppearance }
Shape134.Appearance := Appearance135;
Sphere137 := TSphereNode.Create;
Sphere137.Radius := 0.03;
{ .SetGeometry }
Shape134.Geometry := Sphere137;
{ .AddChild }
Transform133.AddChildren([Shape134]);
{ .AddChildren }
Transform132.AddChildren([Transform133]);
{ .AddChildren }
HAnimSegment130.AddChildren([Transform132]);
Shape138 := TShapeNode.Create;
Appearance139 := TAppearanceNode.Create;
Appearance139.X3DName := 'apl_l_cuneonavicular_1';
Material140 := TMaterialNode.Create;
Material140.X3DName := 'lm_l_cuneonavicular_1';
Material140.DiffuseColor := Vector3(0,0,0);
Material140.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance139.Material := Material140;
LineProperties141 := TLinePropertiesNode.Create;
LineProperties141.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance139.LineProperties := LineProperties141;
{ .SetAppearance }
Shape138.Appearance := Appearance139;
LineSet142 := TLineSetNode.Create;
LineSet142.SetVertexCount([2]);
Coordinate143 := TCoordinateNode.Create;
Coordinate143.X3DName := 'lc_l_cuneonavicular_1_0';
Coordinate143.SetPoint([Vector3(0.0672,0.0235,-0.0835),Vector3(0.0644,0.0147,-0.0577)]);
{ .SetCoord }
LineSet142.Coord := Coordinate143;
{ .SetGeometry }
Shape138.Geometry := LineSet142;
{ .AddChildren }
HAnimSegment130.AddChildren([Shape138]);
{ .AddChildren }
HAnimJoint129.AddChildren([HAnimSegment130]);
HAnimJoint144 := THAnimJointNode.Create;
end;

procedure InitHAnimGimbalJointController22Part11;
begin

HAnimJoint144.X3DName := 'hanim_l_tarsometatarsal_1';
HAnimJoint144.Center := Vector3(0.0644,0.0147,-0.0577);
HAnimJoint144.SetLlimit([-0.1396,-0.0698,-0.0175]);
HAnimJoint144.SetUlimit([0.1396,0.0698,0.0175]);
HAnimSegment145 := THAnimSegmentNode.Create;
HAnimSegment145.X3DName := 'hanim_l_metatarsal_1';
TouchSensor146 := TTouchSensorNode.Create;
TouchSensor146.X3DName := 'ts_l_tarsometatarsal_1';
TouchSensor146.Description := 'l_tarsometatarsal_1';
{ .AddChildren }
HAnimSegment145.AddChildren([TouchSensor146]);
Transform147 := TTransformNode.Create;
Transform147.X3DName := 'jx_l_tarsometatarsal_1';
Transform147.Translation := Vector3(0.0644,0.0147,-0.0577);
Transform148 := TTransformNode.Create;
Shape149 := TShapeNode.Create;
Appearance150 := TAppearanceNode.Create;
Appearance150.X3DName := 'ap_l_tarsometatarsal_1';
Material151 := TMaterialNode.Create;
Material151.X3DName := 'm_l_tarsometatarsal_1';
Material151.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance150.Material := Material151;
{ .SetAppearance }
Shape149.Appearance := Appearance150;
Sphere152 := TSphereNode.Create;
Sphere152.Radius := 0.03;
{ .SetGeometry }
Shape149.Geometry := Sphere152;
{ .AddChild }
Transform148.AddChildren([Shape149]);
{ .AddChildren }
Transform147.AddChildren([Transform148]);
{ .AddChildren }
HAnimSegment145.AddChildren([Transform147]);
Shape153 := TShapeNode.Create;
Appearance154 := TAppearanceNode.Create;
Appearance154.X3DName := 'apl_l_tarsometatarsal_1';
Material155 := TMaterialNode.Create;
Material155.X3DName := 'lm_l_tarsometatarsal_1';
Material155.DiffuseColor := Vector3(0,0,0);
Material155.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance154.Material := Material155;
LineProperties156 := TLinePropertiesNode.Create;
LineProperties156.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance154.LineProperties := LineProperties156;
{ .SetAppearance }
Shape153.Appearance := Appearance154;
end;

procedure InitHAnimGimbalJointController22Part12;
begin

LineSet157 := TLineSetNode.Create;
LineSet157.SetVertexCount([2]);
Coordinate158 := TCoordinateNode.Create;
Coordinate158.X3DName := 'lc_l_tarsometatarsal_1_0';
Coordinate158.SetPoint([Vector3(0.0644,0.0147,-0.0577),Vector3(0.1086,0.0001,0.0368)]);
{ .SetCoord }
LineSet157.Coord := Coordinate158;
{ .SetGeometry }
Shape153.Geometry := LineSet157;
{ .AddChildren }
HAnimSegment145.AddChildren([Shape153]);
{ .AddChildren }
HAnimJoint144.AddChildren([HAnimSegment145]);
HAnimJoint159 := THAnimJointNode.Create;
HAnimJoint159.X3DName := 'hanim_l_metatarsophalangeal_1';
HAnimJoint159.Center := Vector3(0.1086,0.0001,0.0368);
HAnimJoint159.SetLlimit([-1.0472,-0.1745,-0.0175]);
HAnimJoint159.SetUlimit([0.6981,0.1745,0.0175]);
HAnimSegment160 := THAnimSegmentNode.Create;
HAnimSegment160.X3DName := 'hanim_l_tarsal_proximal_phalanx_1';
TouchSensor161 := TTouchSensorNode.Create;
TouchSensor161.X3DName := 'ts_l_metatarsophalangeal_1';
TouchSensor161.Description := 'l_metatarsophalangeal_1';
{ .AddChildren }
HAnimSegment160.AddChildren([TouchSensor161]);
Transform162 := TTransformNode.Create;
Transform162.X3DName := 'jx_l_metatarsophalangeal_1';
Transform162.Translation := Vector3(0.1086,0.0001,0.0368);
Transform163 := TTransformNode.Create;
Shape164 := TShapeNode.Create;
Appearance165 := TAppearanceNode.Create;
Appearance165.X3DName := 'ap_l_metatarsophalangeal_1';
Material166 := TMaterialNode.Create;
Material166.X3DName := 'm_l_metatarsophalangeal_1';
Material166.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance165.Material := Material166;
{ .SetAppearance }
Shape164.Appearance := Appearance165;
Sphere167 := TSphereNode.Create;
Sphere167.Radius := 0.03;
{ .SetGeometry }
Shape164.Geometry := Sphere167;
{ .AddChild }
Transform163.AddChildren([Shape164]);
{ .AddChildren }
Transform162.AddChildren([Transform163]);
{ .AddChildren }
HAnimSegment160.AddChildren([Transform162]);
Shape168 := TShapeNode.Create;
Appearance169 := TAppearanceNode.Create;
end;

procedure InitHAnimGimbalJointController22Part13;
begin

Appearance169.X3DName := 'apl_l_metatarsophalangeal_1';
Material170 := TMaterialNode.Create;
Material170.X3DName := 'lm_l_metatarsophalangeal_1';
Material170.DiffuseColor := Vector3(0,0,0);
Material170.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance169.Material := Material170;
LineProperties171 := TLinePropertiesNode.Create;
LineProperties171.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance169.LineProperties := LineProperties171;
{ .SetAppearance }
Shape168.Appearance := Appearance169;
LineSet172 := TLineSetNode.Create;
LineSet172.SetVertexCount([2]);
Coordinate173 := TCoordinateNode.Create;
Coordinate173.X3DName := 'lc_l_metatarsophalangeal_1_0';
Coordinate173.SetPoint([Vector3(0.1086,0.0001,0.0368),Vector3(0.1086,0,0.0762)]);
{ .SetCoord }
LineSet172.Coord := Coordinate173;
{ .SetGeometry }
Shape168.Geometry := LineSet172;
{ .AddChildren }
HAnimSegment160.AddChildren([Shape168]);
{ .AddChildren }
HAnimJoint159.AddChildren([HAnimSegment160]);
HAnimJoint174 := THAnimJointNode.Create;
HAnimJoint174.X3DName := 'hanim_l_tarsal_interphalangeal_1';
HAnimJoint174.Center := Vector3(0.1086,0,0.0762);
HAnimJoint174.SetLlimit([-0.1745,-0.0175,-0.0175]);
HAnimJoint174.SetUlimit([1.2217,0.0175,0.0175]);
HAnimSegment175 := THAnimSegmentNode.Create;
HAnimSegment175.X3DName := 'hanim_l_tarsal_distal_phalanx_1';
Group176 := TGroupNode.Create;
Group176.X3DName := 'jg_l_tarsal_interphalangeal_1';
TouchSensor177 := TTouchSensorNode.Create;
TouchSensor177.X3DName := 'ts_l_tarsal_interphalangeal_1';
TouchSensor177.Description := 'l_tarsal_interphalangeal_1';
{ .AddChildren }
Group176.AddChildren([TouchSensor177]);
Transform178 := TTransformNode.Create;
Transform178.X3DName := 'jx_l_tarsal_interphalangeal_1';
Transform178.Translation := Vector3(0.1086,0,0.0762);
Shape179 := TShapeNode.Create;
Appearance180 := TAppearanceNode.Create;
Appearance180.X3DName := 'ap_l_tarsal_interphalangeal_1';
Material181 := TMaterialNode.Create;
Material181.X3DName := 'm_l_tarsal_interphalangeal_1';
end;

procedure InitHAnimGimbalJointController22Part14;
begin

Material181.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance180.Material := Material181;
{ .SetAppearance }
Shape179.Appearance := Appearance180;
Sphere182 := TSphereNode.Create;
Sphere182.Radius := 0.03;
{ .SetGeometry }
Shape179.Geometry := Sphere182;
{ .AddChild }
Transform178.AddChildren([Shape179]);
{ .AddChildren }
Group176.AddChildren([Transform178]);
Shape183 := TShapeNode.Create;
Appearance184 := TAppearanceNode.Create;
Appearance184.X3DName := 'apl_l_tarsal_interphalangeal_1';
Material185 := TMaterialNode.Create;
Material185.X3DName := 'lm_l_tarsal_interphalangeal_1';
Material185.DiffuseColor := Vector3(0,0,0);
Material185.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance184.Material := Material185;
LineProperties186 := TLinePropertiesNode.Create;
LineProperties186.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance184.LineProperties := LineProperties186;
{ .SetAppearance }
Shape183.Appearance := Appearance184;
LineSet187 := TLineSetNode.Create;
LineSet187.SetVertexCount([2]);
Coordinate188 := TCoordinateNode.Create;
Coordinate188.X3DName := 'lc_l_tarsal_interphalangeal_1_0';
Coordinate188.SetPoint([Vector3(0.1086,0,0.0762),Vector3(0.1086,-0.0001,0.1156)]);
{ .SetCoord }
LineSet187.Coord := Coordinate188;
{ .SetGeometry }
Shape183.Geometry := LineSet187;
{ .AddChildren }
Group176.AddChildren([Shape183]);
{ .AddChildren }
HAnimSegment175.AddChildren([Group176]);
{ .AddChildren }
HAnimJoint174.AddChildren([HAnimSegment175]);
{ .AddChildren }
HAnimJoint159.AddChildren([HAnimJoint174]);
{ .AddChildren }
HAnimJoint144.AddChildren([HAnimJoint159]);
{ .AddChildren }
HAnimJoint129.AddChildren([HAnimJoint144]);
{ .AddChildren }
HAnimJoint106.AddChildren([HAnimJoint129]);
HAnimJoint189 := THAnimJointNode.Create;
HAnimJoint189.X3DName := 'hanim_l_cuneonavicular_2';
HAnimJoint189.Center := Vector3(0.0812,0.025,-0.0805);
HAnimJoint189.SetLlimit([-0.1745,-0.1396,-0.1396]);
HAnimJoint189.SetUlimit([0.1745,0.1396,0.1396]);
HAnimSegment190 := THAnimSegmentNode.Create;
end;

procedure InitHAnimGimbalJointController22Part15;
begin

HAnimSegment190.X3DName := 'hanim_l_cuneiform_2';
TouchSensor191 := TTouchSensorNode.Create;
TouchSensor191.X3DName := 'ts_l_cuneonavicular_2';
TouchSensor191.Description := 'l_cuneonavicular_2';
{ .AddChildren }
HAnimSegment190.AddChildren([TouchSensor191]);
Transform192 := TTransformNode.Create;
Transform192.X3DName := 'jx_l_cuneonavicular_2';
Transform192.Translation := Vector3(0.0812,0.025,-0.0805);
Transform193 := TTransformNode.Create;
Shape194 := TShapeNode.Create;
Appearance195 := TAppearanceNode.Create;
Appearance195.X3DName := 'ap_l_cuneonavicular_2';
Material196 := TMaterialNode.Create;
Material196.X3DName := 'm_l_cuneonavicular_2';
Material196.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance195.Material := Material196;
{ .SetAppearance }
Shape194.Appearance := Appearance195;
Sphere197 := TSphereNode.Create;
Sphere197.Radius := 0.03;
{ .SetGeometry }
Shape194.Geometry := Sphere197;
{ .AddChild }
Transform193.AddChildren([Shape194]);
{ .AddChildren }
Transform192.AddChildren([Transform193]);
{ .AddChildren }
HAnimSegment190.AddChildren([Transform192]);
Shape198 := TShapeNode.Create;
Appearance199 := TAppearanceNode.Create;
Appearance199.X3DName := 'apl_l_cuneonavicular_2';
Material200 := TMaterialNode.Create;
Material200.X3DName := 'lm_l_cuneonavicular_2';
Material200.DiffuseColor := Vector3(0,0,0);
Material200.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance199.Material := Material200;
LineProperties201 := TLinePropertiesNode.Create;
LineProperties201.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance199.LineProperties := LineProperties201;
{ .SetAppearance }
Shape198.Appearance := Appearance199;
LineSet202 := TLineSetNode.Create;
LineSet202.SetVertexCount([2]);
Coordinate203 := TCoordinateNode.Create;
Coordinate203.X3DName := 'lc_l_cuneonavicular_2_0';
Coordinate203.SetPoint([Vector3(0.0812,0.025,-0.0805),Vector3(0.08,0.0175,-0.0608)]);
end;

procedure InitHAnimGimbalJointController22Part16;
begin

{ .SetCoord }
LineSet202.Coord := Coordinate203;
{ .SetGeometry }
Shape198.Geometry := LineSet202;
{ .AddChildren }
HAnimSegment190.AddChildren([Shape198]);
{ .AddChildren }
HAnimJoint189.AddChildren([HAnimSegment190]);
HAnimJoint204 := THAnimJointNode.Create;
HAnimJoint204.X3DName := 'hanim_l_tarsometatarsal_2';
HAnimJoint204.Center := Vector3(0.08,0.0175,-0.0608);
HAnimJoint204.SetLlimit([-0.1396,-0.0698,-0.0175]);
HAnimJoint204.SetUlimit([0.1396,0.0698,0.0175]);
HAnimSegment205 := THAnimSegmentNode.Create;
HAnimSegment205.X3DName := 'hanim_l_metatarsal_2';
TouchSensor206 := TTouchSensorNode.Create;
TouchSensor206.X3DName := 'ts_l_tarsometatarsal_2';
TouchSensor206.Description := 'l_tarsometatarsal_2';
{ .AddChildren }
HAnimSegment205.AddChildren([TouchSensor206]);
Transform207 := TTransformNode.Create;
Transform207.X3DName := 'jx_l_tarsometatarsal_2';
Transform207.Translation := Vector3(0.08,0.0175,-0.0608);
Transform208 := TTransformNode.Create;
Shape209 := TShapeNode.Create;
Appearance210 := TAppearanceNode.Create;
Appearance210.X3DName := 'ap_l_tarsometatarsal_2';
Material211 := TMaterialNode.Create;
Material211.X3DName := 'm_l_tarsometatarsal_2';
Material211.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance210.Material := Material211;
{ .SetAppearance }
Shape209.Appearance := Appearance210;
Sphere212 := TSphereNode.Create;
Sphere212.Radius := 0.03;
{ .SetGeometry }
Shape209.Geometry := Sphere212;
{ .AddChild }
Transform208.AddChildren([Shape209]);
{ .AddChildren }
Transform207.AddChildren([Transform208]);
{ .AddChildren }
HAnimSegment205.AddChildren([Transform207]);
Shape213 := TShapeNode.Create;
Appearance214 := TAppearanceNode.Create;
Appearance214.X3DName := 'apl_l_tarsometatarsal_2';
Material215 := TMaterialNode.Create;
Material215.X3DName := 'lm_l_tarsometatarsal_2';
Material215.DiffuseColor := Vector3(0,0,0);
Material215.EmissiveColor := Vector3(0.35,0.55,0.95);
end;

procedure InitHAnimGimbalJointController22Part17;
begin

{ .SetMaterial }
Appearance214.Material := Material215;
LineProperties216 := TLinePropertiesNode.Create;
LineProperties216.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance214.LineProperties := LineProperties216;
{ .SetAppearance }
Shape213.Appearance := Appearance214;
LineSet217 := TLineSetNode.Create;
LineSet217.SetVertexCount([2]);
Coordinate218 := TCoordinateNode.Create;
Coordinate218.X3DName := 'lc_l_tarsometatarsal_2_0';
Coordinate218.SetPoint([Vector3(0.08,0.0175,-0.0608),Vector3(0.0824,0.0064,-0.004)]);
{ .SetCoord }
LineSet217.Coord := Coordinate218;
{ .SetGeometry }
Shape213.Geometry := LineSet217;
{ .AddChildren }
HAnimSegment205.AddChildren([Shape213]);
{ .AddChildren }
HAnimJoint204.AddChildren([HAnimSegment205]);
HAnimJoint219 := THAnimJointNode.Create;
HAnimJoint219.X3DName := 'hanim_l_metatarsophalangeal_2';
HAnimJoint219.Center := Vector3(0.0824,0.0064,-0.004);
HAnimJoint219.SetLlimit([-1.0472,-0.1745,-0.0175]);
HAnimJoint219.SetUlimit([0.6981,0.1745,0.0175]);
HAnimSegment220 := THAnimSegmentNode.Create;
HAnimSegment220.X3DName := 'hanim_l_tarsal_proximal_phalanx_2';
TouchSensor221 := TTouchSensorNode.Create;
TouchSensor221.X3DName := 'ts_l_metatarsophalangeal_2';
TouchSensor221.Description := 'l_metatarsophalangeal_2';
{ .AddChildren }
HAnimSegment220.AddChildren([TouchSensor221]);
Transform222 := TTransformNode.Create;
Transform222.X3DName := 'jx_l_metatarsophalangeal_2';
Transform222.Translation := Vector3(0.0824,0.0064,-0.004);
Transform223 := TTransformNode.Create;
Shape224 := TShapeNode.Create;
Appearance225 := TAppearanceNode.Create;
Appearance225.X3DName := 'ap_l_metatarsophalangeal_2';
Material226 := TMaterialNode.Create;
Material226.X3DName := 'm_l_metatarsophalangeal_2';
Material226.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance225.Material := Material226;
{ .SetAppearance }
Shape224.Appearance := Appearance225;
Sphere227 := TSphereNode.Create;
Sphere227.Radius := 0.03;
{ .SetGeometry }
Shape224.Geometry := Sphere227;
end;

procedure InitHAnimGimbalJointController22Part18;
begin

{ .AddChild }
Transform223.AddChildren([Shape224]);
{ .AddChildren }
Transform222.AddChildren([Transform223]);
{ .AddChildren }
HAnimSegment220.AddChildren([Transform222]);
Shape228 := TShapeNode.Create;
Appearance229 := TAppearanceNode.Create;
Appearance229.X3DName := 'apl_l_metatarsophalangeal_2';
Material230 := TMaterialNode.Create;
Material230.X3DName := 'lm_l_metatarsophalangeal_2';
Material230.DiffuseColor := Vector3(0,0,0);
Material230.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance229.Material := Material230;
LineProperties231 := TLinePropertiesNode.Create;
LineProperties231.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance229.LineProperties := LineProperties231;
{ .SetAppearance }
Shape228.Appearance := Appearance229;
LineSet232 := TLineSetNode.Create;
LineSet232.SetVertexCount([2]);
Coordinate233 := TCoordinateNode.Create;
Coordinate233.X3DName := 'lc_l_metatarsophalangeal_2_0';
Coordinate233.SetPoint([Vector3(0.0824,0.0064,-0.004),Vector3(0.0841,0.0041,0.0121)]);
{ .SetCoord }
LineSet232.Coord := Coordinate233;
{ .SetGeometry }
Shape228.Geometry := LineSet232;
{ .AddChildren }
HAnimSegment220.AddChildren([Shape228]);
{ .AddChildren }
HAnimJoint219.AddChildren([HAnimSegment220]);
HAnimJoint234 := THAnimJointNode.Create;
HAnimJoint234.X3DName := 'hanim_l_tarsal_proximal_interphalangeal_2';
HAnimJoint234.Center := Vector3(0.0841,0.0041,0.0121);
HAnimJoint234.SetLlimit([-0.1745,-0.0175,-0.0175]);
HAnimJoint234.SetUlimit([1.2217,0.0175,0.0175]);
HAnimSegment235 := THAnimSegmentNode.Create;
HAnimSegment235.X3DName := 'hanim_l_tarsal_middle_phalanx_2';
TouchSensor236 := TTouchSensorNode.Create;
TouchSensor236.X3DName := 'ts_l_tarsal_proximal_interphalangeal_2';
TouchSensor236.Description := 'l_tarsal_proximal_interphalangeal_2';
{ .AddChildren }
HAnimSegment235.AddChildren([TouchSensor236]);
Transform237 := TTransformNode.Create;
Transform237.X3DName := 'jx_l_tarsal_proximal_interphalangeal_2';
Transform237.Translation := Vector3(0.0841,0.0041,0.0121);
Transform238 := TTransformNode.Create;
Shape239 := TShapeNode.Create;
end;

procedure InitHAnimGimbalJointController22Part19;
begin

Appearance240 := TAppearanceNode.Create;
Appearance240.X3DName := 'ap_l_tarsal_proximal_interphalangeal_2';
Material241 := TMaterialNode.Create;
Material241.X3DName := 'm_l_tarsal_proximal_interphalangeal_2';
Material241.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance240.Material := Material241;
{ .SetAppearance }
Shape239.Appearance := Appearance240;
Sphere242 := TSphereNode.Create;
Sphere242.Radius := 0.03;
{ .SetGeometry }
Shape239.Geometry := Sphere242;
{ .AddChild }
Transform238.AddChildren([Shape239]);
{ .AddChildren }
Transform237.AddChildren([Transform238]);
{ .AddChildren }
HAnimSegment235.AddChildren([Transform237]);
Shape243 := TShapeNode.Create;
Appearance244 := TAppearanceNode.Create;
Appearance244.X3DName := 'apl_l_tarsal_proximal_interphalangeal_2';
Material245 := TMaterialNode.Create;
Material245.X3DName := 'lm_l_tarsal_proximal_interphalangeal_2';
Material245.DiffuseColor := Vector3(0,0,0);
Material245.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance244.Material := Material245;
LineProperties246 := TLinePropertiesNode.Create;
LineProperties246.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance244.LineProperties := LineProperties246;
{ .SetAppearance }
Shape243.Appearance := Appearance244;
LineSet247 := TLineSetNode.Create;
LineSet247.SetVertexCount([2]);
Coordinate248 := TCoordinateNode.Create;
Coordinate248.X3DName := 'lc_l_tarsal_proximal_interphalangeal_2_0';
Coordinate248.SetPoint([Vector3(0.0841,0.0041,0.0121),Vector3(0.0841,0.0013,0.0216)]);
{ .SetCoord }
LineSet247.Coord := Coordinate248;
{ .SetGeometry }
Shape243.Geometry := LineSet247;
{ .AddChildren }
HAnimSegment235.AddChildren([Shape243]);
{ .AddChildren }
HAnimJoint234.AddChildren([HAnimSegment235]);
HAnimJoint249 := THAnimJointNode.Create;
HAnimJoint249.X3DName := 'hanim_l_tarsal_distal_interphalangeal_2';
HAnimJoint249.Center := Vector3(0.0841,0.0013,0.0216);
HAnimJoint249.SetLlimit([-0.1745,-0.0175,-0.0175]);
HAnimJoint249.SetUlimit([1.2217,0.0175,0.0175]);
HAnimSegment250 := THAnimSegmentNode.Create;
end;

procedure InitHAnimGimbalJointController22Part20;
begin

HAnimSegment250.X3DName := 'hanim_l_tarsal_distal_phalanx_2';
Group251 := TGroupNode.Create;
Group251.X3DName := 'jg_l_tarsal_distal_interphalangeal_2';
TouchSensor252 := TTouchSensorNode.Create;
TouchSensor252.X3DName := 'ts_l_tarsal_distal_interphalangeal_2';
TouchSensor252.Description := 'l_tarsal_distal_interphalangeal_2';
{ .AddChildren }
Group251.AddChildren([TouchSensor252]);
Transform253 := TTransformNode.Create;
Transform253.X3DName := 'jx_l_tarsal_distal_interphalangeal_2';
Transform253.Translation := Vector3(0.0841,0.0013,0.0216);
Shape254 := TShapeNode.Create;
Appearance255 := TAppearanceNode.Create;
Appearance255.X3DName := 'ap_l_tarsal_distal_interphalangeal_2';
Material256 := TMaterialNode.Create;
Material256.X3DName := 'm_l_tarsal_distal_interphalangeal_2';
Material256.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance255.Material := Material256;
{ .SetAppearance }
Shape254.Appearance := Appearance255;
Sphere257 := TSphereNode.Create;
Sphere257.Radius := 0.03;
{ .SetGeometry }
Shape254.Geometry := Sphere257;
{ .AddChild }
Transform253.AddChildren([Shape254]);
{ .AddChildren }
Group251.AddChildren([Transform253]);
Shape258 := TShapeNode.Create;
Appearance259 := TAppearanceNode.Create;
Appearance259.X3DName := 'apl_l_tarsal_distal_interphalangeal_2';
Material260 := TMaterialNode.Create;
Material260.X3DName := 'lm_l_tarsal_distal_interphalangeal_2';
Material260.DiffuseColor := Vector3(0,0,0);
Material260.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance259.Material := Material260;
LineProperties261 := TLinePropertiesNode.Create;
LineProperties261.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance259.LineProperties := LineProperties261;
{ .SetAppearance }
Shape258.Appearance := Appearance259;
LineSet262 := TLineSetNode.Create;
LineSet262.SetVertexCount([2]);
Coordinate263 := TCoordinateNode.Create;
Coordinate263.X3DName := 'lc_l_tarsal_distal_interphalangeal_2_0';
Coordinate263.SetPoint([Vector3(0.0841,0.0013,0.0216),Vector3(0.0841,-0.0029,0.036)]);
end;

procedure InitHAnimGimbalJointController22Part21;
begin

{ .SetCoord }
LineSet262.Coord := Coordinate263;
{ .SetGeometry }
Shape258.Geometry := LineSet262;
{ .AddChildren }
Group251.AddChildren([Shape258]);
{ .AddChildren }
HAnimSegment250.AddChildren([Group251]);
{ .AddChildren }
HAnimJoint249.AddChildren([HAnimSegment250]);
{ .AddChildren }
HAnimJoint234.AddChildren([HAnimJoint249]);
{ .AddChildren }
HAnimJoint219.AddChildren([HAnimJoint234]);
{ .AddChildren }
HAnimJoint204.AddChildren([HAnimJoint219]);
{ .AddChildren }
HAnimJoint189.AddChildren([HAnimJoint204]);
{ .AddChildren }
HAnimJoint106.AddChildren([HAnimJoint189]);
HAnimJoint264 := THAnimJointNode.Create;
HAnimJoint264.X3DName := 'hanim_l_cuneonavicular_3';
HAnimJoint264.Center := Vector3(0.0928,0.0248,-0.0821);
HAnimJoint264.SetLlimit([-0.1745,-0.1396,-0.1396]);
HAnimJoint264.SetUlimit([0.1745,0.1396,0.1396]);
HAnimSegment265 := THAnimSegmentNode.Create;
HAnimSegment265.X3DName := 'hanim_l_cuneiform_3';
TouchSensor266 := TTouchSensorNode.Create;
TouchSensor266.X3DName := 'ts_l_cuneonavicular_3';
TouchSensor266.Description := 'l_cuneonavicular_3';
{ .AddChildren }
HAnimSegment265.AddChildren([TouchSensor266]);
Transform267 := TTransformNode.Create;
Transform267.X3DName := 'jx_l_cuneonavicular_3';
Transform267.Translation := Vector3(0.0928,0.0248,-0.0821);
Transform268 := TTransformNode.Create;
Shape269 := TShapeNode.Create;
Appearance270 := TAppearanceNode.Create;
Appearance270.X3DName := 'ap_l_cuneonavicular_3';
Material271 := TMaterialNode.Create;
Material271.X3DName := 'm_l_cuneonavicular_3';
Material271.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance270.Material := Material271;
{ .SetAppearance }
Shape269.Appearance := Appearance270;
Sphere272 := TSphereNode.Create;
Sphere272.Radius := 0.03;
{ .SetGeometry }
Shape269.Geometry := Sphere272;
{ .AddChild }
Transform268.AddChildren([Shape269]);
{ .AddChildren }
Transform267.AddChildren([Transform268]);
{ .AddChildren }
HAnimSegment265.AddChildren([Transform267]);
Shape273 := TShapeNode.Create;
end;

procedure InitHAnimGimbalJointController22Part22;
begin

Appearance274 := TAppearanceNode.Create;
Appearance274.X3DName := 'apl_l_cuneonavicular_3';
Material275 := TMaterialNode.Create;
Material275.X3DName := 'lm_l_cuneonavicular_3';
Material275.DiffuseColor := Vector3(0,0,0);
Material275.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance274.Material := Material275;
LineProperties276 := TLinePropertiesNode.Create;
LineProperties276.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance274.LineProperties := LineProperties276;
{ .SetAppearance }
Shape273.Appearance := Appearance274;
LineSet277 := TLineSetNode.Create;
LineSet277.SetVertexCount([2]);
Coordinate278 := TCoordinateNode.Create;
Coordinate278.X3DName := 'lc_l_cuneonavicular_3_0';
Coordinate278.SetPoint([Vector3(0.0928,0.0248,-0.0821),Vector3(0.0944,0.0175,-0.0625)]);
{ .SetCoord }
LineSet277.Coord := Coordinate278;
{ .SetGeometry }
Shape273.Geometry := LineSet277;
{ .AddChildren }
HAnimSegment265.AddChildren([Shape273]);
{ .AddChildren }
HAnimJoint264.AddChildren([HAnimSegment265]);
HAnimJoint279 := THAnimJointNode.Create;
HAnimJoint279.X3DName := 'hanim_l_tarsometatarsal_3';
HAnimJoint279.Center := Vector3(0.0944,0.0175,-0.0625);
HAnimJoint279.SetLlimit([-0.1396,-0.0698,-0.0175]);
HAnimJoint279.SetUlimit([0.1396,0.0698,0.0175]);
HAnimSegment280 := THAnimSegmentNode.Create;
HAnimSegment280.X3DName := 'hanim_l_metatarsal_3';
TouchSensor281 := TTouchSensorNode.Create;
TouchSensor281.X3DName := 'ts_l_tarsometatarsal_3';
TouchSensor281.Description := 'l_tarsometatarsal_3';
{ .AddChildren }
HAnimSegment280.AddChildren([TouchSensor281]);
Transform282 := TTransformNode.Create;
Transform282.X3DName := 'jx_l_tarsometatarsal_3';
Transform282.Translation := Vector3(0.0944,0.0175,-0.0625);
Transform283 := TTransformNode.Create;
Shape284 := TShapeNode.Create;
Appearance285 := TAppearanceNode.Create;
Appearance285.X3DName := 'ap_l_tarsometatarsal_3';
Material286 := TMaterialNode.Create;
Material286.X3DName := 'm_l_tarsometatarsal_3';
end;

procedure InitHAnimGimbalJointController22Part23;
begin

Material286.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance285.Material := Material286;
{ .SetAppearance }
Shape284.Appearance := Appearance285;
Sphere287 := TSphereNode.Create;
Sphere287.Radius := 0.03;
{ .SetGeometry }
Shape284.Geometry := Sphere287;
{ .AddChild }
Transform283.AddChildren([Shape284]);
{ .AddChildren }
Transform282.AddChildren([Transform283]);
{ .AddChildren }
HAnimSegment280.AddChildren([Transform282]);
Shape288 := TShapeNode.Create;
Appearance289 := TAppearanceNode.Create;
Appearance289.X3DName := 'apl_l_tarsometatarsal_3';
Material290 := TMaterialNode.Create;
Material290.X3DName := 'lm_l_tarsometatarsal_3';
Material290.DiffuseColor := Vector3(0,0,0);
Material290.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance289.Material := Material290;
LineProperties291 := TLinePropertiesNode.Create;
LineProperties291.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance289.LineProperties := LineProperties291;
{ .SetAppearance }
Shape288.Appearance := Appearance289;
LineSet292 := TLineSetNode.Create;
LineSet292.SetVertexCount([2]);
Coordinate293 := TCoordinateNode.Create;
Coordinate293.X3DName := 'lc_l_tarsometatarsal_3_0';
Coordinate293.SetPoint([Vector3(0.0944,0.0175,-0.0625),Vector3(0.0963,0.0065,-0.0065)]);
{ .SetCoord }
LineSet292.Coord := Coordinate293;
{ .SetGeometry }
Shape288.Geometry := LineSet292;
{ .AddChildren }
HAnimSegment280.AddChildren([Shape288]);
{ .AddChildren }
HAnimJoint279.AddChildren([HAnimSegment280]);
HAnimJoint294 := THAnimJointNode.Create;
HAnimJoint294.X3DName := 'hanim_l_metatarsophalangeal_3';
HAnimJoint294.Center := Vector3(0.0963,0.0065,-0.0065);
HAnimJoint294.SetLlimit([-1.0472,-0.1745,-0.0175]);
HAnimJoint294.SetUlimit([0.6981,0.1745,0.0175]);
HAnimSegment295 := THAnimSegmentNode.Create;
HAnimSegment295.X3DName := 'hanim_l_tarsal_proximal_phalanx_3';
TouchSensor296 := TTouchSensorNode.Create;
TouchSensor296.X3DName := 'ts_l_metatarsophalangeal_3';
TouchSensor296.Description := 'l_metatarsophalangeal_3';
end;

procedure InitHAnimGimbalJointController22Part24;
begin

{ .AddChildren }
HAnimSegment295.AddChildren([TouchSensor296]);
Transform297 := TTransformNode.Create;
Transform297.X3DName := 'jx_l_metatarsophalangeal_3';
Transform297.Translation := Vector3(0.0963,0.0065,-0.0065);
Transform298 := TTransformNode.Create;
Shape299 := TShapeNode.Create;
Appearance300 := TAppearanceNode.Create;
Appearance300.X3DName := 'ap_l_metatarsophalangeal_3';
Material301 := TMaterialNode.Create;
Material301.X3DName := 'm_l_metatarsophalangeal_3';
Material301.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance300.Material := Material301;
{ .SetAppearance }
Shape299.Appearance := Appearance300;
Sphere302 := TSphereNode.Create;
Sphere302.Radius := 0.03;
{ .SetGeometry }
Shape299.Geometry := Sphere302;
{ .AddChild }
Transform298.AddChildren([Shape299]);
{ .AddChildren }
Transform297.AddChildren([Transform298]);
{ .AddChildren }
HAnimSegment295.AddChildren([Transform297]);
Shape303 := TShapeNode.Create;
Appearance304 := TAppearanceNode.Create;
Appearance304.X3DName := 'apl_l_metatarsophalangeal_3';
Material305 := TMaterialNode.Create;
Material305.X3DName := 'lm_l_metatarsophalangeal_3';
Material305.DiffuseColor := Vector3(0,0,0);
Material305.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance304.Material := Material305;
LineProperties306 := TLinePropertiesNode.Create;
LineProperties306.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance304.LineProperties := LineProperties306;
{ .SetAppearance }
Shape303.Appearance := Appearance304;
LineSet307 := TLineSetNode.Create;
LineSet307.SetVertexCount([2]);
Coordinate308 := TCoordinateNode.Create;
Coordinate308.X3DName := 'lc_l_metatarsophalangeal_3_0';
Coordinate308.SetPoint([Vector3(0.0963,0.0065,-0.0065),Vector3(0.0987,0.0034,0.0086)]);
{ .SetCoord }
LineSet307.Coord := Coordinate308;
{ .SetGeometry }
Shape303.Geometry := LineSet307;
{ .AddChildren }
HAnimSegment295.AddChildren([Shape303]);
{ .AddChildren }
HAnimJoint294.AddChildren([HAnimSegment295]);
end;

procedure InitHAnimGimbalJointController22Part25;
begin

HAnimJoint309 := THAnimJointNode.Create;
HAnimJoint309.X3DName := 'hanim_l_tarsal_proximal_interphalangeal_3';
HAnimJoint309.Center := Vector3(0.0987,0.0034,0.0086);
HAnimJoint309.SetLlimit([-0.1745,-0.0175,-0.0175]);
HAnimJoint309.SetUlimit([1.2217,0.0175,0.0175]);
HAnimSegment310 := THAnimSegmentNode.Create;
HAnimSegment310.X3DName := 'hanim_l_tarsal_middle_phalanx_3';
TouchSensor311 := TTouchSensorNode.Create;
TouchSensor311.X3DName := 'ts_l_tarsal_proximal_interphalangeal_3';
TouchSensor311.Description := 'l_tarsal_proximal_interphalangeal_3';
{ .AddChildren }
HAnimSegment310.AddChildren([TouchSensor311]);
Transform312 := TTransformNode.Create;
Transform312.X3DName := 'jx_l_tarsal_proximal_interphalangeal_3';
Transform312.Translation := Vector3(0.0987,0.0034,0.0086);
Transform313 := TTransformNode.Create;
Shape314 := TShapeNode.Create;
Appearance315 := TAppearanceNode.Create;
Appearance315.X3DName := 'ap_l_tarsal_proximal_interphalangeal_3';
Material316 := TMaterialNode.Create;
Material316.X3DName := 'm_l_tarsal_proximal_interphalangeal_3';
Material316.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance315.Material := Material316;
{ .SetAppearance }
Shape314.Appearance := Appearance315;
Sphere317 := TSphereNode.Create;
Sphere317.Radius := 0.03;
{ .SetGeometry }
Shape314.Geometry := Sphere317;
{ .AddChild }
Transform313.AddChildren([Shape314]);
{ .AddChildren }
Transform312.AddChildren([Transform313]);
{ .AddChildren }
HAnimSegment310.AddChildren([Transform312]);
Shape318 := TShapeNode.Create;
Appearance319 := TAppearanceNode.Create;
Appearance319.X3DName := 'apl_l_tarsal_proximal_interphalangeal_3';
Material320 := TMaterialNode.Create;
Material320.X3DName := 'lm_l_tarsal_proximal_interphalangeal_3';
Material320.DiffuseColor := Vector3(0,0,0);
Material320.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance319.Material := Material320;
LineProperties321 := TLinePropertiesNode.Create;
LineProperties321.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance319.LineProperties := LineProperties321;
end;

procedure InitHAnimGimbalJointController22Part26;
begin

{ .SetAppearance }
Shape318.Appearance := Appearance319;
LineSet322 := TLineSetNode.Create;
LineSet322.SetVertexCount([2]);
Coordinate323 := TCoordinateNode.Create;
Coordinate323.X3DName := 'lc_l_tarsal_proximal_interphalangeal_3_0';
Coordinate323.SetPoint([Vector3(0.0987,0.0034,0.0086),Vector3(0.1002,0.0013,0.0178)]);
{ .SetCoord }
LineSet322.Coord := Coordinate323;
{ .SetGeometry }
Shape318.Geometry := LineSet322;
{ .AddChildren }
HAnimSegment310.AddChildren([Shape318]);
{ .AddChildren }
HAnimJoint309.AddChildren([HAnimSegment310]);
HAnimJoint324 := THAnimJointNode.Create;
HAnimJoint324.X3DName := 'hanim_l_tarsal_distal_interphalangeal_3';
HAnimJoint324.Center := Vector3(0.1002,0.0013,0.0178);
HAnimJoint324.SetLlimit([-0.1745,-0.0175,-0.0175]);
HAnimJoint324.SetUlimit([1.2217,0.0175,0.0175]);
HAnimSegment325 := THAnimSegmentNode.Create;
HAnimSegment325.X3DName := 'hanim_l_tarsal_distal_phalanx_3';
Group326 := TGroupNode.Create;
Group326.X3DName := 'jg_l_tarsal_distal_interphalangeal_3';
TouchSensor327 := TTouchSensorNode.Create;
TouchSensor327.X3DName := 'ts_l_tarsal_distal_interphalangeal_3';
TouchSensor327.Description := 'l_tarsal_distal_interphalangeal_3';
{ .AddChildren }
Group326.AddChildren([TouchSensor327]);
Transform328 := TTransformNode.Create;
Transform328.X3DName := 'jx_l_tarsal_distal_interphalangeal_3';
Transform328.Translation := Vector3(0.1002,0.0013,0.0178);
Shape329 := TShapeNode.Create;
Appearance330 := TAppearanceNode.Create;
Appearance330.X3DName := 'ap_l_tarsal_distal_interphalangeal_3';
Material331 := TMaterialNode.Create;
Material331.X3DName := 'm_l_tarsal_distal_interphalangeal_3';
Material331.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance330.Material := Material331;
{ .SetAppearance }
Shape329.Appearance := Appearance330;
Sphere332 := TSphereNode.Create;
Sphere332.Radius := 0.03;
{ .SetGeometry }
Shape329.Geometry := Sphere332;
{ .AddChild }
Transform328.AddChildren([Shape329]);
{ .AddChildren }
Group326.AddChildren([Transform328]);
Shape333 := TShapeNode.Create;
end;

procedure InitHAnimGimbalJointController22Part27;
begin

Appearance334 := TAppearanceNode.Create;
Appearance334.X3DName := 'apl_l_tarsal_distal_interphalangeal_3';
Material335 := TMaterialNode.Create;
Material335.X3DName := 'lm_l_tarsal_distal_interphalangeal_3';
Material335.DiffuseColor := Vector3(0,0,0);
Material335.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance334.Material := Material335;
LineProperties336 := TLinePropertiesNode.Create;
LineProperties336.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance334.LineProperties := LineProperties336;
{ .SetAppearance }
Shape333.Appearance := Appearance334;
LineSet337 := TLineSetNode.Create;
LineSet337.SetVertexCount([2]);
Coordinate338 := TCoordinateNode.Create;
Coordinate338.X3DName := 'lc_l_tarsal_distal_interphalangeal_3_0';
Coordinate338.SetPoint([Vector3(0.1002,0.0013,0.0178),Vector3(0.1026,-0.002,0.0322)]);
{ .SetCoord }
LineSet337.Coord := Coordinate338;
{ .SetGeometry }
Shape333.Geometry := LineSet337;
{ .AddChildren }
Group326.AddChildren([Shape333]);
{ .AddChildren }
HAnimSegment325.AddChildren([Group326]);
{ .AddChildren }
HAnimJoint324.AddChildren([HAnimSegment325]);
{ .AddChildren }
HAnimJoint309.AddChildren([HAnimJoint324]);
{ .AddChildren }
HAnimJoint294.AddChildren([HAnimJoint309]);
{ .AddChildren }
HAnimJoint279.AddChildren([HAnimJoint294]);
{ .AddChildren }
HAnimJoint264.AddChildren([HAnimJoint279]);
{ .AddChildren }
HAnimJoint106.AddChildren([HAnimJoint264]);
{ .AddChildren }
HAnimJoint87.AddChildren([HAnimJoint106]);
HAnimJoint339 := THAnimJointNode.Create;
HAnimJoint339.X3DName := 'hanim_l_calcaneocuboid';
HAnimJoint339.Center := Vector3(0.0889,0.0494,-0.1278);
HAnimJoint339.SetLlimit([-0.1745,-0.1396,-0.1396]);
HAnimJoint339.SetUlimit([0.1745,0.1396,0.1396]);
HAnimSegment340 := THAnimSegmentNode.Create;
HAnimSegment340.X3DName := 'hanim_l_calcaneus';
TouchSensor341 := TTouchSensorNode.Create;
TouchSensor341.X3DName := 'ts_l_calcaneocuboid';
TouchSensor341.Description := 'l_calcaneocuboid';
{ .AddChildren }
HAnimSegment340.AddChildren([TouchSensor341]);
Transform342 := TTransformNode.Create;
Transform342.X3DName := 'jx_l_calcaneocuboid';
end;

procedure InitHAnimGimbalJointController22Part28;
begin

Transform342.Translation := Vector3(0.0889,0.0494,-0.1278);
Transform343 := TTransformNode.Create;
Shape344 := TShapeNode.Create;
Appearance345 := TAppearanceNode.Create;
Appearance345.X3DName := 'ap_l_calcaneocuboid';
Material346 := TMaterialNode.Create;
Material346.X3DName := 'm_l_calcaneocuboid';
Material346.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance345.Material := Material346;
{ .SetAppearance }
Shape344.Appearance := Appearance345;
Sphere347 := TSphereNode.Create;
Sphere347.Radius := 0.03;
{ .SetGeometry }
Shape344.Geometry := Sphere347;
{ .AddChild }
Transform343.AddChildren([Shape344]);
{ .AddChildren }
Transform342.AddChildren([Transform343]);
{ .AddChildren }
HAnimSegment340.AddChildren([Transform342]);
Shape348 := TShapeNode.Create;
Appearance349 := TAppearanceNode.Create;
Appearance349.X3DName := 'apl_l_calcaneocuboid';
Material350 := TMaterialNode.Create;
Material350.X3DName := 'lm_l_calcaneocuboid';
Material350.DiffuseColor := Vector3(0,0,0);
Material350.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance349.Material := Material350;
LineProperties351 := TLinePropertiesNode.Create;
LineProperties351.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance349.LineProperties := LineProperties351;
{ .SetAppearance }
Shape348.Appearance := Appearance349;
LineSet352 := TLineSetNode.Create;
LineSet352.SetVertexCount([2]);
Coordinate353 := TCoordinateNode.Create;
Coordinate353.X3DName := 'lc_l_calcaneocuboid_0';
Coordinate353.SetPoint([Vector3(0.0889,0.0494,-0.1278),Vector3(0.1105,0.0267,-0.0998)]);
{ .SetCoord }
LineSet352.Coord := Coordinate353;
{ .SetGeometry }
Shape348.Geometry := LineSet352;
{ .AddChildren }
HAnimSegment340.AddChildren([Shape348]);
{ .AddChildren }
HAnimJoint339.AddChildren([HAnimSegment340]);
HAnimJoint354 := THAnimJointNode.Create;
HAnimJoint354.X3DName := 'hanim_l_transversetarsal';
HAnimJoint354.Center := Vector3(0.1105,0.0267,-0.0998);
end;

procedure InitHAnimGimbalJointController22Part29;
begin

HAnimJoint354.SetLlimit([-0.1745,-0.1396,-0.1396]);
HAnimJoint354.SetUlimit([0.1745,0.1396,0.1396]);
HAnimSegment355 := THAnimSegmentNode.Create;
HAnimSegment355.X3DName := 'hanim_l_cuboid';
TouchSensor356 := TTouchSensorNode.Create;
TouchSensor356.X3DName := 'ts_l_transversetarsal';
TouchSensor356.Description := 'l_transversetarsal';
{ .AddChildren }
HAnimSegment355.AddChildren([TouchSensor356]);
Transform357 := TTransformNode.Create;
Transform357.X3DName := 'jx_l_transversetarsal';
Transform357.Translation := Vector3(0.1105,0.0267,-0.0998);
Transform358 := TTransformNode.Create;
Shape359 := TShapeNode.Create;
Appearance360 := TAppearanceNode.Create;
Appearance360.X3DName := 'ap_l_transversetarsal';
Material361 := TMaterialNode.Create;
Material361.X3DName := 'm_l_transversetarsal';
Material361.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance360.Material := Material361;
{ .SetAppearance }
Shape359.Appearance := Appearance360;
Sphere362 := TSphereNode.Create;
Sphere362.Radius := 0.03;
{ .SetGeometry }
Shape359.Geometry := Sphere362;
{ .AddChild }
Transform358.AddChildren([Shape359]);
{ .AddChildren }
Transform357.AddChildren([Transform358]);
{ .AddChildren }
HAnimSegment355.AddChildren([Transform357]);
Shape363 := TShapeNode.Create;
Appearance364 := TAppearanceNode.Create;
Appearance364.X3DName := 'apl_l_transversetarsal';
Material365 := TMaterialNode.Create;
Material365.X3DName := 'lm_l_transversetarsal';
Material365.DiffuseColor := Vector3(0,0,0);
Material365.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance364.Material := Material365;
LineProperties366 := TLinePropertiesNode.Create;
LineProperties366.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance364.LineProperties := LineProperties366;
{ .SetAppearance }
Shape363.Appearance := Appearance364;
LineSet367 := TLineSetNode.Create;
LineSet367.SetVertexCount([2]);
end;

procedure InitHAnimGimbalJointController22Part30;
begin

Coordinate368 := TCoordinateNode.Create;
Coordinate368.X3DName := 'lc_l_transversetarsal_0';
Coordinate368.SetPoint([Vector3(0.1105,0.0267,-0.0998),Vector3(0.1063,0.016,-0.0634)]);
{ .SetCoord }
LineSet367.Coord := Coordinate368;
{ .SetGeometry }
Shape363.Geometry := LineSet367;
{ .AddChildren }
HAnimSegment355.AddChildren([Shape363]);
Shape369 := TShapeNode.Create;
{ .SetAppearance }
Shape369.Appearance := Appearance364;
LineSet371 := TLineSetNode.Create;
LineSet371.SetVertexCount([2]);
Coordinate372 := TCoordinateNode.Create;
Coordinate372.X3DName := 'lc_l_transversetarsal_1';
Coordinate372.SetPoint([Vector3(0.1105,0.0267,-0.0998),Vector3(0.1206,0.0124,-0.0671)]);
{ .SetCoord }
LineSet371.Coord := Coordinate372;
{ .SetGeometry }
Shape369.Geometry := LineSet371;
{ .AddChildren }
HAnimSegment355.AddChildren([Shape369]);
{ .AddChildren }
HAnimJoint354.AddChildren([HAnimSegment355]);
HAnimJoint373 := THAnimJointNode.Create;
HAnimJoint373.X3DName := 'hanim_l_tarsometatarsal_4';
HAnimJoint373.Center := Vector3(0.1063,0.016,-0.0634);
HAnimJoint373.SetLlimit([-0.1396,-0.0698,-0.0175]);
HAnimJoint373.SetUlimit([0.1396,0.0698,0.0175]);
HAnimSegment374 := THAnimSegmentNode.Create;
HAnimSegment374.X3DName := 'hanim_l_metatarsal_4';
TouchSensor375 := TTouchSensorNode.Create;
TouchSensor375.X3DName := 'ts_l_tarsometatarsal_4';
TouchSensor375.Description := 'l_tarsometatarsal_4';
{ .AddChildren }
HAnimSegment374.AddChildren([TouchSensor375]);
Transform376 := TTransformNode.Create;
Transform376.X3DName := 'jx_l_tarsometatarsal_4';
Transform376.Translation := Vector3(0.1063,0.016,-0.0634);
Transform377 := TTransformNode.Create;
Shape378 := TShapeNode.Create;
Appearance379 := TAppearanceNode.Create;
Appearance379.X3DName := 'ap_l_tarsometatarsal_4';
Material380 := TMaterialNode.Create;
Material380.X3DName := 'm_l_tarsometatarsal_4';
Material380.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance379.Material := Material380;
{ .SetAppearance }
Shape378.Appearance := Appearance379;
end;

procedure InitHAnimGimbalJointController22Part31;
begin

Sphere381 := TSphereNode.Create;
Sphere381.Radius := 0.03;
{ .SetGeometry }
Shape378.Geometry := Sphere381;
{ .AddChild }
Transform377.AddChildren([Shape378]);
{ .AddChildren }
Transform376.AddChildren([Transform377]);
{ .AddChildren }
HAnimSegment374.AddChildren([Transform376]);
Shape382 := TShapeNode.Create;
Appearance383 := TAppearanceNode.Create;
Appearance383.X3DName := 'apl_l_tarsometatarsal_4';
Material384 := TMaterialNode.Create;
Material384.X3DName := 'lm_l_tarsometatarsal_4';
Material384.DiffuseColor := Vector3(0,0,0);
Material384.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance383.Material := Material384;
LineProperties385 := TLinePropertiesNode.Create;
LineProperties385.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance383.LineProperties := LineProperties385;
{ .SetAppearance }
Shape382.Appearance := Appearance383;
LineSet386 := TLineSetNode.Create;
LineSet386.SetVertexCount([2]);
Coordinate387 := TCoordinateNode.Create;
Coordinate387.X3DName := 'lc_l_tarsometatarsal_4_0';
Coordinate387.SetPoint([Vector3(0.1063,0.016,-0.0634),Vector3(0.1097,0.0058,-0.0107)]);
{ .SetCoord }
LineSet386.Coord := Coordinate387;
{ .SetGeometry }
Shape382.Geometry := LineSet386;
{ .AddChildren }
HAnimSegment374.AddChildren([Shape382]);
{ .AddChildren }
HAnimJoint373.AddChildren([HAnimSegment374]);
HAnimJoint388 := THAnimJointNode.Create;
HAnimJoint388.X3DName := 'hanim_l_metatarsophalangeal_4';
HAnimJoint388.Center := Vector3(0.1097,0.0058,-0.0107);
HAnimJoint388.SetLlimit([-1.0472,-0.1745,-0.0175]);
HAnimJoint388.SetUlimit([0.6981,0.1745,0.0175]);
HAnimSegment389 := THAnimSegmentNode.Create;
HAnimSegment389.X3DName := 'hanim_l_tarsal_proximal_phalanx_4';
TouchSensor390 := TTouchSensorNode.Create;
TouchSensor390.X3DName := 'ts_l_metatarsophalangeal_4';
TouchSensor390.Description := 'l_metatarsophalangeal_4';
{ .AddChildren }
HAnimSegment389.AddChildren([TouchSensor390]);
Transform391 := TTransformNode.Create;
Transform391.X3DName := 'jx_l_metatarsophalangeal_4';
end;

procedure InitHAnimGimbalJointController22Part32;
begin

Transform391.Translation := Vector3(0.1097,0.0058,-0.0107);
Transform392 := TTransformNode.Create;
Shape393 := TShapeNode.Create;
Appearance394 := TAppearanceNode.Create;
Appearance394.X3DName := 'ap_l_metatarsophalangeal_4';
Material395 := TMaterialNode.Create;
Material395.X3DName := 'm_l_metatarsophalangeal_4';
Material395.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance394.Material := Material395;
{ .SetAppearance }
Shape393.Appearance := Appearance394;
Sphere396 := TSphereNode.Create;
Sphere396.Radius := 0.03;
{ .SetGeometry }
Shape393.Geometry := Sphere396;
{ .AddChild }
Transform392.AddChildren([Shape393]);
{ .AddChildren }
Transform391.AddChildren([Transform392]);
{ .AddChildren }
HAnimSegment389.AddChildren([Transform391]);
Shape397 := TShapeNode.Create;
Appearance398 := TAppearanceNode.Create;
Appearance398.X3DName := 'apl_l_metatarsophalangeal_4';
Material399 := TMaterialNode.Create;
Material399.X3DName := 'lm_l_metatarsophalangeal_4';
Material399.DiffuseColor := Vector3(0,0,0);
Material399.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance398.Material := Material399;
LineProperties400 := TLinePropertiesNode.Create;
LineProperties400.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance398.LineProperties := LineProperties400;
{ .SetAppearance }
Shape397.Appearance := Appearance398;
LineSet401 := TLineSetNode.Create;
LineSet401.SetVertexCount([2]);
Coordinate402 := TCoordinateNode.Create;
Coordinate402.X3DName := 'lc_l_metatarsophalangeal_4_0';
Coordinate402.SetPoint([Vector3(0.1097,0.0058,-0.0107),Vector3(0.114,0.0037,0.0044)]);
{ .SetCoord }
LineSet401.Coord := Coordinate402;
{ .SetGeometry }
Shape397.Geometry := LineSet401;
{ .AddChildren }
HAnimSegment389.AddChildren([Shape397]);
{ .AddChildren }
HAnimJoint388.AddChildren([HAnimSegment389]);
HAnimJoint403 := THAnimJointNode.Create;
HAnimJoint403.X3DName := 'hanim_l_tarsal_proximal_interphalangeal_4';
HAnimJoint403.Center := Vector3(0.114,0.0037,0.0044);
end;

procedure InitHAnimGimbalJointController22Part33;
begin

HAnimJoint403.SetLlimit([-0.1745,-0.0175,-0.0175]);
HAnimJoint403.SetUlimit([1.2217,0.0175,0.0175]);
HAnimSegment404 := THAnimSegmentNode.Create;
HAnimSegment404.X3DName := 'hanim_l_tarsal_middle_phalanx_4';
TouchSensor405 := TTouchSensorNode.Create;
TouchSensor405.X3DName := 'ts_l_tarsal_proximal_interphalangeal_4';
TouchSensor405.Description := 'l_tarsal_proximal_interphalangeal_4';
{ .AddChildren }
HAnimSegment404.AddChildren([TouchSensor405]);
Transform406 := TTransformNode.Create;
Transform406.X3DName := 'jx_l_tarsal_proximal_interphalangeal_4';
Transform406.Translation := Vector3(0.114,0.0037,0.0044);
Transform407 := TTransformNode.Create;
Shape408 := TShapeNode.Create;
Appearance409 := TAppearanceNode.Create;
Appearance409.X3DName := 'ap_l_tarsal_proximal_interphalangeal_4';
Material410 := TMaterialNode.Create;
Material410.X3DName := 'm_l_tarsal_proximal_interphalangeal_4';
Material410.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance409.Material := Material410;
{ .SetAppearance }
Shape408.Appearance := Appearance409;
Sphere411 := TSphereNode.Create;
Sphere411.Radius := 0.03;
{ .SetGeometry }
Shape408.Geometry := Sphere411;
{ .AddChild }
Transform407.AddChildren([Shape408]);
{ .AddChildren }
Transform406.AddChildren([Transform407]);
{ .AddChildren }
HAnimSegment404.AddChildren([Transform406]);
Shape412 := TShapeNode.Create;
Appearance413 := TAppearanceNode.Create;
Appearance413.X3DName := 'apl_l_tarsal_proximal_interphalangeal_4';
Material414 := TMaterialNode.Create;
Material414.X3DName := 'lm_l_tarsal_proximal_interphalangeal_4';
Material414.DiffuseColor := Vector3(0,0,0);
Material414.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance413.Material := Material414;
LineProperties415 := TLinePropertiesNode.Create;
LineProperties415.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance413.LineProperties := LineProperties415;
{ .SetAppearance }
Shape412.Appearance := Appearance413;
LineSet416 := TLineSetNode.Create;
LineSet416.SetVertexCount([2]);
end;

procedure InitHAnimGimbalJointController22Part34;
begin

Coordinate417 := TCoordinateNode.Create;
Coordinate417.X3DName := 'lc_l_tarsal_proximal_interphalangeal_4_0';
Coordinate417.SetPoint([Vector3(0.114,0.0037,0.0044),Vector3(0.1155,0.0008,0.0118)]);
{ .SetCoord }
LineSet416.Coord := Coordinate417;
{ .SetGeometry }
Shape412.Geometry := LineSet416;
{ .AddChildren }
HAnimSegment404.AddChildren([Shape412]);
{ .AddChildren }
HAnimJoint403.AddChildren([HAnimSegment404]);
HAnimJoint418 := THAnimJointNode.Create;
HAnimJoint418.X3DName := 'hanim_l_tarsal_distal_interphalangeal_4';
HAnimJoint418.Center := Vector3(0.1155,0.0008,0.0118);
HAnimJoint418.SetLlimit([-0.1745,-0.0175,-0.0175]);
HAnimJoint418.SetUlimit([1.2217,0.0175,0.0175]);
HAnimSegment419 := THAnimSegmentNode.Create;
HAnimSegment419.X3DName := 'hanim_l_tarsal_distal_phalanx_4';
Group420 := TGroupNode.Create;
Group420.X3DName := 'jg_l_tarsal_distal_interphalangeal_4';
TouchSensor421 := TTouchSensorNode.Create;
TouchSensor421.X3DName := 'ts_l_tarsal_distal_interphalangeal_4';
TouchSensor421.Description := 'l_tarsal_distal_interphalangeal_4';
{ .AddChildren }
Group420.AddChildren([TouchSensor421]);
Transform422 := TTransformNode.Create;
Transform422.X3DName := 'jx_l_tarsal_distal_interphalangeal_4';
Transform422.Translation := Vector3(0.1155,0.0008,0.0118);
Shape423 := TShapeNode.Create;
Appearance424 := TAppearanceNode.Create;
Appearance424.X3DName := 'ap_l_tarsal_distal_interphalangeal_4';
Material425 := TMaterialNode.Create;
Material425.X3DName := 'm_l_tarsal_distal_interphalangeal_4';
Material425.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance424.Material := Material425;
{ .SetAppearance }
Shape423.Appearance := Appearance424;
Sphere426 := TSphereNode.Create;
Sphere426.Radius := 0.03;
{ .SetGeometry }
Shape423.Geometry := Sphere426;
{ .AddChild }
Transform422.AddChildren([Shape423]);
{ .AddChildren }
Group420.AddChildren([Transform422]);
Shape427 := TShapeNode.Create;
Appearance428 := TAppearanceNode.Create;
Appearance428.X3DName := 'apl_l_tarsal_distal_interphalangeal_4';
Material429 := TMaterialNode.Create;
end;

procedure InitHAnimGimbalJointController22Part35;
begin

Material429.X3DName := 'lm_l_tarsal_distal_interphalangeal_4';
Material429.DiffuseColor := Vector3(0,0,0);
Material429.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance428.Material := Material429;
LineProperties430 := TLinePropertiesNode.Create;
LineProperties430.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance428.LineProperties := LineProperties430;
{ .SetAppearance }
Shape427.Appearance := Appearance428;
LineSet431 := TLineSetNode.Create;
LineSet431.SetVertexCount([2]);
Coordinate432 := TCoordinateNode.Create;
Coordinate432.X3DName := 'lc_l_tarsal_distal_interphalangeal_4_0';
Coordinate432.SetPoint([Vector3(0.1155,0.0008,0.0118),Vector3(0.1183,-0.0046,0.0255)]);
{ .SetCoord }
LineSet431.Coord := Coordinate432;
{ .SetGeometry }
Shape427.Geometry := LineSet431;
{ .AddChildren }
Group420.AddChildren([Shape427]);
{ .AddChildren }
HAnimSegment419.AddChildren([Group420]);
{ .AddChildren }
HAnimJoint418.AddChildren([HAnimSegment419]);
{ .AddChildren }
HAnimJoint403.AddChildren([HAnimJoint418]);
{ .AddChildren }
HAnimJoint388.AddChildren([HAnimJoint403]);
{ .AddChildren }
HAnimJoint373.AddChildren([HAnimJoint388]);
{ .AddChildren }
HAnimJoint354.AddChildren([HAnimJoint373]);
HAnimJoint433 := THAnimJointNode.Create;
HAnimJoint433.X3DName := 'hanim_l_tarsometatarsal_5';
HAnimJoint433.Center := Vector3(0.1206,0.0124,-0.0671);
HAnimJoint433.SetLlimit([-0.1396,-0.0698,-0.0175]);
HAnimJoint433.SetUlimit([0.1396,0.0698,0.0175]);
HAnimSegment434 := THAnimSegmentNode.Create;
HAnimSegment434.X3DName := 'hanim_l_metatarsal_5';
TouchSensor435 := TTouchSensorNode.Create;
TouchSensor435.X3DName := 'ts_l_tarsometatarsal_5';
TouchSensor435.Description := 'l_tarsometatarsal_5';
{ .AddChildren }
HAnimSegment434.AddChildren([TouchSensor435]);
Transform436 := TTransformNode.Create;
Transform436.X3DName := 'jx_l_tarsometatarsal_5';
Transform436.Translation := Vector3(0.1206,0.0124,-0.0671);
Transform437 := TTransformNode.Create;
Shape438 := TShapeNode.Create;
Appearance439 := TAppearanceNode.Create;
Appearance439.X3DName := 'ap_l_tarsometatarsal_5';
end;

procedure InitHAnimGimbalJointController22Part36;
begin

Material440 := TMaterialNode.Create;
Material440.X3DName := 'm_l_tarsometatarsal_5';
Material440.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance439.Material := Material440;
{ .SetAppearance }
Shape438.Appearance := Appearance439;
Sphere441 := TSphereNode.Create;
Sphere441.Radius := 0.03;
{ .SetGeometry }
Shape438.Geometry := Sphere441;
{ .AddChild }
Transform437.AddChildren([Shape438]);
{ .AddChildren }
Transform436.AddChildren([Transform437]);
{ .AddChildren }
HAnimSegment434.AddChildren([Transform436]);
Shape442 := TShapeNode.Create;
Appearance443 := TAppearanceNode.Create;
Appearance443.X3DName := 'apl_l_tarsometatarsal_5';
Material444 := TMaterialNode.Create;
Material444.X3DName := 'lm_l_tarsometatarsal_5';
Material444.DiffuseColor := Vector3(0,0,0);
Material444.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance443.Material := Material444;
LineProperties445 := TLinePropertiesNode.Create;
LineProperties445.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance443.LineProperties := LineProperties445;
{ .SetAppearance }
Shape442.Appearance := Appearance443;
LineSet446 := TLineSetNode.Create;
LineSet446.SetVertexCount([2]);
Coordinate447 := TCoordinateNode.Create;
Coordinate447.X3DName := 'lc_l_tarsometatarsal_5_0';
Coordinate447.SetPoint([Vector3(0.1206,0.0124,-0.0671),Vector3(0.1239,0.0051,-0.0153)]);
{ .SetCoord }
LineSet446.Coord := Coordinate447;
{ .SetGeometry }
Shape442.Geometry := LineSet446;
{ .AddChildren }
HAnimSegment434.AddChildren([Shape442]);
{ .AddChildren }
HAnimJoint433.AddChildren([HAnimSegment434]);
HAnimJoint448 := THAnimJointNode.Create;
HAnimJoint448.X3DName := 'hanim_l_metatarsophalangeal_5';
HAnimJoint448.Center := Vector3(0.1239,0.0051,-0.0153);
HAnimJoint448.SetLlimit([-1.0472,-0.1745,-0.0175]);
HAnimJoint448.SetUlimit([0.6981,0.1745,0.0175]);
HAnimSegment449 := THAnimSegmentNode.Create;
HAnimSegment449.X3DName := 'hanim_l_tarsal_proximal_phalanx_5';
TouchSensor450 := TTouchSensorNode.Create;
end;

procedure InitHAnimGimbalJointController22Part37;
begin

TouchSensor450.X3DName := 'ts_l_metatarsophalangeal_5';
TouchSensor450.Description := 'l_metatarsophalangeal_5';
{ .AddChildren }
HAnimSegment449.AddChildren([TouchSensor450]);
Transform451 := TTransformNode.Create;
Transform451.X3DName := 'jx_l_metatarsophalangeal_5';
Transform451.Translation := Vector3(0.1239,0.0051,-0.0153);
Transform452 := TTransformNode.Create;
Shape453 := TShapeNode.Create;
Appearance454 := TAppearanceNode.Create;
Appearance454.X3DName := 'ap_l_metatarsophalangeal_5';
Material455 := TMaterialNode.Create;
Material455.X3DName := 'm_l_metatarsophalangeal_5';
Material455.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance454.Material := Material455;
{ .SetAppearance }
Shape453.Appearance := Appearance454;
Sphere456 := TSphereNode.Create;
Sphere456.Radius := 0.03;
{ .SetGeometry }
Shape453.Geometry := Sphere456;
{ .AddChild }
Transform452.AddChildren([Shape453]);
{ .AddChildren }
Transform451.AddChildren([Transform452]);
{ .AddChildren }
HAnimSegment449.AddChildren([Transform451]);
Shape457 := TShapeNode.Create;
Appearance458 := TAppearanceNode.Create;
Appearance458.X3DName := 'apl_l_metatarsophalangeal_5';
Material459 := TMaterialNode.Create;
Material459.X3DName := 'lm_l_metatarsophalangeal_5';
Material459.DiffuseColor := Vector3(0,0,0);
Material459.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance458.Material := Material459;
LineProperties460 := TLinePropertiesNode.Create;
LineProperties460.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance458.LineProperties := LineProperties460;
{ .SetAppearance }
Shape457.Appearance := Appearance458;
LineSet461 := TLineSetNode.Create;
LineSet461.SetVertexCount([2]);
Coordinate462 := TCoordinateNode.Create;
Coordinate462.X3DName := 'lc_l_metatarsophalangeal_5_0';
Coordinate462.SetPoint([Vector3(0.1239,0.0051,-0.0153),Vector3(0.1262,0.0023,-0.0077)]);
{ .SetCoord }
LineSet461.Coord := Coordinate462;
{ .SetGeometry }
Shape457.Geometry := LineSet461;
end;

procedure InitHAnimGimbalJointController22Part38;
begin

{ .AddChildren }
HAnimSegment449.AddChildren([Shape457]);
{ .AddChildren }
HAnimJoint448.AddChildren([HAnimSegment449]);
HAnimJoint463 := THAnimJointNode.Create;
HAnimJoint463.X3DName := 'hanim_l_tarsal_proximal_interphalangeal_5';
HAnimJoint463.Center := Vector3(0.1262,0.0023,-0.0077);
HAnimJoint463.SetLlimit([-0.1745,-0.0175,-0.0175]);
HAnimJoint463.SetUlimit([1.2217,0.0175,0.0175]);
HAnimSegment464 := THAnimSegmentNode.Create;
HAnimSegment464.X3DName := 'hanim_l_tarsal_middle_phalanx_5';
TouchSensor465 := TTouchSensorNode.Create;
TouchSensor465.X3DName := 'ts_l_tarsal_proximal_interphalangeal_5';
TouchSensor465.Description := 'l_tarsal_proximal_interphalangeal_5';
{ .AddChildren }
HAnimSegment464.AddChildren([TouchSensor465]);
Transform466 := TTransformNode.Create;
Transform466.X3DName := 'jx_l_tarsal_proximal_interphalangeal_5';
Transform466.Translation := Vector3(0.1262,0.0023,-0.0077);
Transform467 := TTransformNode.Create;
Shape468 := TShapeNode.Create;
Appearance469 := TAppearanceNode.Create;
Appearance469.X3DName := 'ap_l_tarsal_proximal_interphalangeal_5';
Material470 := TMaterialNode.Create;
Material470.X3DName := 'm_l_tarsal_proximal_interphalangeal_5';
Material470.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance469.Material := Material470;
{ .SetAppearance }
Shape468.Appearance := Appearance469;
Sphere471 := TSphereNode.Create;
Sphere471.Radius := 0.03;
{ .SetGeometry }
Shape468.Geometry := Sphere471;
{ .AddChild }
Transform467.AddChildren([Shape468]);
{ .AddChildren }
Transform466.AddChildren([Transform467]);
{ .AddChildren }
HAnimSegment464.AddChildren([Transform466]);
Shape472 := TShapeNode.Create;
Appearance473 := TAppearanceNode.Create;
Appearance473.X3DName := 'apl_l_tarsal_proximal_interphalangeal_5';
Material474 := TMaterialNode.Create;
Material474.X3DName := 'lm_l_tarsal_proximal_interphalangeal_5';
Material474.DiffuseColor := Vector3(0,0,0);
Material474.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance473.Material := Material474;
LineProperties475 := TLinePropertiesNode.Create;
end;

procedure InitHAnimGimbalJointController22Part39;
begin

LineProperties475.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance473.LineProperties := LineProperties475;
{ .SetAppearance }
Shape472.Appearance := Appearance473;
LineSet476 := TLineSetNode.Create;
LineSet476.SetVertexCount([2]);
Coordinate477 := TCoordinateNode.Create;
Coordinate477.X3DName := 'lc_l_tarsal_proximal_interphalangeal_5_0';
Coordinate477.SetPoint([Vector3(0.1262,0.0023,-0.0077),Vector3(0.1271,0,0)]);
{ .SetCoord }
LineSet476.Coord := Coordinate477;
{ .SetGeometry }
Shape472.Geometry := LineSet476;
{ .AddChildren }
HAnimSegment464.AddChildren([Shape472]);
{ .AddChildren }
HAnimJoint463.AddChildren([HAnimSegment464]);
HAnimJoint478 := THAnimJointNode.Create;
HAnimJoint478.X3DName := 'hanim_l_tarsal_distal_interphalangeal_5';
HAnimJoint478.Center := Vector3(0.1271,0,0);
HAnimJoint478.SetLlimit([-0.1745,-0.0175,-0.0175]);
HAnimJoint478.SetUlimit([1.2217,0.0175,0.0175]);
HAnimSegment479 := THAnimSegmentNode.Create;
HAnimSegment479.X3DName := 'hanim_l_tarsal_distal_phalanx_5';
Group480 := TGroupNode.Create;
Group480.X3DName := 'jg_l_tarsal_distal_interphalangeal_5';
TouchSensor481 := TTouchSensorNode.Create;
TouchSensor481.X3DName := 'ts_l_tarsal_distal_interphalangeal_5';
TouchSensor481.Description := 'l_tarsal_distal_interphalangeal_5';
{ .AddChildren }
Group480.AddChildren([TouchSensor481]);
Transform482 := TTransformNode.Create;
Transform482.X3DName := 'jx_l_tarsal_distal_interphalangeal_5';
Transform482.Translation := Vector3(0.1271,0,0);
Shape483 := TShapeNode.Create;
Appearance484 := TAppearanceNode.Create;
Appearance484.X3DName := 'ap_l_tarsal_distal_interphalangeal_5';
Material485 := TMaterialNode.Create;
Material485.X3DName := 'm_l_tarsal_distal_interphalangeal_5';
Material485.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance484.Material := Material485;
{ .SetAppearance }
Shape483.Appearance := Appearance484;
Sphere486 := TSphereNode.Create;
Sphere486.Radius := 0.03;
{ .SetGeometry }
Shape483.Geometry := Sphere486;
{ .AddChild }
Transform482.AddChildren([Shape483]);
end;

procedure InitHAnimGimbalJointController22Part40;
begin

{ .AddChildren }
Group480.AddChildren([Transform482]);
Shape487 := TShapeNode.Create;
Appearance488 := TAppearanceNode.Create;
Appearance488.X3DName := 'apl_l_tarsal_distal_interphalangeal_5';
Material489 := TMaterialNode.Create;
Material489.X3DName := 'lm_l_tarsal_distal_interphalangeal_5';
Material489.DiffuseColor := Vector3(0,0,0);
Material489.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance488.Material := Material489;
LineProperties490 := TLinePropertiesNode.Create;
LineProperties490.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance488.LineProperties := LineProperties490;
{ .SetAppearance }
Shape487.Appearance := Appearance488;
LineSet491 := TLineSetNode.Create;
LineSet491.SetVertexCount([2]);
Coordinate492 := TCoordinateNode.Create;
Coordinate492.X3DName := 'lc_l_tarsal_distal_interphalangeal_5_0';
Coordinate492.SetPoint([Vector3(0.1271,0,0),Vector3(0.1288,-0.0043,0.0143)]);
{ .SetCoord }
LineSet491.Coord := Coordinate492;
{ .SetGeometry }
Shape487.Geometry := LineSet491;
{ .AddChildren }
Group480.AddChildren([Shape487]);
{ .AddChildren }
HAnimSegment479.AddChildren([Group480]);
{ .AddChildren }
HAnimJoint478.AddChildren([HAnimSegment479]);
{ .AddChildren }
HAnimJoint463.AddChildren([HAnimJoint478]);
{ .AddChildren }
HAnimJoint448.AddChildren([HAnimJoint463]);
{ .AddChildren }
HAnimJoint433.AddChildren([HAnimJoint448]);
{ .AddChildren }
HAnimJoint354.AddChildren([HAnimJoint433]);
{ .AddChildren }
HAnimJoint339.AddChildren([HAnimJoint354]);
{ .AddChildren }
HAnimJoint87.AddChildren([HAnimJoint339]);
{ .AddChildren }
HAnimJoint72.AddChildren([HAnimJoint87]);
{ .AddChildren }
HAnimJoint57.AddChildren([HAnimJoint72]);
{ .AddChildren }
HAnimJoint38.AddChildren([HAnimJoint57]);
{ RIGHT LEG }
HAnimJoint493 := THAnimJointNode.Create;
HAnimJoint493.X3DName := 'hanim_r_hip';
HAnimJoint493.Center := Vector3(-0.095,0.9171,0.0029);
HAnimJoint493.SetLlimit([-2.0944,-0.7854,-0.7854]);
HAnimJoint493.SetUlimit([0.5236,0.7854,0.5236]);
HAnimSegment494 := THAnimSegmentNode.Create;
HAnimSegment494.X3DName := 'hanim_r_thigh';
TouchSensor495 := TTouchSensorNode.Create;
end;

procedure InitHAnimGimbalJointController22Part41;
begin

TouchSensor495.X3DName := 'ts_r_hip';
TouchSensor495.Description := 'r_hip';
{ .AddChildren }
HAnimSegment494.AddChildren([TouchSensor495]);
Transform496 := TTransformNode.Create;
Transform496.X3DName := 'jx_r_hip';
Transform496.Translation := Vector3(-0.095,0.9171,0.0029);
Transform497 := TTransformNode.Create;
Shape498 := TShapeNode.Create;
Appearance499 := TAppearanceNode.Create;
Appearance499.X3DName := 'ap_r_hip';
Material500 := TMaterialNode.Create;
Material500.X3DName := 'm_r_hip';
Material500.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance499.Material := Material500;
{ .SetAppearance }
Shape498.Appearance := Appearance499;
Sphere501 := TSphereNode.Create;
Sphere501.Radius := 0.03;
{ .SetGeometry }
Shape498.Geometry := Sphere501;
{ .AddChild }
Transform497.AddChildren([Shape498]);
{ .AddChildren }
Transform496.AddChildren([Transform497]);
{ .AddChildren }
HAnimSegment494.AddChildren([Transform496]);
Shape502 := TShapeNode.Create;
Appearance503 := TAppearanceNode.Create;
Appearance503.X3DName := 'apl_r_hip';
Material504 := TMaterialNode.Create;
Material504.X3DName := 'lm_r_hip';
Material504.DiffuseColor := Vector3(0,0,0);
Material504.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance503.Material := Material504;
LineProperties505 := TLinePropertiesNode.Create;
LineProperties505.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance503.LineProperties := LineProperties505;
{ .SetAppearance }
Shape502.Appearance := Appearance503;
LineSet506 := TLineSetNode.Create;
LineSet506.SetVertexCount([2]);
Coordinate507 := TCoordinateNode.Create;
Coordinate507.X3DName := 'lc_r_hip_0';
Coordinate507.SetPoint([Vector3(-0.095,0.9171,0.0029),Vector3(-0.0867,0.4913,0.0318)]);
{ .SetCoord }
LineSet506.Coord := Coordinate507;
{ .SetGeometry }
Shape502.Geometry := LineSet506;
end;

procedure InitHAnimGimbalJointController22Part42;
begin

{ .AddChildren }
HAnimSegment494.AddChildren([Shape502]);
{ .AddChildren }
HAnimJoint493.AddChildren([HAnimSegment494]);
HAnimJoint508 := THAnimJointNode.Create;
HAnimJoint508.X3DName := 'hanim_r_knee';
HAnimJoint508.Center := Vector3(-0.0867,0.4913,0.0318);
HAnimJoint508.SetLlimit([0,-0.0873,-0.0175]);
HAnimJoint508.SetUlimit([2.3562,0.0873,0.0175]);
HAnimSegment509 := THAnimSegmentNode.Create;
HAnimSegment509.X3DName := 'hanim_r_calf';
TouchSensor510 := TTouchSensorNode.Create;
TouchSensor510.X3DName := 'ts_r_knee';
TouchSensor510.Description := 'r_knee';
{ .AddChildren }
HAnimSegment509.AddChildren([TouchSensor510]);
Transform511 := TTransformNode.Create;
Transform511.X3DName := 'jx_r_knee';
Transform511.Translation := Vector3(-0.0867,0.4913,0.0318);
Transform512 := TTransformNode.Create;
Shape513 := TShapeNode.Create;
Appearance514 := TAppearanceNode.Create;
Appearance514.X3DName := 'ap_r_knee';
Material515 := TMaterialNode.Create;
Material515.X3DName := 'm_r_knee';
Material515.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance514.Material := Material515;
{ .SetAppearance }
Shape513.Appearance := Appearance514;
Sphere516 := TSphereNode.Create;
Sphere516.Radius := 0.03;
{ .SetGeometry }
Shape513.Geometry := Sphere516;
{ .AddChild }
Transform512.AddChildren([Shape513]);
{ .AddChildren }
Transform511.AddChildren([Transform512]);
{ .AddChildren }
HAnimSegment509.AddChildren([Transform511]);
Shape517 := TShapeNode.Create;
Appearance518 := TAppearanceNode.Create;
Appearance518.X3DName := 'apl_r_knee';
Material519 := TMaterialNode.Create;
Material519.X3DName := 'lm_r_knee';
Material519.DiffuseColor := Vector3(0,0,0);
Material519.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance518.Material := Material519;
LineProperties520 := TLinePropertiesNode.Create;
end;

procedure InitHAnimGimbalJointController22Part43;
begin

LineProperties520.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance518.LineProperties := LineProperties520;
{ .SetAppearance }
Shape517.Appearance := Appearance518;
LineSet521 := TLineSetNode.Create;
LineSet521.SetVertexCount([2]);
Coordinate522 := TCoordinateNode.Create;
Coordinate522.X3DName := 'lc_r_knee_0';
Coordinate522.SetPoint([Vector3(-0.0867,0.4913,0.0318),Vector3(-0.0801,0.0712,-0.0766)]);
{ .SetCoord }
LineSet521.Coord := Coordinate522;
{ .SetGeometry }
Shape517.Geometry := LineSet521;
{ .AddChildren }
HAnimSegment509.AddChildren([Shape517]);
{ .AddChildren }
HAnimJoint508.AddChildren([HAnimSegment509]);
HAnimJoint523 := THAnimJointNode.Create;
HAnimJoint523.X3DName := 'hanim_r_talocrural';
HAnimJoint523.Center := Vector3(-0.0801,0.0712,-0.0766);
HAnimJoint523.SetLlimit([-0.4363,-0.2618,-0.1745]);
HAnimJoint523.SetUlimit([0.8727,0.2618,0.1745]);
HAnimSegment524 := THAnimSegmentNode.Create;
HAnimSegment524.X3DName := 'hanim_r_talus';
TouchSensor525 := TTouchSensorNode.Create;
TouchSensor525.X3DName := 'ts_r_talocrural';
TouchSensor525.Description := 'r_talocrural';
{ .AddChildren }
HAnimSegment524.AddChildren([TouchSensor525]);
Transform526 := TTransformNode.Create;
Transform526.X3DName := 'jx_r_talocrural';
Transform526.Scale := Vector3(0.15,0.15,0.15);
Transform526.Translation := Vector3(-0.05,0.06,-0.025);
Transform526.Rotation := Vector4(1,0,0,-1.57);
Transform527 := TTransformNode.Create;
Shape528 := TShapeNode.Create;
Appearance529 := TAppearanceNode.Create;
Appearance529.X3DName := 'ap_r_talocrural';
Material530 := TMaterialNode.Create;
Material530.X3DName := 'm_r_talocrural';
Material530.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance529.Material := Material530;
{ .SetAppearance }
Shape528.Appearance := Appearance529;
Sphere531 := TSphereNode.Create;
Sphere531.Radius := 0.03;
{ .SetGeometry }
Shape528.Geometry := Sphere531;
end;

procedure InitHAnimGimbalJointController22Part44;
begin

{ .AddChild }
Transform527.AddChildren([Shape528]);
{ .AddChildren }
Transform526.AddChildren([Transform527]);
{ .AddChildren }
HAnimSegment524.AddChildren([Transform526]);
Shape532 := TShapeNode.Create;
Appearance533 := TAppearanceNode.Create;
Appearance533.X3DName := 'apl_r_talocrural';
Material534 := TMaterialNode.Create;
Material534.X3DName := 'lm_r_talocrural';
Material534.DiffuseColor := Vector3(0,0,0);
Material534.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance533.Material := Material534;
LineProperties535 := TLinePropertiesNode.Create;
LineProperties535.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance533.LineProperties := LineProperties535;
{ .SetAppearance }
Shape532.Appearance := Appearance533;
LineSet536 := TLineSetNode.Create;
LineSet536.SetVertexCount([2]);
Coordinate537 := TCoordinateNode.Create;
Coordinate537.X3DName := 'lc_r_talocrural_0';
Coordinate537.SetPoint([Vector3(-0.0801,0.0712,-0.0766),Vector3(-0.0781,0.0283,-0.097)]);
{ .SetCoord }
LineSet536.Coord := Coordinate537;
{ .SetGeometry }
Shape532.Geometry := LineSet536;
{ .AddChildren }
HAnimSegment524.AddChildren([Shape532]);
Shape538 := TShapeNode.Create;
{ .SetAppearance }
Shape538.Appearance := Appearance533;
LineSet540 := TLineSetNode.Create;
LineSet540.SetVertexCount([2]);
Coordinate541 := TCoordinateNode.Create;
Coordinate541.X3DName := 'lc_r_talocrural_1';
Coordinate541.SetPoint([Vector3(-0.0801,0.0712,-0.0766),Vector3(-0.0889,0.0494,-0.1278)]);
{ .SetCoord }
LineSet540.Coord := Coordinate541;
{ .SetGeometry }
Shape538.Geometry := LineSet540;
{ .AddChildren }
HAnimSegment524.AddChildren([Shape538]);
{ .AddChildren }
HAnimJoint523.AddChildren([HAnimSegment524]);
HAnimJoint542 := THAnimJointNode.Create;
HAnimJoint542.X3DName := 'hanim_r_talocalcaneonavicular';
HAnimJoint542.Center := Vector3(-0.0781,0.0283,-0.097);
HAnimJoint542.SetLlimit([-0.1745,-0.1396,-0.1396]);
HAnimJoint542.SetUlimit([0.1745,0.1396,0.1396]);
HAnimSegment543 := THAnimSegmentNode.Create;
end;

procedure InitHAnimGimbalJointController22Part45;
begin

HAnimSegment543.X3DName := 'hanim_r_navicular';
TouchSensor544 := TTouchSensorNode.Create;
TouchSensor544.X3DName := 'ts_r_talocalcaneonavicular';
TouchSensor544.Description := 'r_talocalcaneonavicular';
{ .AddChildren }
HAnimSegment543.AddChildren([TouchSensor544]);
Transform545 := TTransformNode.Create;
Transform545.X3DName := 'jx_r_talocalcaneonavicular';
Transform545.Translation := Vector3(-0.0781,0.0283,-0.097);
Transform546 := TTransformNode.Create;
Shape547 := TShapeNode.Create;
Appearance548 := TAppearanceNode.Create;
Appearance548.X3DName := 'ap_r_talocalcaneonavicular';
Material549 := TMaterialNode.Create;
Material549.X3DName := 'm_r_talocalcaneonavicular';
Material549.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance548.Material := Material549;
{ .SetAppearance }
Shape547.Appearance := Appearance548;
Sphere550 := TSphereNode.Create;
Sphere550.Radius := 0.03;
{ .SetGeometry }
Shape547.Geometry := Sphere550;
{ .AddChild }
Transform546.AddChildren([Shape547]);
{ .AddChildren }
Transform545.AddChildren([Transform546]);
{ .AddChildren }
HAnimSegment543.AddChildren([Transform545]);
Shape551 := TShapeNode.Create;
Appearance552 := TAppearanceNode.Create;
Appearance552.X3DName := 'apl_r_talocalcaneonavicular';
Material553 := TMaterialNode.Create;
Material553.X3DName := 'lm_r_talocalcaneonavicular';
Material553.DiffuseColor := Vector3(0,0,0);
Material553.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance552.Material := Material553;
LineProperties554 := TLinePropertiesNode.Create;
LineProperties554.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance552.LineProperties := LineProperties554;
{ .SetAppearance }
Shape551.Appearance := Appearance552;
LineSet555 := TLineSetNode.Create;
LineSet555.SetVertexCount([2]);
Coordinate556 := TCoordinateNode.Create;
Coordinate556.X3DName := 'lc_r_talocalcaneonavicular_0';
Coordinate556.SetPoint([Vector3(-0.0781,0.0283,-0.097),Vector3(-0.0672,0.0235,-0.0835)]);
end;

procedure InitHAnimGimbalJointController22Part46;
begin

{ .SetCoord }
LineSet555.Coord := Coordinate556;
{ .SetGeometry }
Shape551.Geometry := LineSet555;
{ .AddChildren }
HAnimSegment543.AddChildren([Shape551]);
Shape557 := TShapeNode.Create;
{ .SetAppearance }
Shape557.Appearance := Appearance552;
LineSet559 := TLineSetNode.Create;
LineSet559.SetVertexCount([2]);
Coordinate560 := TCoordinateNode.Create;
Coordinate560.X3DName := 'lc_r_talocalcaneonavicular_1';
Coordinate560.SetPoint([Vector3(-0.0781,0.0283,-0.097),Vector3(-0.0812,0.025,-0.0805)]);
{ .SetCoord }
LineSet559.Coord := Coordinate560;
{ .SetGeometry }
Shape557.Geometry := LineSet559;
{ .AddChildren }
HAnimSegment543.AddChildren([Shape557]);
Shape561 := TShapeNode.Create;
{ .SetAppearance }
Shape561.Appearance := Appearance552;
LineSet563 := TLineSetNode.Create;
LineSet563.SetVertexCount([2]);
Coordinate564 := TCoordinateNode.Create;
Coordinate564.X3DName := 'lc_r_talocalcaneonavicular_2';
Coordinate564.SetPoint([Vector3(-0.0781,0.0283,-0.097),Vector3(-0.0928,0.0248,-0.0821)]);
{ .SetCoord }
LineSet563.Coord := Coordinate564;
{ .SetGeometry }
Shape561.Geometry := LineSet563;
{ .AddChildren }
HAnimSegment543.AddChildren([Shape561]);
{ .AddChildren }
HAnimJoint542.AddChildren([HAnimSegment543]);
HAnimJoint565 := THAnimJointNode.Create;
HAnimJoint565.X3DName := 'hanim_r_cuneonavicular_1';
HAnimJoint565.Center := Vector3(-0.0672,0.0235,-0.0835);
HAnimJoint565.SetLlimit([-0.1745,-0.1396,-0.1396]);
HAnimJoint565.SetUlimit([0.1745,0.1396,0.1396]);
HAnimSegment566 := THAnimSegmentNode.Create;
HAnimSegment566.X3DName := 'hanim_r_cuneiform_1';
TouchSensor567 := TTouchSensorNode.Create;
TouchSensor567.X3DName := 'ts_r_cuneonavicular_1';
TouchSensor567.Description := 'r_cuneonavicular_1';
{ .AddChildren }
HAnimSegment566.AddChildren([TouchSensor567]);
Transform568 := TTransformNode.Create;
Transform568.X3DName := 'jx_r_cuneonavicular_1';
Transform568.Translation := Vector3(-0.0672,0.0235,-0.0835);
Transform569 := TTransformNode.Create;
Shape570 := TShapeNode.Create;
end;

procedure InitHAnimGimbalJointController22Part47;
begin

Appearance571 := TAppearanceNode.Create;
Appearance571.X3DName := 'ap_r_cuneonavicular_1';
Material572 := TMaterialNode.Create;
Material572.X3DName := 'm_r_cuneonavicular_1';
Material572.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance571.Material := Material572;
{ .SetAppearance }
Shape570.Appearance := Appearance571;
Sphere573 := TSphereNode.Create;
Sphere573.Radius := 0.03;
{ .SetGeometry }
Shape570.Geometry := Sphere573;
{ .AddChild }
Transform569.AddChildren([Shape570]);
{ .AddChildren }
Transform568.AddChildren([Transform569]);
{ .AddChildren }
HAnimSegment566.AddChildren([Transform568]);
Shape574 := TShapeNode.Create;
Appearance575 := TAppearanceNode.Create;
Appearance575.X3DName := 'apl_r_cuneonavicular_1';
Material576 := TMaterialNode.Create;
Material576.X3DName := 'lm_r_cuneonavicular_1';
Material576.DiffuseColor := Vector3(0,0,0);
Material576.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance575.Material := Material576;
LineProperties577 := TLinePropertiesNode.Create;
LineProperties577.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance575.LineProperties := LineProperties577;
{ .SetAppearance }
Shape574.Appearance := Appearance575;
LineSet578 := TLineSetNode.Create;
LineSet578.SetVertexCount([2]);
Coordinate579 := TCoordinateNode.Create;
Coordinate579.X3DName := 'lc_r_cuneonavicular_1_0';
Coordinate579.SetPoint([Vector3(-0.0672,0.0235,-0.0835),Vector3(-0.0644,0.0147,-0.0577)]);
{ .SetCoord }
LineSet578.Coord := Coordinate579;
{ .SetGeometry }
Shape574.Geometry := LineSet578;
{ .AddChildren }
HAnimSegment566.AddChildren([Shape574]);
{ .AddChildren }
HAnimJoint565.AddChildren([HAnimSegment566]);
HAnimJoint580 := THAnimJointNode.Create;
HAnimJoint580.X3DName := 'hanim_r_tarsometatarsal_1';
HAnimJoint580.Center := Vector3(-0.0644,0.0147,-0.0577);
HAnimJoint580.SetLlimit([-0.1396,-0.0698,-0.0175]);
HAnimJoint580.SetUlimit([0.1396,0.0698,0.0175]);
HAnimSegment581 := THAnimSegmentNode.Create;
end;

procedure InitHAnimGimbalJointController22Part48;
begin

HAnimSegment581.X3DName := 'hanim_r_metatarsal_1';
TouchSensor582 := TTouchSensorNode.Create;
TouchSensor582.X3DName := 'ts_r_tarsometatarsal_1';
TouchSensor582.Description := 'r_tarsometatarsal_1';
{ .AddChildren }
HAnimSegment581.AddChildren([TouchSensor582]);
Transform583 := TTransformNode.Create;
Transform583.X3DName := 'jx_r_tarsometatarsal_1';
Transform583.Translation := Vector3(-0.0644,0.0147,-0.0577);
Transform584 := TTransformNode.Create;
Shape585 := TShapeNode.Create;
Appearance586 := TAppearanceNode.Create;
Appearance586.X3DName := 'ap_r_tarsometatarsal_1';
Material587 := TMaterialNode.Create;
Material587.X3DName := 'm_r_tarsometatarsal_1';
Material587.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance586.Material := Material587;
{ .SetAppearance }
Shape585.Appearance := Appearance586;
Sphere588 := TSphereNode.Create;
Sphere588.Radius := 0.03;
{ .SetGeometry }
Shape585.Geometry := Sphere588;
{ .AddChild }
Transform584.AddChildren([Shape585]);
{ .AddChildren }
Transform583.AddChildren([Transform584]);
{ .AddChildren }
HAnimSegment581.AddChildren([Transform583]);
Shape589 := TShapeNode.Create;
Appearance590 := TAppearanceNode.Create;
Appearance590.X3DName := 'apl_r_tarsometatarsal_1';
Material591 := TMaterialNode.Create;
Material591.X3DName := 'lm_r_tarsometatarsal_1';
Material591.DiffuseColor := Vector3(0,0,0);
Material591.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance590.Material := Material591;
LineProperties592 := TLinePropertiesNode.Create;
LineProperties592.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance590.LineProperties := LineProperties592;
{ .SetAppearance }
Shape589.Appearance := Appearance590;
LineSet593 := TLineSetNode.Create;
LineSet593.SetVertexCount([2]);
Coordinate594 := TCoordinateNode.Create;
Coordinate594.X3DName := 'lc_r_tarsometatarsal_1_0';
Coordinate594.SetPoint([Vector3(-0.0644,0.0147,-0.0577),Vector3(-0.1086,0.0001,0.0368)]);
end;

procedure InitHAnimGimbalJointController22Part49;
begin

{ .SetCoord }
LineSet593.Coord := Coordinate594;
{ .SetGeometry }
Shape589.Geometry := LineSet593;
{ .AddChildren }
HAnimSegment581.AddChildren([Shape589]);
{ .AddChildren }
HAnimJoint580.AddChildren([HAnimSegment581]);
HAnimJoint595 := THAnimJointNode.Create;
HAnimJoint595.X3DName := 'hanim_r_metatarsophalangeal_1';
HAnimJoint595.Center := Vector3(-0.1086,0.0001,0.0368);
HAnimJoint595.SetLlimit([-1.0472,-0.1745,-0.0175]);
HAnimJoint595.SetUlimit([0.6981,0.1745,0.0175]);
HAnimSegment596 := THAnimSegmentNode.Create;
HAnimSegment596.X3DName := 'hanim_r_tarsal_proximal_phalanx_1';
TouchSensor597 := TTouchSensorNode.Create;
TouchSensor597.X3DName := 'ts_r_metatarsophalangeal_1';
TouchSensor597.Description := 'r_metatarsophalangeal_1';
{ .AddChildren }
HAnimSegment596.AddChildren([TouchSensor597]);
Transform598 := TTransformNode.Create;
Transform598.X3DName := 'jx_r_metatarsophalangeal_1';
Transform598.Translation := Vector3(-0.1086,0.0001,0.0368);
Transform599 := TTransformNode.Create;
Shape600 := TShapeNode.Create;
Appearance601 := TAppearanceNode.Create;
Appearance601.X3DName := 'ap_r_metatarsophalangeal_1';
Material602 := TMaterialNode.Create;
Material602.X3DName := 'm_r_metatarsophalangeal_1';
Material602.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance601.Material := Material602;
{ .SetAppearance }
Shape600.Appearance := Appearance601;
Sphere603 := TSphereNode.Create;
Sphere603.Radius := 0.03;
{ .SetGeometry }
Shape600.Geometry := Sphere603;
{ .AddChild }
Transform599.AddChildren([Shape600]);
{ .AddChildren }
Transform598.AddChildren([Transform599]);
{ .AddChildren }
HAnimSegment596.AddChildren([Transform598]);
Shape604 := TShapeNode.Create;
Appearance605 := TAppearanceNode.Create;
Appearance605.X3DName := 'apl_r_metatarsophalangeal_1';
Material606 := TMaterialNode.Create;
Material606.X3DName := 'lm_r_metatarsophalangeal_1';
Material606.DiffuseColor := Vector3(0,0,0);
Material606.EmissiveColor := Vector3(0.95,0.45,0.35);
end;

procedure InitHAnimGimbalJointController22Part50;
begin

{ .SetMaterial }
Appearance605.Material := Material606;
LineProperties607 := TLinePropertiesNode.Create;
LineProperties607.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance605.LineProperties := LineProperties607;
{ .SetAppearance }
Shape604.Appearance := Appearance605;
LineSet608 := TLineSetNode.Create;
LineSet608.SetVertexCount([2]);
Coordinate609 := TCoordinateNode.Create;
Coordinate609.X3DName := 'lc_r_metatarsophalangeal_1_0';
Coordinate609.SetPoint([Vector3(-0.1086,0.0001,0.0368),Vector3(-0.1086,0,0.0762)]);
{ .SetCoord }
LineSet608.Coord := Coordinate609;
{ .SetGeometry }
Shape604.Geometry := LineSet608;
{ .AddChildren }
HAnimSegment596.AddChildren([Shape604]);
{ .AddChildren }
HAnimJoint595.AddChildren([HAnimSegment596]);
HAnimJoint610 := THAnimJointNode.Create;
HAnimJoint610.X3DName := 'hanim_r_tarsal_interphalangeal_1';
HAnimJoint610.Center := Vector3(-0.1086,0,0.0762);
HAnimJoint610.SetLlimit([-0.1745,-0.0175,-0.0175]);
HAnimJoint610.SetUlimit([1.2217,0.0175,0.0175]);
HAnimSegment611 := THAnimSegmentNode.Create;
HAnimSegment611.X3DName := 'hanim_r_tarsal_distal_phalanx_1';
Group612 := TGroupNode.Create;
Group612.X3DName := 'jg_r_tarsal_interphalangeal_1';
TouchSensor613 := TTouchSensorNode.Create;
TouchSensor613.X3DName := 'ts_r_tarsal_interphalangeal_1';
TouchSensor613.Description := 'r_tarsal_interphalangeal_1';
{ .AddChildren }
Group612.AddChildren([TouchSensor613]);
Transform614 := TTransformNode.Create;
Transform614.X3DName := 'jx_r_tarsal_interphalangeal_1';
Transform614.Translation := Vector3(-0.1086,0,0.0762);
Shape615 := TShapeNode.Create;
Appearance616 := TAppearanceNode.Create;
Appearance616.X3DName := 'ap_r_tarsal_interphalangeal_1';
Material617 := TMaterialNode.Create;
Material617.X3DName := 'm_r_tarsal_interphalangeal_1';
Material617.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance616.Material := Material617;
{ .SetAppearance }
Shape615.Appearance := Appearance616;
Sphere618 := TSphereNode.Create;
Sphere618.Radius := 0.03;
end;

procedure InitHAnimGimbalJointController22Part51;
begin

{ .SetGeometry }
Shape615.Geometry := Sphere618;
{ .AddChild }
Transform614.AddChildren([Shape615]);
{ .AddChildren }
Group612.AddChildren([Transform614]);
Shape619 := TShapeNode.Create;
Appearance620 := TAppearanceNode.Create;
Appearance620.X3DName := 'apl_r_tarsal_interphalangeal_1';
Material621 := TMaterialNode.Create;
Material621.X3DName := 'lm_r_tarsal_interphalangeal_1';
Material621.DiffuseColor := Vector3(0,0,0);
Material621.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance620.Material := Material621;
LineProperties622 := TLinePropertiesNode.Create;
LineProperties622.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance620.LineProperties := LineProperties622;
{ .SetAppearance }
Shape619.Appearance := Appearance620;
LineSet623 := TLineSetNode.Create;
LineSet623.SetVertexCount([2]);
Coordinate624 := TCoordinateNode.Create;
Coordinate624.X3DName := 'lc_r_tarsal_interphalangeal_1_0';
Coordinate624.SetPoint([Vector3(-0.1086,0,0.0762),Vector3(-0.1086,-0.0001,0.1156)]);
{ .SetCoord }
LineSet623.Coord := Coordinate624;
{ .SetGeometry }
Shape619.Geometry := LineSet623;
{ .AddChildren }
Group612.AddChildren([Shape619]);
{ .AddChildren }
HAnimSegment611.AddChildren([Group612]);
{ .AddChildren }
HAnimJoint610.AddChildren([HAnimSegment611]);
{ .AddChildren }
HAnimJoint595.AddChildren([HAnimJoint610]);
{ .AddChildren }
HAnimJoint580.AddChildren([HAnimJoint595]);
{ .AddChildren }
HAnimJoint565.AddChildren([HAnimJoint580]);
{ .AddChildren }
HAnimJoint542.AddChildren([HAnimJoint565]);
HAnimJoint625 := THAnimJointNode.Create;
HAnimJoint625.X3DName := 'hanim_r_cuneonavicular_2';
HAnimJoint625.Center := Vector3(-0.0812,0.025,-0.0805);
HAnimJoint625.SetLlimit([-0.1745,-0.1396,-0.1396]);
HAnimJoint625.SetUlimit([0.1745,0.1396,0.1396]);
HAnimSegment626 := THAnimSegmentNode.Create;
HAnimSegment626.X3DName := 'hanim_r_cuneiform_2';
TouchSensor627 := TTouchSensorNode.Create;
TouchSensor627.X3DName := 'ts_r_cuneonavicular_2';
TouchSensor627.Description := 'r_cuneonavicular_2';
{ .AddChildren }
HAnimSegment626.AddChildren([TouchSensor627]);
end;

procedure InitHAnimGimbalJointController22Part52;
begin

Transform628 := TTransformNode.Create;
Transform628.X3DName := 'jx_r_cuneonavicular_2';
Transform628.Translation := Vector3(-0.0812,0.025,-0.0805);
Transform629 := TTransformNode.Create;
Shape630 := TShapeNode.Create;
Appearance631 := TAppearanceNode.Create;
Appearance631.X3DName := 'ap_r_cuneonavicular_2';
Material632 := TMaterialNode.Create;
Material632.X3DName := 'm_r_cuneonavicular_2';
Material632.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance631.Material := Material632;
{ .SetAppearance }
Shape630.Appearance := Appearance631;
Sphere633 := TSphereNode.Create;
Sphere633.Radius := 0.03;
{ .SetGeometry }
Shape630.Geometry := Sphere633;
{ .AddChild }
Transform629.AddChildren([Shape630]);
{ .AddChildren }
Transform628.AddChildren([Transform629]);
{ .AddChildren }
HAnimSegment626.AddChildren([Transform628]);
Shape634 := TShapeNode.Create;
Appearance635 := TAppearanceNode.Create;
Appearance635.X3DName := 'apl_r_cuneonavicular_2';
Material636 := TMaterialNode.Create;
Material636.X3DName := 'lm_r_cuneonavicular_2';
Material636.DiffuseColor := Vector3(0,0,0);
Material636.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance635.Material := Material636;
LineProperties637 := TLinePropertiesNode.Create;
LineProperties637.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance635.LineProperties := LineProperties637;
{ .SetAppearance }
Shape634.Appearance := Appearance635;
LineSet638 := TLineSetNode.Create;
LineSet638.SetVertexCount([2]);
Coordinate639 := TCoordinateNode.Create;
Coordinate639.X3DName := 'lc_r_cuneonavicular_2_0';
Coordinate639.SetPoint([Vector3(-0.0812,0.025,-0.0805),Vector3(-0.08,0.0175,-0.0608)]);
{ .SetCoord }
LineSet638.Coord := Coordinate639;
{ .SetGeometry }
Shape634.Geometry := LineSet638;
{ .AddChildren }
HAnimSegment626.AddChildren([Shape634]);
{ .AddChildren }
HAnimJoint625.AddChildren([HAnimSegment626]);
HAnimJoint640 := THAnimJointNode.Create;
end;

procedure InitHAnimGimbalJointController22Part53;
begin

HAnimJoint640.X3DName := 'hanim_r_tarsometatarsal_2';
HAnimJoint640.Center := Vector3(-0.08,0.0175,-0.0608);
HAnimJoint640.SetLlimit([-0.1396,-0.0698,-0.0175]);
HAnimJoint640.SetUlimit([0.1396,0.0698,0.0175]);
HAnimSegment641 := THAnimSegmentNode.Create;
HAnimSegment641.X3DName := 'hanim_r_metatarsal_2';
TouchSensor642 := TTouchSensorNode.Create;
TouchSensor642.X3DName := 'ts_r_tarsometatarsal_2';
TouchSensor642.Description := 'r_tarsometatarsal_2';
{ .AddChildren }
HAnimSegment641.AddChildren([TouchSensor642]);
Transform643 := TTransformNode.Create;
Transform643.X3DName := 'jx_r_tarsometatarsal_2';
Transform643.Translation := Vector3(-0.08,0.0175,-0.0608);
Transform644 := TTransformNode.Create;
Shape645 := TShapeNode.Create;
Appearance646 := TAppearanceNode.Create;
Appearance646.X3DName := 'ap_r_tarsometatarsal_2';
Material647 := TMaterialNode.Create;
Material647.X3DName := 'm_r_tarsometatarsal_2';
Material647.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance646.Material := Material647;
{ .SetAppearance }
Shape645.Appearance := Appearance646;
Sphere648 := TSphereNode.Create;
Sphere648.Radius := 0.03;
{ .SetGeometry }
Shape645.Geometry := Sphere648;
{ .AddChild }
Transform644.AddChildren([Shape645]);
{ .AddChildren }
Transform643.AddChildren([Transform644]);
{ .AddChildren }
HAnimSegment641.AddChildren([Transform643]);
Shape649 := TShapeNode.Create;
Appearance650 := TAppearanceNode.Create;
Appearance650.X3DName := 'apl_r_tarsometatarsal_2';
Material651 := TMaterialNode.Create;
Material651.X3DName := 'lm_r_tarsometatarsal_2';
Material651.DiffuseColor := Vector3(0,0,0);
Material651.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance650.Material := Material651;
LineProperties652 := TLinePropertiesNode.Create;
LineProperties652.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance650.LineProperties := LineProperties652;
{ .SetAppearance }
Shape649.Appearance := Appearance650;
end;

procedure InitHAnimGimbalJointController22Part54;
begin

LineSet653 := TLineSetNode.Create;
LineSet653.SetVertexCount([2]);
Coordinate654 := TCoordinateNode.Create;
Coordinate654.X3DName := 'lc_r_tarsometatarsal_2_0';
Coordinate654.SetPoint([Vector3(-0.08,0.0175,-0.0608),Vector3(-0.0823,0.0064,-0.004)]);
{ .SetCoord }
LineSet653.Coord := Coordinate654;
{ .SetGeometry }
Shape649.Geometry := LineSet653;
{ .AddChildren }
HAnimSegment641.AddChildren([Shape649]);
{ .AddChildren }
HAnimJoint640.AddChildren([HAnimSegment641]);
HAnimJoint655 := THAnimJointNode.Create;
HAnimJoint655.X3DName := 'hanim_r_metatarsophalangeal_2';
HAnimJoint655.Center := Vector3(-0.0823,0.0064,-0.004);
HAnimJoint655.SetLlimit([-1.0472,-0.1745,-0.0175]);
HAnimJoint655.SetUlimit([0.6981,0.1745,0.0175]);
HAnimSegment656 := THAnimSegmentNode.Create;
HAnimSegment656.X3DName := 'hanim_r_tarsal_proximal_phalanx_2';
TouchSensor657 := TTouchSensorNode.Create;
TouchSensor657.X3DName := 'ts_r_metatarsophalangeal_2';
TouchSensor657.Description := 'r_metatarsophalangeal_2';
{ .AddChildren }
HAnimSegment656.AddChildren([TouchSensor657]);
Transform658 := TTransformNode.Create;
Transform658.X3DName := 'jx_r_metatarsophalangeal_2';
Transform658.Translation := Vector3(-0.0823,0.0064,-0.004);
Transform659 := TTransformNode.Create;
Shape660 := TShapeNode.Create;
Appearance661 := TAppearanceNode.Create;
Appearance661.X3DName := 'ap_r_metatarsophalangeal_2';
Material662 := TMaterialNode.Create;
Material662.X3DName := 'm_r_metatarsophalangeal_2';
Material662.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance661.Material := Material662;
{ .SetAppearance }
Shape660.Appearance := Appearance661;
Sphere663 := TSphereNode.Create;
Sphere663.Radius := 0.03;
{ .SetGeometry }
Shape660.Geometry := Sphere663;
{ .AddChild }
Transform659.AddChildren([Shape660]);
{ .AddChildren }
Transform658.AddChildren([Transform659]);
{ .AddChildren }
HAnimSegment656.AddChildren([Transform658]);
Shape664 := TShapeNode.Create;
Appearance665 := TAppearanceNode.Create;
end;

procedure InitHAnimGimbalJointController22Part55;
begin

Appearance665.X3DName := 'apl_r_metatarsophalangeal_2';
Material666 := TMaterialNode.Create;
Material666.X3DName := 'lm_r_metatarsophalangeal_2';
Material666.DiffuseColor := Vector3(0,0,0);
Material666.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance665.Material := Material666;
LineProperties667 := TLinePropertiesNode.Create;
LineProperties667.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance665.LineProperties := LineProperties667;
{ .SetAppearance }
Shape664.Appearance := Appearance665;
LineSet668 := TLineSetNode.Create;
LineSet668.SetVertexCount([2]);
Coordinate669 := TCoordinateNode.Create;
Coordinate669.X3DName := 'lc_r_metatarsophalangeal_2_0';
Coordinate669.SetPoint([Vector3(-0.0823,0.0064,-0.004),Vector3(-0.0841,0.0041,0.0121)]);
{ .SetCoord }
LineSet668.Coord := Coordinate669;
{ .SetGeometry }
Shape664.Geometry := LineSet668;
{ .AddChildren }
HAnimSegment656.AddChildren([Shape664]);
{ .AddChildren }
HAnimJoint655.AddChildren([HAnimSegment656]);
HAnimJoint670 := THAnimJointNode.Create;
HAnimJoint670.X3DName := 'hanim_r_tarsal_proximal_interphalangeal_2';
HAnimJoint670.Center := Vector3(-0.0841,0.0041,0.0121);
HAnimJoint670.SetLlimit([-0.1745,-0.0175,-0.0175]);
HAnimJoint670.SetUlimit([1.2217,0.0175,0.0175]);
HAnimSegment671 := THAnimSegmentNode.Create;
HAnimSegment671.X3DName := 'hanim_r_tarsal_middle_phalanx_2';
TouchSensor672 := TTouchSensorNode.Create;
TouchSensor672.X3DName := 'ts_r_tarsal_proximal_interphalangeal_2';
TouchSensor672.Description := 'r_tarsal_proximal_interphalangeal_2';
{ .AddChildren }
HAnimSegment671.AddChildren([TouchSensor672]);
Transform673 := TTransformNode.Create;
Transform673.X3DName := 'jx_r_tarsal_proximal_interphalangeal_2';
Transform673.Translation := Vector3(-0.0841,0.0041,0.0121);
Transform674 := TTransformNode.Create;
Shape675 := TShapeNode.Create;
Appearance676 := TAppearanceNode.Create;
Appearance676.X3DName := 'ap_r_tarsal_proximal_interphalangeal_2';
Material677 := TMaterialNode.Create;
Material677.X3DName := 'm_r_tarsal_proximal_interphalangeal_2';
Material677.DiffuseColor := Vector3(0.95,0.45,0.35);
end;

procedure InitHAnimGimbalJointController22Part56;
begin

{ .SetMaterial }
Appearance676.Material := Material677;
{ .SetAppearance }
Shape675.Appearance := Appearance676;
Sphere678 := TSphereNode.Create;
Sphere678.Radius := 0.03;
{ .SetGeometry }
Shape675.Geometry := Sphere678;
{ .AddChild }
Transform674.AddChildren([Shape675]);
{ .AddChildren }
Transform673.AddChildren([Transform674]);
{ .AddChildren }
HAnimSegment671.AddChildren([Transform673]);
Shape679 := TShapeNode.Create;
Appearance680 := TAppearanceNode.Create;
Appearance680.X3DName := 'apl_r_tarsal_proximal_interphalangeal_2';
Material681 := TMaterialNode.Create;
Material681.X3DName := 'lm_r_tarsal_proximal_interphalangeal_2';
Material681.DiffuseColor := Vector3(0,0,0);
Material681.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance680.Material := Material681;
LineProperties682 := TLinePropertiesNode.Create;
LineProperties682.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance680.LineProperties := LineProperties682;
{ .SetAppearance }
Shape679.Appearance := Appearance680;
LineSet683 := TLineSetNode.Create;
LineSet683.SetVertexCount([2]);
Coordinate684 := TCoordinateNode.Create;
Coordinate684.X3DName := 'lc_r_tarsal_proximal_interphalangeal_2_0';
Coordinate684.SetPoint([Vector3(-0.0841,0.0041,0.0121),Vector3(-0.0841,0.0013,0.0216)]);
{ .SetCoord }
LineSet683.Coord := Coordinate684;
{ .SetGeometry }
Shape679.Geometry := LineSet683;
{ .AddChildren }
HAnimSegment671.AddChildren([Shape679]);
{ .AddChildren }
HAnimJoint670.AddChildren([HAnimSegment671]);
HAnimJoint685 := THAnimJointNode.Create;
HAnimJoint685.X3DName := 'hanim_r_tarsal_distal_interphalangeal_2';
HAnimJoint685.Center := Vector3(-0.0841,0.0013,0.0216);
HAnimJoint685.SetLlimit([-0.1745,-0.0175,-0.0175]);
HAnimJoint685.SetUlimit([1.2217,0.0175,0.0175]);
HAnimSegment686 := THAnimSegmentNode.Create;
HAnimSegment686.X3DName := 'hanim_r_tarsal_distal_phalanx_2';
Group687 := TGroupNode.Create;
Group687.X3DName := 'jg_r_tarsal_distal_interphalangeal_2';
TouchSensor688 := TTouchSensorNode.Create;
TouchSensor688.X3DName := 'ts_r_tarsal_distal_interphalangeal_2';
end;

procedure InitHAnimGimbalJointController22Part57;
begin

TouchSensor688.Description := 'r_tarsal_distal_interphalangeal_2';
{ .AddChildren }
Group687.AddChildren([TouchSensor688]);
Transform689 := TTransformNode.Create;
Transform689.X3DName := 'jx_r_tarsal_distal_interphalangeal_2';
Transform689.Translation := Vector3(-0.0841,0.0013,0.0216);
Shape690 := TShapeNode.Create;
Appearance691 := TAppearanceNode.Create;
Appearance691.X3DName := 'ap_r_tarsal_distal_interphalangeal_2';
Material692 := TMaterialNode.Create;
Material692.X3DName := 'm_r_tarsal_distal_interphalangeal_2';
Material692.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance691.Material := Material692;
{ .SetAppearance }
Shape690.Appearance := Appearance691;
Sphere693 := TSphereNode.Create;
Sphere693.Radius := 0.03;
{ .SetGeometry }
Shape690.Geometry := Sphere693;
{ .AddChild }
Transform689.AddChildren([Shape690]);
{ .AddChildren }
Group687.AddChildren([Transform689]);
Shape694 := TShapeNode.Create;
Appearance695 := TAppearanceNode.Create;
Appearance695.X3DName := 'apl_r_tarsal_distal_interphalangeal_2';
Material696 := TMaterialNode.Create;
Material696.X3DName := 'lm_r_tarsal_distal_interphalangeal_2';
Material696.DiffuseColor := Vector3(0,0,0);
Material696.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance695.Material := Material696;
LineProperties697 := TLinePropertiesNode.Create;
LineProperties697.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance695.LineProperties := LineProperties697;
{ .SetAppearance }
Shape694.Appearance := Appearance695;
LineSet698 := TLineSetNode.Create;
LineSet698.SetVertexCount([2]);
Coordinate699 := TCoordinateNode.Create;
Coordinate699.X3DName := 'lc_r_tarsal_distal_interphalangeal_2_0';
Coordinate699.SetPoint([Vector3(-0.0841,0.0013,0.0216),Vector3(-0.0841,-0.0029,0.036)]);
{ .SetCoord }
LineSet698.Coord := Coordinate699;
{ .SetGeometry }
Shape694.Geometry := LineSet698;
{ .AddChildren }
Group687.AddChildren([Shape694]);
{ .AddChildren }
HAnimSegment686.AddChildren([Group687]);
{ .AddChildren }
HAnimJoint685.AddChildren([HAnimSegment686]);
end;

procedure InitHAnimGimbalJointController22Part58;
begin

{ .AddChildren }
HAnimJoint670.AddChildren([HAnimJoint685]);
{ .AddChildren }
HAnimJoint655.AddChildren([HAnimJoint670]);
{ .AddChildren }
HAnimJoint640.AddChildren([HAnimJoint655]);
{ .AddChildren }
HAnimJoint625.AddChildren([HAnimJoint640]);
{ .AddChildren }
HAnimJoint542.AddChildren([HAnimJoint625]);
HAnimJoint700 := THAnimJointNode.Create;
HAnimJoint700.X3DName := 'hanim_r_cuneonavicular_3';
HAnimJoint700.Center := Vector3(-0.0928,0.0248,-0.0821);
HAnimJoint700.SetLlimit([-0.1745,-0.1396,-0.1396]);
HAnimJoint700.SetUlimit([0.1745,0.1396,0.1396]);
HAnimSegment701 := THAnimSegmentNode.Create;
HAnimSegment701.X3DName := 'hanim_r_cuneiform_3';
TouchSensor702 := TTouchSensorNode.Create;
TouchSensor702.X3DName := 'ts_r_cuneonavicular_3';
TouchSensor702.Description := 'r_cuneonavicular_3';
{ .AddChildren }
HAnimSegment701.AddChildren([TouchSensor702]);
Transform703 := TTransformNode.Create;
Transform703.X3DName := 'jx_r_cuneonavicular_3';
Transform703.Translation := Vector3(-0.0928,0.0248,-0.0821);
Transform704 := TTransformNode.Create;
Shape705 := TShapeNode.Create;
Appearance706 := TAppearanceNode.Create;
Appearance706.X3DName := 'ap_r_cuneonavicular_3';
Material707 := TMaterialNode.Create;
Material707.X3DName := 'm_r_cuneonavicular_3';
Material707.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance706.Material := Material707;
{ .SetAppearance }
Shape705.Appearance := Appearance706;
Sphere708 := TSphereNode.Create;
Sphere708.Radius := 0.03;
{ .SetGeometry }
Shape705.Geometry := Sphere708;
{ .AddChild }
Transform704.AddChildren([Shape705]);
{ .AddChildren }
Transform703.AddChildren([Transform704]);
{ .AddChildren }
HAnimSegment701.AddChildren([Transform703]);
Shape709 := TShapeNode.Create;
Appearance710 := TAppearanceNode.Create;
Appearance710.X3DName := 'apl_r_cuneonavicular_3';
Material711 := TMaterialNode.Create;
Material711.X3DName := 'lm_r_cuneonavicular_3';
Material711.DiffuseColor := Vector3(0,0,0);
end;

procedure InitHAnimGimbalJointController22Part59;
begin

Material711.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance710.Material := Material711;
LineProperties712 := TLinePropertiesNode.Create;
LineProperties712.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance710.LineProperties := LineProperties712;
{ .SetAppearance }
Shape709.Appearance := Appearance710;
LineSet713 := TLineSetNode.Create;
LineSet713.SetVertexCount([2]);
Coordinate714 := TCoordinateNode.Create;
Coordinate714.X3DName := 'lc_r_cuneonavicular_3_0';
Coordinate714.SetPoint([Vector3(-0.0928,0.0248,-0.0821),Vector3(-0.0944,0.0175,-0.0625)]);
{ .SetCoord }
LineSet713.Coord := Coordinate714;
{ .SetGeometry }
Shape709.Geometry := LineSet713;
{ .AddChildren }
HAnimSegment701.AddChildren([Shape709]);
{ .AddChildren }
HAnimJoint700.AddChildren([HAnimSegment701]);
HAnimJoint715 := THAnimJointNode.Create;
HAnimJoint715.X3DName := 'hanim_r_tarsometatarsal_3';
HAnimJoint715.Center := Vector3(-0.0944,0.0175,-0.0625);
HAnimJoint715.SetLlimit([-0.1396,-0.0698,-0.0175]);
HAnimJoint715.SetUlimit([0.1396,0.0698,0.0175]);
HAnimSegment716 := THAnimSegmentNode.Create;
HAnimSegment716.X3DName := 'hanim_r_metatarsal_3';
TouchSensor717 := TTouchSensorNode.Create;
TouchSensor717.X3DName := 'ts_r_tarsometatarsal_3';
TouchSensor717.Description := 'r_tarsometatarsal_3';
{ .AddChildren }
HAnimSegment716.AddChildren([TouchSensor717]);
Transform718 := TTransformNode.Create;
Transform718.X3DName := 'jx_r_tarsometatarsal_3';
Transform718.Translation := Vector3(-0.0944,0.0175,-0.0625);
Transform719 := TTransformNode.Create;
Shape720 := TShapeNode.Create;
Appearance721 := TAppearanceNode.Create;
Appearance721.X3DName := 'ap_r_tarsometatarsal_3';
Material722 := TMaterialNode.Create;
Material722.X3DName := 'm_r_tarsometatarsal_3';
Material722.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance721.Material := Material722;
{ .SetAppearance }
Shape720.Appearance := Appearance721;
Sphere723 := TSphereNode.Create;
Sphere723.Radius := 0.03;
end;

procedure InitHAnimGimbalJointController22Part60;
begin

{ .SetGeometry }
Shape720.Geometry := Sphere723;
{ .AddChild }
Transform719.AddChildren([Shape720]);
{ .AddChildren }
Transform718.AddChildren([Transform719]);
{ .AddChildren }
HAnimSegment716.AddChildren([Transform718]);
Shape724 := TShapeNode.Create;
Appearance725 := TAppearanceNode.Create;
Appearance725.X3DName := 'apl_r_tarsometatarsal_3';
Material726 := TMaterialNode.Create;
Material726.X3DName := 'lm_r_tarsometatarsal_3';
Material726.DiffuseColor := Vector3(0,0,0);
Material726.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance725.Material := Material726;
LineProperties727 := TLinePropertiesNode.Create;
LineProperties727.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance725.LineProperties := LineProperties727;
{ .SetAppearance }
Shape724.Appearance := Appearance725;
LineSet728 := TLineSetNode.Create;
LineSet728.SetVertexCount([2]);
Coordinate729 := TCoordinateNode.Create;
Coordinate729.X3DName := 'lc_r_tarsometatarsal_3_0';
Coordinate729.SetPoint([Vector3(-0.0944,0.0175,-0.0625),Vector3(-0.0963,0.0065,-0.0065)]);
{ .SetCoord }
LineSet728.Coord := Coordinate729;
{ .SetGeometry }
Shape724.Geometry := LineSet728;
{ .AddChildren }
HAnimSegment716.AddChildren([Shape724]);
{ .AddChildren }
HAnimJoint715.AddChildren([HAnimSegment716]);
HAnimJoint730 := THAnimJointNode.Create;
HAnimJoint730.X3DName := 'hanim_r_metatarsophalangeal_3';
HAnimJoint730.Center := Vector3(-0.0963,0.0065,-0.0065);
HAnimJoint730.SetLlimit([-1.0472,-0.1745,-0.0175]);
HAnimJoint730.SetUlimit([0.6981,0.1745,0.0175]);
HAnimSegment731 := THAnimSegmentNode.Create;
HAnimSegment731.X3DName := 'hanim_r_tarsal_proximal_phalanx_3';
TouchSensor732 := TTouchSensorNode.Create;
TouchSensor732.X3DName := 'ts_r_metatarsophalangeal_3';
TouchSensor732.Description := 'r_metatarsophalangeal_3';
{ .AddChildren }
HAnimSegment731.AddChildren([TouchSensor732]);
Transform733 := TTransformNode.Create;
Transform733.X3DName := 'jx_r_metatarsophalangeal_3';
Transform733.Translation := Vector3(-0.0963,0.0065,-0.0065);
Transform734 := TTransformNode.Create;
end;

procedure InitHAnimGimbalJointController22Part61;
begin

Shape735 := TShapeNode.Create;
Appearance736 := TAppearanceNode.Create;
Appearance736.X3DName := 'ap_r_metatarsophalangeal_3';
Material737 := TMaterialNode.Create;
Material737.X3DName := 'm_r_metatarsophalangeal_3';
Material737.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance736.Material := Material737;
{ .SetAppearance }
Shape735.Appearance := Appearance736;
Sphere738 := TSphereNode.Create;
Sphere738.Radius := 0.03;
{ .SetGeometry }
Shape735.Geometry := Sphere738;
{ .AddChild }
Transform734.AddChildren([Shape735]);
{ .AddChildren }
Transform733.AddChildren([Transform734]);
{ .AddChildren }
HAnimSegment731.AddChildren([Transform733]);
Shape739 := TShapeNode.Create;
Appearance740 := TAppearanceNode.Create;
Appearance740.X3DName := 'apl_r_metatarsophalangeal_3';
Material741 := TMaterialNode.Create;
Material741.X3DName := 'lm_r_metatarsophalangeal_3';
Material741.DiffuseColor := Vector3(0,0,0);
Material741.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance740.Material := Material741;
LineProperties742 := TLinePropertiesNode.Create;
LineProperties742.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance740.LineProperties := LineProperties742;
{ .SetAppearance }
Shape739.Appearance := Appearance740;
LineSet743 := TLineSetNode.Create;
LineSet743.SetVertexCount([2]);
Coordinate744 := TCoordinateNode.Create;
Coordinate744.X3DName := 'lc_r_metatarsophalangeal_3_0';
Coordinate744.SetPoint([Vector3(-0.0963,0.0065,-0.0065),Vector3(-0.0987,0.0034,0.0086)]);
{ .SetCoord }
LineSet743.Coord := Coordinate744;
{ .SetGeometry }
Shape739.Geometry := LineSet743;
{ .AddChildren }
HAnimSegment731.AddChildren([Shape739]);
{ .AddChildren }
HAnimJoint730.AddChildren([HAnimSegment731]);
HAnimJoint745 := THAnimJointNode.Create;
HAnimJoint745.X3DName := 'hanim_r_tarsal_proximal_interphalangeal_3';
HAnimJoint745.Center := Vector3(-0.0987,0.0034,0.0086);
HAnimJoint745.SetLlimit([-0.1745,-0.0175,-0.0175]);
HAnimJoint745.SetUlimit([1.2217,0.0175,0.0175]);
end;

procedure InitHAnimGimbalJointController22Part62;
begin

HAnimSegment746 := THAnimSegmentNode.Create;
HAnimSegment746.X3DName := 'hanim_r_tarsal_middle_phalanx_3';
TouchSensor747 := TTouchSensorNode.Create;
TouchSensor747.X3DName := 'ts_r_tarsal_proximal_interphalangeal_3';
TouchSensor747.Description := 'r_tarsal_proximal_interphalangeal_3';
{ .AddChildren }
HAnimSegment746.AddChildren([TouchSensor747]);
Transform748 := TTransformNode.Create;
Transform748.X3DName := 'jx_r_tarsal_proximal_interphalangeal_3';
Transform748.Translation := Vector3(-0.0987,0.0034,0.0086);
Transform749 := TTransformNode.Create;
Shape750 := TShapeNode.Create;
Appearance751 := TAppearanceNode.Create;
Appearance751.X3DName := 'ap_r_tarsal_proximal_interphalangeal_3';
Material752 := TMaterialNode.Create;
Material752.X3DName := 'm_r_tarsal_proximal_interphalangeal_3';
Material752.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance751.Material := Material752;
{ .SetAppearance }
Shape750.Appearance := Appearance751;
Sphere753 := TSphereNode.Create;
Sphere753.Radius := 0.03;
{ .SetGeometry }
Shape750.Geometry := Sphere753;
{ .AddChild }
Transform749.AddChildren([Shape750]);
{ .AddChildren }
Transform748.AddChildren([Transform749]);
{ .AddChildren }
HAnimSegment746.AddChildren([Transform748]);
Shape754 := TShapeNode.Create;
Appearance755 := TAppearanceNode.Create;
Appearance755.X3DName := 'apl_r_tarsal_proximal_interphalangeal_3';
Material756 := TMaterialNode.Create;
Material756.X3DName := 'lm_r_tarsal_proximal_interphalangeal_3';
Material756.DiffuseColor := Vector3(0,0,0);
Material756.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance755.Material := Material756;
LineProperties757 := TLinePropertiesNode.Create;
LineProperties757.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance755.LineProperties := LineProperties757;
{ .SetAppearance }
Shape754.Appearance := Appearance755;
LineSet758 := TLineSetNode.Create;
LineSet758.SetVertexCount([2]);
Coordinate759 := TCoordinateNode.Create;
Coordinate759.X3DName := 'lc_r_tarsal_proximal_interphalangeal_3_0';
end;

procedure InitHAnimGimbalJointController22Part63;
begin

Coordinate759.SetPoint([Vector3(-0.0987,0.0034,0.0086),Vector3(-0.1002,0.0013,0.0178)]);
{ .SetCoord }
LineSet758.Coord := Coordinate759;
{ .SetGeometry }
Shape754.Geometry := LineSet758;
{ .AddChildren }
HAnimSegment746.AddChildren([Shape754]);
{ .AddChildren }
HAnimJoint745.AddChildren([HAnimSegment746]);
HAnimJoint760 := THAnimJointNode.Create;
HAnimJoint760.X3DName := 'hanim_r_tarsal_distal_interphalangeal_3';
HAnimJoint760.Center := Vector3(-0.1002,0.0013,0.0178);
HAnimJoint760.SetLlimit([-0.1745,-0.0175,-0.0175]);
HAnimJoint760.SetUlimit([1.2217,0.0175,0.0175]);
HAnimSegment761 := THAnimSegmentNode.Create;
HAnimSegment761.X3DName := 'hanim_r_tarsal_distal_phalanx_3';
Group762 := TGroupNode.Create;
Group762.X3DName := 'jg_r_tarsal_distal_interphalangeal_3';
TouchSensor763 := TTouchSensorNode.Create;
TouchSensor763.X3DName := 'ts_r_tarsal_distal_interphalangeal_3';
TouchSensor763.Description := 'r_tarsal_distal_interphalangeal_3';
{ .AddChildren }
Group762.AddChildren([TouchSensor763]);
Transform764 := TTransformNode.Create;
Transform764.X3DName := 'jx_r_tarsal_distal_interphalangeal_3';
Transform764.Translation := Vector3(-0.1002,0.0013,0.0178);
Shape765 := TShapeNode.Create;
Appearance766 := TAppearanceNode.Create;
Appearance766.X3DName := 'ap_r_tarsal_distal_interphalangeal_3';
Material767 := TMaterialNode.Create;
Material767.X3DName := 'm_r_tarsal_distal_interphalangeal_3';
Material767.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance766.Material := Material767;
{ .SetAppearance }
Shape765.Appearance := Appearance766;
Sphere768 := TSphereNode.Create;
Sphere768.Radius := 0.03;
{ .SetGeometry }
Shape765.Geometry := Sphere768;
{ .AddChild }
Transform764.AddChildren([Shape765]);
{ .AddChildren }
Group762.AddChildren([Transform764]);
Shape769 := TShapeNode.Create;
Appearance770 := TAppearanceNode.Create;
Appearance770.X3DName := 'apl_r_tarsal_distal_interphalangeal_3';
Material771 := TMaterialNode.Create;
Material771.X3DName := 'lm_r_tarsal_distal_interphalangeal_3';
Material771.DiffuseColor := Vector3(0,0,0);
end;

procedure InitHAnimGimbalJointController22Part64;
begin

Material771.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance770.Material := Material771;
LineProperties772 := TLinePropertiesNode.Create;
LineProperties772.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance770.LineProperties := LineProperties772;
{ .SetAppearance }
Shape769.Appearance := Appearance770;
LineSet773 := TLineSetNode.Create;
LineSet773.SetVertexCount([2]);
Coordinate774 := TCoordinateNode.Create;
Coordinate774.X3DName := 'lc_r_tarsal_distal_interphalangeal_3_0';
Coordinate774.SetPoint([Vector3(-0.1002,0.0013,0.0178),Vector3(-0.1026,-0.002,0.0322)]);
{ .SetCoord }
LineSet773.Coord := Coordinate774;
{ .SetGeometry }
Shape769.Geometry := LineSet773;
{ .AddChildren }
Group762.AddChildren([Shape769]);
{ .AddChildren }
HAnimSegment761.AddChildren([Group762]);
{ .AddChildren }
HAnimJoint760.AddChildren([HAnimSegment761]);
{ .AddChildren }
HAnimJoint745.AddChildren([HAnimJoint760]);
{ .AddChildren }
HAnimJoint730.AddChildren([HAnimJoint745]);
{ .AddChildren }
HAnimJoint715.AddChildren([HAnimJoint730]);
{ .AddChildren }
HAnimJoint700.AddChildren([HAnimJoint715]);
{ .AddChildren }
HAnimJoint542.AddChildren([HAnimJoint700]);
{ .AddChildren }
HAnimJoint523.AddChildren([HAnimJoint542]);
HAnimJoint775 := THAnimJointNode.Create;
HAnimJoint775.X3DName := 'hanim_r_calcaneocuboid';
HAnimJoint775.Center := Vector3(-0.0889,0.0494,-0.1278);
HAnimJoint775.SetLlimit([-0.1745,-0.1396,-0.1396]);
HAnimJoint775.SetUlimit([0.1745,0.1396,0.1396]);
HAnimSegment776 := THAnimSegmentNode.Create;
HAnimSegment776.X3DName := 'hanim_r_calcaneus';
TouchSensor777 := TTouchSensorNode.Create;
TouchSensor777.X3DName := 'ts_r_calcaneocuboid';
TouchSensor777.Description := 'r_calcaneocuboid';
{ .AddChildren }
HAnimSegment776.AddChildren([TouchSensor777]);
Transform778 := TTransformNode.Create;
Transform778.X3DName := 'jx_r_calcaneocuboid';
Transform778.Translation := Vector3(-0.0889,0.0494,-0.1278);
Transform779 := TTransformNode.Create;
Shape780 := TShapeNode.Create;
Appearance781 := TAppearanceNode.Create;
Appearance781.X3DName := 'ap_r_calcaneocuboid';
end;

procedure InitHAnimGimbalJointController22Part65;
begin

Material782 := TMaterialNode.Create;
Material782.X3DName := 'm_r_calcaneocuboid';
Material782.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance781.Material := Material782;
{ .SetAppearance }
Shape780.Appearance := Appearance781;
Sphere783 := TSphereNode.Create;
Sphere783.Radius := 0.03;
{ .SetGeometry }
Shape780.Geometry := Sphere783;
{ .AddChild }
Transform779.AddChildren([Shape780]);
{ .AddChildren }
Transform778.AddChildren([Transform779]);
{ .AddChildren }
HAnimSegment776.AddChildren([Transform778]);
Shape784 := TShapeNode.Create;
Appearance785 := TAppearanceNode.Create;
Appearance785.X3DName := 'apl_r_calcaneocuboid';
Material786 := TMaterialNode.Create;
Material786.X3DName := 'lm_r_calcaneocuboid';
Material786.DiffuseColor := Vector3(0,0,0);
Material786.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance785.Material := Material786;
LineProperties787 := TLinePropertiesNode.Create;
LineProperties787.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance785.LineProperties := LineProperties787;
{ .SetAppearance }
Shape784.Appearance := Appearance785;
LineSet788 := TLineSetNode.Create;
LineSet788.SetVertexCount([2]);
Coordinate789 := TCoordinateNode.Create;
Coordinate789.X3DName := 'lc_r_calcaneocuboid_0';
Coordinate789.SetPoint([Vector3(-0.0889,0.0494,-0.1278),Vector3(-0.1105,0.0267,-0.0998)]);
{ .SetCoord }
LineSet788.Coord := Coordinate789;
{ .SetGeometry }
Shape784.Geometry := LineSet788;
{ .AddChildren }
HAnimSegment776.AddChildren([Shape784]);
{ .AddChildren }
HAnimJoint775.AddChildren([HAnimSegment776]);
HAnimJoint790 := THAnimJointNode.Create;
HAnimJoint790.X3DName := 'hanim_r_transversetarsal';
HAnimJoint790.Center := Vector3(-0.1105,0.0267,-0.0998);
HAnimJoint790.SetLlimit([-0.1745,-0.1396,-0.1396]);
HAnimJoint790.SetUlimit([0.1745,0.1396,0.1396]);
HAnimSegment791 := THAnimSegmentNode.Create;
HAnimSegment791.X3DName := 'hanim_r_cuboid';
TouchSensor792 := TTouchSensorNode.Create;
end;

procedure InitHAnimGimbalJointController22Part66;
begin

TouchSensor792.X3DName := 'ts_r_transversetarsal';
TouchSensor792.Description := 'r_transversetarsal';
{ .AddChildren }
HAnimSegment791.AddChildren([TouchSensor792]);
Transform793 := TTransformNode.Create;
Transform793.X3DName := 'jx_r_transversetarsal';
Transform793.Translation := Vector3(-0.1105,0.0267,-0.0998);
Transform794 := TTransformNode.Create;
Shape795 := TShapeNode.Create;
Appearance796 := TAppearanceNode.Create;
Appearance796.X3DName := 'ap_r_transversetarsal';
Material797 := TMaterialNode.Create;
Material797.X3DName := 'm_r_transversetarsal';
Material797.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance796.Material := Material797;
{ .SetAppearance }
Shape795.Appearance := Appearance796;
Sphere798 := TSphereNode.Create;
Sphere798.Radius := 0.03;
{ .SetGeometry }
Shape795.Geometry := Sphere798;
{ .AddChild }
Transform794.AddChildren([Shape795]);
{ .AddChildren }
Transform793.AddChildren([Transform794]);
{ .AddChildren }
HAnimSegment791.AddChildren([Transform793]);
Shape799 := TShapeNode.Create;
Appearance800 := TAppearanceNode.Create;
Appearance800.X3DName := 'apl_r_transversetarsal';
Material801 := TMaterialNode.Create;
Material801.X3DName := 'lm_r_transversetarsal';
Material801.DiffuseColor := Vector3(0,0,0);
Material801.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance800.Material := Material801;
LineProperties802 := TLinePropertiesNode.Create;
LineProperties802.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance800.LineProperties := LineProperties802;
{ .SetAppearance }
Shape799.Appearance := Appearance800;
LineSet803 := TLineSetNode.Create;
LineSet803.SetVertexCount([2]);
Coordinate804 := TCoordinateNode.Create;
Coordinate804.X3DName := 'lc_r_transversetarsal_0';
Coordinate804.SetPoint([Vector3(-0.1105,0.0267,-0.0998),Vector3(-0.1063,0.016,-0.0634)]);
{ .SetCoord }
LineSet803.Coord := Coordinate804;
{ .SetGeometry }
Shape799.Geometry := LineSet803;
end;

procedure InitHAnimGimbalJointController22Part67;
begin

{ .AddChildren }
HAnimSegment791.AddChildren([Shape799]);
Shape805 := TShapeNode.Create;
{ .SetAppearance }
Shape805.Appearance := Appearance800;
LineSet807 := TLineSetNode.Create;
LineSet807.SetVertexCount([2]);
Coordinate808 := TCoordinateNode.Create;
Coordinate808.X3DName := 'lc_r_transversetarsal_1';
Coordinate808.SetPoint([Vector3(-0.1105,0.0267,-0.0998),Vector3(-0.1206,0.0124,-0.0671)]);
{ .SetCoord }
LineSet807.Coord := Coordinate808;
{ .SetGeometry }
Shape805.Geometry := LineSet807;
{ .AddChildren }
HAnimSegment791.AddChildren([Shape805]);
{ .AddChildren }
HAnimJoint790.AddChildren([HAnimSegment791]);
HAnimJoint809 := THAnimJointNode.Create;
HAnimJoint809.X3DName := 'hanim_r_tarsometatarsal_4';
HAnimJoint809.Center := Vector3(-0.1063,0.016,-0.0634);
HAnimJoint809.SetLlimit([-0.1396,-0.0698,-0.0175]);
HAnimJoint809.SetUlimit([0.1396,0.0698,0.0175]);
HAnimSegment810 := THAnimSegmentNode.Create;
HAnimSegment810.X3DName := 'hanim_r_metatarsal_4';
TouchSensor811 := TTouchSensorNode.Create;
TouchSensor811.X3DName := 'ts_r_tarsometatarsal_4';
TouchSensor811.Description := 'r_tarsometatarsal_4';
{ .AddChildren }
HAnimSegment810.AddChildren([TouchSensor811]);
Transform812 := TTransformNode.Create;
Transform812.X3DName := 'jx_r_tarsometatarsal_4';
Transform812.Translation := Vector3(-0.1063,0.016,-0.0634);
Transform813 := TTransformNode.Create;
Shape814 := TShapeNode.Create;
Appearance815 := TAppearanceNode.Create;
Appearance815.X3DName := 'ap_r_tarsometatarsal_4';
Material816 := TMaterialNode.Create;
Material816.X3DName := 'm_r_tarsometatarsal_4';
Material816.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance815.Material := Material816;
{ .SetAppearance }
Shape814.Appearance := Appearance815;
Sphere817 := TSphereNode.Create;
Sphere817.Radius := 0.03;
{ .SetGeometry }
Shape814.Geometry := Sphere817;
{ .AddChild }
Transform813.AddChildren([Shape814]);
{ .AddChildren }
Transform812.AddChildren([Transform813]);
end;

procedure InitHAnimGimbalJointController22Part68;
begin

{ .AddChildren }
HAnimSegment810.AddChildren([Transform812]);
Shape818 := TShapeNode.Create;
Appearance819 := TAppearanceNode.Create;
Appearance819.X3DName := 'apl_r_tarsometatarsal_4';
Material820 := TMaterialNode.Create;
Material820.X3DName := 'lm_r_tarsometatarsal_4';
Material820.DiffuseColor := Vector3(0,0,0);
Material820.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance819.Material := Material820;
LineProperties821 := TLinePropertiesNode.Create;
LineProperties821.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance819.LineProperties := LineProperties821;
{ .SetAppearance }
Shape818.Appearance := Appearance819;
LineSet822 := TLineSetNode.Create;
LineSet822.SetVertexCount([2]);
Coordinate823 := TCoordinateNode.Create;
Coordinate823.X3DName := 'lc_r_tarsometatarsal_4_0';
Coordinate823.SetPoint([Vector3(-0.1063,0.016,-0.0634),Vector3(-0.1097,0.0058,-0.0107)]);
{ .SetCoord }
LineSet822.Coord := Coordinate823;
{ .SetGeometry }
Shape818.Geometry := LineSet822;
{ .AddChildren }
HAnimSegment810.AddChildren([Shape818]);
{ .AddChildren }
HAnimJoint809.AddChildren([HAnimSegment810]);
HAnimJoint824 := THAnimJointNode.Create;
HAnimJoint824.X3DName := 'hanim_r_metatarsophalangeal_4';
HAnimJoint824.Center := Vector3(-0.1097,0.0058,-0.0107);
HAnimJoint824.SetLlimit([-1.0472,-0.1745,-0.0175]);
HAnimJoint824.SetUlimit([0.6981,0.1745,0.0175]);
HAnimSegment825 := THAnimSegmentNode.Create;
HAnimSegment825.X3DName := 'hanim_r_tarsal_proximal_phalanx_4';
TouchSensor826 := TTouchSensorNode.Create;
TouchSensor826.X3DName := 'ts_r_metatarsophalangeal_4';
TouchSensor826.Description := 'r_metatarsophalangeal_4';
{ .AddChildren }
HAnimSegment825.AddChildren([TouchSensor826]);
Transform827 := TTransformNode.Create;
Transform827.X3DName := 'jx_r_metatarsophalangeal_4';
Transform827.Translation := Vector3(-0.1097,0.0058,-0.0107);
Transform828 := TTransformNode.Create;
Shape829 := TShapeNode.Create;
Appearance830 := TAppearanceNode.Create;
Appearance830.X3DName := 'ap_r_metatarsophalangeal_4';
end;

procedure InitHAnimGimbalJointController22Part69;
begin

Material831 := TMaterialNode.Create;
Material831.X3DName := 'm_r_metatarsophalangeal_4';
Material831.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance830.Material := Material831;
{ .SetAppearance }
Shape829.Appearance := Appearance830;
Sphere832 := TSphereNode.Create;
Sphere832.Radius := 0.03;
{ .SetGeometry }
Shape829.Geometry := Sphere832;
{ .AddChild }
Transform828.AddChildren([Shape829]);
{ .AddChildren }
Transform827.AddChildren([Transform828]);
{ .AddChildren }
HAnimSegment825.AddChildren([Transform827]);
Shape833 := TShapeNode.Create;
Appearance834 := TAppearanceNode.Create;
Appearance834.X3DName := 'apl_r_metatarsophalangeal_4';
Material835 := TMaterialNode.Create;
Material835.X3DName := 'lm_r_metatarsophalangeal_4';
Material835.DiffuseColor := Vector3(0,0,0);
Material835.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance834.Material := Material835;
LineProperties836 := TLinePropertiesNode.Create;
LineProperties836.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance834.LineProperties := LineProperties836;
{ .SetAppearance }
Shape833.Appearance := Appearance834;
LineSet837 := TLineSetNode.Create;
LineSet837.SetVertexCount([2]);
Coordinate838 := TCoordinateNode.Create;
Coordinate838.X3DName := 'lc_r_metatarsophalangeal_4_0';
Coordinate838.SetPoint([Vector3(-0.1097,0.0058,-0.0107),Vector3(-0.114,0.0037,0.0044)]);
{ .SetCoord }
LineSet837.Coord := Coordinate838;
{ .SetGeometry }
Shape833.Geometry := LineSet837;
{ .AddChildren }
HAnimSegment825.AddChildren([Shape833]);
{ .AddChildren }
HAnimJoint824.AddChildren([HAnimSegment825]);
HAnimJoint839 := THAnimJointNode.Create;
HAnimJoint839.X3DName := 'hanim_r_tarsal_proximal_interphalangeal_4';
HAnimJoint839.Center := Vector3(-0.114,0.0037,0.0044);
HAnimJoint839.SetLlimit([-0.1745,-0.0175,-0.0175]);
HAnimJoint839.SetUlimit([1.2217,0.0175,0.0175]);
HAnimSegment840 := THAnimSegmentNode.Create;
HAnimSegment840.X3DName := 'hanim_r_tarsal_middle_phalanx_4';
TouchSensor841 := TTouchSensorNode.Create;
end;

procedure InitHAnimGimbalJointController22Part70;
begin

TouchSensor841.X3DName := 'ts_r_tarsal_proximal_interphalangeal_4';
TouchSensor841.Description := 'r_tarsal_proximal_interphalangeal_4';
{ .AddChildren }
HAnimSegment840.AddChildren([TouchSensor841]);
Transform842 := TTransformNode.Create;
Transform842.X3DName := 'jx_r_tarsal_proximal_interphalangeal_4';
Transform842.Translation := Vector3(-0.114,0.0037,0.0044);
Transform843 := TTransformNode.Create;
Shape844 := TShapeNode.Create;
Appearance845 := TAppearanceNode.Create;
Appearance845.X3DName := 'ap_r_tarsal_proximal_interphalangeal_4';
Material846 := TMaterialNode.Create;
Material846.X3DName := 'm_r_tarsal_proximal_interphalangeal_4';
Material846.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance845.Material := Material846;
{ .SetAppearance }
Shape844.Appearance := Appearance845;
Sphere847 := TSphereNode.Create;
Sphere847.Radius := 0.03;
{ .SetGeometry }
Shape844.Geometry := Sphere847;
{ .AddChild }
Transform843.AddChildren([Shape844]);
{ .AddChildren }
Transform842.AddChildren([Transform843]);
{ .AddChildren }
HAnimSegment840.AddChildren([Transform842]);
Shape848 := TShapeNode.Create;
Appearance849 := TAppearanceNode.Create;
Appearance849.X3DName := 'apl_r_tarsal_proximal_interphalangeal_4';
Material850 := TMaterialNode.Create;
Material850.X3DName := 'lm_r_tarsal_proximal_interphalangeal_4';
Material850.DiffuseColor := Vector3(0,0,0);
Material850.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance849.Material := Material850;
LineProperties851 := TLinePropertiesNode.Create;
LineProperties851.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance849.LineProperties := LineProperties851;
{ .SetAppearance }
Shape848.Appearance := Appearance849;
LineSet852 := TLineSetNode.Create;
LineSet852.SetVertexCount([2]);
Coordinate853 := TCoordinateNode.Create;
Coordinate853.X3DName := 'lc_r_tarsal_proximal_interphalangeal_4_0';
Coordinate853.SetPoint([Vector3(-0.114,0.0037,0.0044),Vector3(-0.1155,0.0008,0.0118)]);
{ .SetCoord }
LineSet852.Coord := Coordinate853;
{ .SetGeometry }
Shape848.Geometry := LineSet852;
end;

procedure InitHAnimGimbalJointController22Part71;
begin

{ .AddChildren }
HAnimSegment840.AddChildren([Shape848]);
{ .AddChildren }
HAnimJoint839.AddChildren([HAnimSegment840]);
HAnimJoint854 := THAnimJointNode.Create;
HAnimJoint854.X3DName := 'hanim_r_tarsal_distal_interphalangeal_4';
HAnimJoint854.Center := Vector3(-0.1155,0.0008,0.0118);
HAnimJoint854.SetLlimit([-0.1745,-0.0175,-0.0175]);
HAnimJoint854.SetUlimit([1.2217,0.0175,0.0175]);
HAnimSegment855 := THAnimSegmentNode.Create;
HAnimSegment855.X3DName := 'hanim_r_tarsal_distal_phalanx_4';
Group856 := TGroupNode.Create;
Group856.X3DName := 'jg_r_tarsal_distal_interphalangeal_4';
TouchSensor857 := TTouchSensorNode.Create;
TouchSensor857.X3DName := 'ts_r_tarsal_distal_interphalangeal_4';
TouchSensor857.Description := 'r_tarsal_distal_interphalangeal_4';
{ .AddChildren }
Group856.AddChildren([TouchSensor857]);
Transform858 := TTransformNode.Create;
Transform858.X3DName := 'jx_r_tarsal_distal_interphalangeal_4';
Transform858.Translation := Vector3(-0.1155,0.0008,0.0118);
Shape859 := TShapeNode.Create;
Appearance860 := TAppearanceNode.Create;
Appearance860.X3DName := 'ap_r_tarsal_distal_interphalangeal_4';
Material861 := TMaterialNode.Create;
Material861.X3DName := 'm_r_tarsal_distal_interphalangeal_4';
Material861.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance860.Material := Material861;
{ .SetAppearance }
Shape859.Appearance := Appearance860;
Sphere862 := TSphereNode.Create;
Sphere862.Radius := 0.03;
{ .SetGeometry }
Shape859.Geometry := Sphere862;
{ .AddChild }
Transform858.AddChildren([Shape859]);
{ .AddChildren }
Group856.AddChildren([Transform858]);
Shape863 := TShapeNode.Create;
Appearance864 := TAppearanceNode.Create;
Appearance864.X3DName := 'apl_r_tarsal_distal_interphalangeal_4';
Material865 := TMaterialNode.Create;
Material865.X3DName := 'lm_r_tarsal_distal_interphalangeal_4';
Material865.DiffuseColor := Vector3(0,0,0);
Material865.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance864.Material := Material865;
LineProperties866 := TLinePropertiesNode.Create;
end;

procedure InitHAnimGimbalJointController22Part72;
begin

LineProperties866.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance864.LineProperties := LineProperties866;
{ .SetAppearance }
Shape863.Appearance := Appearance864;
LineSet867 := TLineSetNode.Create;
LineSet867.SetVertexCount([2]);
Coordinate868 := TCoordinateNode.Create;
Coordinate868.X3DName := 'lc_r_tarsal_distal_interphalangeal_4_0';
Coordinate868.SetPoint([Vector3(-0.1155,0.0008,0.0118),Vector3(-0.1183,-0.0046,0.0255)]);
{ .SetCoord }
LineSet867.Coord := Coordinate868;
{ .SetGeometry }
Shape863.Geometry := LineSet867;
{ .AddChildren }
Group856.AddChildren([Shape863]);
{ .AddChildren }
HAnimSegment855.AddChildren([Group856]);
{ .AddChildren }
HAnimJoint854.AddChildren([HAnimSegment855]);
{ .AddChildren }
HAnimJoint839.AddChildren([HAnimJoint854]);
{ .AddChildren }
HAnimJoint824.AddChildren([HAnimJoint839]);
{ .AddChildren }
HAnimJoint809.AddChildren([HAnimJoint824]);
{ .AddChildren }
HAnimJoint790.AddChildren([HAnimJoint809]);
HAnimJoint869 := THAnimJointNode.Create;
HAnimJoint869.X3DName := 'hanim_r_tarsometatarsal_5';
HAnimJoint869.Center := Vector3(-0.1206,0.0124,-0.0671);
HAnimJoint869.SetLlimit([-0.1396,-0.0698,-0.0175]);
HAnimJoint869.SetUlimit([0.1396,0.0698,0.0175]);
HAnimSegment870 := THAnimSegmentNode.Create;
HAnimSegment870.X3DName := 'hanim_r_metatarsal_5';
TouchSensor871 := TTouchSensorNode.Create;
TouchSensor871.X3DName := 'ts_r_tarsometatarsal_5';
TouchSensor871.Description := 'r_tarsometatarsal_5';
{ .AddChildren }
HAnimSegment870.AddChildren([TouchSensor871]);
Transform872 := TTransformNode.Create;
Transform872.X3DName := 'jx_r_tarsometatarsal_5';
Transform872.Translation := Vector3(-0.1206,0.0124,-0.0671);
Transform873 := TTransformNode.Create;
Shape874 := TShapeNode.Create;
Appearance875 := TAppearanceNode.Create;
Appearance875.X3DName := 'ap_r_tarsometatarsal_5';
Material876 := TMaterialNode.Create;
Material876.X3DName := 'm_r_tarsometatarsal_5';
Material876.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance875.Material := Material876;
{ .SetAppearance }
Shape874.Appearance := Appearance875;
end;

procedure InitHAnimGimbalJointController22Part73;
begin

Sphere877 := TSphereNode.Create;
Sphere877.Radius := 0.03;
{ .SetGeometry }
Shape874.Geometry := Sphere877;
{ .AddChild }
Transform873.AddChildren([Shape874]);
{ .AddChildren }
Transform872.AddChildren([Transform873]);
{ .AddChildren }
HAnimSegment870.AddChildren([Transform872]);
Shape878 := TShapeNode.Create;
Appearance879 := TAppearanceNode.Create;
Appearance879.X3DName := 'apl_r_tarsometatarsal_5';
Material880 := TMaterialNode.Create;
Material880.X3DName := 'lm_r_tarsometatarsal_5';
Material880.DiffuseColor := Vector3(0,0,0);
Material880.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance879.Material := Material880;
LineProperties881 := TLinePropertiesNode.Create;
LineProperties881.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance879.LineProperties := LineProperties881;
{ .SetAppearance }
Shape878.Appearance := Appearance879;
LineSet882 := TLineSetNode.Create;
LineSet882.SetVertexCount([2]);
Coordinate883 := TCoordinateNode.Create;
Coordinate883.X3DName := 'lc_r_tarsometatarsal_5_0';
Coordinate883.SetPoint([Vector3(-0.1206,0.0124,-0.0671),Vector3(-0.1239,0.0051,-0.0153)]);
{ .SetCoord }
LineSet882.Coord := Coordinate883;
{ .SetGeometry }
Shape878.Geometry := LineSet882;
{ .AddChildren }
HAnimSegment870.AddChildren([Shape878]);
{ .AddChildren }
HAnimJoint869.AddChildren([HAnimSegment870]);
HAnimJoint884 := THAnimJointNode.Create;
HAnimJoint884.X3DName := 'hanim_r_metatarsophalangeal_5';
HAnimJoint884.Center := Vector3(-0.1239,0.0051,-0.0153);
HAnimJoint884.SetLlimit([-1.0472,-0.1745,-0.0175]);
HAnimJoint884.SetUlimit([0.6981,0.1745,0.0175]);
HAnimSegment885 := THAnimSegmentNode.Create;
HAnimSegment885.X3DName := 'hanim_r_tarsal_proximal_phalanx_5';
TouchSensor886 := TTouchSensorNode.Create;
TouchSensor886.X3DName := 'ts_r_metatarsophalangeal_5';
TouchSensor886.Description := 'r_metatarsophalangeal_5';
{ .AddChildren }
HAnimSegment885.AddChildren([TouchSensor886]);
Transform887 := TTransformNode.Create;
Transform887.X3DName := 'jx_r_metatarsophalangeal_5';
end;

procedure InitHAnimGimbalJointController22Part74;
begin

Transform887.Translation := Vector3(-0.1239,0.0051,-0.0153);
Transform888 := TTransformNode.Create;
Shape889 := TShapeNode.Create;
Appearance890 := TAppearanceNode.Create;
Appearance890.X3DName := 'ap_r_metatarsophalangeal_5';
Material891 := TMaterialNode.Create;
Material891.X3DName := 'm_r_metatarsophalangeal_5';
Material891.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance890.Material := Material891;
{ .SetAppearance }
Shape889.Appearance := Appearance890;
Sphere892 := TSphereNode.Create;
Sphere892.Radius := 0.03;
{ .SetGeometry }
Shape889.Geometry := Sphere892;
{ .AddChild }
Transform888.AddChildren([Shape889]);
{ .AddChildren }
Transform887.AddChildren([Transform888]);
{ .AddChildren }
HAnimSegment885.AddChildren([Transform887]);
Shape893 := TShapeNode.Create;
Appearance894 := TAppearanceNode.Create;
Appearance894.X3DName := 'apl_r_metatarsophalangeal_5';
Material895 := TMaterialNode.Create;
Material895.X3DName := 'lm_r_metatarsophalangeal_5';
Material895.DiffuseColor := Vector3(0,0,0);
Material895.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance894.Material := Material895;
LineProperties896 := TLinePropertiesNode.Create;
LineProperties896.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance894.LineProperties := LineProperties896;
{ .SetAppearance }
Shape893.Appearance := Appearance894;
LineSet897 := TLineSetNode.Create;
LineSet897.SetVertexCount([2]);
Coordinate898 := TCoordinateNode.Create;
Coordinate898.X3DName := 'lc_r_metatarsophalangeal_5_0';
Coordinate898.SetPoint([Vector3(-0.1239,0.0051,-0.0153),Vector3(-0.1262,0.0023,-0.0077)]);
{ .SetCoord }
LineSet897.Coord := Coordinate898;
{ .SetGeometry }
Shape893.Geometry := LineSet897;
{ .AddChildren }
HAnimSegment885.AddChildren([Shape893]);
{ .AddChildren }
HAnimJoint884.AddChildren([HAnimSegment885]);
HAnimJoint899 := THAnimJointNode.Create;
HAnimJoint899.X3DName := 'hanim_r_tarsal_proximal_interphalangeal_5';
HAnimJoint899.Center := Vector3(-0.1262,0.0023,-0.0077);
end;

procedure InitHAnimGimbalJointController22Part75;
begin

HAnimJoint899.SetLlimit([-0.1745,-0.0175,-0.0175]);
HAnimJoint899.SetUlimit([1.2217,0.0175,0.0175]);
HAnimSegment900 := THAnimSegmentNode.Create;
HAnimSegment900.X3DName := 'hanim_r_tarsal_middle_phalanx_5';
TouchSensor901 := TTouchSensorNode.Create;
TouchSensor901.X3DName := 'ts_r_tarsal_proximal_interphalangeal_5';
TouchSensor901.Description := 'r_tarsal_proximal_interphalangeal_5';
{ .AddChildren }
HAnimSegment900.AddChildren([TouchSensor901]);
Transform902 := TTransformNode.Create;
Transform902.X3DName := 'jx_r_tarsal_proximal_interphalangeal_5';
Transform902.Translation := Vector3(-0.1262,0.0023,-0.0077);
Transform903 := TTransformNode.Create;
Shape904 := TShapeNode.Create;
Appearance905 := TAppearanceNode.Create;
Appearance905.X3DName := 'ap_r_tarsal_proximal_interphalangeal_5';
Material906 := TMaterialNode.Create;
Material906.X3DName := 'm_r_tarsal_proximal_interphalangeal_5';
Material906.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance905.Material := Material906;
{ .SetAppearance }
Shape904.Appearance := Appearance905;
Sphere907 := TSphereNode.Create;
Sphere907.Radius := 0.03;
{ .SetGeometry }
Shape904.Geometry := Sphere907;
{ .AddChild }
Transform903.AddChildren([Shape904]);
{ .AddChildren }
Transform902.AddChildren([Transform903]);
{ .AddChildren }
HAnimSegment900.AddChildren([Transform902]);
Shape908 := TShapeNode.Create;
Appearance909 := TAppearanceNode.Create;
Appearance909.X3DName := 'apl_r_tarsal_proximal_interphalangeal_5';
Material910 := TMaterialNode.Create;
Material910.X3DName := 'lm_r_tarsal_proximal_interphalangeal_5';
Material910.DiffuseColor := Vector3(0,0,0);
Material910.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance909.Material := Material910;
LineProperties911 := TLinePropertiesNode.Create;
LineProperties911.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance909.LineProperties := LineProperties911;
{ .SetAppearance }
Shape908.Appearance := Appearance909;
LineSet912 := TLineSetNode.Create;
LineSet912.SetVertexCount([2]);
end;

procedure InitHAnimGimbalJointController22Part76;
begin

Coordinate913 := TCoordinateNode.Create;
Coordinate913.X3DName := 'lc_r_tarsal_proximal_interphalangeal_5_0';
Coordinate913.SetPoint([Vector3(-0.1262,0.0023,-0.0077),Vector3(-0.1271,0,0)]);
{ .SetCoord }
LineSet912.Coord := Coordinate913;
{ .SetGeometry }
Shape908.Geometry := LineSet912;
{ .AddChildren }
HAnimSegment900.AddChildren([Shape908]);
{ .AddChildren }
HAnimJoint899.AddChildren([HAnimSegment900]);
HAnimJoint914 := THAnimJointNode.Create;
HAnimJoint914.X3DName := 'hanim_r_tarsal_distal_interphalangeal_5';
HAnimJoint914.Center := Vector3(-0.1271,0,0);
HAnimJoint914.SetLlimit([-0.1745,-0.0175,-0.0175]);
HAnimJoint914.SetUlimit([1.2217,0.0175,0.0175]);
HAnimSegment915 := THAnimSegmentNode.Create;
HAnimSegment915.X3DName := 'hanim_r_tarsal_distal_phalanx_5';
Group916 := TGroupNode.Create;
Group916.X3DName := 'jg_r_tarsal_distal_interphalangeal_5';
TouchSensor917 := TTouchSensorNode.Create;
TouchSensor917.X3DName := 'ts_r_tarsal_distal_interphalangeal_5';
TouchSensor917.Description := 'r_tarsal_distal_interphalangeal_5';
{ .AddChildren }
Group916.AddChildren([TouchSensor917]);
Transform918 := TTransformNode.Create;
Transform918.X3DName := 'jx_r_tarsal_distal_interphalangeal_5';
Transform918.Translation := Vector3(-0.1271,0,0);
Shape919 := TShapeNode.Create;
Appearance920 := TAppearanceNode.Create;
Appearance920.X3DName := 'ap_r_tarsal_distal_interphalangeal_5';
Material921 := TMaterialNode.Create;
Material921.X3DName := 'm_r_tarsal_distal_interphalangeal_5';
Material921.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance920.Material := Material921;
{ .SetAppearance }
Shape919.Appearance := Appearance920;
Sphere922 := TSphereNode.Create;
Sphere922.Radius := 0.03;
{ .SetGeometry }
Shape919.Geometry := Sphere922;
{ .AddChild }
Transform918.AddChildren([Shape919]);
{ .AddChildren }
Group916.AddChildren([Transform918]);
Shape923 := TShapeNode.Create;
Appearance924 := TAppearanceNode.Create;
Appearance924.X3DName := 'apl_r_tarsal_distal_interphalangeal_5';
Material925 := TMaterialNode.Create;
end;

procedure InitHAnimGimbalJointController22Part77;
begin

Material925.X3DName := 'lm_r_tarsal_distal_interphalangeal_5';
Material925.DiffuseColor := Vector3(0,0,0);
Material925.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance924.Material := Material925;
LineProperties926 := TLinePropertiesNode.Create;
LineProperties926.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance924.LineProperties := LineProperties926;
{ .SetAppearance }
Shape923.Appearance := Appearance924;
LineSet927 := TLineSetNode.Create;
LineSet927.SetVertexCount([2]);
Coordinate928 := TCoordinateNode.Create;
Coordinate928.X3DName := 'lc_r_tarsal_distal_interphalangeal_5_0';
Coordinate928.SetPoint([Vector3(-0.1271,0,0),Vector3(-0.1288,-0.0043,0.0143)]);
{ .SetCoord }
LineSet927.Coord := Coordinate928;
{ .SetGeometry }
Shape923.Geometry := LineSet927;
{ .AddChildren }
Group916.AddChildren([Shape923]);
{ .AddChildren }
HAnimSegment915.AddChildren([Group916]);
{ .AddChildren }
HAnimJoint914.AddChildren([HAnimSegment915]);
{ .AddChildren }
HAnimJoint899.AddChildren([HAnimJoint914]);
{ .AddChildren }
HAnimJoint884.AddChildren([HAnimJoint899]);
{ .AddChildren }
HAnimJoint869.AddChildren([HAnimJoint884]);
{ .AddChildren }
HAnimJoint790.AddChildren([HAnimJoint869]);
{ .AddChildren }
HAnimJoint775.AddChildren([HAnimJoint790]);
{ .AddChildren }
HAnimJoint523.AddChildren([HAnimJoint775]);
{ .AddChildren }
HAnimJoint508.AddChildren([HAnimJoint523]);
{ .AddChildren }
HAnimJoint493.AddChildren([HAnimJoint508]);
{ .AddChildren }
HAnimJoint38.AddChildren([HAnimJoint493]);
{ .AddChildren }
HAnimJoint19.AddChildren([HAnimJoint38]);
{ ==================== BRANCH 2: SPINE, NECK, HEAD & ARMS ==================== }
HAnimJoint929 := THAnimJointNode.Create;
HAnimJoint929.X3DName := 'hanim_vl5';
HAnimJoint929.Center := Vector3(0.0028,1.0568,-0.0776);
HAnimJoint929.SetLlimit([-0.1047,-0.0873,-0.0873]);
HAnimJoint929.SetUlimit([0.1745,0.0873,0.0873]);
HAnimSegment930 := THAnimSegmentNode.Create;
HAnimSegment930.X3DName := 'hanim_l5';
TouchSensor931 := TTouchSensorNode.Create;
TouchSensor931.X3DName := 'ts_vl5';
TouchSensor931.Description := 'vl5';
{ .AddChildren }
HAnimSegment930.AddChildren([TouchSensor931]);
Transform932 := TTransformNode.Create;
end;

procedure InitHAnimGimbalJointController22Part78;
begin

Transform932.X3DName := 'jx_vl5';
Transform932.Translation := Vector3(0.0028,1.0568,-0.0776);
Transform933 := TTransformNode.Create;
Shape934 := TShapeNode.Create;
Appearance935 := TAppearanceNode.Create;
Appearance935.X3DName := 'ap_vl5';
Material936 := TMaterialNode.Create;
Material936.X3DName := 'm_vl5';
Material936.DiffuseColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance935.Material := Material936;
{ .SetAppearance }
Shape934.Appearance := Appearance935;
Sphere937 := TSphereNode.Create;
Sphere937.Radius := 0.03;
{ .SetGeometry }
Shape934.Geometry := Sphere937;
{ .AddChild }
Transform933.AddChildren([Shape934]);
{ .AddChildren }
Transform932.AddChildren([Transform933]);
{ .AddChildren }
HAnimSegment930.AddChildren([Transform932]);
Shape938 := TShapeNode.Create;
Appearance939 := TAppearanceNode.Create;
Appearance939.X3DName := 'apl_vl5';
Material940 := TMaterialNode.Create;
Material940.X3DName := 'lm_vl5';
Material940.DiffuseColor := Vector3(0,0,0);
Material940.EmissiveColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance939.Material := Material940;
LineProperties941 := TLinePropertiesNode.Create;
LineProperties941.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance939.LineProperties := LineProperties941;
{ .SetAppearance }
Shape938.Appearance := Appearance939;
LineSet942 := TLineSetNode.Create;
LineSet942.SetVertexCount([2]);
Coordinate943 := TCoordinateNode.Create;
Coordinate943.X3DName := 'lc_vl5_0';
Coordinate943.SetPoint([Vector3(0.0028,1.0568,-0.0776),Vector3(0.0035,1.0925,-0.0787)]);
{ .SetCoord }
LineSet942.Coord := Coordinate943;
{ .SetGeometry }
Shape938.Geometry := LineSet942;
{ .AddChildren }
HAnimSegment930.AddChildren([Shape938]);
{ .AddChildren }
HAnimJoint929.AddChildren([HAnimSegment930]);
HAnimJoint944 := THAnimJointNode.Create;
HAnimJoint944.X3DName := 'hanim_vl4';
end;

procedure InitHAnimGimbalJointController22Part79;
begin

HAnimJoint944.Center := Vector3(0.0035,1.0925,-0.0787);
HAnimJoint944.SetLlimit([-0.1047,-0.0873,-0.0873]);
HAnimJoint944.SetUlimit([0.1745,0.0873,0.0873]);
HAnimSegment945 := THAnimSegmentNode.Create;
HAnimSegment945.X3DName := 'hanim_l4';
TouchSensor946 := TTouchSensorNode.Create;
TouchSensor946.X3DName := 'ts_vl4';
TouchSensor946.Description := 'vl4';
{ .AddChildren }
HAnimSegment945.AddChildren([TouchSensor946]);
Transform947 := TTransformNode.Create;
Transform947.X3DName := 'jx_vl4';
Transform947.Translation := Vector3(0.0035,1.0925,-0.0787);
Transform948 := TTransformNode.Create;
Shape949 := TShapeNode.Create;
Appearance950 := TAppearanceNode.Create;
Appearance950.X3DName := 'ap_vl4';
Material951 := TMaterialNode.Create;
Material951.X3DName := 'm_vl4';
Material951.DiffuseColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance950.Material := Material951;
{ .SetAppearance }
Shape949.Appearance := Appearance950;
Sphere952 := TSphereNode.Create;
Sphere952.Radius := 0.03;
{ .SetGeometry }
Shape949.Geometry := Sphere952;
{ .AddChild }
Transform948.AddChildren([Shape949]);
{ .AddChildren }
Transform947.AddChildren([Transform948]);
{ .AddChildren }
HAnimSegment945.AddChildren([Transform947]);
Shape953 := TShapeNode.Create;
Appearance954 := TAppearanceNode.Create;
Appearance954.X3DName := 'apl_vl4';
Material955 := TMaterialNode.Create;
Material955.X3DName := 'lm_vl4';
Material955.DiffuseColor := Vector3(0,0,0);
Material955.EmissiveColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance954.Material := Material955;
LineProperties956 := TLinePropertiesNode.Create;
LineProperties956.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance954.LineProperties := LineProperties956;
{ .SetAppearance }
Shape953.Appearance := Appearance954;
LineSet957 := TLineSetNode.Create;
end;

procedure InitHAnimGimbalJointController22Part80;
begin

LineSet957.SetVertexCount([2]);
Coordinate958 := TCoordinateNode.Create;
Coordinate958.X3DName := 'lc_vl4_0';
Coordinate958.SetPoint([Vector3(0.0035,1.0925,-0.0787),Vector3(0.0041,1.1276,-0.0796)]);
{ .SetCoord }
LineSet957.Coord := Coordinate958;
{ .SetGeometry }
Shape953.Geometry := LineSet957;
{ .AddChildren }
HAnimSegment945.AddChildren([Shape953]);
{ .AddChildren }
HAnimJoint944.AddChildren([HAnimSegment945]);
HAnimJoint959 := THAnimJointNode.Create;
HAnimJoint959.X3DName := 'hanim_vl3';
HAnimJoint959.Center := Vector3(0.0041,1.1276,-0.0796);
HAnimJoint959.SetLlimit([-0.1047,-0.0873,-0.0873]);
HAnimJoint959.SetUlimit([0.1745,0.0873,0.0873]);
HAnimSegment960 := THAnimSegmentNode.Create;
HAnimSegment960.X3DName := 'hanim_l3';
TouchSensor961 := TTouchSensorNode.Create;
TouchSensor961.X3DName := 'ts_vl3';
TouchSensor961.Description := 'vl3';
{ .AddChildren }
HAnimSegment960.AddChildren([TouchSensor961]);
Transform962 := TTransformNode.Create;
Transform962.X3DName := 'jx_vl3';
Transform962.Translation := Vector3(0.0041,1.1276,-0.0796);
Transform963 := TTransformNode.Create;
Shape964 := TShapeNode.Create;
Appearance965 := TAppearanceNode.Create;
Appearance965.X3DName := 'ap_vl3';
Material966 := TMaterialNode.Create;
Material966.X3DName := 'm_vl3';
Material966.DiffuseColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance965.Material := Material966;
{ .SetAppearance }
Shape964.Appearance := Appearance965;
Sphere967 := TSphereNode.Create;
Sphere967.Radius := 0.03;
{ .SetGeometry }
Shape964.Geometry := Sphere967;
{ .AddChild }
Transform963.AddChildren([Shape964]);
{ .AddChildren }
Transform962.AddChildren([Transform963]);
{ .AddChildren }
HAnimSegment960.AddChildren([Transform962]);
Shape968 := TShapeNode.Create;
Appearance969 := TAppearanceNode.Create;
Appearance969.X3DName := 'apl_vl3';
end;

procedure InitHAnimGimbalJointController22Part81;
begin

Material970 := TMaterialNode.Create;
Material970.X3DName := 'lm_vl3';
Material970.DiffuseColor := Vector3(0,0,0);
Material970.EmissiveColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance969.Material := Material970;
LineProperties971 := TLinePropertiesNode.Create;
LineProperties971.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance969.LineProperties := LineProperties971;
{ .SetAppearance }
Shape968.Appearance := Appearance969;
LineSet972 := TLineSetNode.Create;
LineSet972.SetVertexCount([2]);
Coordinate973 := TCoordinateNode.Create;
Coordinate973.X3DName := 'lc_vl3_0';
Coordinate973.SetPoint([Vector3(0.0041,1.1276,-0.0796),Vector3(0.0045,1.1546,-0.08)]);
{ .SetCoord }
LineSet972.Coord := Coordinate973;
{ .SetGeometry }
Shape968.Geometry := LineSet972;
{ .AddChildren }
HAnimSegment960.AddChildren([Shape968]);
{ .AddChildren }
HAnimJoint959.AddChildren([HAnimSegment960]);
HAnimJoint974 := THAnimJointNode.Create;
HAnimJoint974.X3DName := 'hanim_vl2';
HAnimJoint974.Center := Vector3(0.0045,1.1546,-0.08);
HAnimJoint974.SetLlimit([-0.1047,-0.0873,-0.0873]);
HAnimJoint974.SetUlimit([0.1745,0.0873,0.0873]);
HAnimSegment975 := THAnimSegmentNode.Create;
HAnimSegment975.X3DName := 'hanim_l2';
TouchSensor976 := TTouchSensorNode.Create;
TouchSensor976.X3DName := 'ts_vl2';
TouchSensor976.Description := 'vl2';
{ .AddChildren }
HAnimSegment975.AddChildren([TouchSensor976]);
Transform977 := TTransformNode.Create;
Transform977.X3DName := 'jx_vl2';
Transform977.Translation := Vector3(0.0045,1.1546,-0.08);
Transform978 := TTransformNode.Create;
Shape979 := TShapeNode.Create;
Appearance980 := TAppearanceNode.Create;
Appearance980.X3DName := 'ap_vl2';
Material981 := TMaterialNode.Create;
Material981.X3DName := 'm_vl2';
Material981.DiffuseColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance980.Material := Material981;
end;

procedure InitHAnimGimbalJointController22Part82;
begin

{ .SetAppearance }
Shape979.Appearance := Appearance980;
Sphere982 := TSphereNode.Create;
Sphere982.Radius := 0.03;
{ .SetGeometry }
Shape979.Geometry := Sphere982;
{ .AddChild }
Transform978.AddChildren([Shape979]);
{ .AddChildren }
Transform977.AddChildren([Transform978]);
{ .AddChildren }
HAnimSegment975.AddChildren([Transform977]);
Shape983 := TShapeNode.Create;
Appearance984 := TAppearanceNode.Create;
Appearance984.X3DName := 'apl_vl2';
Material985 := TMaterialNode.Create;
Material985.X3DName := 'lm_vl2';
Material985.DiffuseColor := Vector3(0,0,0);
Material985.EmissiveColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance984.Material := Material985;
LineProperties986 := TLinePropertiesNode.Create;
LineProperties986.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance984.LineProperties := LineProperties986;
{ .SetAppearance }
Shape983.Appearance := Appearance984;
LineSet987 := TLineSetNode.Create;
LineSet987.SetVertexCount([2]);
Coordinate988 := TCoordinateNode.Create;
Coordinate988.X3DName := 'lc_vl2_0';
Coordinate988.SetPoint([Vector3(0.0045,1.1546,-0.08),Vector3(0.0048,1.1912,-0.0805)]);
{ .SetCoord }
LineSet987.Coord := Coordinate988;
{ .SetGeometry }
Shape983.Geometry := LineSet987;
{ .AddChildren }
HAnimSegment975.AddChildren([Shape983]);
{ .AddChildren }
HAnimJoint974.AddChildren([HAnimSegment975]);
HAnimJoint989 := THAnimJointNode.Create;
HAnimJoint989.X3DName := 'hanim_vl1';
HAnimJoint989.Center := Vector3(0.0048,1.1912,-0.0805);
HAnimJoint989.SetLlimit([-0.1047,-0.0873,-0.0873]);
HAnimJoint989.SetUlimit([0.1745,0.0873,0.0873]);
HAnimSegment990 := THAnimSegmentNode.Create;
HAnimSegment990.X3DName := 'hanim_l1';
TouchSensor991 := TTouchSensorNode.Create;
TouchSensor991.X3DName := 'ts_vl1';
TouchSensor991.Description := 'vl1';
{ .AddChildren }
HAnimSegment990.AddChildren([TouchSensor991]);
Transform992 := TTransformNode.Create;
end;

procedure InitHAnimGimbalJointController22Part83;
begin

Transform992.X3DName := 'jx_vl1';
Transform992.Translation := Vector3(0.0048,1.1912,-0.0805);
Transform993 := TTransformNode.Create;
Shape994 := TShapeNode.Create;
Appearance995 := TAppearanceNode.Create;
Appearance995.X3DName := 'ap_vl1';
Material996 := TMaterialNode.Create;
Material996.X3DName := 'm_vl1';
Material996.DiffuseColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance995.Material := Material996;
{ .SetAppearance }
Shape994.Appearance := Appearance995;
Sphere997 := TSphereNode.Create;
Sphere997.Radius := 0.03;
{ .SetGeometry }
Shape994.Geometry := Sphere997;
{ .AddChild }
Transform993.AddChildren([Shape994]);
{ .AddChildren }
Transform992.AddChildren([Transform993]);
{ .AddChildren }
HAnimSegment990.AddChildren([Transform992]);
Shape998 := TShapeNode.Create;
Appearance999 := TAppearanceNode.Create;
Appearance999.X3DName := 'apl_vl1';
Material1000 := TMaterialNode.Create;
Material1000.X3DName := 'lm_vl1';
Material1000.DiffuseColor := Vector3(0,0,0);
Material1000.EmissiveColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance999.Material := Material1000;
LineProperties1001 := TLinePropertiesNode.Create;
LineProperties1001.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance999.LineProperties := LineProperties1001;
{ .SetAppearance }
Shape998.Appearance := Appearance999;
LineSet1002 := TLineSetNode.Create;
LineSet1002.SetVertexCount([2]);
Coordinate1003 := TCoordinateNode.Create;
Coordinate1003.X3DName := 'lc_vl1_0';
Coordinate1003.SetPoint([Vector3(0.0048,1.1912,-0.0805),Vector3(0.0051,1.2278,-0.0808)]);
{ .SetCoord }
LineSet1002.Coord := Coordinate1003;
{ .SetGeometry }
Shape998.Geometry := LineSet1002;
{ .AddChildren }
HAnimSegment990.AddChildren([Shape998]);
{ .AddChildren }
HAnimJoint989.AddChildren([HAnimSegment990]);
HAnimJoint1004 := THAnimJointNode.Create;
HAnimJoint1004.X3DName := 'hanim_vt12';
end;

procedure InitHAnimGimbalJointController22Part84;
begin

HAnimJoint1004.Center := Vector3(0.0051,1.2278,-0.0808);
HAnimJoint1004.SetLlimit([-0.0524,-0.0698,-0.0698]);
HAnimJoint1004.SetUlimit([0.1047,0.0698,0.0698]);
HAnimSegment1005 := THAnimSegmentNode.Create;
HAnimSegment1005.X3DName := 'hanim_t12';
TouchSensor1006 := TTouchSensorNode.Create;
TouchSensor1006.X3DName := 'ts_vt12';
TouchSensor1006.Description := 'vt12';
{ .AddChildren }
HAnimSegment1005.AddChildren([TouchSensor1006]);
Transform1007 := TTransformNode.Create;
Transform1007.X3DName := 'jx_vt12';
Transform1007.Translation := Vector3(0.0051,1.2278,-0.0808);
Transform1008 := TTransformNode.Create;
Shape1009 := TShapeNode.Create;
Appearance1010 := TAppearanceNode.Create;
Appearance1010.X3DName := 'ap_vt12';
Material1011 := TMaterialNode.Create;
Material1011.X3DName := 'm_vt12';
Material1011.DiffuseColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1010.Material := Material1011;
{ .SetAppearance }
Shape1009.Appearance := Appearance1010;
Sphere1012 := TSphereNode.Create;
Sphere1012.Radius := 0.03;
{ .SetGeometry }
Shape1009.Geometry := Sphere1012;
{ .AddChild }
Transform1008.AddChildren([Shape1009]);
{ .AddChildren }
Transform1007.AddChildren([Transform1008]);
{ .AddChildren }
HAnimSegment1005.AddChildren([Transform1007]);
Shape1013 := TShapeNode.Create;
Appearance1014 := TAppearanceNode.Create;
Appearance1014.X3DName := 'apl_vt12';
Material1015 := TMaterialNode.Create;
Material1015.X3DName := 'lm_vt12';
Material1015.DiffuseColor := Vector3(0,0,0);
Material1015.EmissiveColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1014.Material := Material1015;
LineProperties1016 := TLinePropertiesNode.Create;
LineProperties1016.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1014.LineProperties := LineProperties1016;
{ .SetAppearance }
Shape1013.Appearance := Appearance1014;
LineSet1017 := TLineSetNode.Create;
end;

procedure InitHAnimGimbalJointController22Part85;
begin

LineSet1017.SetVertexCount([2]);
Coordinate1018 := TCoordinateNode.Create;
Coordinate1018.X3DName := 'lc_vt12_0';
Coordinate1018.SetPoint([Vector3(0.0051,1.2278,-0.0808),Vector3(0.0053,1.2679,-0.081)]);
{ .SetCoord }
LineSet1017.Coord := Coordinate1018;
{ .SetGeometry }
Shape1013.Geometry := LineSet1017;
{ .AddChildren }
HAnimSegment1005.AddChildren([Shape1013]);
{ .AddChildren }
HAnimJoint1004.AddChildren([HAnimSegment1005]);
HAnimJoint1019 := THAnimJointNode.Create;
HAnimJoint1019.X3DName := 'hanim_vt11';
HAnimJoint1019.Center := Vector3(0.0053,1.2679,-0.081);
HAnimJoint1019.SetLlimit([-0.0524,-0.0698,-0.0698]);
HAnimJoint1019.SetUlimit([0.1047,0.0698,0.0698]);
HAnimSegment1020 := THAnimSegmentNode.Create;
HAnimSegment1020.X3DName := 'hanim_t11';
TouchSensor1021 := TTouchSensorNode.Create;
TouchSensor1021.X3DName := 'ts_vt11';
TouchSensor1021.Description := 'vt11';
{ .AddChildren }
HAnimSegment1020.AddChildren([TouchSensor1021]);
Transform1022 := TTransformNode.Create;
Transform1022.X3DName := 'jx_vt11';
Transform1022.Translation := Vector3(0.0053,1.2679,-0.081);
Transform1023 := TTransformNode.Create;
Shape1024 := TShapeNode.Create;
Appearance1025 := TAppearanceNode.Create;
Appearance1025.X3DName := 'ap_vt11';
Material1026 := TMaterialNode.Create;
Material1026.X3DName := 'm_vt11';
Material1026.DiffuseColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1025.Material := Material1026;
{ .SetAppearance }
Shape1024.Appearance := Appearance1025;
Sphere1027 := TSphereNode.Create;
Sphere1027.Radius := 0.03;
{ .SetGeometry }
Shape1024.Geometry := Sphere1027;
{ .AddChild }
Transform1023.AddChildren([Shape1024]);
{ .AddChildren }
Transform1022.AddChildren([Transform1023]);
{ .AddChildren }
HAnimSegment1020.AddChildren([Transform1022]);
Shape1028 := TShapeNode.Create;
Appearance1029 := TAppearanceNode.Create;
Appearance1029.X3DName := 'apl_vt11';
end;

procedure InitHAnimGimbalJointController22Part86;
begin

Material1030 := TMaterialNode.Create;
Material1030.X3DName := 'lm_vt11';
Material1030.DiffuseColor := Vector3(0,0,0);
Material1030.EmissiveColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1029.Material := Material1030;
LineProperties1031 := TLinePropertiesNode.Create;
LineProperties1031.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1029.LineProperties := LineProperties1031;
{ .SetAppearance }
Shape1028.Appearance := Appearance1029;
LineSet1032 := TLineSetNode.Create;
LineSet1032.SetVertexCount([2]);
Coordinate1033 := TCoordinateNode.Create;
Coordinate1033.X3DName := 'lc_vt11_0';
Coordinate1033.SetPoint([Vector3(0.0053,1.2679,-0.081),Vector3(0.0056,1.2848,-0.0822)]);
{ .SetCoord }
LineSet1032.Coord := Coordinate1033;
{ .SetGeometry }
Shape1028.Geometry := LineSet1032;
{ .AddChildren }
HAnimSegment1020.AddChildren([Shape1028]);
{ .AddChildren }
HAnimJoint1019.AddChildren([HAnimSegment1020]);
HAnimJoint1034 := THAnimJointNode.Create;
HAnimJoint1034.X3DName := 'hanim_vt10';
HAnimJoint1034.Center := Vector3(0.0056,1.2848,-0.0822);
HAnimJoint1034.SetLlimit([-0.0524,-0.0698,-0.0698]);
HAnimJoint1034.SetUlimit([0.1047,0.0698,0.0698]);
HAnimSegment1035 := THAnimSegmentNode.Create;
HAnimSegment1035.X3DName := 'hanim_t10';
TouchSensor1036 := TTouchSensorNode.Create;
TouchSensor1036.X3DName := 'ts_vt10';
TouchSensor1036.Description := 'vt10';
{ .AddChildren }
HAnimSegment1035.AddChildren([TouchSensor1036]);
Transform1037 := TTransformNode.Create;
Transform1037.X3DName := 'jx_vt10';
Transform1037.Translation := Vector3(0.0056,1.2848,-0.0822);
Transform1038 := TTransformNode.Create;
Shape1039 := TShapeNode.Create;
Appearance1040 := TAppearanceNode.Create;
Appearance1040.X3DName := 'ap_vt10';
Material1041 := TMaterialNode.Create;
Material1041.X3DName := 'm_vt10';
Material1041.DiffuseColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1040.Material := Material1041;
end;

procedure InitHAnimGimbalJointController22Part87;
begin

{ .SetAppearance }
Shape1039.Appearance := Appearance1040;
Sphere1042 := TSphereNode.Create;
Sphere1042.Radius := 0.03;
{ .SetGeometry }
Shape1039.Geometry := Sphere1042;
{ .AddChild }
Transform1038.AddChildren([Shape1039]);
{ .AddChildren }
Transform1037.AddChildren([Transform1038]);
{ .AddChildren }
HAnimSegment1035.AddChildren([Transform1037]);
Shape1043 := TShapeNode.Create;
Appearance1044 := TAppearanceNode.Create;
Appearance1044.X3DName := 'apl_vt10';
Material1045 := TMaterialNode.Create;
Material1045.X3DName := 'lm_vt10';
Material1045.DiffuseColor := Vector3(0,0,0);
Material1045.EmissiveColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1044.Material := Material1045;
LineProperties1046 := TLinePropertiesNode.Create;
LineProperties1046.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1044.LineProperties := LineProperties1046;
{ .SetAppearance }
Shape1043.Appearance := Appearance1044;
LineSet1047 := TLineSetNode.Create;
LineSet1047.SetVertexCount([2]);
Coordinate1048 := TCoordinateNode.Create;
Coordinate1048.X3DName := 'lc_vt10_0';
Coordinate1048.SetPoint([Vector3(0.0056,1.2848,-0.0822),Vector3(0.0057,1.3126,-0.0838)]);
{ .SetCoord }
LineSet1047.Coord := Coordinate1048;
{ .SetGeometry }
Shape1043.Geometry := LineSet1047;
{ .AddChildren }
HAnimSegment1035.AddChildren([Shape1043]);
{ .AddChildren }
HAnimJoint1034.AddChildren([HAnimSegment1035]);
HAnimJoint1049 := THAnimJointNode.Create;
HAnimJoint1049.X3DName := 'hanim_vt9';
HAnimJoint1049.Center := Vector3(0.0057,1.3126,-0.0838);
HAnimJoint1049.SetLlimit([-0.0524,-0.0698,-0.0698]);
HAnimJoint1049.SetUlimit([0.1047,0.0698,0.0698]);
HAnimSegment1050 := THAnimSegmentNode.Create;
HAnimSegment1050.X3DName := 'hanim_t9';
TouchSensor1051 := TTouchSensorNode.Create;
TouchSensor1051.X3DName := 'ts_vt9';
TouchSensor1051.Description := 'vt9';
{ .AddChildren }
HAnimSegment1050.AddChildren([TouchSensor1051]);
Transform1052 := TTransformNode.Create;
end;

procedure InitHAnimGimbalJointController22Part88;
begin

Transform1052.X3DName := 'jx_vt9';
Transform1052.Translation := Vector3(0.0057,1.3126,-0.0838);
Transform1053 := TTransformNode.Create;
Shape1054 := TShapeNode.Create;
Appearance1055 := TAppearanceNode.Create;
Appearance1055.X3DName := 'ap_vt9';
Material1056 := TMaterialNode.Create;
Material1056.X3DName := 'm_vt9';
Material1056.DiffuseColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1055.Material := Material1056;
{ .SetAppearance }
Shape1054.Appearance := Appearance1055;
Sphere1057 := TSphereNode.Create;
Sphere1057.Radius := 0.03;
{ .SetGeometry }
Shape1054.Geometry := Sphere1057;
{ .AddChild }
Transform1053.AddChildren([Shape1054]);
{ .AddChildren }
Transform1052.AddChildren([Transform1053]);
{ .AddChildren }
HAnimSegment1050.AddChildren([Transform1052]);
Shape1058 := TShapeNode.Create;
Appearance1059 := TAppearanceNode.Create;
Appearance1059.X3DName := 'apl_vt9';
Material1060 := TMaterialNode.Create;
Material1060.X3DName := 'lm_vt9';
Material1060.DiffuseColor := Vector3(0,0,0);
Material1060.EmissiveColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1059.Material := Material1060;
LineProperties1061 := TLinePropertiesNode.Create;
LineProperties1061.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1059.LineProperties := LineProperties1061;
{ .SetAppearance }
Shape1058.Appearance := Appearance1059;
LineSet1062 := TLineSetNode.Create;
LineSet1062.SetVertexCount([2]);
Coordinate1063 := TCoordinateNode.Create;
Coordinate1063.X3DName := 'lc_vt9_0';
Coordinate1063.SetPoint([Vector3(0.0057,1.3126,-0.0838),Vector3(0.0057,1.3382,-0.0845)]);
{ .SetCoord }
LineSet1062.Coord := Coordinate1063;
{ .SetGeometry }
Shape1058.Geometry := LineSet1062;
{ .AddChildren }
HAnimSegment1050.AddChildren([Shape1058]);
{ .AddChildren }
HAnimJoint1049.AddChildren([HAnimSegment1050]);
HAnimJoint1064 := THAnimJointNode.Create;
HAnimJoint1064.X3DName := 'hanim_vt8';
end;

procedure InitHAnimGimbalJointController22Part89;
begin

HAnimJoint1064.Center := Vector3(0.0057,1.3382,-0.0845);
HAnimJoint1064.SetLlimit([-0.0524,-0.0698,-0.0698]);
HAnimJoint1064.SetUlimit([0.1047,0.0698,0.0698]);
HAnimSegment1065 := THAnimSegmentNode.Create;
HAnimSegment1065.X3DName := 'hanim_t8';
TouchSensor1066 := TTouchSensorNode.Create;
TouchSensor1066.X3DName := 'ts_vt8';
TouchSensor1066.Description := 'vt8';
{ .AddChildren }
HAnimSegment1065.AddChildren([TouchSensor1066]);
Transform1067 := TTransformNode.Create;
Transform1067.X3DName := 'jx_vt8';
Transform1067.Translation := Vector3(0.0057,1.3382,-0.0845);
Transform1068 := TTransformNode.Create;
Shape1069 := TShapeNode.Create;
Appearance1070 := TAppearanceNode.Create;
Appearance1070.X3DName := 'ap_vt8';
Material1071 := TMaterialNode.Create;
Material1071.X3DName := 'm_vt8';
Material1071.DiffuseColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1070.Material := Material1071;
{ .SetAppearance }
Shape1069.Appearance := Appearance1070;
Sphere1072 := TSphereNode.Create;
Sphere1072.Radius := 0.03;
{ .SetGeometry }
Shape1069.Geometry := Sphere1072;
{ .AddChild }
Transform1068.AddChildren([Shape1069]);
{ .AddChildren }
Transform1067.AddChildren([Transform1068]);
{ .AddChildren }
HAnimSegment1065.AddChildren([Transform1067]);
Shape1073 := TShapeNode.Create;
Appearance1074 := TAppearanceNode.Create;
Appearance1074.X3DName := 'apl_vt8';
Material1075 := TMaterialNode.Create;
Material1075.X3DName := 'lm_vt8';
Material1075.DiffuseColor := Vector3(0,0,0);
Material1075.EmissiveColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1074.Material := Material1075;
LineProperties1076 := TLinePropertiesNode.Create;
LineProperties1076.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1074.LineProperties := LineProperties1076;
{ .SetAppearance }
Shape1073.Appearance := Appearance1074;
LineSet1077 := TLineSetNode.Create;
end;

procedure InitHAnimGimbalJointController22Part90;
begin

LineSet1077.SetVertexCount([2]);
Coordinate1078 := TCoordinateNode.Create;
Coordinate1078.X3DName := 'lc_vt8_0';
Coordinate1078.SetPoint([Vector3(0.0057,1.3382,-0.0845),Vector3(0.0058,1.3625,-0.0833)]);
{ .SetCoord }
LineSet1077.Coord := Coordinate1078;
{ .SetGeometry }
Shape1073.Geometry := LineSet1077;
{ .AddChildren }
HAnimSegment1065.AddChildren([Shape1073]);
{ .AddChildren }
HAnimJoint1064.AddChildren([HAnimSegment1065]);
HAnimJoint1079 := THAnimJointNode.Create;
HAnimJoint1079.X3DName := 'hanim_vt7';
HAnimJoint1079.Center := Vector3(0.0058,1.3625,-0.0833);
HAnimJoint1079.SetLlimit([-0.0524,-0.0698,-0.0698]);
HAnimJoint1079.SetUlimit([0.1047,0.0698,0.0698]);
HAnimSegment1080 := THAnimSegmentNode.Create;
HAnimSegment1080.X3DName := 'hanim_t7';
TouchSensor1081 := TTouchSensorNode.Create;
TouchSensor1081.X3DName := 'ts_vt7';
TouchSensor1081.Description := 'vt7';
{ .AddChildren }
HAnimSegment1080.AddChildren([TouchSensor1081]);
Transform1082 := TTransformNode.Create;
Transform1082.X3DName := 'jx_vt7';
Transform1082.Translation := Vector3(0.0058,1.3625,-0.0833);
Transform1083 := TTransformNode.Create;
Shape1084 := TShapeNode.Create;
Appearance1085 := TAppearanceNode.Create;
Appearance1085.X3DName := 'ap_vt7';
Material1086 := TMaterialNode.Create;
Material1086.X3DName := 'm_vt7';
Material1086.DiffuseColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1085.Material := Material1086;
{ .SetAppearance }
Shape1084.Appearance := Appearance1085;
Sphere1087 := TSphereNode.Create;
Sphere1087.Radius := 0.03;
{ .SetGeometry }
Shape1084.Geometry := Sphere1087;
{ .AddChild }
Transform1083.AddChildren([Shape1084]);
{ .AddChildren }
Transform1082.AddChildren([Transform1083]);
{ .AddChildren }
HAnimSegment1080.AddChildren([Transform1082]);
Shape1088 := TShapeNode.Create;
Appearance1089 := TAppearanceNode.Create;
Appearance1089.X3DName := 'apl_vt7';
end;

procedure InitHAnimGimbalJointController22Part91;
begin

Material1090 := TMaterialNode.Create;
Material1090.X3DName := 'lm_vt7';
Material1090.DiffuseColor := Vector3(0,0,0);
Material1090.EmissiveColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1089.Material := Material1090;
LineProperties1091 := TLinePropertiesNode.Create;
LineProperties1091.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1089.LineProperties := LineProperties1091;
{ .SetAppearance }
Shape1088.Appearance := Appearance1089;
LineSet1092 := TLineSetNode.Create;
LineSet1092.SetVertexCount([2]);
Coordinate1093 := TCoordinateNode.Create;
Coordinate1093.X3DName := 'lc_vt7_0';
Coordinate1093.SetPoint([Vector3(0.0058,1.3625,-0.0833),Vector3(0.0059,1.3866,-0.08)]);
{ .SetCoord }
LineSet1092.Coord := Coordinate1093;
{ .SetGeometry }
Shape1088.Geometry := LineSet1092;
{ .AddChildren }
HAnimSegment1080.AddChildren([Shape1088]);
{ .AddChildren }
HAnimJoint1079.AddChildren([HAnimSegment1080]);
HAnimJoint1094 := THAnimJointNode.Create;
HAnimJoint1094.X3DName := 'hanim_vt6';
HAnimJoint1094.Center := Vector3(0.0059,1.3866,-0.08);
HAnimJoint1094.SetLlimit([-0.0524,-0.0698,-0.0698]);
HAnimJoint1094.SetUlimit([0.1047,0.0698,0.0698]);
HAnimSegment1095 := THAnimSegmentNode.Create;
HAnimSegment1095.X3DName := 'hanim_t6';
TouchSensor1096 := TTouchSensorNode.Create;
TouchSensor1096.X3DName := 'ts_vt6';
TouchSensor1096.Description := 'vt6';
{ .AddChildren }
HAnimSegment1095.AddChildren([TouchSensor1096]);
Transform1097 := TTransformNode.Create;
Transform1097.X3DName := 'jx_vt6';
Transform1097.Translation := Vector3(0.0059,1.3866,-0.08);
Transform1098 := TTransformNode.Create;
Shape1099 := TShapeNode.Create;
Appearance1100 := TAppearanceNode.Create;
Appearance1100.X3DName := 'ap_vt6';
Material1101 := TMaterialNode.Create;
Material1101.X3DName := 'm_vt6';
Material1101.DiffuseColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1100.Material := Material1101;
end;

procedure InitHAnimGimbalJointController22Part92;
begin

{ .SetAppearance }
Shape1099.Appearance := Appearance1100;
Sphere1102 := TSphereNode.Create;
Sphere1102.Radius := 0.03;
{ .SetGeometry }
Shape1099.Geometry := Sphere1102;
{ .AddChild }
Transform1098.AddChildren([Shape1099]);
{ .AddChildren }
Transform1097.AddChildren([Transform1098]);
{ .AddChildren }
HAnimSegment1095.AddChildren([Transform1097]);
Shape1103 := TShapeNode.Create;
Appearance1104 := TAppearanceNode.Create;
Appearance1104.X3DName := 'apl_vt6';
Material1105 := TMaterialNode.Create;
Material1105.X3DName := 'lm_vt6';
Material1105.DiffuseColor := Vector3(0,0,0);
Material1105.EmissiveColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1104.Material := Material1105;
LineProperties1106 := TLinePropertiesNode.Create;
LineProperties1106.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1104.LineProperties := LineProperties1106;
{ .SetAppearance }
Shape1103.Appearance := Appearance1104;
LineSet1107 := TLineSetNode.Create;
LineSet1107.SetVertexCount([2]);
Coordinate1108 := TCoordinateNode.Create;
Coordinate1108.X3DName := 'lc_vt6_0';
Coordinate1108.SetPoint([Vector3(0.0059,1.3866,-0.08),Vector3(0.006,1.4102,-0.0745)]);
{ .SetCoord }
LineSet1107.Coord := Coordinate1108;
{ .SetGeometry }
Shape1103.Geometry := LineSet1107;
{ .AddChildren }
HAnimSegment1095.AddChildren([Shape1103]);
{ .AddChildren }
HAnimJoint1094.AddChildren([HAnimSegment1095]);
HAnimJoint1109 := THAnimJointNode.Create;
HAnimJoint1109.X3DName := 'hanim_vt5';
HAnimJoint1109.Center := Vector3(0.006,1.4102,-0.0745);
HAnimJoint1109.SetLlimit([-0.0524,-0.0698,-0.0698]);
HAnimJoint1109.SetUlimit([0.1047,0.0698,0.0698]);
HAnimSegment1110 := THAnimSegmentNode.Create;
HAnimSegment1110.X3DName := 'hanim_t5';
TouchSensor1111 := TTouchSensorNode.Create;
TouchSensor1111.X3DName := 'ts_vt5';
TouchSensor1111.Description := 'vt5';
{ .AddChildren }
HAnimSegment1110.AddChildren([TouchSensor1111]);
Transform1112 := TTransformNode.Create;
end;

procedure InitHAnimGimbalJointController22Part93;
begin

Transform1112.X3DName := 'jx_vt5';
Transform1112.Translation := Vector3(0.006,1.4102,-0.0745);
Transform1113 := TTransformNode.Create;
Shape1114 := TShapeNode.Create;
Appearance1115 := TAppearanceNode.Create;
Appearance1115.X3DName := 'ap_vt5';
Material1116 := TMaterialNode.Create;
Material1116.X3DName := 'm_vt5';
Material1116.DiffuseColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1115.Material := Material1116;
{ .SetAppearance }
Shape1114.Appearance := Appearance1115;
Sphere1117 := TSphereNode.Create;
Sphere1117.Radius := 0.03;
{ .SetGeometry }
Shape1114.Geometry := Sphere1117;
{ .AddChild }
Transform1113.AddChildren([Shape1114]);
{ .AddChildren }
Transform1112.AddChildren([Transform1113]);
{ .AddChildren }
HAnimSegment1110.AddChildren([Transform1112]);
Shape1118 := TShapeNode.Create;
Appearance1119 := TAppearanceNode.Create;
Appearance1119.X3DName := 'apl_vt5';
Material1120 := TMaterialNode.Create;
Material1120.X3DName := 'lm_vt5';
Material1120.DiffuseColor := Vector3(0,0,0);
Material1120.EmissiveColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1119.Material := Material1120;
LineProperties1121 := TLinePropertiesNode.Create;
LineProperties1121.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1119.LineProperties := LineProperties1121;
{ .SetAppearance }
Shape1118.Appearance := Appearance1119;
LineSet1122 := TLineSetNode.Create;
LineSet1122.SetVertexCount([2]);
Coordinate1123 := TCoordinateNode.Create;
Coordinate1123.X3DName := 'lc_vt5_0';
Coordinate1123.SetPoint([Vector3(0.006,1.4102,-0.0745),Vector3(0.0061,1.432,-0.0675)]);
{ .SetCoord }
LineSet1122.Coord := Coordinate1123;
{ .SetGeometry }
Shape1118.Geometry := LineSet1122;
{ .AddChildren }
HAnimSegment1110.AddChildren([Shape1118]);
{ .AddChildren }
HAnimJoint1109.AddChildren([HAnimSegment1110]);
HAnimJoint1124 := THAnimJointNode.Create;
HAnimJoint1124.X3DName := 'hanim_vt4';
end;

procedure InitHAnimGimbalJointController22Part94;
begin

HAnimJoint1124.Center := Vector3(0.0061,1.432,-0.0675);
HAnimJoint1124.SetLlimit([-0.0524,-0.0698,-0.0698]);
HAnimJoint1124.SetUlimit([0.1047,0.0698,0.0698]);
HAnimSegment1125 := THAnimSegmentNode.Create;
HAnimSegment1125.X3DName := 'hanim_t4';
TouchSensor1126 := TTouchSensorNode.Create;
TouchSensor1126.X3DName := 'ts_vt4';
TouchSensor1126.Description := 'vt4';
{ .AddChildren }
HAnimSegment1125.AddChildren([TouchSensor1126]);
Transform1127 := TTransformNode.Create;
Transform1127.X3DName := 'jx_vt4';
Transform1127.Translation := Vector3(0.0061,1.432,-0.0675);
Transform1128 := TTransformNode.Create;
Shape1129 := TShapeNode.Create;
Appearance1130 := TAppearanceNode.Create;
Appearance1130.X3DName := 'ap_vt4';
Material1131 := TMaterialNode.Create;
Material1131.X3DName := 'm_vt4';
Material1131.DiffuseColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1130.Material := Material1131;
{ .SetAppearance }
Shape1129.Appearance := Appearance1130;
Sphere1132 := TSphereNode.Create;
Sphere1132.Radius := 0.03;
{ .SetGeometry }
Shape1129.Geometry := Sphere1132;
{ .AddChild }
Transform1128.AddChildren([Shape1129]);
{ .AddChildren }
Transform1127.AddChildren([Transform1128]);
{ .AddChildren }
HAnimSegment1125.AddChildren([Transform1127]);
Shape1133 := TShapeNode.Create;
Appearance1134 := TAppearanceNode.Create;
Appearance1134.X3DName := 'apl_vt4';
Material1135 := TMaterialNode.Create;
Material1135.X3DName := 'lm_vt4';
Material1135.DiffuseColor := Vector3(0,0,0);
Material1135.EmissiveColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1134.Material := Material1135;
LineProperties1136 := TLinePropertiesNode.Create;
LineProperties1136.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1134.LineProperties := LineProperties1136;
{ .SetAppearance }
Shape1133.Appearance := Appearance1134;
LineSet1137 := TLineSetNode.Create;
end;

procedure InitHAnimGimbalJointController22Part95;
begin

LineSet1137.SetVertexCount([2]);
Coordinate1138 := TCoordinateNode.Create;
Coordinate1138.X3DName := 'lc_vt4_0';
Coordinate1138.SetPoint([Vector3(0.0061,1.432,-0.0675),Vector3(0.0062,1.4583,-0.057)]);
{ .SetCoord }
LineSet1137.Coord := Coordinate1138;
{ .SetGeometry }
Shape1133.Geometry := LineSet1137;
{ .AddChildren }
HAnimSegment1125.AddChildren([Shape1133]);
{ .AddChildren }
HAnimJoint1124.AddChildren([HAnimSegment1125]);
HAnimJoint1139 := THAnimJointNode.Create;
HAnimJoint1139.X3DName := 'hanim_vt3';
HAnimJoint1139.Center := Vector3(0.0062,1.4583,-0.057);
HAnimJoint1139.SetLlimit([-0.0524,-0.0698,-0.0698]);
HAnimJoint1139.SetUlimit([0.1047,0.0698,0.0698]);
HAnimSegment1140 := THAnimSegmentNode.Create;
HAnimSegment1140.X3DName := 'hanim_t3';
TouchSensor1141 := TTouchSensorNode.Create;
TouchSensor1141.X3DName := 'ts_vt3';
TouchSensor1141.Description := 'vt3';
{ .AddChildren }
HAnimSegment1140.AddChildren([TouchSensor1141]);
Transform1142 := TTransformNode.Create;
Transform1142.X3DName := 'jx_vt3';
Transform1142.Translation := Vector3(0.0062,1.4583,-0.057);
Transform1143 := TTransformNode.Create;
Shape1144 := TShapeNode.Create;
Appearance1145 := TAppearanceNode.Create;
Appearance1145.X3DName := 'ap_vt3';
Material1146 := TMaterialNode.Create;
Material1146.X3DName := 'm_vt3';
Material1146.DiffuseColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1145.Material := Material1146;
{ .SetAppearance }
Shape1144.Appearance := Appearance1145;
Sphere1147 := TSphereNode.Create;
Sphere1147.Radius := 0.03;
{ .SetGeometry }
Shape1144.Geometry := Sphere1147;
{ .AddChild }
Transform1143.AddChildren([Shape1144]);
{ .AddChildren }
Transform1142.AddChildren([Transform1143]);
{ .AddChildren }
HAnimSegment1140.AddChildren([Transform1142]);
Shape1148 := TShapeNode.Create;
Appearance1149 := TAppearanceNode.Create;
Appearance1149.X3DName := 'apl_vt3';
end;

procedure InitHAnimGimbalJointController22Part96;
begin

Material1150 := TMaterialNode.Create;
Material1150.X3DName := 'lm_vt3';
Material1150.DiffuseColor := Vector3(0,0,0);
Material1150.EmissiveColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1149.Material := Material1150;
LineProperties1151 := TLinePropertiesNode.Create;
LineProperties1151.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1149.LineProperties := LineProperties1151;
{ .SetAppearance }
Shape1148.Appearance := Appearance1149;
LineSet1152 := TLineSetNode.Create;
LineSet1152.SetVertexCount([2]);
Coordinate1153 := TCoordinateNode.Create;
Coordinate1153.X3DName := 'lc_vt3_0';
Coordinate1153.SetPoint([Vector3(0.0062,1.4583,-0.057),Vector3(0.0063,1.4761,-0.0484)]);
{ .SetCoord }
LineSet1152.Coord := Coordinate1153;
{ .SetGeometry }
Shape1148.Geometry := LineSet1152;
{ .AddChildren }
HAnimSegment1140.AddChildren([Shape1148]);
{ .AddChildren }
HAnimJoint1139.AddChildren([HAnimSegment1140]);
HAnimJoint1154 := THAnimJointNode.Create;
HAnimJoint1154.X3DName := 'hanim_vt2';
HAnimJoint1154.Center := Vector3(0.0063,1.4761,-0.0484);
HAnimJoint1154.SetLlimit([-0.0524,-0.0698,-0.0698]);
HAnimJoint1154.SetUlimit([0.1047,0.0698,0.0698]);
HAnimSegment1155 := THAnimSegmentNode.Create;
HAnimSegment1155.X3DName := 'hanim_t2';
TouchSensor1156 := TTouchSensorNode.Create;
TouchSensor1156.X3DName := 'ts_vt2';
TouchSensor1156.Description := 'vt2';
{ .AddChildren }
HAnimSegment1155.AddChildren([TouchSensor1156]);
Transform1157 := TTransformNode.Create;
Transform1157.X3DName := 'jx_vt2';
Transform1157.Translation := Vector3(0.0063,1.4761,-0.0484);
Transform1158 := TTransformNode.Create;
Shape1159 := TShapeNode.Create;
Appearance1160 := TAppearanceNode.Create;
Appearance1160.X3DName := 'ap_vt2';
Material1161 := TMaterialNode.Create;
Material1161.X3DName := 'm_vt2';
Material1161.DiffuseColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1160.Material := Material1161;
end;

procedure InitHAnimGimbalJointController22Part97;
begin

{ .SetAppearance }
Shape1159.Appearance := Appearance1160;
Sphere1162 := TSphereNode.Create;
Sphere1162.Radius := 0.03;
{ .SetGeometry }
Shape1159.Geometry := Sphere1162;
{ .AddChild }
Transform1158.AddChildren([Shape1159]);
{ .AddChildren }
Transform1157.AddChildren([Transform1158]);
{ .AddChildren }
HAnimSegment1155.AddChildren([Transform1157]);
Shape1163 := TShapeNode.Create;
Appearance1164 := TAppearanceNode.Create;
Appearance1164.X3DName := 'apl_vt2';
Material1165 := TMaterialNode.Create;
Material1165.X3DName := 'lm_vt2';
Material1165.DiffuseColor := Vector3(0,0,0);
Material1165.EmissiveColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1164.Material := Material1165;
LineProperties1166 := TLinePropertiesNode.Create;
LineProperties1166.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1164.LineProperties := LineProperties1166;
{ .SetAppearance }
Shape1163.Appearance := Appearance1164;
LineSet1167 := TLineSetNode.Create;
LineSet1167.SetVertexCount([2]);
Coordinate1168 := TCoordinateNode.Create;
Coordinate1168.X3DName := 'lc_vt2_0';
Coordinate1168.SetPoint([Vector3(0.0063,1.4761,-0.0484),Vector3(0.0065,1.4951,-0.0387)]);
{ .SetCoord }
LineSet1167.Coord := Coordinate1168;
{ .SetGeometry }
Shape1163.Geometry := LineSet1167;
{ .AddChildren }
HAnimSegment1155.AddChildren([Shape1163]);
{ .AddChildren }
HAnimJoint1154.AddChildren([HAnimSegment1155]);
HAnimJoint1169 := THAnimJointNode.Create;
HAnimJoint1169.X3DName := 'hanim_vt1';
HAnimJoint1169.Center := Vector3(0.0065,1.4951,-0.0387);
HAnimJoint1169.SetLlimit([-0.0524,-0.0698,-0.0698]);
HAnimJoint1169.SetUlimit([0.1047,0.0698,0.0698]);
HAnimSegment1170 := THAnimSegmentNode.Create;
HAnimSegment1170.X3DName := 'hanim_t1';
TouchSensor1171 := TTouchSensorNode.Create;
TouchSensor1171.X3DName := 'ts_vt1';
TouchSensor1171.Description := 'vt1';
{ .AddChildren }
HAnimSegment1170.AddChildren([TouchSensor1171]);
Transform1172 := TTransformNode.Create;
end;

procedure InitHAnimGimbalJointController22Part98;
begin

Transform1172.X3DName := 'jx_vt1';
Transform1172.Translation := Vector3(0.0065,1.4951,-0.0387);
Transform1173 := TTransformNode.Create;
Shape1174 := TShapeNode.Create;
Appearance1175 := TAppearanceNode.Create;
Appearance1175.X3DName := 'ap_vt1';
Material1176 := TMaterialNode.Create;
Material1176.X3DName := 'm_vt1';
Material1176.DiffuseColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1175.Material := Material1176;
{ .SetAppearance }
Shape1174.Appearance := Appearance1175;
Sphere1177 := TSphereNode.Create;
Sphere1177.Radius := 0.03;
{ .SetGeometry }
Shape1174.Geometry := Sphere1177;
{ .AddChild }
Transform1173.AddChildren([Shape1174]);
{ .AddChildren }
Transform1172.AddChildren([Transform1173]);
{ .AddChildren }
HAnimSegment1170.AddChildren([Transform1172]);
Shape1178 := TShapeNode.Create;
Appearance1179 := TAppearanceNode.Create;
Appearance1179.X3DName := 'apl_vt1';
Material1180 := TMaterialNode.Create;
Material1180.X3DName := 'lm_vt1';
Material1180.DiffuseColor := Vector3(0,0,0);
Material1180.EmissiveColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1179.Material := Material1180;
LineProperties1181 := TLinePropertiesNode.Create;
LineProperties1181.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1179.LineProperties := LineProperties1181;
{ .SetAppearance }
Shape1178.Appearance := Appearance1179;
LineSet1182 := TLineSetNode.Create;
LineSet1182.SetVertexCount([2]);
Coordinate1183 := TCoordinateNode.Create;
Coordinate1183.X3DName := 'lc_vt1_0';
Coordinate1183.SetPoint([Vector3(0.0065,1.4951,-0.0387),Vector3(0.0066,1.5132,-0.0301)]);
{ .SetCoord }
LineSet1182.Coord := Coordinate1183;
{ .SetGeometry }
Shape1178.Geometry := LineSet1182;
{ .AddChildren }
HAnimSegment1170.AddChildren([Shape1178]);
Shape1184 := TShapeNode.Create;
{ .SetAppearance }
Shape1184.Appearance := Appearance1179;
LineSet1186 := TLineSetNode.Create;
end;

procedure InitHAnimGimbalJointController22Part99;
begin

LineSet1186.SetVertexCount([2]);
Coordinate1187 := TCoordinateNode.Create;
Coordinate1187.X3DName := 'lc_vt1_1';
Coordinate1187.SetPoint([Vector3(0.0065,1.4951,-0.0387),Vector3(0.082,1.4488,-0.0353)]);
{ .SetCoord }
LineSet1186.Coord := Coordinate1187;
{ .SetGeometry }
Shape1184.Geometry := LineSet1186;
{ .AddChildren }
HAnimSegment1170.AddChildren([Shape1184]);
Shape1188 := TShapeNode.Create;
{ .SetAppearance }
Shape1188.Appearance := Appearance1179;
LineSet1190 := TLineSetNode.Create;
LineSet1190.SetVertexCount([2]);
Coordinate1191 := TCoordinateNode.Create;
Coordinate1191.X3DName := 'lc_vt1_2';
Coordinate1191.SetPoint([Vector3(0.0065,1.4951,-0.0387),Vector3(-0.0694,1.46,-0.033)]);
{ .SetCoord }
LineSet1190.Coord := Coordinate1191;
{ .SetGeometry }
Shape1188.Geometry := LineSet1190;
{ .AddChildren }
HAnimSegment1170.AddChildren([Shape1188]);
{ .AddChildren }
HAnimJoint1169.AddChildren([HAnimSegment1170]);
{ CERVICAL SPINE & HEAD (Child 1 of vt1) }
HAnimJoint1192 := THAnimJointNode.Create;
HAnimJoint1192.X3DName := 'hanim_vc7';
HAnimJoint1192.Center := Vector3(0.0066,1.5132,-0.0301);
HAnimJoint1192.SetLlimit([-0.1396,-0.1396,-0.1047]);
HAnimJoint1192.SetUlimit([0.1745,0.1396,0.1047]);
HAnimSegment1193 := THAnimSegmentNode.Create;
HAnimSegment1193.X3DName := 'hanim_c7';
TouchSensor1194 := TTouchSensorNode.Create;
TouchSensor1194.X3DName := 'ts_vc7';
TouchSensor1194.Description := 'vc7';
{ .AddChildren }
HAnimSegment1193.AddChildren([TouchSensor1194]);
Transform1195 := TTransformNode.Create;
Transform1195.X3DName := 'jx_vc7';
Transform1195.Translation := Vector3(0.0066,1.5132,-0.0301);
Transform1196 := TTransformNode.Create;
Shape1197 := TShapeNode.Create;
Appearance1198 := TAppearanceNode.Create;
Appearance1198.X3DName := 'ap_vc7';
Material1199 := TMaterialNode.Create;
Material1199.X3DName := 'm_vc7';
Material1199.DiffuseColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1198.Material := Material1199;
end;

procedure InitHAnimGimbalJointController22Part100;
begin

{ .SetAppearance }
Shape1197.Appearance := Appearance1198;
Sphere1200 := TSphereNode.Create;
Sphere1200.Radius := 0.03;
{ .SetGeometry }
Shape1197.Geometry := Sphere1200;
{ .AddChild }
Transform1196.AddChildren([Shape1197]);
{ .AddChildren }
Transform1195.AddChildren([Transform1196]);
{ .AddChildren }
HAnimSegment1193.AddChildren([Transform1195]);
Shape1201 := TShapeNode.Create;
Appearance1202 := TAppearanceNode.Create;
Appearance1202.X3DName := 'apl_vc7';
Material1203 := TMaterialNode.Create;
Material1203.X3DName := 'lm_vc7';
Material1203.DiffuseColor := Vector3(0,0,0);
Material1203.EmissiveColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1202.Material := Material1203;
LineProperties1204 := TLinePropertiesNode.Create;
LineProperties1204.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1202.LineProperties := LineProperties1204;
{ .SetAppearance }
Shape1201.Appearance := Appearance1202;
LineSet1205 := TLineSetNode.Create;
LineSet1205.SetVertexCount([2]);
Coordinate1206 := TCoordinateNode.Create;
Coordinate1206.X3DName := 'lc_vc7_0';
Coordinate1206.SetPoint([Vector3(0.0066,1.5132,-0.0301),Vector3(0.0066,1.5357,-0.0143)]);
{ .SetCoord }
LineSet1205.Coord := Coordinate1206;
{ .SetGeometry }
Shape1201.Geometry := LineSet1205;
{ .AddChildren }
HAnimSegment1193.AddChildren([Shape1201]);
{ .AddChildren }
HAnimJoint1192.AddChildren([HAnimSegment1193]);
HAnimJoint1207 := THAnimJointNode.Create;
HAnimJoint1207.X3DName := 'hanim_vc6';
HAnimJoint1207.Center := Vector3(0.0066,1.5357,-0.0143);
HAnimJoint1207.SetLlimit([-0.1396,-0.1396,-0.1047]);
HAnimJoint1207.SetUlimit([0.1745,0.1396,0.1047]);
HAnimSegment1208 := THAnimSegmentNode.Create;
HAnimSegment1208.X3DName := 'hanim_c6';
TouchSensor1209 := TTouchSensorNode.Create;
TouchSensor1209.X3DName := 'ts_vc6';
TouchSensor1209.Description := 'vc6';
{ .AddChildren }
HAnimSegment1208.AddChildren([TouchSensor1209]);
Transform1210 := TTransformNode.Create;
end;

procedure InitHAnimGimbalJointController22Part101;
begin

Transform1210.X3DName := 'jx_vc6';
Transform1210.Translation := Vector3(0.0066,1.5357,-0.0143);
Transform1211 := TTransformNode.Create;
Shape1212 := TShapeNode.Create;
Appearance1213 := TAppearanceNode.Create;
Appearance1213.X3DName := 'ap_vc6';
Material1214 := TMaterialNode.Create;
Material1214.X3DName := 'm_vc6';
Material1214.DiffuseColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1213.Material := Material1214;
{ .SetAppearance }
Shape1212.Appearance := Appearance1213;
Sphere1215 := TSphereNode.Create;
Sphere1215.Radius := 0.03;
{ .SetGeometry }
Shape1212.Geometry := Sphere1215;
{ .AddChild }
Transform1211.AddChildren([Shape1212]);
{ .AddChildren }
Transform1210.AddChildren([Transform1211]);
{ .AddChildren }
HAnimSegment1208.AddChildren([Transform1210]);
Shape1216 := TShapeNode.Create;
Appearance1217 := TAppearanceNode.Create;
Appearance1217.X3DName := 'apl_vc6';
Material1218 := TMaterialNode.Create;
Material1218.X3DName := 'lm_vc6';
Material1218.DiffuseColor := Vector3(0,0,0);
Material1218.EmissiveColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1217.Material := Material1218;
LineProperties1219 := TLinePropertiesNode.Create;
LineProperties1219.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1217.LineProperties := LineProperties1219;
{ .SetAppearance }
Shape1216.Appearance := Appearance1217;
LineSet1220 := TLineSetNode.Create;
LineSet1220.SetVertexCount([2]);
Coordinate1221 := TCoordinateNode.Create;
Coordinate1221.X3DName := 'lc_vc6_0';
Coordinate1221.SetPoint([Vector3(0.0066,1.5357,-0.0143),Vector3(0.0066,1.552,-0.0082)]);
{ .SetCoord }
LineSet1220.Coord := Coordinate1221;
{ .SetGeometry }
Shape1216.Geometry := LineSet1220;
{ .AddChildren }
HAnimSegment1208.AddChildren([Shape1216]);
{ .AddChildren }
HAnimJoint1207.AddChildren([HAnimSegment1208]);
HAnimJoint1222 := THAnimJointNode.Create;
HAnimJoint1222.X3DName := 'hanim_vc5';
end;

procedure InitHAnimGimbalJointController22Part102;
begin

HAnimJoint1222.Center := Vector3(0.0066,1.552,-0.0082);
HAnimJoint1222.SetLlimit([-0.1396,-0.1396,-0.1047]);
HAnimJoint1222.SetUlimit([0.1745,0.1396,0.1047]);
HAnimSegment1223 := THAnimSegmentNode.Create;
HAnimSegment1223.X3DName := 'hanim_c5';
TouchSensor1224 := TTouchSensorNode.Create;
TouchSensor1224.X3DName := 'ts_vc5';
TouchSensor1224.Description := 'vc5';
{ .AddChildren }
HAnimSegment1223.AddChildren([TouchSensor1224]);
Transform1225 := TTransformNode.Create;
Transform1225.X3DName := 'jx_vc5';
Transform1225.Translation := Vector3(0.0066,1.552,-0.0082);
Transform1226 := TTransformNode.Create;
Shape1227 := TShapeNode.Create;
Appearance1228 := TAppearanceNode.Create;
Appearance1228.X3DName := 'ap_vc5';
Material1229 := TMaterialNode.Create;
Material1229.X3DName := 'm_vc5';
Material1229.DiffuseColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1228.Material := Material1229;
{ .SetAppearance }
Shape1227.Appearance := Appearance1228;
Sphere1230 := TSphereNode.Create;
Sphere1230.Radius := 0.03;
{ .SetGeometry }
Shape1227.Geometry := Sphere1230;
{ .AddChild }
Transform1226.AddChildren([Shape1227]);
{ .AddChildren }
Transform1225.AddChildren([Transform1226]);
{ .AddChildren }
HAnimSegment1223.AddChildren([Transform1225]);
Shape1231 := TShapeNode.Create;
Appearance1232 := TAppearanceNode.Create;
Appearance1232.X3DName := 'apl_vc5';
Material1233 := TMaterialNode.Create;
Material1233.X3DName := 'lm_vc5';
Material1233.DiffuseColor := Vector3(0,0,0);
Material1233.EmissiveColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1232.Material := Material1233;
LineProperties1234 := TLinePropertiesNode.Create;
LineProperties1234.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1232.LineProperties := LineProperties1234;
{ .SetAppearance }
Shape1231.Appearance := Appearance1232;
LineSet1235 := TLineSetNode.Create;
end;

procedure InitHAnimGimbalJointController22Part103;
begin

LineSet1235.SetVertexCount([2]);
Coordinate1236 := TCoordinateNode.Create;
Coordinate1236.X3DName := 'lc_vc5_0';
Coordinate1236.SetPoint([Vector3(0.0066,1.552,-0.0082),Vector3(0.0066,1.5662,-0.0084)]);
{ .SetCoord }
LineSet1235.Coord := Coordinate1236;
{ .SetGeometry }
Shape1231.Geometry := LineSet1235;
{ .AddChildren }
HAnimSegment1223.AddChildren([Shape1231]);
{ .AddChildren }
HAnimJoint1222.AddChildren([HAnimSegment1223]);
HAnimJoint1237 := THAnimJointNode.Create;
HAnimJoint1237.X3DName := 'hanim_vc4';
HAnimJoint1237.Center := Vector3(0.0066,1.5662,-0.0084);
HAnimJoint1237.SetLlimit([-0.1396,-0.1396,-0.1047]);
HAnimJoint1237.SetUlimit([0.1745,0.1396,0.1047]);
HAnimSegment1238 := THAnimSegmentNode.Create;
HAnimSegment1238.X3DName := 'hanim_c4';
TouchSensor1239 := TTouchSensorNode.Create;
TouchSensor1239.X3DName := 'ts_vc4';
TouchSensor1239.Description := 'vc4';
{ .AddChildren }
HAnimSegment1238.AddChildren([TouchSensor1239]);
Transform1240 := TTransformNode.Create;
Transform1240.X3DName := 'jx_vc4';
Transform1240.Translation := Vector3(0.0066,1.5662,-0.0084);
Transform1241 := TTransformNode.Create;
Shape1242 := TShapeNode.Create;
Appearance1243 := TAppearanceNode.Create;
Appearance1243.X3DName := 'ap_vc4';
Material1244 := TMaterialNode.Create;
Material1244.X3DName := 'm_vc4';
Material1244.DiffuseColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1243.Material := Material1244;
{ .SetAppearance }
Shape1242.Appearance := Appearance1243;
Sphere1245 := TSphereNode.Create;
Sphere1245.Radius := 0.03;
{ .SetGeometry }
Shape1242.Geometry := Sphere1245;
{ .AddChild }
Transform1241.AddChildren([Shape1242]);
{ .AddChildren }
Transform1240.AddChildren([Transform1241]);
{ .AddChildren }
HAnimSegment1238.AddChildren([Transform1240]);
Shape1246 := TShapeNode.Create;
Appearance1247 := TAppearanceNode.Create;
Appearance1247.X3DName := 'apl_vc4';
end;

procedure InitHAnimGimbalJointController22Part104;
begin

Material1248 := TMaterialNode.Create;
Material1248.X3DName := 'lm_vc4';
Material1248.DiffuseColor := Vector3(0,0,0);
Material1248.EmissiveColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1247.Material := Material1248;
LineProperties1249 := TLinePropertiesNode.Create;
LineProperties1249.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1247.LineProperties := LineProperties1249;
{ .SetAppearance }
Shape1246.Appearance := Appearance1247;
LineSet1250 := TLineSetNode.Create;
LineSet1250.SetVertexCount([2]);
Coordinate1251 := TCoordinateNode.Create;
Coordinate1251.X3DName := 'lc_vc4_0';
Coordinate1251.SetPoint([Vector3(0.0066,1.5662,-0.0084),Vector3(0.0066,1.58,-0.0103)]);
{ .SetCoord }
LineSet1250.Coord := Coordinate1251;
{ .SetGeometry }
Shape1246.Geometry := LineSet1250;
{ .AddChildren }
HAnimSegment1238.AddChildren([Shape1246]);
{ .AddChildren }
HAnimJoint1237.AddChildren([HAnimSegment1238]);
HAnimJoint1252 := THAnimJointNode.Create;
HAnimJoint1252.X3DName := 'hanim_vc3';
HAnimJoint1252.Center := Vector3(0.0066,1.58,-0.0103);
HAnimJoint1252.SetLlimit([-0.1396,-0.1396,-0.1047]);
HAnimJoint1252.SetUlimit([0.1745,0.1396,0.1047]);
HAnimSegment1253 := THAnimSegmentNode.Create;
HAnimSegment1253.X3DName := 'hanim_c3';
TouchSensor1254 := TTouchSensorNode.Create;
TouchSensor1254.X3DName := 'ts_vc3';
TouchSensor1254.Description := 'vc3';
{ .AddChildren }
HAnimSegment1253.AddChildren([TouchSensor1254]);
Transform1255 := TTransformNode.Create;
Transform1255.X3DName := 'jx_vc3';
Transform1255.Translation := Vector3(0.0066,1.58,-0.0103);
Transform1256 := TTransformNode.Create;
Shape1257 := TShapeNode.Create;
Appearance1258 := TAppearanceNode.Create;
Appearance1258.X3DName := 'ap_vc3';
Material1259 := TMaterialNode.Create;
Material1259.X3DName := 'm_vc3';
Material1259.DiffuseColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1258.Material := Material1259;
end;

procedure InitHAnimGimbalJointController22Part105;
begin

{ .SetAppearance }
Shape1257.Appearance := Appearance1258;
Sphere1260 := TSphereNode.Create;
Sphere1260.Radius := 0.03;
{ .SetGeometry }
Shape1257.Geometry := Sphere1260;
{ .AddChild }
Transform1256.AddChildren([Shape1257]);
{ .AddChildren }
Transform1255.AddChildren([Transform1256]);
{ .AddChildren }
HAnimSegment1253.AddChildren([Transform1255]);
Shape1261 := TShapeNode.Create;
Appearance1262 := TAppearanceNode.Create;
Appearance1262.X3DName := 'apl_vc3';
Material1263 := TMaterialNode.Create;
Material1263.X3DName := 'lm_vc3';
Material1263.DiffuseColor := Vector3(0,0,0);
Material1263.EmissiveColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1262.Material := Material1263;
LineProperties1264 := TLinePropertiesNode.Create;
LineProperties1264.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1262.LineProperties := LineProperties1264;
{ .SetAppearance }
Shape1261.Appearance := Appearance1262;
LineSet1265 := TLineSetNode.Create;
LineSet1265.SetVertexCount([2]);
Coordinate1266 := TCoordinateNode.Create;
Coordinate1266.X3DName := 'lc_vc3_0';
Coordinate1266.SetPoint([Vector3(0.0066,1.58,-0.0103),Vector3(0.0066,1.5928,-0.0103)]);
{ .SetCoord }
LineSet1265.Coord := Coordinate1266;
{ .SetGeometry }
Shape1261.Geometry := LineSet1265;
{ .AddChildren }
HAnimSegment1253.AddChildren([Shape1261]);
{ .AddChildren }
HAnimJoint1252.AddChildren([HAnimSegment1253]);
HAnimJoint1267 := THAnimJointNode.Create;
HAnimJoint1267.X3DName := 'hanim_vc2';
HAnimJoint1267.Center := Vector3(0.0066,1.5928,-0.0103);
HAnimJoint1267.SetLlimit([-0.1396,-0.1396,-0.1047]);
HAnimJoint1267.SetUlimit([0.1745,0.1396,0.1047]);
HAnimSegment1268 := THAnimSegmentNode.Create;
HAnimSegment1268.X3DName := 'hanim_c2';
TouchSensor1269 := TTouchSensorNode.Create;
TouchSensor1269.X3DName := 'ts_vc2';
TouchSensor1269.Description := 'vc2';
{ .AddChildren }
HAnimSegment1268.AddChildren([TouchSensor1269]);
Transform1270 := TTransformNode.Create;
end;

procedure InitHAnimGimbalJointController22Part106;
begin

Transform1270.X3DName := 'jx_vc2';
Transform1270.Translation := Vector3(0.0066,1.5928,-0.0103);
Transform1271 := TTransformNode.Create;
Shape1272 := TShapeNode.Create;
Appearance1273 := TAppearanceNode.Create;
Appearance1273.X3DName := 'ap_vc2';
Material1274 := TMaterialNode.Create;
Material1274.X3DName := 'm_vc2';
Material1274.DiffuseColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1273.Material := Material1274;
{ .SetAppearance }
Shape1272.Appearance := Appearance1273;
Sphere1275 := TSphereNode.Create;
Sphere1275.Radius := 0.03;
{ .SetGeometry }
Shape1272.Geometry := Sphere1275;
{ .AddChild }
Transform1271.AddChildren([Shape1272]);
{ .AddChildren }
Transform1270.AddChildren([Transform1271]);
{ .AddChildren }
HAnimSegment1268.AddChildren([Transform1270]);
Shape1276 := TShapeNode.Create;
Appearance1277 := TAppearanceNode.Create;
Appearance1277.X3DName := 'apl_vc2';
Material1278 := TMaterialNode.Create;
Material1278.X3DName := 'lm_vc2';
Material1278.DiffuseColor := Vector3(0,0,0);
Material1278.EmissiveColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1277.Material := Material1278;
LineProperties1279 := TLinePropertiesNode.Create;
LineProperties1279.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1277.LineProperties := LineProperties1279;
{ .SetAppearance }
Shape1276.Appearance := Appearance1277;
LineSet1280 := TLineSetNode.Create;
LineSet1280.SetVertexCount([2]);
Coordinate1281 := TCoordinateNode.Create;
Coordinate1281.X3DName := 'lc_vc2_0';
Coordinate1281.SetPoint([Vector3(0.0066,1.5928,-0.0103),Vector3(0.0066,1.6144,-0.0034)]);
{ .SetCoord }
LineSet1280.Coord := Coordinate1281;
{ .SetGeometry }
Shape1276.Geometry := LineSet1280;
{ .AddChildren }
HAnimSegment1268.AddChildren([Shape1276]);
{ .AddChildren }
HAnimJoint1267.AddChildren([HAnimSegment1268]);
HAnimJoint1282 := THAnimJointNode.Create;
HAnimJoint1282.X3DName := 'hanim_vc1';
end;

procedure InitHAnimGimbalJointController22Part107;
begin

HAnimJoint1282.Center := Vector3(0.0066,1.6144,-0.0034);
HAnimJoint1282.SetLlimit([-0.1396,-0.1396,-0.1047]);
HAnimJoint1282.SetUlimit([0.1745,0.1396,0.1047]);
HAnimSegment1283 := THAnimSegmentNode.Create;
HAnimSegment1283.X3DName := 'hanim_c1';
TouchSensor1284 := TTouchSensorNode.Create;
TouchSensor1284.X3DName := 'ts_vc1';
TouchSensor1284.Description := 'vc1';
{ .AddChildren }
HAnimSegment1283.AddChildren([TouchSensor1284]);
Transform1285 := TTransformNode.Create;
Transform1285.X3DName := 'jx_vc1';
Transform1285.Translation := Vector3(0.0066,1.6144,-0.0034);
Transform1286 := TTransformNode.Create;
Shape1287 := TShapeNode.Create;
Appearance1288 := TAppearanceNode.Create;
Appearance1288.X3DName := 'ap_vc1';
Material1289 := TMaterialNode.Create;
Material1289.X3DName := 'm_vc1';
Material1289.DiffuseColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1288.Material := Material1289;
{ .SetAppearance }
Shape1287.Appearance := Appearance1288;
Sphere1290 := TSphereNode.Create;
Sphere1290.Radius := 0.03;
{ .SetGeometry }
Shape1287.Geometry := Sphere1290;
{ .AddChild }
Transform1286.AddChildren([Shape1287]);
{ .AddChildren }
Transform1285.AddChildren([Transform1286]);
{ .AddChildren }
HAnimSegment1283.AddChildren([Transform1285]);
Shape1291 := TShapeNode.Create;
Appearance1292 := TAppearanceNode.Create;
Appearance1292.X3DName := 'apl_vc1';
Material1293 := TMaterialNode.Create;
Material1293.X3DName := 'lm_vc1';
Material1293.DiffuseColor := Vector3(0,0,0);
Material1293.EmissiveColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1292.Material := Material1293;
LineProperties1294 := TLinePropertiesNode.Create;
LineProperties1294.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1292.LineProperties := LineProperties1294;
{ .SetAppearance }
Shape1291.Appearance := Appearance1292;
LineSet1295 := TLineSetNode.Create;
end;

procedure InitHAnimGimbalJointController22Part108;
begin

LineSet1295.SetVertexCount([2]);
Coordinate1296 := TCoordinateNode.Create;
Coordinate1296.X3DName := 'lc_vc1_0';
Coordinate1296.SetPoint([Vector3(0.0066,1.6144,-0.0034),Vector3(0.0044,1.6209,0.0236)]);
{ .SetCoord }
LineSet1295.Coord := Coordinate1296;
{ .SetGeometry }
Shape1291.Geometry := LineSet1295;
{ .AddChildren }
HAnimSegment1283.AddChildren([Shape1291]);
{ .AddChildren }
HAnimJoint1282.AddChildren([HAnimSegment1283]);
HAnimJoint1297 := THAnimJointNode.Create;
HAnimJoint1297.X3DName := 'hanim_skullbase';
HAnimJoint1297.Center := Vector3(0.0044,1.6209,0.0236);
HAnimJoint1297.SetLlimit([-0.5236,-0.6109,-0.3491]);
HAnimJoint1297.SetUlimit([0.6981,0.6109,0.3491]);
HAnimSegment1298 := THAnimSegmentNode.Create;
HAnimSegment1298.X3DName := 'hanim_skull';
TouchSensor1299 := TTouchSensorNode.Create;
TouchSensor1299.X3DName := 'ts_skullbase';
TouchSensor1299.Description := 'skullbase';
{ .AddChildren }
HAnimSegment1298.AddChildren([TouchSensor1299]);
Transform1300 := TTransformNode.Create;
Transform1300.X3DName := 'jx_skullbase';
Transform1300.Translation := Vector3(0.0044,1.6209,0.0236);
Transform1301 := TTransformNode.Create;
Shape1302 := TShapeNode.Create;
Appearance1303 := TAppearanceNode.Create;
Appearance1303.X3DName := 'ap_skullbase';
Material1304 := TMaterialNode.Create;
Material1304.X3DName := 'm_skullbase';
Material1304.DiffuseColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1303.Material := Material1304;
{ .SetAppearance }
Shape1302.Appearance := Appearance1303;
Sphere1305 := TSphereNode.Create;
Sphere1305.Radius := 0.03;
{ .SetGeometry }
Shape1302.Geometry := Sphere1305;
{ .AddChild }
Transform1301.AddChildren([Shape1302]);
{ .AddChildren }
Transform1300.AddChildren([Transform1301]);
{ .AddChildren }
HAnimSegment1298.AddChildren([Transform1300]);
Shape1306 := TShapeNode.Create;
Appearance1307 := TAppearanceNode.Create;
Appearance1307.X3DName := 'apl_skullbase';
end;

procedure InitHAnimGimbalJointController22Part109;
begin

Material1308 := TMaterialNode.Create;
Material1308.X3DName := 'lm_skullbase';
Material1308.DiffuseColor := Vector3(0,0,0);
Material1308.EmissiveColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1307.Material := Material1308;
LineProperties1309 := TLinePropertiesNode.Create;
LineProperties1309.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1307.LineProperties := LineProperties1309;
{ .SetAppearance }
Shape1306.Appearance := Appearance1307;
LineSet1310 := TLineSetNode.Create;
LineSet1310.SetVertexCount([2]);
Coordinate1311 := TCoordinateNode.Create;
Coordinate1311.X3DName := 'lc_skullbase_0';
Coordinate1311.SetPoint([Vector3(0.0044,1.6209,0.0236),Vector3(0.0336,1.6332,0.0502)]);
{ .SetCoord }
LineSet1310.Coord := Coordinate1311;
{ .SetGeometry }
Shape1306.Geometry := LineSet1310;
{ .AddChildren }
HAnimSegment1298.AddChildren([Shape1306]);
Shape1312 := TShapeNode.Create;
{ .SetAppearance }
Shape1312.Appearance := Appearance1307;
LineSet1314 := TLineSetNode.Create;
LineSet1314.SetVertexCount([2]);
Coordinate1315 := TCoordinateNode.Create;
Coordinate1315.X3DName := 'lc_skullbase_1';
Coordinate1315.SetPoint([Vector3(0.0044,1.6209,0.0236),Vector3(-0.0236,1.6331,0.051)]);
{ .SetCoord }
LineSet1314.Coord := Coordinate1315;
{ .SetGeometry }
Shape1312.Geometry := LineSet1314;
{ .AddChildren }
HAnimSegment1298.AddChildren([Shape1312]);
Shape1316 := TShapeNode.Create;
{ .SetAppearance }
Shape1316.Appearance := Appearance1307;
LineSet1318 := TLineSetNode.Create;
LineSet1318.SetVertexCount([2]);
Coordinate1319 := TCoordinateNode.Create;
Coordinate1319.X3DName := 'lc_skullbase_2';
Coordinate1319.SetPoint([Vector3(0.0044,1.6209,0.0236),Vector3(0.0336,1.6332,0.0502)]);
{ .SetCoord }
LineSet1318.Coord := Coordinate1319;
{ .SetGeometry }
Shape1316.Geometry := LineSet1318;
{ .AddChildren }
HAnimSegment1298.AddChildren([Shape1316]);
Shape1320 := TShapeNode.Create;
{ .SetAppearance }
Shape1320.Appearance := Appearance1307;
LineSet1322 := TLineSetNode.Create;
end;

procedure InitHAnimGimbalJointController22Part110;
begin

LineSet1322.SetVertexCount([2]);
Coordinate1323 := TCoordinateNode.Create;
Coordinate1323.X3DName := 'lc_skullbase_3';
Coordinate1323.SetPoint([Vector3(0.0044,1.6209,0.0236),Vector3(-0.0236,1.6331,0.051)]);
{ .SetCoord }
LineSet1322.Coord := Coordinate1323;
{ .SetGeometry }
Shape1320.Geometry := LineSet1322;
{ .AddChildren }
HAnimSegment1298.AddChildren([Shape1320]);
Shape1324 := TShapeNode.Create;
{ .SetAppearance }
Shape1324.Appearance := Appearance1307;
LineSet1326 := TLineSetNode.Create;
LineSet1326.SetVertexCount([2]);
Coordinate1327 := TCoordinateNode.Create;
Coordinate1327.X3DName := 'lc_skullbase_4';
Coordinate1327.SetPoint([Vector3(0.0044,1.6209,0.0236),Vector3(0.0336,1.6332,0.0502)]);
{ .SetCoord }
LineSet1326.Coord := Coordinate1327;
{ .SetGeometry }
Shape1324.Geometry := LineSet1326;
{ .AddChildren }
HAnimSegment1298.AddChildren([Shape1324]);
Shape1328 := TShapeNode.Create;
{ .SetAppearance }
Shape1328.Appearance := Appearance1307;
LineSet1330 := TLineSetNode.Create;
LineSet1330.SetVertexCount([2]);
Coordinate1331 := TCoordinateNode.Create;
Coordinate1331.X3DName := 'lc_skullbase_5';
Coordinate1331.SetPoint([Vector3(0.0044,1.6209,0.0236),Vector3(-0.0236,1.6331,0.051)]);
{ .SetCoord }
LineSet1330.Coord := Coordinate1331;
{ .SetGeometry }
Shape1328.Geometry := LineSet1330;
{ .AddChildren }
HAnimSegment1298.AddChildren([Shape1328]);
Shape1332 := TShapeNode.Create;
{ .SetAppearance }
Shape1332.Appearance := Appearance1307;
LineSet1334 := TLineSetNode.Create;
LineSet1334.SetVertexCount([2]);
Coordinate1335 := TCoordinateNode.Create;
Coordinate1335.X3DName := 'lc_skullbase_6';
Coordinate1335.SetPoint([Vector3(0.0044,1.6209,0.0236),Vector3(-0.0002,1.3043,-0.0865)]);
{ .SetCoord }
LineSet1334.Coord := Coordinate1335;
{ .SetGeometry }
Shape1332.Geometry := LineSet1334;
{ .AddChildren }
HAnimSegment1298.AddChildren([Shape1332]);
{ .AddChildren }
HAnimJoint1297.AddChildren([HAnimSegment1298]);
HAnimJoint1336 := THAnimJointNode.Create;
HAnimJoint1336.X3DName := 'hanim_l_eyelid_joint';
end;

procedure InitHAnimGimbalJointController22Part111;
begin

HAnimJoint1336.Center := Vector3(0.0336,1.6332,0.0502);
HAnimJoint1336.SetLlimit([-0.1745,-0.0175,-0.0175]);
HAnimJoint1336.SetUlimit([0.6109,0.0175,0.0175]);
HAnimSegment1337 := THAnimSegmentNode.Create;
HAnimSegment1337.X3DName := 'hanim_l_eyelid';
Group1338 := TGroupNode.Create;
Group1338.X3DName := 'jg_l_eyelid_joint';
TouchSensor1339 := TTouchSensorNode.Create;
TouchSensor1339.X3DName := 'ts_l_eyelid_joint';
TouchSensor1339.Description := 'l_eyelid_joint';
{ .AddChildren }
Group1338.AddChildren([TouchSensor1339]);
Transform1340 := TTransformNode.Create;
Transform1340.X3DName := 'jx_l_eyelid_joint';
Transform1340.Translation := Vector3(0.0336,1.6332,0.0502);
Shape1341 := TShapeNode.Create;
Appearance1342 := TAppearanceNode.Create;
Appearance1342.X3DName := 'ap_l_eyelid_joint';
Material1343 := TMaterialNode.Create;
Material1343.X3DName := 'm_l_eyelid_joint';
Material1343.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1342.Material := Material1343;
{ .SetAppearance }
Shape1341.Appearance := Appearance1342;
Sphere1344 := TSphereNode.Create;
Sphere1344.Radius := 0.03;
{ .SetGeometry }
Shape1341.Geometry := Sphere1344;
{ .AddChild }
Transform1340.AddChildren([Shape1341]);
{ .AddChildren }
Group1338.AddChildren([Transform1340]);
Shape1345 := TShapeNode.Create;
Appearance1346 := TAppearanceNode.Create;
Appearance1346.X3DName := 'apl_l_eyelid_joint';
Material1347 := TMaterialNode.Create;
Material1347.X3DName := 'lm_l_eyelid_joint';
Material1347.DiffuseColor := Vector3(0,0,0);
Material1347.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1346.Material := Material1347;
LineProperties1348 := TLinePropertiesNode.Create;
LineProperties1348.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1346.LineProperties := LineProperties1348;
{ .SetAppearance }
Shape1345.Appearance := Appearance1346;
LineSet1349 := TLineSetNode.Create;
end;

procedure InitHAnimGimbalJointController22Part112;
begin

LineSet1349.SetVertexCount([2]);
Coordinate1350 := TCoordinateNode.Create;
Coordinate1350.X3DName := 'lc_l_eyelid_joint_0';
Coordinate1350.SetPoint([Vector3(0.0336,1.6332,0.0502),Vector3(0.0628,1.6455,0.0768)]);
{ .SetCoord }
LineSet1349.Coord := Coordinate1350;
{ .SetGeometry }
Shape1345.Geometry := LineSet1349;
{ .AddChildren }
Group1338.AddChildren([Shape1345]);
{ .AddChildren }
HAnimSegment1337.AddChildren([Group1338]);
{ .AddChildren }
HAnimJoint1336.AddChildren([HAnimSegment1337]);
{ .AddChildren }
HAnimJoint1297.AddChildren([HAnimJoint1336]);
HAnimJoint1351 := THAnimJointNode.Create;
HAnimJoint1351.X3DName := 'hanim_r_eyelid_joint';
HAnimJoint1351.Center := Vector3(-0.0236,1.6331,0.051);
HAnimJoint1351.SetLlimit([-0.1745,-0.0175,-0.0175]);
HAnimJoint1351.SetUlimit([0.6109,0.0175,0.0175]);
HAnimSegment1352 := THAnimSegmentNode.Create;
HAnimSegment1352.X3DName := 'hanim_r_eyelid';
Group1353 := TGroupNode.Create;
Group1353.X3DName := 'jg_r_eyelid_joint';
TouchSensor1354 := TTouchSensorNode.Create;
TouchSensor1354.X3DName := 'ts_r_eyelid_joint';
TouchSensor1354.Description := 'r_eyelid_joint';
{ .AddChildren }
Group1353.AddChildren([TouchSensor1354]);
Transform1355 := TTransformNode.Create;
Transform1355.X3DName := 'jx_r_eyelid_joint';
Transform1355.Translation := Vector3(-0.0236,1.6331,0.051);
Shape1356 := TShapeNode.Create;
Appearance1357 := TAppearanceNode.Create;
Appearance1357.X3DName := 'ap_r_eyelid_joint';
Material1358 := TMaterialNode.Create;
Material1358.X3DName := 'm_r_eyelid_joint';
Material1358.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance1357.Material := Material1358;
{ .SetAppearance }
Shape1356.Appearance := Appearance1357;
Sphere1359 := TSphereNode.Create;
Sphere1359.Radius := 0.03;
{ .SetGeometry }
Shape1356.Geometry := Sphere1359;
{ .AddChild }
Transform1355.AddChildren([Shape1356]);
{ .AddChildren }
Group1353.AddChildren([Transform1355]);
Shape1360 := TShapeNode.Create;
end;

procedure InitHAnimGimbalJointController22Part113;
begin

Appearance1361 := TAppearanceNode.Create;
Appearance1361.X3DName := 'apl_r_eyelid_joint';
Material1362 := TMaterialNode.Create;
Material1362.X3DName := 'lm_r_eyelid_joint';
Material1362.DiffuseColor := Vector3(0,0,0);
Material1362.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance1361.Material := Material1362;
LineProperties1363 := TLinePropertiesNode.Create;
LineProperties1363.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1361.LineProperties := LineProperties1363;
{ .SetAppearance }
Shape1360.Appearance := Appearance1361;
LineSet1364 := TLineSetNode.Create;
LineSet1364.SetVertexCount([2]);
Coordinate1365 := TCoordinateNode.Create;
Coordinate1365.X3DName := 'lc_r_eyelid_joint_0';
Coordinate1365.SetPoint([Vector3(-0.0236,1.6331,0.051),Vector3(-0.0516,1.6453,0.0784)]);
{ .SetCoord }
LineSet1364.Coord := Coordinate1365;
{ .SetGeometry }
Shape1360.Geometry := LineSet1364;
{ .AddChildren }
Group1353.AddChildren([Shape1360]);
{ .AddChildren }
HAnimSegment1352.AddChildren([Group1353]);
{ .AddChildren }
HAnimJoint1351.AddChildren([HAnimSegment1352]);
{ .AddChildren }
HAnimJoint1297.AddChildren([HAnimJoint1351]);
HAnimJoint1366 := THAnimJointNode.Create;
HAnimJoint1366.X3DName := 'hanim_l_eyeball_joint';
HAnimJoint1366.Center := Vector3(0.0336,1.6332,0.0502);
HAnimJoint1366.SetLlimit([-0.5236,-0.6981,-0.0175]);
HAnimJoint1366.SetUlimit([0.5236,0.6981,0.0175]);
HAnimSegment1367 := THAnimSegmentNode.Create;
HAnimSegment1367.X3DName := 'hanim_l_eyeball';
Group1368 := TGroupNode.Create;
Group1368.X3DName := 'jg_l_eyeball_joint';
TouchSensor1369 := TTouchSensorNode.Create;
TouchSensor1369.X3DName := 'ts_l_eyeball_joint';
TouchSensor1369.Description := 'l_eyeball_joint';
{ .AddChildren }
Group1368.AddChildren([TouchSensor1369]);
Transform1370 := TTransformNode.Create;
Transform1370.X3DName := 'jx_l_eyeball_joint';
Transform1370.Translation := Vector3(0.0336,1.6332,0.0502);
Shape1371 := TShapeNode.Create;
Appearance1372 := TAppearanceNode.Create;
end;

procedure InitHAnimGimbalJointController22Part114;
begin

Appearance1372.X3DName := 'ap_l_eyeball_joint';
Material1373 := TMaterialNode.Create;
Material1373.X3DName := 'm_l_eyeball_joint';
Material1373.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1372.Material := Material1373;
{ .SetAppearance }
Shape1371.Appearance := Appearance1372;
Sphere1374 := TSphereNode.Create;
Sphere1374.Radius := 0.03;
{ .SetGeometry }
Shape1371.Geometry := Sphere1374;
{ .AddChild }
Transform1370.AddChildren([Shape1371]);
{ .AddChildren }
Group1368.AddChildren([Transform1370]);
Shape1375 := TShapeNode.Create;
Appearance1376 := TAppearanceNode.Create;
Appearance1376.X3DName := 'apl_l_eyeball_joint';
Material1377 := TMaterialNode.Create;
Material1377.X3DName := 'lm_l_eyeball_joint';
Material1377.DiffuseColor := Vector3(0,0,0);
Material1377.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1376.Material := Material1377;
LineProperties1378 := TLinePropertiesNode.Create;
LineProperties1378.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1376.LineProperties := LineProperties1378;
{ .SetAppearance }
Shape1375.Appearance := Appearance1376;
LineSet1379 := TLineSetNode.Create;
LineSet1379.SetVertexCount([2]);
Coordinate1380 := TCoordinateNode.Create;
Coordinate1380.X3DName := 'lc_l_eyeball_joint_0';
Coordinate1380.SetPoint([Vector3(0.0336,1.6332,0.0502),Vector3(0.0628,1.6455,0.0768)]);
{ .SetCoord }
LineSet1379.Coord := Coordinate1380;
{ .SetGeometry }
Shape1375.Geometry := LineSet1379;
{ .AddChildren }
Group1368.AddChildren([Shape1375]);
{ .AddChildren }
HAnimSegment1367.AddChildren([Group1368]);
{ .AddChildren }
HAnimJoint1366.AddChildren([HAnimSegment1367]);
{ .AddChildren }
HAnimJoint1297.AddChildren([HAnimJoint1366]);
HAnimJoint1381 := THAnimJointNode.Create;
HAnimJoint1381.X3DName := 'hanim_r_eyeball_joint';
HAnimJoint1381.Center := Vector3(-0.0236,1.6331,0.051);
HAnimJoint1381.SetLlimit([-0.5236,-0.6981,-0.0175]);
HAnimJoint1381.SetUlimit([0.5236,0.6981,0.0175]);
HAnimSegment1382 := THAnimSegmentNode.Create;
end;

procedure InitHAnimGimbalJointController22Part115;
begin

HAnimSegment1382.X3DName := 'hanim_r_eyeball';
Group1383 := TGroupNode.Create;
Group1383.X3DName := 'jg_r_eyeball_joint';
TouchSensor1384 := TTouchSensorNode.Create;
TouchSensor1384.X3DName := 'ts_r_eyeball_joint';
TouchSensor1384.Description := 'r_eyeball_joint';
{ .AddChildren }
Group1383.AddChildren([TouchSensor1384]);
Transform1385 := TTransformNode.Create;
Transform1385.X3DName := 'jx_r_eyeball_joint';
Transform1385.Translation := Vector3(-0.0236,1.6331,0.051);
Shape1386 := TShapeNode.Create;
Appearance1387 := TAppearanceNode.Create;
Appearance1387.X3DName := 'ap_r_eyeball_joint';
Material1388 := TMaterialNode.Create;
Material1388.X3DName := 'm_r_eyeball_joint';
Material1388.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance1387.Material := Material1388;
{ .SetAppearance }
Shape1386.Appearance := Appearance1387;
Sphere1389 := TSphereNode.Create;
Sphere1389.Radius := 0.03;
{ .SetGeometry }
Shape1386.Geometry := Sphere1389;
{ .AddChild }
Transform1385.AddChildren([Shape1386]);
{ .AddChildren }
Group1383.AddChildren([Transform1385]);
Shape1390 := TShapeNode.Create;
Appearance1391 := TAppearanceNode.Create;
Appearance1391.X3DName := 'apl_r_eyeball_joint';
Material1392 := TMaterialNode.Create;
Material1392.X3DName := 'lm_r_eyeball_joint';
Material1392.DiffuseColor := Vector3(0,0,0);
Material1392.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance1391.Material := Material1392;
LineProperties1393 := TLinePropertiesNode.Create;
LineProperties1393.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1391.LineProperties := LineProperties1393;
{ .SetAppearance }
Shape1390.Appearance := Appearance1391;
LineSet1394 := TLineSetNode.Create;
LineSet1394.SetVertexCount([2]);
Coordinate1395 := TCoordinateNode.Create;
Coordinate1395.X3DName := 'lc_r_eyeball_joint_0';
Coordinate1395.SetPoint([Vector3(-0.0236,1.6331,0.051),Vector3(-0.0516,1.6453,0.0784)]);
end;

procedure InitHAnimGimbalJointController22Part116;
begin

{ .SetCoord }
LineSet1394.Coord := Coordinate1395;
{ .SetGeometry }
Shape1390.Geometry := LineSet1394;
{ .AddChildren }
Group1383.AddChildren([Shape1390]);
{ .AddChildren }
HAnimSegment1382.AddChildren([Group1383]);
{ .AddChildren }
HAnimJoint1381.AddChildren([HAnimSegment1382]);
{ .AddChildren }
HAnimJoint1297.AddChildren([HAnimJoint1381]);
HAnimJoint1396 := THAnimJointNode.Create;
HAnimJoint1396.X3DName := 'hanim_l_eyebrow_joint';
HAnimJoint1396.Center := Vector3(0.0336,1.6332,0.0502);
HAnimJoint1396.SetLlimit([-0.1745,-0.0175,-0.1745]);
HAnimJoint1396.SetUlimit([0.1745,0.0175,0.1745]);
HAnimSegment1397 := THAnimSegmentNode.Create;
HAnimSegment1397.X3DName := 'hanim_l_eyebrow';
Group1398 := TGroupNode.Create;
Group1398.X3DName := 'jg_l_eyebrow_joint';
TouchSensor1399 := TTouchSensorNode.Create;
TouchSensor1399.X3DName := 'ts_l_eyebrow_joint';
TouchSensor1399.Description := 'l_eyebrow_joint';
{ .AddChildren }
Group1398.AddChildren([TouchSensor1399]);
Transform1400 := TTransformNode.Create;
Transform1400.X3DName := 'jx_l_eyebrow_joint';
Transform1400.Translation := Vector3(0.0336,1.6332,0.0502);
Shape1401 := TShapeNode.Create;
Appearance1402 := TAppearanceNode.Create;
Appearance1402.X3DName := 'ap_l_eyebrow_joint';
Material1403 := TMaterialNode.Create;
Material1403.X3DName := 'm_l_eyebrow_joint';
Material1403.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1402.Material := Material1403;
{ .SetAppearance }
Shape1401.Appearance := Appearance1402;
Sphere1404 := TSphereNode.Create;
Sphere1404.Radius := 0.03;
{ .SetGeometry }
Shape1401.Geometry := Sphere1404;
{ .AddChild }
Transform1400.AddChildren([Shape1401]);
{ .AddChildren }
Group1398.AddChildren([Transform1400]);
Shape1405 := TShapeNode.Create;
Appearance1406 := TAppearanceNode.Create;
Appearance1406.X3DName := 'apl_l_eyebrow_joint';
Material1407 := TMaterialNode.Create;
Material1407.X3DName := 'lm_l_eyebrow_joint';
end;

procedure InitHAnimGimbalJointController22Part117;
begin

Material1407.DiffuseColor := Vector3(0,0,0);
Material1407.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1406.Material := Material1407;
LineProperties1408 := TLinePropertiesNode.Create;
LineProperties1408.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1406.LineProperties := LineProperties1408;
{ .SetAppearance }
Shape1405.Appearance := Appearance1406;
LineSet1409 := TLineSetNode.Create;
LineSet1409.SetVertexCount([2]);
Coordinate1410 := TCoordinateNode.Create;
Coordinate1410.X3DName := 'lc_l_eyebrow_joint_0';
Coordinate1410.SetPoint([Vector3(0.0336,1.6332,0.0502),Vector3(0.0628,1.6455,0.0768)]);
{ .SetCoord }
LineSet1409.Coord := Coordinate1410;
{ .SetGeometry }
Shape1405.Geometry := LineSet1409;
{ .AddChildren }
Group1398.AddChildren([Shape1405]);
{ .AddChildren }
HAnimSegment1397.AddChildren([Group1398]);
{ .AddChildren }
HAnimJoint1396.AddChildren([HAnimSegment1397]);
{ .AddChildren }
HAnimJoint1297.AddChildren([HAnimJoint1396]);
HAnimJoint1411 := THAnimJointNode.Create;
HAnimJoint1411.X3DName := 'hanim_r_eyebrow_joint';
HAnimJoint1411.Center := Vector3(-0.0236,1.6331,0.051);
HAnimJoint1411.SetLlimit([-0.1745,-0.0175,-0.1745]);
HAnimJoint1411.SetUlimit([0.1745,0.0175,0.1745]);
HAnimSegment1412 := THAnimSegmentNode.Create;
HAnimSegment1412.X3DName := 'hanim_r_eyebrow';
Group1413 := TGroupNode.Create;
Group1413.X3DName := 'jg_r_eyebrow_joint';
TouchSensor1414 := TTouchSensorNode.Create;
TouchSensor1414.X3DName := 'ts_r_eyebrow_joint';
TouchSensor1414.Description := 'r_eyebrow_joint';
{ .AddChildren }
Group1413.AddChildren([TouchSensor1414]);
Transform1415 := TTransformNode.Create;
Transform1415.X3DName := 'jx_r_eyebrow_joint';
Transform1415.Translation := Vector3(-0.0236,1.6331,0.051);
Shape1416 := TShapeNode.Create;
Appearance1417 := TAppearanceNode.Create;
Appearance1417.X3DName := 'ap_r_eyebrow_joint';
Material1418 := TMaterialNode.Create;
Material1418.X3DName := 'm_r_eyebrow_joint';
Material1418.DiffuseColor := Vector3(0.95,0.45,0.35);
end;

procedure InitHAnimGimbalJointController22Part118;
begin

{ .SetMaterial }
Appearance1417.Material := Material1418;
{ .SetAppearance }
Shape1416.Appearance := Appearance1417;
Sphere1419 := TSphereNode.Create;
Sphere1419.Radius := 0.03;
{ .SetGeometry }
Shape1416.Geometry := Sphere1419;
{ .AddChild }
Transform1415.AddChildren([Shape1416]);
{ .AddChildren }
Group1413.AddChildren([Transform1415]);
Shape1420 := TShapeNode.Create;
Appearance1421 := TAppearanceNode.Create;
Appearance1421.X3DName := 'apl_r_eyebrow_joint';
Material1422 := TMaterialNode.Create;
Material1422.X3DName := 'lm_r_eyebrow_joint';
Material1422.DiffuseColor := Vector3(0,0,0);
Material1422.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance1421.Material := Material1422;
LineProperties1423 := TLinePropertiesNode.Create;
LineProperties1423.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1421.LineProperties := LineProperties1423;
{ .SetAppearance }
Shape1420.Appearance := Appearance1421;
LineSet1424 := TLineSetNode.Create;
LineSet1424.SetVertexCount([2]);
Coordinate1425 := TCoordinateNode.Create;
Coordinate1425.X3DName := 'lc_r_eyebrow_joint_0';
Coordinate1425.SetPoint([Vector3(-0.0236,1.6331,0.051),Vector3(-0.0516,1.6453,0.0784)]);
{ .SetCoord }
LineSet1424.Coord := Coordinate1425;
{ .SetGeometry }
Shape1420.Geometry := LineSet1424;
{ .AddChildren }
Group1413.AddChildren([Shape1420]);
{ .AddChildren }
HAnimSegment1412.AddChildren([Group1413]);
{ .AddChildren }
HAnimJoint1411.AddChildren([HAnimSegment1412]);
{ .AddChildren }
HAnimJoint1297.AddChildren([HAnimJoint1411]);
HAnimJoint1426 := THAnimJointNode.Create;
HAnimJoint1426.X3DName := 'hanim_temporomandibular';
HAnimJoint1426.Center := Vector3(0.0086,1.6,0.0506);
HAnimJoint1426.SetLlimit([-0.0873,-0.1396,-0.0873]);
HAnimJoint1426.SetUlimit([0.5236,0.1396,0.0873]);
HAnimSegment1427 := THAnimSegmentNode.Create;
HAnimSegment1427.X3DName := 'hanim_jaw';
Group1428 := TGroupNode.Create;
Group1428.X3DName := 'jg_temporomandibular';
TouchSensor1429 := TTouchSensorNode.Create;
end;

procedure InitHAnimGimbalJointController22Part119;
begin

TouchSensor1429.X3DName := 'ts_temporomandibular';
TouchSensor1429.Description := 'temporomandibular';
{ .AddChildren }
Group1428.AddChildren([TouchSensor1429]);
Transform1430 := TTransformNode.Create;
Transform1430.X3DName := 'jx_temporomandibular';
Transform1430.Translation := Vector3(0.0086,1.6,0.0706);
Shape1431 := TShapeNode.Create;
Appearance1432 := TAppearanceNode.Create;
Appearance1432.X3DName := 'ap_temporomandibular';
Material1433 := TMaterialNode.Create;
Material1433.X3DName := 'm_temporomandibular';
Material1433.DiffuseColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1432.Material := Material1433;
{ .SetAppearance }
Shape1431.Appearance := Appearance1432;
Sphere1434 := TSphereNode.Create;
Sphere1434.Radius := 0.03;
{ .SetGeometry }
Shape1431.Geometry := Sphere1434;
{ .AddChild }
Transform1430.AddChildren([Shape1431]);
{ .AddChildren }
Group1428.AddChildren([Transform1430]);
Shape1435 := TShapeNode.Create;
Appearance1436 := TAppearanceNode.Create;
Appearance1436.X3DName := 'apl_temporomandibular';
Material1437 := TMaterialNode.Create;
Material1437.X3DName := 'lm_temporomandibular';
Material1437.DiffuseColor := Vector3(0,0,0);
Material1437.EmissiveColor := Vector3(0.4,0.8,0.4);
{ .SetMaterial }
Appearance1436.Material := Material1437;
LineProperties1438 := TLinePropertiesNode.Create;
LineProperties1438.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1436.LineProperties := LineProperties1438;
{ .SetAppearance }
Shape1435.Appearance := Appearance1436;
LineSet1439 := TLineSetNode.Create;
LineSet1439.SetVertexCount([2]);
Coordinate1440 := TCoordinateNode.Create;
Coordinate1440.X3DName := 'lc_temporomandibular_0';
Coordinate1440.SetPoint([Vector3(0.0086,1.6,0.0506),Vector3(0.0056,1.58,0.0766)]);
{ .SetCoord }
LineSet1439.Coord := Coordinate1440;
{ .SetGeometry }
Shape1435.Geometry := LineSet1439;
{ .AddChildren }
Group1428.AddChildren([Shape1435]);
{ .AddChildren }
HAnimSegment1427.AddChildren([Group1428]);
end;

procedure InitHAnimGimbalJointController22Part120;
begin

{ .AddChildren }
HAnimJoint1426.AddChildren([HAnimSegment1427]);
{ .AddChildren }
HAnimJoint1297.AddChildren([HAnimJoint1426]);
{ .AddChildren }
HAnimJoint1282.AddChildren([HAnimJoint1297]);
{ .AddChildren }
HAnimJoint1267.AddChildren([HAnimJoint1282]);
{ .AddChildren }
HAnimJoint1252.AddChildren([HAnimJoint1267]);
{ .AddChildren }
HAnimJoint1237.AddChildren([HAnimJoint1252]);
{ .AddChildren }
HAnimJoint1222.AddChildren([HAnimJoint1237]);
{ .AddChildren }
HAnimJoint1207.AddChildren([HAnimJoint1222]);
{ .AddChildren }
HAnimJoint1192.AddChildren([HAnimJoint1207]);
{ .AddChildren }
HAnimJoint1169.AddChildren([HAnimJoint1192]);
{ LEFT ARM (Child 2 of vt1) }
HAnimJoint1441 := THAnimJointNode.Create;
HAnimJoint1441.X3DName := 'hanim_l_sternoclavicular';
HAnimJoint1441.Center := Vector3(0.082,1.4488,-0.0353);
HAnimJoint1441.SetLlimit([-0.3491,-0.3491,-0.1745]);
HAnimJoint1441.SetUlimit([0.3491,0.2618,0.4363]);
HAnimSegment1442 := THAnimSegmentNode.Create;
HAnimSegment1442.X3DName := 'hanim_l_clavicle';
TouchSensor1443 := TTouchSensorNode.Create;
TouchSensor1443.X3DName := 'ts_l_sternoclavicular';
TouchSensor1443.Description := 'l_sternoclavicular';
{ .AddChildren }
HAnimSegment1442.AddChildren([TouchSensor1443]);
Transform1444 := TTransformNode.Create;
Transform1444.X3DName := 'jx_l_sternoclavicular';
Transform1444.Translation := Vector3(0.082,1.4488,-0.0353);
Transform1445 := TTransformNode.Create;
Shape1446 := TShapeNode.Create;
Appearance1447 := TAppearanceNode.Create;
Appearance1447.X3DName := 'ap_l_sternoclavicular';
Material1448 := TMaterialNode.Create;
Material1448.X3DName := 'm_l_sternoclavicular';
Material1448.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1447.Material := Material1448;
{ .SetAppearance }
Shape1446.Appearance := Appearance1447;
Sphere1449 := TSphereNode.Create;
Sphere1449.Radius := 0.03;
{ .SetGeometry }
Shape1446.Geometry := Sphere1449;
{ .AddChild }
Transform1445.AddChildren([Shape1446]);
{ .AddChildren }
Transform1444.AddChildren([Transform1445]);
{ .AddChildren }
HAnimSegment1442.AddChildren([Transform1444]);
Shape1450 := TShapeNode.Create;
end;

procedure InitHAnimGimbalJointController22Part121;
begin

Appearance1451 := TAppearanceNode.Create;
Appearance1451.X3DName := 'apl_l_sternoclavicular';
Material1452 := TMaterialNode.Create;
Material1452.X3DName := 'lm_l_sternoclavicular';
Material1452.DiffuseColor := Vector3(0,0,0);
Material1452.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1451.Material := Material1452;
LineProperties1453 := TLinePropertiesNode.Create;
LineProperties1453.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1451.LineProperties := LineProperties1453;
{ .SetAppearance }
Shape1450.Appearance := Appearance1451;
LineSet1454 := TLineSetNode.Create;
LineSet1454.SetVertexCount([2]);
Coordinate1455 := TCoordinateNode.Create;
Coordinate1455.X3DName := 'lc_l_sternoclavicular_0';
Coordinate1455.SetPoint([Vector3(0.082,1.4488,-0.0353),Vector3(0.0962,1.4269,-0.0424)]);
{ .SetCoord }
LineSet1454.Coord := Coordinate1455;
{ .SetGeometry }
Shape1450.Geometry := LineSet1454;
{ .AddChildren }
HAnimSegment1442.AddChildren([Shape1450]);
{ .AddChildren }
HAnimJoint1441.AddChildren([HAnimSegment1442]);
HAnimJoint1456 := THAnimJointNode.Create;
HAnimJoint1456.X3DName := 'hanim_l_acromioclavicular';
HAnimJoint1456.Center := Vector3(0.0962,1.4269,-0.0424);
HAnimJoint1456.SetLlimit([-0.1745,-0.1745,-0.1745]);
HAnimJoint1456.SetUlimit([0.1745,0.1745,0.1745]);
HAnimSegment1457 := THAnimSegmentNode.Create;
HAnimSegment1457.X3DName := 'hanim_l_scapula';
TouchSensor1458 := TTouchSensorNode.Create;
TouchSensor1458.X3DName := 'ts_l_acromioclavicular';
TouchSensor1458.Description := 'l_acromioclavicular';
{ .AddChildren }
HAnimSegment1457.AddChildren([TouchSensor1458]);
Transform1459 := TTransformNode.Create;
Transform1459.X3DName := 'jx_l_acromioclavicular';
Transform1459.Translation := Vector3(0.0962,1.4269,-0.0424);
Transform1460 := TTransformNode.Create;
Shape1461 := TShapeNode.Create;
Appearance1462 := TAppearanceNode.Create;
Appearance1462.X3DName := 'ap_l_acromioclavicular';
Material1463 := TMaterialNode.Create;
Material1463.X3DName := 'm_l_acromioclavicular';
end;

procedure InitHAnimGimbalJointController22Part122;
begin

Material1463.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1462.Material := Material1463;
{ .SetAppearance }
Shape1461.Appearance := Appearance1462;
Sphere1464 := TSphereNode.Create;
Sphere1464.Radius := 0.03;
{ .SetGeometry }
Shape1461.Geometry := Sphere1464;
{ .AddChild }
Transform1460.AddChildren([Shape1461]);
{ .AddChildren }
Transform1459.AddChildren([Transform1460]);
{ .AddChildren }
HAnimSegment1457.AddChildren([Transform1459]);
Shape1465 := TShapeNode.Create;
Appearance1466 := TAppearanceNode.Create;
Appearance1466.X3DName := 'apl_l_acromioclavicular';
Material1467 := TMaterialNode.Create;
Material1467.X3DName := 'lm_l_acromioclavicular';
Material1467.DiffuseColor := Vector3(0,0,0);
Material1467.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1466.Material := Material1467;
LineProperties1468 := TLinePropertiesNode.Create;
LineProperties1468.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1466.LineProperties := LineProperties1468;
{ .SetAppearance }
Shape1465.Appearance := Appearance1466;
LineSet1469 := TLineSetNode.Create;
LineSet1469.SetVertexCount([2]);
Coordinate1470 := TCoordinateNode.Create;
Coordinate1470.X3DName := 'lc_l_acromioclavicular_0';
Coordinate1470.SetPoint([Vector3(0.0962,1.4269,-0.0424),Vector3(0.2029,1.4376,-0.0387)]);
{ .SetCoord }
LineSet1469.Coord := Coordinate1470;
{ .SetGeometry }
Shape1465.Geometry := LineSet1469;
{ .AddChildren }
HAnimSegment1457.AddChildren([Shape1465]);
{ .AddChildren }
HAnimJoint1456.AddChildren([HAnimSegment1457]);
HAnimJoint1471 := THAnimJointNode.Create;
HAnimJoint1471.X3DName := 'hanim_l_shoulder';
HAnimJoint1471.Center := Vector3(0.2029,1.4376,-0.0387);
HAnimJoint1471.SetLlimit([-3.1416,-1.5708,-0.5236]);
HAnimJoint1471.SetUlimit([1.0472,1.5708,3.1416]);
HAnimSegment1472 := THAnimSegmentNode.Create;
HAnimSegment1472.X3DName := 'hanim_l_upperarm';
TouchSensor1473 := TTouchSensorNode.Create;
TouchSensor1473.X3DName := 'ts_l_shoulder';
TouchSensor1473.Description := 'l_shoulder';
end;

procedure InitHAnimGimbalJointController22Part123;
begin

{ .AddChildren }
HAnimSegment1472.AddChildren([TouchSensor1473]);
Transform1474 := TTransformNode.Create;
Transform1474.X3DName := 'jx_l_shoulder';
Transform1474.Translation := Vector3(0.2029,1.4376,-0.0387);
Transform1475 := TTransformNode.Create;
Shape1476 := TShapeNode.Create;
Appearance1477 := TAppearanceNode.Create;
Appearance1477.X3DName := 'ap_l_shoulder';
Material1478 := TMaterialNode.Create;
Material1478.X3DName := 'm_l_shoulder';
Material1478.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1477.Material := Material1478;
{ .SetAppearance }
Shape1476.Appearance := Appearance1477;
Sphere1479 := TSphereNode.Create;
Sphere1479.Radius := 0.03;
{ .SetGeometry }
Shape1476.Geometry := Sphere1479;
{ .AddChild }
Transform1475.AddChildren([Shape1476]);
{ .AddChildren }
Transform1474.AddChildren([Transform1475]);
{ .AddChildren }
HAnimSegment1472.AddChildren([Transform1474]);
Shape1480 := TShapeNode.Create;
Appearance1481 := TAppearanceNode.Create;
Appearance1481.X3DName := 'apl_l_shoulder';
Material1482 := TMaterialNode.Create;
Material1482.X3DName := 'lm_l_shoulder';
Material1482.DiffuseColor := Vector3(0,0,0);
Material1482.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1481.Material := Material1482;
LineProperties1483 := TLinePropertiesNode.Create;
LineProperties1483.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1481.LineProperties := LineProperties1483;
{ .SetAppearance }
Shape1480.Appearance := Appearance1481;
LineSet1484 := TLineSetNode.Create;
LineSet1484.SetVertexCount([2]);
Coordinate1485 := TCoordinateNode.Create;
Coordinate1485.X3DName := 'lc_l_shoulder_0';
Coordinate1485.SetPoint([Vector3(0.2029,1.4376,-0.0387),Vector3(0.2014,1.1357,-0.0682)]);
{ .SetCoord }
LineSet1484.Coord := Coordinate1485;
{ .SetGeometry }
Shape1480.Geometry := LineSet1484;
{ .AddChildren }
HAnimSegment1472.AddChildren([Shape1480]);
{ .AddChildren }
HAnimJoint1471.AddChildren([HAnimSegment1472]);
end;

procedure InitHAnimGimbalJointController22Part124;
begin

HAnimJoint1486 := THAnimJointNode.Create;
HAnimJoint1486.X3DName := 'hanim_l_elbow';
HAnimJoint1486.Center := Vector3(0.2014,1.1357,-0.0682);
HAnimJoint1486.SetLlimit([-2.5307,-1.5708,-0.0175]);
HAnimJoint1486.SetUlimit([0,1.5708,0.0175]);
HAnimSegment1487 := THAnimSegmentNode.Create;
HAnimSegment1487.X3DName := 'hanim_l_forearm';
TouchSensor1488 := TTouchSensorNode.Create;
TouchSensor1488.X3DName := 'ts_l_elbow';
TouchSensor1488.Description := 'l_elbow';
{ .AddChildren }
HAnimSegment1487.AddChildren([TouchSensor1488]);
Transform1489 := TTransformNode.Create;
Transform1489.X3DName := 'jx_l_elbow';
Transform1489.Translation := Vector3(0.2014,1.1357,-0.0682);
Transform1490 := TTransformNode.Create;
Shape1491 := TShapeNode.Create;
Appearance1492 := TAppearanceNode.Create;
Appearance1492.X3DName := 'ap_l_elbow';
Material1493 := TMaterialNode.Create;
Material1493.X3DName := 'm_l_elbow';
Material1493.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1492.Material := Material1493;
{ .SetAppearance }
Shape1491.Appearance := Appearance1492;
Sphere1494 := TSphereNode.Create;
Sphere1494.Radius := 0.03;
{ .SetGeometry }
Shape1491.Geometry := Sphere1494;
{ .AddChild }
Transform1490.AddChildren([Shape1491]);
{ .AddChildren }
Transform1489.AddChildren([Transform1490]);
{ .AddChildren }
HAnimSegment1487.AddChildren([Transform1489]);
Shape1495 := TShapeNode.Create;
Appearance1496 := TAppearanceNode.Create;
Appearance1496.X3DName := 'apl_l_elbow';
Material1497 := TMaterialNode.Create;
Material1497.X3DName := 'lm_l_elbow';
Material1497.DiffuseColor := Vector3(0,0,0);
Material1497.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1496.Material := Material1497;
LineProperties1498 := TLinePropertiesNode.Create;
LineProperties1498.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1496.LineProperties := LineProperties1498;
end;

procedure InitHAnimGimbalJointController22Part125;
begin

{ .SetAppearance }
Shape1495.Appearance := Appearance1496;
LineSet1499 := TLineSetNode.Create;
LineSet1499.SetVertexCount([2]);
Coordinate1500 := TCoordinateNode.Create;
Coordinate1500.X3DName := 'lc_l_elbow_0';
Coordinate1500.SetPoint([Vector3(0.2014,1.1357,-0.0682),Vector3(0.1984,0.8663,-0.0583)]);
{ .SetCoord }
LineSet1499.Coord := Coordinate1500;
{ .SetGeometry }
Shape1495.Geometry := LineSet1499;
{ .AddChildren }
HAnimSegment1487.AddChildren([Shape1495]);
{ .AddChildren }
HAnimJoint1486.AddChildren([HAnimSegment1487]);
HAnimJoint1501 := THAnimJointNode.Create;
HAnimJoint1501.X3DName := 'hanim_l_radiocarpal';
HAnimJoint1501.Center := Vector3(0.1984,0.8663,-0.0583);
HAnimJoint1501.SetLlimit([-0.3491,-0.1745,-1.3963]);
HAnimJoint1501.SetUlimit([0.5236,0.1745,1.2217]);
HAnimSegment1502 := THAnimSegmentNode.Create;
HAnimSegment1502.X3DName := 'hanim_l_carpal';
TouchSensor1503 := TTouchSensorNode.Create;
TouchSensor1503.X3DName := 'ts_l_radiocarpal';
TouchSensor1503.Description := 'l_radiocarpal';
{ .AddChildren }
HAnimSegment1502.AddChildren([TouchSensor1503]);
Transform1504 := TTransformNode.Create;
Transform1504.X3DName := 'jx_l_radiocarpal';
Transform1504.Scale := Vector3(0.2,0.2,0.2);
Transform1504.Translation := Vector3(0.2,0.85,-0.05);
Transform1504.Rotation := Vector4(0,0,1,-3.14);
Transform1505 := TTransformNode.Create;
Transform1505.Rotation := Vector4(0,1,0,-1.57);
Shape1506 := TShapeNode.Create;
Appearance1507 := TAppearanceNode.Create;
Appearance1507.X3DName := 'ap_l_radiocarpal';
Material1508 := TMaterialNode.Create;
Material1508.X3DName := 'm_l_radiocarpal';
Material1508.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1507.Material := Material1508;
{ .SetAppearance }
Shape1506.Appearance := Appearance1507;
Sphere1509 := TSphereNode.Create;
Sphere1509.Radius := 0.03;
{ .SetGeometry }
Shape1506.Geometry := Sphere1509;
{ .AddChild }
Transform1505.AddChildren([Shape1506]);
end;

procedure InitHAnimGimbalJointController22Part126;
begin

{ .AddChildren }
Transform1504.AddChildren([Transform1505]);
{ .AddChildren }
HAnimSegment1502.AddChildren([Transform1504]);
Shape1510 := TShapeNode.Create;
Appearance1511 := TAppearanceNode.Create;
Appearance1511.X3DName := 'apl_l_radiocarpal';
Material1512 := TMaterialNode.Create;
Material1512.X3DName := 'lm_l_radiocarpal';
Material1512.DiffuseColor := Vector3(0,0,0);
Material1512.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1511.Material := Material1512;
LineProperties1513 := TLinePropertiesNode.Create;
LineProperties1513.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1511.LineProperties := LineProperties1513;
{ .SetAppearance }
Shape1510.Appearance := Appearance1511;
LineSet1514 := TLineSetNode.Create;
LineSet1514.SetVertexCount([2]);
Coordinate1515 := TCoordinateNode.Create;
Coordinate1515.X3DName := 'lc_l_radiocarpal_0';
Coordinate1515.SetPoint([Vector3(0.1984,0.8663,-0.0583),Vector3(0.1811,0.6975,-0.0826)]);
{ .SetCoord }
LineSet1514.Coord := Coordinate1515;
{ .SetGeometry }
Shape1510.Geometry := LineSet1514;
{ .AddChildren }
HAnimSegment1502.AddChildren([Shape1510]);
Shape1516 := TShapeNode.Create;
{ .SetAppearance }
Shape1516.Appearance := Appearance1511;
LineSet1518 := TLineSetNode.Create;
LineSet1518.SetVertexCount([2]);
Coordinate1519 := TCoordinateNode.Create;
Coordinate1519.X3DName := 'lc_l_radiocarpal_1';
Coordinate1519.SetPoint([Vector3(0.1984,0.8663,-0.0583),Vector3(0.1811,0.6984,-0.0935)]);
{ .SetCoord }
LineSet1518.Coord := Coordinate1519;
{ .SetGeometry }
Shape1516.Geometry := LineSet1518;
{ .AddChildren }
HAnimSegment1502.AddChildren([Shape1516]);
Shape1520 := TShapeNode.Create;
{ .SetAppearance }
Shape1520.Appearance := Appearance1511;
LineSet1522 := TLineSetNode.Create;
LineSet1522.SetVertexCount([2]);
Coordinate1523 := TCoordinateNode.Create;
Coordinate1523.X3DName := 'lc_l_radiocarpal_2';
Coordinate1523.SetPoint([Vector3(0.1984,0.8663,-0.0583),Vector3(0.1809,0.7,-0.1067)]);
{ .SetCoord }
LineSet1522.Coord := Coordinate1523;
end;

procedure InitHAnimGimbalJointController22Part127;
begin

{ .SetGeometry }
Shape1520.Geometry := LineSet1522;
{ .AddChildren }
HAnimSegment1502.AddChildren([Shape1520]);
Shape1524 := TShapeNode.Create;
{ .SetAppearance }
Shape1524.Appearance := Appearance1511;
LineSet1526 := TLineSetNode.Create;
LineSet1526.SetVertexCount([2]);
Coordinate1527 := TCoordinateNode.Create;
Coordinate1527.X3DName := 'lc_l_radiocarpal_3';
Coordinate1527.SetPoint([Vector3(0.1984,0.8663,-0.0583),Vector3(0.1809,0.6973,-0.1276)]);
{ .SetCoord }
LineSet1526.Coord := Coordinate1527;
{ .SetGeometry }
Shape1524.Geometry := LineSet1526;
{ .AddChildren }
HAnimSegment1502.AddChildren([Shape1524]);
{ .AddChildren }
HAnimJoint1501.AddChildren([HAnimSegment1502]);
HAnimJoint1528 := THAnimJointNode.Create;
HAnimJoint1528.X3DName := 'hanim_l_midcarpal_1';
HAnimJoint1528.Center := Vector3(0.1811,0.6975,-0.0826);
HAnimJoint1528.SetLlimit([-0.1396,-0.0873,-0.1396]);
HAnimJoint1528.SetUlimit([0.1396,0.0873,0.1396]);
HAnimSegment1529 := THAnimSegmentNode.Create;
HAnimSegment1529.X3DName := 'hanim_l_trapezium';
TouchSensor1530 := TTouchSensorNode.Create;
TouchSensor1530.X3DName := 'ts_l_midcarpal_1';
TouchSensor1530.Description := 'l_midcarpal_1';
{ .AddChildren }
HAnimSegment1529.AddChildren([TouchSensor1530]);
Transform1531 := TTransformNode.Create;
Transform1531.X3DName := 'jx_l_midcarpal_1';
Transform1531.Translation := Vector3(0.1811,0.6975,-0.0826);
Transform1532 := TTransformNode.Create;
Shape1533 := TShapeNode.Create;
Appearance1534 := TAppearanceNode.Create;
Appearance1534.X3DName := 'ap_l_midcarpal_1';
Material1535 := TMaterialNode.Create;
Material1535.X3DName := 'm_l_midcarpal_1';
Material1535.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1534.Material := Material1535;
{ .SetAppearance }
Shape1533.Appearance := Appearance1534;
Sphere1536 := TSphereNode.Create;
Sphere1536.Radius := 0.03;
{ .SetGeometry }
Shape1533.Geometry := Sphere1536;
{ .AddChild }
Transform1532.AddChildren([Shape1533]);
end;

procedure InitHAnimGimbalJointController22Part128;
begin

{ .AddChildren }
Transform1531.AddChildren([Transform1532]);
{ .AddChildren }
HAnimSegment1529.AddChildren([Transform1531]);
Shape1537 := TShapeNode.Create;
Appearance1538 := TAppearanceNode.Create;
Appearance1538.X3DName := 'apl_l_midcarpal_1';
Material1539 := TMaterialNode.Create;
Material1539.X3DName := 'lm_l_midcarpal_1';
Material1539.DiffuseColor := Vector3(0,0,0);
Material1539.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1538.Material := Material1539;
LineProperties1540 := TLinePropertiesNode.Create;
LineProperties1540.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1538.LineProperties := LineProperties1540;
{ .SetAppearance }
Shape1537.Appearance := Appearance1538;
LineSet1541 := TLineSetNode.Create;
LineSet1541.SetVertexCount([2]);
Coordinate1542 := TCoordinateNode.Create;
Coordinate1542.X3DName := 'lc_l_midcarpal_1_0';
Coordinate1542.SetPoint([Vector3(0.1811,0.6975,-0.0826),Vector3(0.1924,0.8472,-0.0534)]);
{ .SetCoord }
LineSet1541.Coord := Coordinate1542;
{ .SetGeometry }
Shape1537.Geometry := LineSet1541;
{ .AddChildren }
HAnimSegment1529.AddChildren([Shape1537]);
{ .AddChildren }
HAnimJoint1528.AddChildren([HAnimSegment1529]);
HAnimJoint1543 := THAnimJointNode.Create;
HAnimJoint1543.X3DName := 'hanim_l_carpometacarpal_1';
HAnimJoint1543.Center := Vector3(0.1924,0.8472,-0.0534);
HAnimJoint1543.SetLlimit([-0.5236,-0.6981,-0.5236]);
HAnimJoint1543.SetUlimit([0.5236,0.3491,0.5236]);
HAnimSegment1544 := THAnimSegmentNode.Create;
HAnimSegment1544.X3DName := 'hanim_l_metacarpal_1';
TouchSensor1545 := TTouchSensorNode.Create;
TouchSensor1545.X3DName := 'ts_l_carpometacarpal_1';
TouchSensor1545.Description := 'l_carpometacarpal_1';
{ .AddChildren }
HAnimSegment1544.AddChildren([TouchSensor1545]);
Transform1546 := TTransformNode.Create;
Transform1546.X3DName := 'jx_l_carpometacarpal_1';
Transform1546.Translation := Vector3(0.1924,0.8472,-0.0534);
Transform1547 := TTransformNode.Create;
Shape1548 := TShapeNode.Create;
Appearance1549 := TAppearanceNode.Create;
end;

procedure InitHAnimGimbalJointController22Part129;
begin

Appearance1549.X3DName := 'ap_l_carpometacarpal_1';
Material1550 := TMaterialNode.Create;
Material1550.X3DName := 'm_l_carpometacarpal_1';
Material1550.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1549.Material := Material1550;
{ .SetAppearance }
Shape1548.Appearance := Appearance1549;
Sphere1551 := TSphereNode.Create;
Sphere1551.Radius := 0.03;
{ .SetGeometry }
Shape1548.Geometry := Sphere1551;
{ .AddChild }
Transform1547.AddChildren([Shape1548]);
{ .AddChildren }
Transform1546.AddChildren([Transform1547]);
{ .AddChildren }
HAnimSegment1544.AddChildren([Transform1546]);
Shape1552 := TShapeNode.Create;
Appearance1553 := TAppearanceNode.Create;
Appearance1553.X3DName := 'apl_l_carpometacarpal_1';
Material1554 := TMaterialNode.Create;
Material1554.X3DName := 'lm_l_carpometacarpal_1';
Material1554.DiffuseColor := Vector3(0,0,0);
Material1554.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1553.Material := Material1554;
LineProperties1555 := TLinePropertiesNode.Create;
LineProperties1555.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1553.LineProperties := LineProperties1555;
{ .SetAppearance }
Shape1552.Appearance := Appearance1553;
LineSet1556 := TLineSetNode.Create;
LineSet1556.SetVertexCount([2]);
Coordinate1557 := TCoordinateNode.Create;
Coordinate1557.X3DName := 'lc_l_carpometacarpal_1_0';
Coordinate1557.SetPoint([Vector3(0.1924,0.8472,-0.0534),Vector3(0.1951,0.8226,0.0246)]);
{ .SetCoord }
LineSet1556.Coord := Coordinate1557;
{ .SetGeometry }
Shape1552.Geometry := LineSet1556;
{ .AddChildren }
HAnimSegment1544.AddChildren([Shape1552]);
{ .AddChildren }
HAnimJoint1543.AddChildren([HAnimSegment1544]);
HAnimJoint1558 := THAnimJointNode.Create;
HAnimJoint1558.X3DName := 'hanim_l_metacarpophalangeal_1';
HAnimJoint1558.Center := Vector3(0.1951,0.8226,0.0246);
HAnimJoint1558.SetLlimit([-0.3491,-1.0472,-0.0175]);
HAnimJoint1558.SetUlimit([0.3491,0.3491,0.0175]);
HAnimSegment1559 := THAnimSegmentNode.Create;
HAnimSegment1559.X3DName := 'hanim_l_carpal_proximal_phalanx_1';
end;

procedure InitHAnimGimbalJointController22Part130;
begin

TouchSensor1560 := TTouchSensorNode.Create;
TouchSensor1560.X3DName := 'ts_l_metacarpophalangeal_1';
TouchSensor1560.Description := 'l_metacarpophalangeal_1';
{ .AddChildren }
HAnimSegment1559.AddChildren([TouchSensor1560]);
Transform1561 := TTransformNode.Create;
Transform1561.X3DName := 'jx_l_metacarpophalangeal_1';
Transform1561.Translation := Vector3(0.1951,0.8226,0.0246);
Transform1562 := TTransformNode.Create;
Shape1563 := TShapeNode.Create;
Appearance1564 := TAppearanceNode.Create;
Appearance1564.X3DName := 'ap_l_metacarpophalangeal_1';
Material1565 := TMaterialNode.Create;
Material1565.X3DName := 'm_l_metacarpophalangeal_1';
Material1565.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1564.Material := Material1565;
{ .SetAppearance }
Shape1563.Appearance := Appearance1564;
Sphere1566 := TSphereNode.Create;
Sphere1566.Radius := 0.03;
{ .SetGeometry }
Shape1563.Geometry := Sphere1566;
{ .AddChild }
Transform1562.AddChildren([Shape1563]);
{ .AddChildren }
Transform1561.AddChildren([Transform1562]);
{ .AddChildren }
HAnimSegment1559.AddChildren([Transform1561]);
Shape1567 := TShapeNode.Create;
Appearance1568 := TAppearanceNode.Create;
Appearance1568.X3DName := 'apl_l_metacarpophalangeal_1';
Material1569 := TMaterialNode.Create;
Material1569.X3DName := 'lm_l_metacarpophalangeal_1';
Material1569.DiffuseColor := Vector3(0,0,0);
Material1569.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1568.Material := Material1569;
LineProperties1570 := TLinePropertiesNode.Create;
LineProperties1570.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1568.LineProperties := LineProperties1570;
{ .SetAppearance }
Shape1567.Appearance := Appearance1568;
LineSet1571 := TLineSetNode.Create;
LineSet1571.SetVertexCount([2]);
Coordinate1572 := TCoordinateNode.Create;
Coordinate1572.X3DName := 'lc_l_metacarpophalangeal_1_0';
Coordinate1572.SetPoint([Vector3(0.1951,0.8226,0.0246),Vector3(0.1955,0.8159,0.0464)]);
{ .SetCoord }
LineSet1571.Coord := Coordinate1572;
end;

procedure InitHAnimGimbalJointController22Part131;
begin

{ .SetGeometry }
Shape1567.Geometry := LineSet1571;
{ .AddChildren }
HAnimSegment1559.AddChildren([Shape1567]);
{ .AddChildren }
HAnimJoint1558.AddChildren([HAnimSegment1559]);
HAnimJoint1573 := THAnimJointNode.Create;
HAnimJoint1573.X3DName := 'hanim_l_carpal_interphalangeal_1';
HAnimJoint1573.Center := Vector3(0.1955,0.8159,0.0464);
HAnimJoint1573.SetLlimit([-0.0175,-1.3963,-0.0175]);
HAnimJoint1573.SetUlimit([0.0175,0.1745,0.0175]);
HAnimSegment1574 := THAnimSegmentNode.Create;
HAnimSegment1574.X3DName := 'hanim_l_carpal_distal_phalanx_1';
Group1575 := TGroupNode.Create;
Group1575.X3DName := 'jg_l_carpal_interphalangeal_1';
TouchSensor1576 := TTouchSensorNode.Create;
TouchSensor1576.X3DName := 'ts_l_carpal_interphalangeal_1';
TouchSensor1576.Description := 'l_carpal_interphalangeal_1';
{ .AddChildren }
Group1575.AddChildren([TouchSensor1576]);
Transform1577 := TTransformNode.Create;
Transform1577.X3DName := 'jx_l_carpal_interphalangeal_1';
Transform1577.Translation := Vector3(0.1955,0.8159,0.0464);
Shape1578 := TShapeNode.Create;
Appearance1579 := TAppearanceNode.Create;
Appearance1579.X3DName := 'ap_l_carpal_interphalangeal_1';
Material1580 := TMaterialNode.Create;
Material1580.X3DName := 'm_l_carpal_interphalangeal_1';
Material1580.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1579.Material := Material1580;
{ .SetAppearance }
Shape1578.Appearance := Appearance1579;
Sphere1581 := TSphereNode.Create;
Sphere1581.Radius := 0.03;
{ .SetGeometry }
Shape1578.Geometry := Sphere1581;
{ .AddChild }
Transform1577.AddChildren([Shape1578]);
{ .AddChildren }
Group1575.AddChildren([Transform1577]);
Shape1582 := TShapeNode.Create;
Appearance1583 := TAppearanceNode.Create;
Appearance1583.X3DName := 'apl_l_carpal_interphalangeal_1';
Material1584 := TMaterialNode.Create;
Material1584.X3DName := 'lm_l_carpal_interphalangeal_1';
Material1584.DiffuseColor := Vector3(0,0,0);
Material1584.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1583.Material := Material1584;
end;

procedure InitHAnimGimbalJointController22Part132;
begin

LineProperties1585 := TLinePropertiesNode.Create;
LineProperties1585.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1583.LineProperties := LineProperties1585;
{ .SetAppearance }
Shape1582.Appearance := Appearance1583;
LineSet1586 := TLineSetNode.Create;
LineSet1586.SetVertexCount([2]);
Coordinate1587 := TCoordinateNode.Create;
Coordinate1587.X3DName := 'lc_l_carpal_interphalangeal_1_0';
Coordinate1587.SetPoint([Vector3(0.1955,0.8159,0.0464),Vector3(0.1959,0.8092,0.0682)]);
{ .SetCoord }
LineSet1586.Coord := Coordinate1587;
{ .SetGeometry }
Shape1582.Geometry := LineSet1586;
{ .AddChildren }
Group1575.AddChildren([Shape1582]);
{ .AddChildren }
HAnimSegment1574.AddChildren([Group1575]);
{ .AddChildren }
HAnimJoint1573.AddChildren([HAnimSegment1574]);
{ .AddChildren }
HAnimJoint1558.AddChildren([HAnimJoint1573]);
{ .AddChildren }
HAnimJoint1543.AddChildren([HAnimJoint1558]);
{ .AddChildren }
HAnimJoint1528.AddChildren([HAnimJoint1543]);
{ .AddChildren }
HAnimJoint1501.AddChildren([HAnimJoint1528]);
HAnimJoint1588 := THAnimJointNode.Create;
HAnimJoint1588.X3DName := 'hanim_l_midcarpal_2';
HAnimJoint1588.Center := Vector3(0.1811,0.6984,-0.0935);
HAnimJoint1588.SetLlimit([-0.1396,-0.0873,-0.1396]);
HAnimJoint1588.SetUlimit([0.1396,0.0873,0.1396]);
HAnimSegment1589 := THAnimSegmentNode.Create;
HAnimSegment1589.X3DName := 'hanim_l_trapezoid';
TouchSensor1590 := TTouchSensorNode.Create;
TouchSensor1590.X3DName := 'ts_l_midcarpal_2';
TouchSensor1590.Description := 'l_midcarpal_2';
{ .AddChildren }
HAnimSegment1589.AddChildren([TouchSensor1590]);
Transform1591 := TTransformNode.Create;
Transform1591.X3DName := 'jx_l_midcarpal_2';
Transform1591.Translation := Vector3(0.1811,0.6984,-0.0935);
Transform1592 := TTransformNode.Create;
Shape1593 := TShapeNode.Create;
Appearance1594 := TAppearanceNode.Create;
Appearance1594.X3DName := 'ap_l_midcarpal_2';
Material1595 := TMaterialNode.Create;
Material1595.X3DName := 'm_l_midcarpal_2';
Material1595.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1594.Material := Material1595;
end;

procedure InitHAnimGimbalJointController22Part133;
begin

{ .SetAppearance }
Shape1593.Appearance := Appearance1594;
Sphere1596 := TSphereNode.Create;
Sphere1596.Radius := 0.03;
{ .SetGeometry }
Shape1593.Geometry := Sphere1596;
{ .AddChild }
Transform1592.AddChildren([Shape1593]);
{ .AddChildren }
Transform1591.AddChildren([Transform1592]);
{ .AddChildren }
HAnimSegment1589.AddChildren([Transform1591]);
Shape1597 := TShapeNode.Create;
Appearance1598 := TAppearanceNode.Create;
Appearance1598.X3DName := 'apl_l_midcarpal_2';
Material1599 := TMaterialNode.Create;
Material1599.X3DName := 'lm_l_midcarpal_2';
Material1599.DiffuseColor := Vector3(0,0,0);
Material1599.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1598.Material := Material1599;
LineProperties1600 := TLinePropertiesNode.Create;
LineProperties1600.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1598.LineProperties := LineProperties1600;
{ .SetAppearance }
Shape1597.Appearance := Appearance1598;
LineSet1601 := TLineSetNode.Create;
LineSet1601.SetVertexCount([2]);
Coordinate1602 := TCoordinateNode.Create;
Coordinate1602.X3DName := 'lc_l_midcarpal_2_0';
Coordinate1602.SetPoint([Vector3(0.1811,0.6984,-0.0935),Vector3(0.1983,0.8024,-0.028)]);
{ .SetCoord }
LineSet1601.Coord := Coordinate1602;
{ .SetGeometry }
Shape1597.Geometry := LineSet1601;
{ .AddChildren }
HAnimSegment1589.AddChildren([Shape1597]);
{ .AddChildren }
HAnimJoint1588.AddChildren([HAnimSegment1589]);
HAnimJoint1603 := THAnimJointNode.Create;
HAnimJoint1603.X3DName := 'hanim_l_carpometacarpal_2';
HAnimJoint1603.Center := Vector3(0.1983,0.8024,-0.028);
HAnimJoint1603.SetLlimit([-0.0873,-0.0175,-0.1396]);
HAnimJoint1603.SetUlimit([0.0873,0.0175,0.1396]);
HAnimSegment1604 := THAnimSegmentNode.Create;
HAnimSegment1604.X3DName := 'hanim_l_metacarpal_2';
TouchSensor1605 := TTouchSensorNode.Create;
TouchSensor1605.X3DName := 'ts_l_carpometacarpal_2';
TouchSensor1605.Description := 'l_carpometacarpal_2';
{ .AddChildren }
HAnimSegment1604.AddChildren([TouchSensor1605]);
Transform1606 := TTransformNode.Create;
end;

procedure InitHAnimGimbalJointController22Part134;
begin

Transform1606.X3DName := 'jx_l_carpometacarpal_2';
Transform1606.Translation := Vector3(0.1983,0.8024,-0.028);
Transform1607 := TTransformNode.Create;
Shape1608 := TShapeNode.Create;
Appearance1609 := TAppearanceNode.Create;
Appearance1609.X3DName := 'ap_l_carpometacarpal_2';
Material1610 := TMaterialNode.Create;
Material1610.X3DName := 'm_l_carpometacarpal_2';
Material1610.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1609.Material := Material1610;
{ .SetAppearance }
Shape1608.Appearance := Appearance1609;
Sphere1611 := TSphereNode.Create;
Sphere1611.Radius := 0.03;
{ .SetGeometry }
Shape1608.Geometry := Sphere1611;
{ .AddChild }
Transform1607.AddChildren([Shape1608]);
{ .AddChildren }
Transform1606.AddChildren([Transform1607]);
{ .AddChildren }
HAnimSegment1604.AddChildren([Transform1606]);
Shape1612 := TShapeNode.Create;
Appearance1613 := TAppearanceNode.Create;
Appearance1613.X3DName := 'apl_l_carpometacarpal_2';
Material1614 := TMaterialNode.Create;
Material1614.X3DName := 'lm_l_carpometacarpal_2';
Material1614.DiffuseColor := Vector3(0,0,0);
Material1614.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1613.Material := Material1614;
LineProperties1615 := TLinePropertiesNode.Create;
LineProperties1615.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1613.LineProperties := LineProperties1615;
{ .SetAppearance }
Shape1612.Appearance := Appearance1613;
LineSet1616 := TLineSetNode.Create;
LineSet1616.SetVertexCount([2]);
Coordinate1617 := TCoordinateNode.Create;
Coordinate1617.X3DName := 'lc_l_carpometacarpal_2_0';
Coordinate1617.SetPoint([Vector3(0.1983,0.8024,-0.028),Vector3(0.1983,0.7815,-0.028)]);
{ .SetCoord }
LineSet1616.Coord := Coordinate1617;
{ .SetGeometry }
Shape1612.Geometry := LineSet1616;
{ .AddChildren }
HAnimSegment1604.AddChildren([Shape1612]);
{ .AddChildren }
HAnimJoint1603.AddChildren([HAnimSegment1604]);
HAnimJoint1618 := THAnimJointNode.Create;
HAnimJoint1618.X3DName := 'hanim_l_metacarpophalangeal_2';
end;

procedure InitHAnimGimbalJointController22Part135;
begin

HAnimJoint1618.Center := Vector3(0.1983,0.7815,-0.028);
HAnimJoint1618.SetLlimit([-0.2618,-0.0873,-1.5708]);
HAnimJoint1618.SetUlimit([0.2618,0.0873,0.5236]);
HAnimSegment1619 := THAnimSegmentNode.Create;
HAnimSegment1619.X3DName := 'hanim_l_carpal_proximal_phalanx_2';
TouchSensor1620 := TTouchSensorNode.Create;
TouchSensor1620.X3DName := 'ts_l_metacarpophalangeal_2';
TouchSensor1620.Description := 'l_metacarpophalangeal_2';
{ .AddChildren }
HAnimSegment1619.AddChildren([TouchSensor1620]);
Transform1621 := TTransformNode.Create;
Transform1621.X3DName := 'jx_l_metacarpophalangeal_2';
Transform1621.Translation := Vector3(0.1983,0.7815,-0.028);
Transform1622 := TTransformNode.Create;
Shape1623 := TShapeNode.Create;
Appearance1624 := TAppearanceNode.Create;
Appearance1624.X3DName := 'ap_l_metacarpophalangeal_2';
Material1625 := TMaterialNode.Create;
Material1625.X3DName := 'm_l_metacarpophalangeal_2';
Material1625.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1624.Material := Material1625;
{ .SetAppearance }
Shape1623.Appearance := Appearance1624;
Sphere1626 := TSphereNode.Create;
Sphere1626.Radius := 0.03;
{ .SetGeometry }
Shape1623.Geometry := Sphere1626;
{ .AddChild }
Transform1622.AddChildren([Shape1623]);
{ .AddChildren }
Transform1621.AddChildren([Transform1622]);
{ .AddChildren }
HAnimSegment1619.AddChildren([Transform1621]);
Shape1627 := TShapeNode.Create;
Appearance1628 := TAppearanceNode.Create;
Appearance1628.X3DName := 'apl_l_metacarpophalangeal_2';
Material1629 := TMaterialNode.Create;
Material1629.X3DName := 'lm_l_metacarpophalangeal_2';
Material1629.DiffuseColor := Vector3(0,0,0);
Material1629.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1628.Material := Material1629;
LineProperties1630 := TLinePropertiesNode.Create;
LineProperties1630.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1628.LineProperties := LineProperties1630;
{ .SetAppearance }
Shape1627.Appearance := Appearance1628;
LineSet1631 := TLineSetNode.Create;
end;

procedure InitHAnimGimbalJointController22Part136;
begin

LineSet1631.SetVertexCount([2]);
Coordinate1632 := TCoordinateNode.Create;
Coordinate1632.X3DName := 'lc_l_metacarpophalangeal_2_0';
Coordinate1632.SetPoint([Vector3(0.1983,0.7815,-0.028),Vector3(0.2017,0.7363,-0.0248)]);
{ .SetCoord }
LineSet1631.Coord := Coordinate1632;
{ .SetGeometry }
Shape1627.Geometry := LineSet1631;
{ .AddChildren }
HAnimSegment1619.AddChildren([Shape1627]);
{ .AddChildren }
HAnimJoint1618.AddChildren([HAnimSegment1619]);
HAnimJoint1633 := THAnimJointNode.Create;
HAnimJoint1633.X3DName := 'hanim_l_carpal_proximal_interphalangeal_2';
HAnimJoint1633.Center := Vector3(0.2017,0.7363,-0.0248);
HAnimJoint1633.SetLlimit([-0.0175,-0.0175,-1.9199]);
HAnimJoint1633.SetUlimit([0.0175,0.0175,0]);
HAnimSegment1634 := THAnimSegmentNode.Create;
HAnimSegment1634.X3DName := 'hanim_l_carpal_middle_phalanx_2';
TouchSensor1635 := TTouchSensorNode.Create;
TouchSensor1635.X3DName := 'ts_l_carpal_proximal_interphalangeal_2';
TouchSensor1635.Description := 'l_carpal_proximal_interphalangeal_2';
{ .AddChildren }
HAnimSegment1634.AddChildren([TouchSensor1635]);
Transform1636 := TTransformNode.Create;
Transform1636.X3DName := 'jx_l_carpal_proximal_interphalangeal_2';
Transform1636.Translation := Vector3(0.2017,0.7363,-0.0248);
Transform1637 := TTransformNode.Create;
Shape1638 := TShapeNode.Create;
Appearance1639 := TAppearanceNode.Create;
Appearance1639.X3DName := 'ap_l_carpal_proximal_interphalangeal_2';
Material1640 := TMaterialNode.Create;
Material1640.X3DName := 'm_l_carpal_proximal_interphalangeal_2';
Material1640.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1639.Material := Material1640;
{ .SetAppearance }
Shape1638.Appearance := Appearance1639;
Sphere1641 := TSphereNode.Create;
Sphere1641.Radius := 0.03;
{ .SetGeometry }
Shape1638.Geometry := Sphere1641;
{ .AddChild }
Transform1637.AddChildren([Shape1638]);
{ .AddChildren }
Transform1636.AddChildren([Transform1637]);
{ .AddChildren }
HAnimSegment1634.AddChildren([Transform1636]);
Shape1642 := TShapeNode.Create;
Appearance1643 := TAppearanceNode.Create;
Appearance1643.X3DName := 'apl_l_carpal_proximal_interphalangeal_2';
end;

procedure InitHAnimGimbalJointController22Part137;
begin

Material1644 := TMaterialNode.Create;
Material1644.X3DName := 'lm_l_carpal_proximal_interphalangeal_2';
Material1644.DiffuseColor := Vector3(0,0,0);
Material1644.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1643.Material := Material1644;
LineProperties1645 := TLinePropertiesNode.Create;
LineProperties1645.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1643.LineProperties := LineProperties1645;
{ .SetAppearance }
Shape1642.Appearance := Appearance1643;
LineSet1646 := TLineSetNode.Create;
LineSet1646.SetVertexCount([2]);
Coordinate1647 := TCoordinateNode.Create;
Coordinate1647.X3DName := 'lc_l_carpal_proximal_interphalangeal_2_0';
Coordinate1647.SetPoint([Vector3(0.2017,0.7363,-0.0248),Vector3(0.2028,0.7139,-0.0236)]);
{ .SetCoord }
LineSet1646.Coord := Coordinate1647;
{ .SetGeometry }
Shape1642.Geometry := LineSet1646;
{ .AddChildren }
HAnimSegment1634.AddChildren([Shape1642]);
{ .AddChildren }
HAnimJoint1633.AddChildren([HAnimSegment1634]);
HAnimJoint1648 := THAnimJointNode.Create;
HAnimJoint1648.X3DName := 'hanim_l_carpal_distal_interphalangeal_2';
HAnimJoint1648.Center := Vector3(0.2028,0.7139,-0.0236);
HAnimJoint1648.SetLlimit([-0.0175,-0.0175,-1.3963]);
HAnimJoint1648.SetUlimit([0.0175,0.0175,0]);
HAnimSegment1649 := THAnimSegmentNode.Create;
HAnimSegment1649.X3DName := 'hanim_l_carpal_distal_phalanx_2';
Group1650 := TGroupNode.Create;
Group1650.X3DName := 'jg_l_carpal_distal_interphalangeal_2';
TouchSensor1651 := TTouchSensorNode.Create;
TouchSensor1651.X3DName := 'ts_l_carpal_distal_interphalangeal_2';
TouchSensor1651.Description := 'l_carpal_distal_interphalangeal_2';
{ .AddChildren }
Group1650.AddChildren([TouchSensor1651]);
Transform1652 := TTransformNode.Create;
Transform1652.X3DName := 'jx_l_carpal_distal_interphalangeal_2';
Transform1652.Translation := Vector3(0.2028,0.7139,-0.0236);
Shape1653 := TShapeNode.Create;
Appearance1654 := TAppearanceNode.Create;
Appearance1654.X3DName := 'ap_l_carpal_distal_interphalangeal_2';
Material1655 := TMaterialNode.Create;
Material1655.X3DName := 'm_l_carpal_distal_interphalangeal_2';
Material1655.DiffuseColor := Vector3(0.35,0.55,0.95);
end;

procedure InitHAnimGimbalJointController22Part138;
begin

{ .SetMaterial }
Appearance1654.Material := Material1655;
{ .SetAppearance }
Shape1653.Appearance := Appearance1654;
Sphere1656 := TSphereNode.Create;
Sphere1656.Radius := 0.03;
{ .SetGeometry }
Shape1653.Geometry := Sphere1656;
{ .AddChild }
Transform1652.AddChildren([Shape1653]);
{ .AddChildren }
Group1650.AddChildren([Transform1652]);
Shape1657 := TShapeNode.Create;
Appearance1658 := TAppearanceNode.Create;
Appearance1658.X3DName := 'apl_l_carpal_distal_interphalangeal_2';
Material1659 := TMaterialNode.Create;
Material1659.X3DName := 'lm_l_carpal_distal_interphalangeal_2';
Material1659.DiffuseColor := Vector3(0,0,0);
Material1659.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1658.Material := Material1659;
LineProperties1660 := TLinePropertiesNode.Create;
LineProperties1660.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1658.LineProperties := LineProperties1660;
{ .SetAppearance }
Shape1657.Appearance := Appearance1658;
LineSet1661 := TLineSetNode.Create;
LineSet1661.SetVertexCount([2]);
Coordinate1662 := TCoordinateNode.Create;
Coordinate1662.X3DName := 'lc_l_carpal_distal_interphalangeal_2_0';
Coordinate1662.SetPoint([Vector3(0.2028,0.7139,-0.0236),Vector3(0.2039,0.6915,-0.0224)]);
{ .SetCoord }
LineSet1661.Coord := Coordinate1662;
{ .SetGeometry }
Shape1657.Geometry := LineSet1661;
{ .AddChildren }
Group1650.AddChildren([Shape1657]);
{ .AddChildren }
HAnimSegment1649.AddChildren([Group1650]);
{ .AddChildren }
HAnimJoint1648.AddChildren([HAnimSegment1649]);
{ .AddChildren }
HAnimJoint1633.AddChildren([HAnimJoint1648]);
{ .AddChildren }
HAnimJoint1618.AddChildren([HAnimJoint1633]);
{ .AddChildren }
HAnimJoint1603.AddChildren([HAnimJoint1618]);
{ .AddChildren }
HAnimJoint1588.AddChildren([HAnimJoint1603]);
{ .AddChildren }
HAnimJoint1501.AddChildren([HAnimJoint1588]);
HAnimJoint1663 := THAnimJointNode.Create;
HAnimJoint1663.X3DName := 'hanim_l_midcarpal_3';
HAnimJoint1663.Center := Vector3(0.1809,0.7,-0.1067);
HAnimJoint1663.SetLlimit([-0.1396,-0.0873,-0.1396]);
HAnimJoint1663.SetUlimit([0.1396,0.0873,0.1396]);
HAnimSegment1664 := THAnimSegmentNode.Create;
end;

procedure InitHAnimGimbalJointController22Part139;
begin

HAnimSegment1664.X3DName := 'hanim_l_capitate';
TouchSensor1665 := TTouchSensorNode.Create;
TouchSensor1665.X3DName := 'ts_l_midcarpal_3';
TouchSensor1665.Description := 'l_midcarpal_3';
{ .AddChildren }
HAnimSegment1664.AddChildren([TouchSensor1665]);
Transform1666 := TTransformNode.Create;
Transform1666.X3DName := 'jx_l_midcarpal_3';
Transform1666.Translation := Vector3(0.1809,0.7,-0.1067);
Transform1667 := TTransformNode.Create;
Shape1668 := TShapeNode.Create;
Appearance1669 := TAppearanceNode.Create;
Appearance1669.X3DName := 'ap_l_midcarpal_3';
Material1670 := TMaterialNode.Create;
Material1670.X3DName := 'm_l_midcarpal_3';
Material1670.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1669.Material := Material1670;
{ .SetAppearance }
Shape1668.Appearance := Appearance1669;
Sphere1671 := TSphereNode.Create;
Sphere1671.Radius := 0.03;
{ .SetGeometry }
Shape1668.Geometry := Sphere1671;
{ .AddChild }
Transform1667.AddChildren([Shape1668]);
{ .AddChildren }
Transform1666.AddChildren([Transform1667]);
{ .AddChildren }
HAnimSegment1664.AddChildren([Transform1666]);
Shape1672 := TShapeNode.Create;
Appearance1673 := TAppearanceNode.Create;
Appearance1673.X3DName := 'apl_l_midcarpal_3';
Material1674 := TMaterialNode.Create;
Material1674.X3DName := 'lm_l_midcarpal_3';
Material1674.DiffuseColor := Vector3(0,0,0);
Material1674.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1673.Material := Material1674;
LineProperties1675 := TLinePropertiesNode.Create;
LineProperties1675.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1673.LineProperties := LineProperties1675;
{ .SetAppearance }
Shape1672.Appearance := Appearance1673;
LineSet1676 := TLineSetNode.Create;
LineSet1676.SetVertexCount([2]);
Coordinate1677 := TCoordinateNode.Create;
Coordinate1677.X3DName := 'lc_l_midcarpal_3_0';
Coordinate1677.SetPoint([Vector3(0.1809,0.7,-0.1067),Vector3(0.1987,0.8029,-0.053)]);
end;

procedure InitHAnimGimbalJointController22Part140;
begin

{ .SetCoord }
LineSet1676.Coord := Coordinate1677;
{ .SetGeometry }
Shape1672.Geometry := LineSet1676;
{ .AddChildren }
HAnimSegment1664.AddChildren([Shape1672]);
{ .AddChildren }
HAnimJoint1663.AddChildren([HAnimSegment1664]);
HAnimJoint1678 := THAnimJointNode.Create;
HAnimJoint1678.X3DName := 'hanim_l_carpometacarpal_3';
HAnimJoint1678.Center := Vector3(0.1987,0.8029,-0.053);
HAnimJoint1678.SetLlimit([-0.0873,-0.0175,-0.1396]);
HAnimJoint1678.SetUlimit([0.0873,0.0175,0.1396]);
HAnimSegment1679 := THAnimSegmentNode.Create;
HAnimSegment1679.X3DName := 'hanim_l_metacarpal_3';
TouchSensor1680 := TTouchSensorNode.Create;
TouchSensor1680.X3DName := 'ts_l_carpometacarpal_3';
TouchSensor1680.Description := 'l_carpometacarpal_3';
{ .AddChildren }
HAnimSegment1679.AddChildren([TouchSensor1680]);
Transform1681 := TTransformNode.Create;
Transform1681.X3DName := 'jx_l_carpometacarpal_3';
Transform1681.Translation := Vector3(0.1987,0.8029,-0.053);
Transform1682 := TTransformNode.Create;
Shape1683 := TShapeNode.Create;
Appearance1684 := TAppearanceNode.Create;
Appearance1684.X3DName := 'ap_l_carpometacarpal_3';
Material1685 := TMaterialNode.Create;
Material1685.X3DName := 'm_l_carpometacarpal_3';
Material1685.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1684.Material := Material1685;
{ .SetAppearance }
Shape1683.Appearance := Appearance1684;
Sphere1686 := TSphereNode.Create;
Sphere1686.Radius := 0.03;
{ .SetGeometry }
Shape1683.Geometry := Sphere1686;
{ .AddChild }
Transform1682.AddChildren([Shape1683]);
{ .AddChildren }
Transform1681.AddChildren([Transform1682]);
{ .AddChildren }
HAnimSegment1679.AddChildren([Transform1681]);
Shape1687 := TShapeNode.Create;
Appearance1688 := TAppearanceNode.Create;
Appearance1688.X3DName := 'apl_l_carpometacarpal_3';
Material1689 := TMaterialNode.Create;
Material1689.X3DName := 'lm_l_carpometacarpal_3';
Material1689.DiffuseColor := Vector3(0,0,0);
Material1689.EmissiveColor := Vector3(0.35,0.55,0.95);
end;

procedure InitHAnimGimbalJointController22Part141;
begin

{ .SetMaterial }
Appearance1688.Material := Material1689;
LineProperties1690 := TLinePropertiesNode.Create;
LineProperties1690.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1688.LineProperties := LineProperties1690;
{ .SetAppearance }
Shape1687.Appearance := Appearance1688;
LineSet1691 := TLineSetNode.Create;
LineSet1691.SetVertexCount([2]);
Coordinate1692 := TCoordinateNode.Create;
Coordinate1692.X3DName := 'lc_l_carpometacarpal_3_0';
Coordinate1692.SetPoint([Vector3(0.1987,0.8029,-0.053),Vector3(0.1987,0.7818,-0.053)]);
{ .SetCoord }
LineSet1691.Coord := Coordinate1692;
{ .SetGeometry }
Shape1687.Geometry := LineSet1691;
{ .AddChildren }
HAnimSegment1679.AddChildren([Shape1687]);
{ .AddChildren }
HAnimJoint1678.AddChildren([HAnimSegment1679]);
HAnimJoint1693 := THAnimJointNode.Create;
HAnimJoint1693.X3DName := 'hanim_l_metacarpophalangeal_3';
HAnimJoint1693.Center := Vector3(0.1987,0.7818,-0.053);
HAnimJoint1693.SetLlimit([-0.2618,-0.0873,-1.5708]);
HAnimJoint1693.SetUlimit([0.2618,0.0873,0.5236]);
HAnimSegment1694 := THAnimSegmentNode.Create;
HAnimSegment1694.X3DName := 'hanim_l_carpal_proximal_phalanx_3';
TouchSensor1695 := TTouchSensorNode.Create;
TouchSensor1695.X3DName := 'ts_l_metacarpophalangeal_3';
TouchSensor1695.Description := 'l_metacarpophalangeal_3';
{ .AddChildren }
HAnimSegment1694.AddChildren([TouchSensor1695]);
Transform1696 := TTransformNode.Create;
Transform1696.X3DName := 'jx_l_metacarpophalangeal_3';
Transform1696.Translation := Vector3(0.1987,0.7818,-0.053);
Transform1697 := TTransformNode.Create;
Shape1698 := TShapeNode.Create;
Appearance1699 := TAppearanceNode.Create;
Appearance1699.X3DName := 'ap_l_metacarpophalangeal_3';
Material1700 := TMaterialNode.Create;
Material1700.X3DName := 'm_l_metacarpophalangeal_3';
Material1700.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1699.Material := Material1700;
{ .SetAppearance }
Shape1698.Appearance := Appearance1699;
Sphere1701 := TSphereNode.Create;
Sphere1701.Radius := 0.03;
{ .SetGeometry }
Shape1698.Geometry := Sphere1701;
end;

procedure InitHAnimGimbalJointController22Part142;
begin

{ .AddChild }
Transform1697.AddChildren([Shape1698]);
{ .AddChildren }
Transform1696.AddChildren([Transform1697]);
{ .AddChildren }
HAnimSegment1694.AddChildren([Transform1696]);
Shape1702 := TShapeNode.Create;
Appearance1703 := TAppearanceNode.Create;
Appearance1703.X3DName := 'apl_l_metacarpophalangeal_3';
Material1704 := TMaterialNode.Create;
Material1704.X3DName := 'lm_l_metacarpophalangeal_3';
Material1704.DiffuseColor := Vector3(0,0,0);
Material1704.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1703.Material := Material1704;
LineProperties1705 := TLinePropertiesNode.Create;
LineProperties1705.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1703.LineProperties := LineProperties1705;
{ .SetAppearance }
Shape1702.Appearance := Appearance1703;
LineSet1706 := TLineSetNode.Create;
LineSet1706.SetVertexCount([2]);
Coordinate1707 := TCoordinateNode.Create;
Coordinate1707.X3DName := 'lc_l_metacarpophalangeal_3_0';
Coordinate1707.SetPoint([Vector3(0.1987,0.7818,-0.053),Vector3(0.2013,0.7273,-0.0503)]);
{ .SetCoord }
LineSet1706.Coord := Coordinate1707;
{ .SetGeometry }
Shape1702.Geometry := LineSet1706;
{ .AddChildren }
HAnimSegment1694.AddChildren([Shape1702]);
{ .AddChildren }
HAnimJoint1693.AddChildren([HAnimSegment1694]);
HAnimJoint1708 := THAnimJointNode.Create;
HAnimJoint1708.X3DName := 'hanim_l_carpal_proximal_interphalangeal_3';
HAnimJoint1708.Center := Vector3(0.2013,0.7273,-0.0503);
HAnimJoint1708.SetLlimit([-0.0175,-0.0175,-1.9199]);
HAnimJoint1708.SetUlimit([0.0175,0.0175,0]);
HAnimSegment1709 := THAnimSegmentNode.Create;
HAnimSegment1709.X3DName := 'hanim_l_carpal_middle_phalanx_3';
TouchSensor1710 := TTouchSensorNode.Create;
TouchSensor1710.X3DName := 'ts_l_carpal_proximal_interphalangeal_3';
TouchSensor1710.Description := 'l_carpal_proximal_interphalangeal_3';
{ .AddChildren }
HAnimSegment1709.AddChildren([TouchSensor1710]);
Transform1711 := TTransformNode.Create;
Transform1711.X3DName := 'jx_l_carpal_proximal_interphalangeal_3';
Transform1711.Translation := Vector3(0.2013,0.7273,-0.0503);
Transform1712 := TTransformNode.Create;
Shape1713 := TShapeNode.Create;
end;

procedure InitHAnimGimbalJointController22Part143;
begin

Appearance1714 := TAppearanceNode.Create;
Appearance1714.X3DName := 'ap_l_carpal_proximal_interphalangeal_3';
Material1715 := TMaterialNode.Create;
Material1715.X3DName := 'm_l_carpal_proximal_interphalangeal_3';
Material1715.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1714.Material := Material1715;
{ .SetAppearance }
Shape1713.Appearance := Appearance1714;
Sphere1716 := TSphereNode.Create;
Sphere1716.Radius := 0.03;
{ .SetGeometry }
Shape1713.Geometry := Sphere1716;
{ .AddChild }
Transform1712.AddChildren([Shape1713]);
{ .AddChildren }
Transform1711.AddChildren([Transform1712]);
{ .AddChildren }
HAnimSegment1709.AddChildren([Transform1711]);
Shape1717 := TShapeNode.Create;
Appearance1718 := TAppearanceNode.Create;
Appearance1718.X3DName := 'apl_l_carpal_proximal_interphalangeal_3';
Material1719 := TMaterialNode.Create;
Material1719.X3DName := 'lm_l_carpal_proximal_interphalangeal_3';
Material1719.DiffuseColor := Vector3(0,0,0);
Material1719.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1718.Material := Material1719;
LineProperties1720 := TLinePropertiesNode.Create;
LineProperties1720.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1718.LineProperties := LineProperties1720;
{ .SetAppearance }
Shape1717.Appearance := Appearance1718;
LineSet1721 := TLineSetNode.Create;
LineSet1721.SetVertexCount([2]);
Coordinate1722 := TCoordinateNode.Create;
Coordinate1722.X3DName := 'lc_l_carpal_proximal_interphalangeal_3_0';
Coordinate1722.SetPoint([Vector3(0.2013,0.7273,-0.0503),Vector3(0.2026,0.7011,-0.0494)]);
{ .SetCoord }
LineSet1721.Coord := Coordinate1722;
{ .SetGeometry }
Shape1717.Geometry := LineSet1721;
{ .AddChildren }
HAnimSegment1709.AddChildren([Shape1717]);
{ .AddChildren }
HAnimJoint1708.AddChildren([HAnimSegment1709]);
HAnimJoint1723 := THAnimJointNode.Create;
HAnimJoint1723.X3DName := 'hanim_l_carpal_distal_interphalangeal_3';
HAnimJoint1723.Center := Vector3(0.2026,0.7011,-0.0494);
HAnimJoint1723.SetLlimit([-0.0175,-0.0175,-1.3963]);
HAnimJoint1723.SetUlimit([0.0175,0.0175,0]);
HAnimSegment1724 := THAnimSegmentNode.Create;
end;

procedure InitHAnimGimbalJointController22Part144;
begin

HAnimSegment1724.X3DName := 'hanim_l_carpal_distal_phalanx_3';
Group1725 := TGroupNode.Create;
Group1725.X3DName := 'jg_l_carpal_distal_interphalangeal_3';
TouchSensor1726 := TTouchSensorNode.Create;
TouchSensor1726.X3DName := 'ts_l_carpal_distal_interphalangeal_3';
TouchSensor1726.Description := 'l_carpal_distal_interphalangeal_3';
{ .AddChildren }
Group1725.AddChildren([TouchSensor1726]);
Transform1727 := TTransformNode.Create;
Transform1727.X3DName := 'jx_l_carpal_distal_interphalangeal_3';
Transform1727.Translation := Vector3(0.2026,0.7011,-0.0494);
Shape1728 := TShapeNode.Create;
Appearance1729 := TAppearanceNode.Create;
Appearance1729.X3DName := 'ap_l_carpal_distal_interphalangeal_3';
Material1730 := TMaterialNode.Create;
Material1730.X3DName := 'm_l_carpal_distal_interphalangeal_3';
Material1730.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1729.Material := Material1730;
{ .SetAppearance }
Shape1728.Appearance := Appearance1729;
Sphere1731 := TSphereNode.Create;
Sphere1731.Radius := 0.03;
{ .SetGeometry }
Shape1728.Geometry := Sphere1731;
{ .AddChild }
Transform1727.AddChildren([Shape1728]);
{ .AddChildren }
Group1725.AddChildren([Transform1727]);
Shape1732 := TShapeNode.Create;
Appearance1733 := TAppearanceNode.Create;
Appearance1733.X3DName := 'apl_l_carpal_distal_interphalangeal_3';
Material1734 := TMaterialNode.Create;
Material1734.X3DName := 'lm_l_carpal_distal_interphalangeal_3';
Material1734.DiffuseColor := Vector3(0,0,0);
Material1734.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1733.Material := Material1734;
LineProperties1735 := TLinePropertiesNode.Create;
LineProperties1735.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1733.LineProperties := LineProperties1735;
{ .SetAppearance }
Shape1732.Appearance := Appearance1733;
LineSet1736 := TLineSetNode.Create;
LineSet1736.SetVertexCount([2]);
Coordinate1737 := TCoordinateNode.Create;
Coordinate1737.X3DName := 'lc_l_carpal_distal_interphalangeal_3_0';
Coordinate1737.SetPoint([Vector3(0.2026,0.7011,-0.0494),Vector3(0.2039,0.6749,-0.0485)]);
end;

procedure InitHAnimGimbalJointController22Part145;
begin

{ .SetCoord }
LineSet1736.Coord := Coordinate1737;
{ .SetGeometry }
Shape1732.Geometry := LineSet1736;
{ .AddChildren }
Group1725.AddChildren([Shape1732]);
{ .AddChildren }
HAnimSegment1724.AddChildren([Group1725]);
{ .AddChildren }
HAnimJoint1723.AddChildren([HAnimSegment1724]);
{ .AddChildren }
HAnimJoint1708.AddChildren([HAnimJoint1723]);
{ .AddChildren }
HAnimJoint1693.AddChildren([HAnimJoint1708]);
{ .AddChildren }
HAnimJoint1678.AddChildren([HAnimJoint1693]);
{ .AddChildren }
HAnimJoint1663.AddChildren([HAnimJoint1678]);
{ .AddChildren }
HAnimJoint1501.AddChildren([HAnimJoint1663]);
HAnimJoint1738 := THAnimJointNode.Create;
HAnimJoint1738.X3DName := 'hanim_l_midcarpal_4_5';
HAnimJoint1738.Center := Vector3(0.1809,0.6973,-0.1276);
HAnimJoint1738.SetLlimit([-0.1396,-0.0873,-0.1396]);
HAnimJoint1738.SetUlimit([0.1396,0.0873,0.1396]);
HAnimSegment1739 := THAnimSegmentNode.Create;
HAnimSegment1739.X3DName := 'hanim_l_hamate';
TouchSensor1740 := TTouchSensorNode.Create;
TouchSensor1740.X3DName := 'ts_l_midcarpal_4_5';
TouchSensor1740.Description := 'l_midcarpal_4_5';
{ .AddChildren }
HAnimSegment1739.AddChildren([TouchSensor1740]);
Transform1741 := TTransformNode.Create;
Transform1741.X3DName := 'jx_l_midcarpal_4_5';
Transform1741.Translation := Vector3(0.1809,0.6973,-0.1276);
Transform1742 := TTransformNode.Create;
Shape1743 := TShapeNode.Create;
Appearance1744 := TAppearanceNode.Create;
Appearance1744.X3DName := 'ap_l_midcarpal_4_5';
Material1745 := TMaterialNode.Create;
Material1745.X3DName := 'm_l_midcarpal_4_5';
Material1745.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1744.Material := Material1745;
{ .SetAppearance }
Shape1743.Appearance := Appearance1744;
Sphere1746 := TSphereNode.Create;
Sphere1746.Radius := 0.03;
{ .SetGeometry }
Shape1743.Geometry := Sphere1746;
{ .AddChild }
Transform1742.AddChildren([Shape1743]);
{ .AddChildren }
Transform1741.AddChildren([Transform1742]);
{ .AddChildren }
HAnimSegment1739.AddChildren([Transform1741]);
Shape1747 := TShapeNode.Create;
end;

procedure InitHAnimGimbalJointController22Part146;
begin

Appearance1748 := TAppearanceNode.Create;
Appearance1748.X3DName := 'apl_l_midcarpal_4_5';
Material1749 := TMaterialNode.Create;
Material1749.X3DName := 'lm_l_midcarpal_4_5';
Material1749.DiffuseColor := Vector3(0,0,0);
Material1749.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1748.Material := Material1749;
LineProperties1750 := TLinePropertiesNode.Create;
LineProperties1750.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1748.LineProperties := LineProperties1750;
{ .SetAppearance }
Shape1747.Appearance := Appearance1748;
LineSet1751 := TLineSetNode.Create;
LineSet1751.SetVertexCount([2]);
Coordinate1752 := TCoordinateNode.Create;
Coordinate1752.X3DName := 'lc_l_midcarpal_4_5_0';
Coordinate1752.SetPoint([Vector3(0.1809,0.6973,-0.1276),Vector3(0.1956,0.8019,-0.0794)]);
{ .SetCoord }
LineSet1751.Coord := Coordinate1752;
{ .SetGeometry }
Shape1747.Geometry := LineSet1751;
{ .AddChildren }
HAnimSegment1739.AddChildren([Shape1747]);
Shape1753 := TShapeNode.Create;
{ .SetAppearance }
Shape1753.Appearance := Appearance1748;
LineSet1755 := TLineSetNode.Create;
LineSet1755.SetVertexCount([2]);
Coordinate1756 := TCoordinateNode.Create;
Coordinate1756.X3DName := 'lc_l_midcarpal_4_5_1';
Coordinate1756.SetPoint([Vector3(0.1809,0.6973,-0.1276),Vector3(0.1925,0.8066,-0.1036)]);
{ .SetCoord }
LineSet1755.Coord := Coordinate1756;
{ .SetGeometry }
Shape1753.Geometry := LineSet1755;
{ .AddChildren }
HAnimSegment1739.AddChildren([Shape1753]);
{ .AddChildren }
HAnimJoint1738.AddChildren([HAnimSegment1739]);
HAnimJoint1757 := THAnimJointNode.Create;
HAnimJoint1757.X3DName := 'hanim_l_carpometacarpal_4';
HAnimJoint1757.Center := Vector3(0.1956,0.8019,-0.0794);
HAnimJoint1757.SetLlimit([-0.0873,-0.0175,-0.1396]);
HAnimJoint1757.SetUlimit([0.0873,0.0175,0.1396]);
HAnimSegment1758 := THAnimSegmentNode.Create;
HAnimSegment1758.X3DName := 'hanim_l_metacarpal_4';
TouchSensor1759 := TTouchSensorNode.Create;
TouchSensor1759.X3DName := 'ts_l_carpometacarpal_4';
TouchSensor1759.Description := 'l_carpometacarpal_4';
end;

procedure InitHAnimGimbalJointController22Part147;
begin

{ .AddChildren }
HAnimSegment1758.AddChildren([TouchSensor1759]);
Transform1760 := TTransformNode.Create;
Transform1760.X3DName := 'jx_l_carpometacarpal_4';
Transform1760.Translation := Vector3(0.1956,0.8019,-0.0794);
Transform1761 := TTransformNode.Create;
Shape1762 := TShapeNode.Create;
Appearance1763 := TAppearanceNode.Create;
Appearance1763.X3DName := 'ap_l_carpometacarpal_4';
Material1764 := TMaterialNode.Create;
Material1764.X3DName := 'm_l_carpometacarpal_4';
Material1764.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1763.Material := Material1764;
{ .SetAppearance }
Shape1762.Appearance := Appearance1763;
Sphere1765 := TSphereNode.Create;
Sphere1765.Radius := 0.03;
{ .SetGeometry }
Shape1762.Geometry := Sphere1765;
{ .AddChild }
Transform1761.AddChildren([Shape1762]);
{ .AddChildren }
Transform1760.AddChildren([Transform1761]);
{ .AddChildren }
HAnimSegment1758.AddChildren([Transform1760]);
Shape1766 := TShapeNode.Create;
Appearance1767 := TAppearanceNode.Create;
Appearance1767.X3DName := 'apl_l_carpometacarpal_4';
Material1768 := TMaterialNode.Create;
Material1768.X3DName := 'lm_l_carpometacarpal_4';
Material1768.DiffuseColor := Vector3(0,0,0);
Material1768.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1767.Material := Material1768;
LineProperties1769 := TLinePropertiesNode.Create;
LineProperties1769.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1767.LineProperties := LineProperties1769;
{ .SetAppearance }
Shape1766.Appearance := Appearance1767;
LineSet1770 := TLineSetNode.Create;
LineSet1770.SetVertexCount([2]);
Coordinate1771 := TCoordinateNode.Create;
Coordinate1771.X3DName := 'lc_l_carpometacarpal_4_0';
Coordinate1771.SetPoint([Vector3(0.1956,0.8019,-0.0794),Vector3(0.1956,0.7815,-0.0794)]);
{ .SetCoord }
LineSet1770.Coord := Coordinate1771;
{ .SetGeometry }
Shape1766.Geometry := LineSet1770;
{ .AddChildren }
HAnimSegment1758.AddChildren([Shape1766]);
{ .AddChildren }
HAnimJoint1757.AddChildren([HAnimSegment1758]);
end;

procedure InitHAnimGimbalJointController22Part148;
begin

HAnimJoint1772 := THAnimJointNode.Create;
HAnimJoint1772.X3DName := 'hanim_l_metacarpophalangeal_4';
HAnimJoint1772.Center := Vector3(0.1956,0.7815,-0.0794);
HAnimJoint1772.SetLlimit([-0.2618,-0.0873,-1.5708]);
HAnimJoint1772.SetUlimit([0.2618,0.0873,0.5236]);
HAnimSegment1773 := THAnimSegmentNode.Create;
HAnimSegment1773.X3DName := 'hanim_l_carpal_proximal_phalanx_4';
TouchSensor1774 := TTouchSensorNode.Create;
TouchSensor1774.X3DName := 'ts_l_metacarpophalangeal_4';
TouchSensor1774.Description := 'l_metacarpophalangeal_4';
{ .AddChildren }
HAnimSegment1773.AddChildren([TouchSensor1774]);
Transform1775 := TTransformNode.Create;
Transform1775.X3DName := 'jx_l_metacarpophalangeal_4';
Transform1775.Translation := Vector3(0.1956,0.7815,-0.0794);
Transform1776 := TTransformNode.Create;
Shape1777 := TShapeNode.Create;
Appearance1778 := TAppearanceNode.Create;
Appearance1778.X3DName := 'ap_l_metacarpophalangeal_4';
Material1779 := TMaterialNode.Create;
Material1779.X3DName := 'm_l_metacarpophalangeal_4';
Material1779.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1778.Material := Material1779;
{ .SetAppearance }
Shape1777.Appearance := Appearance1778;
Sphere1780 := TSphereNode.Create;
Sphere1780.Radius := 0.03;
{ .SetGeometry }
Shape1777.Geometry := Sphere1780;
{ .AddChild }
Transform1776.AddChildren([Shape1777]);
{ .AddChildren }
Transform1775.AddChildren([Transform1776]);
{ .AddChildren }
HAnimSegment1773.AddChildren([Transform1775]);
Shape1781 := TShapeNode.Create;
Appearance1782 := TAppearanceNode.Create;
Appearance1782.X3DName := 'apl_l_metacarpophalangeal_4';
Material1783 := TMaterialNode.Create;
Material1783.X3DName := 'lm_l_metacarpophalangeal_4';
Material1783.DiffuseColor := Vector3(0,0,0);
Material1783.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1782.Material := Material1783;
LineProperties1784 := TLinePropertiesNode.Create;
LineProperties1784.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1782.LineProperties := LineProperties1784;
end;

procedure InitHAnimGimbalJointController22Part149;
begin

{ .SetAppearance }
Shape1781.Appearance := Appearance1782;
LineSet1785 := TLineSetNode.Create;
LineSet1785.SetVertexCount([2]);
Coordinate1786 := TCoordinateNode.Create;
Coordinate1786.X3DName := 'lc_l_metacarpophalangeal_4_0';
Coordinate1786.SetPoint([Vector3(0.1956,0.7815,-0.0794),Vector3(0.1973,0.7287,-0.0777)]);
{ .SetCoord }
LineSet1785.Coord := Coordinate1786;
{ .SetGeometry }
Shape1781.Geometry := LineSet1785;
{ .AddChildren }
HAnimSegment1773.AddChildren([Shape1781]);
{ .AddChildren }
HAnimJoint1772.AddChildren([HAnimSegment1773]);
HAnimJoint1787 := THAnimJointNode.Create;
HAnimJoint1787.X3DName := 'hanim_l_carpal_proximal_interphalangeal_4';
HAnimJoint1787.Center := Vector3(0.1973,0.7287,-0.0777);
HAnimJoint1787.SetLlimit([-0.0175,-0.0175,-1.9199]);
HAnimJoint1787.SetUlimit([0.0175,0.0175,0]);
HAnimSegment1788 := THAnimSegmentNode.Create;
HAnimSegment1788.X3DName := 'hanim_l_carpal_middle_phalanx_4';
TouchSensor1789 := TTouchSensorNode.Create;
TouchSensor1789.X3DName := 'ts_l_carpal_proximal_interphalangeal_4';
TouchSensor1789.Description := 'l_carpal_proximal_interphalangeal_4';
{ .AddChildren }
HAnimSegment1788.AddChildren([TouchSensor1789]);
Transform1790 := TTransformNode.Create;
Transform1790.X3DName := 'jx_l_carpal_proximal_interphalangeal_4';
Transform1790.Translation := Vector3(0.1973,0.7287,-0.0777);
Transform1791 := TTransformNode.Create;
Shape1792 := TShapeNode.Create;
Appearance1793 := TAppearanceNode.Create;
Appearance1793.X3DName := 'ap_l_carpal_proximal_interphalangeal_4';
Material1794 := TMaterialNode.Create;
Material1794.X3DName := 'm_l_carpal_proximal_interphalangeal_4';
Material1794.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1793.Material := Material1794;
{ .SetAppearance }
Shape1792.Appearance := Appearance1793;
Sphere1795 := TSphereNode.Create;
Sphere1795.Radius := 0.03;
{ .SetGeometry }
Shape1792.Geometry := Sphere1795;
{ .AddChild }
Transform1791.AddChildren([Shape1792]);
{ .AddChildren }
Transform1790.AddChildren([Transform1791]);
{ .AddChildren }
HAnimSegment1788.AddChildren([Transform1790]);
Shape1796 := TShapeNode.Create;
end;

procedure InitHAnimGimbalJointController22Part150;
begin

Appearance1797 := TAppearanceNode.Create;
Appearance1797.X3DName := 'apl_l_carpal_proximal_interphalangeal_4';
Material1798 := TMaterialNode.Create;
Material1798.X3DName := 'lm_l_carpal_proximal_interphalangeal_4';
Material1798.DiffuseColor := Vector3(0,0,0);
Material1798.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1797.Material := Material1798;
LineProperties1799 := TLinePropertiesNode.Create;
LineProperties1799.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1797.LineProperties := LineProperties1799;
{ .SetAppearance }
Shape1796.Appearance := Appearance1797;
LineSet1800 := TLineSetNode.Create;
LineSet1800.SetVertexCount([2]);
Coordinate1801 := TCoordinateNode.Create;
Coordinate1801.X3DName := 'lc_l_carpal_proximal_interphalangeal_4_0';
Coordinate1801.SetPoint([Vector3(0.1973,0.7287,-0.0777),Vector3(0.1983,0.7045,-0.0767)]);
{ .SetCoord }
LineSet1800.Coord := Coordinate1801;
{ .SetGeometry }
Shape1796.Geometry := LineSet1800;
{ .AddChildren }
HAnimSegment1788.AddChildren([Shape1796]);
{ .AddChildren }
HAnimJoint1787.AddChildren([HAnimSegment1788]);
HAnimJoint1802 := THAnimJointNode.Create;
HAnimJoint1802.X3DName := 'hanim_l_carpal_distal_interphalangeal_4';
HAnimJoint1802.Center := Vector3(0.1983,0.7045,-0.0767);
HAnimJoint1802.SetLlimit([-0.0175,-0.0175,-1.3963]);
HAnimJoint1802.SetUlimit([0.0175,0.0175,0]);
HAnimSegment1803 := THAnimSegmentNode.Create;
HAnimSegment1803.X3DName := 'hanim_l_carpal_distal_phalanx_4';
Group1804 := TGroupNode.Create;
Group1804.X3DName := 'jg_l_carpal_distal_interphalangeal_4';
TouchSensor1805 := TTouchSensorNode.Create;
TouchSensor1805.X3DName := 'ts_l_carpal_distal_interphalangeal_4';
TouchSensor1805.Description := 'l_carpal_distal_interphalangeal_4';
{ .AddChildren }
Group1804.AddChildren([TouchSensor1805]);
Transform1806 := TTransformNode.Create;
Transform1806.X3DName := 'jx_l_carpal_distal_interphalangeal_4';
Transform1806.Translation := Vector3(0.1983,0.7045,-0.0767);
Shape1807 := TShapeNode.Create;
Appearance1808 := TAppearanceNode.Create;
Appearance1808.X3DName := 'ap_l_carpal_distal_interphalangeal_4';
Material1809 := TMaterialNode.Create;
end;

procedure InitHAnimGimbalJointController22Part151;
begin

Material1809.X3DName := 'm_l_carpal_distal_interphalangeal_4';
Material1809.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1808.Material := Material1809;
{ .SetAppearance }
Shape1807.Appearance := Appearance1808;
Sphere1810 := TSphereNode.Create;
Sphere1810.Radius := 0.03;
{ .SetGeometry }
Shape1807.Geometry := Sphere1810;
{ .AddChild }
Transform1806.AddChildren([Shape1807]);
{ .AddChildren }
Group1804.AddChildren([Transform1806]);
Shape1811 := TShapeNode.Create;
Appearance1812 := TAppearanceNode.Create;
Appearance1812.X3DName := 'apl_l_carpal_distal_interphalangeal_4';
Material1813 := TMaterialNode.Create;
Material1813.X3DName := 'lm_l_carpal_distal_interphalangeal_4';
Material1813.DiffuseColor := Vector3(0,0,0);
Material1813.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1812.Material := Material1813;
LineProperties1814 := TLinePropertiesNode.Create;
LineProperties1814.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1812.LineProperties := LineProperties1814;
{ .SetAppearance }
Shape1811.Appearance := Appearance1812;
LineSet1815 := TLineSetNode.Create;
LineSet1815.SetVertexCount([2]);
Coordinate1816 := TCoordinateNode.Create;
Coordinate1816.X3DName := 'lc_l_carpal_distal_interphalangeal_4_0';
Coordinate1816.SetPoint([Vector3(0.1983,0.7045,-0.0767),Vector3(0.1993,0.6803,-0.0757)]);
{ .SetCoord }
LineSet1815.Coord := Coordinate1816;
{ .SetGeometry }
Shape1811.Geometry := LineSet1815;
{ .AddChildren }
Group1804.AddChildren([Shape1811]);
{ .AddChildren }
HAnimSegment1803.AddChildren([Group1804]);
{ .AddChildren }
HAnimJoint1802.AddChildren([HAnimSegment1803]);
{ .AddChildren }
HAnimJoint1787.AddChildren([HAnimJoint1802]);
{ .AddChildren }
HAnimJoint1772.AddChildren([HAnimJoint1787]);
{ .AddChildren }
HAnimJoint1757.AddChildren([HAnimJoint1772]);
{ .AddChildren }
HAnimJoint1738.AddChildren([HAnimJoint1757]);
HAnimJoint1817 := THAnimJointNode.Create;
HAnimJoint1817.X3DName := 'hanim_l_carpometacarpal_5';
HAnimJoint1817.Center := Vector3(0.1925,0.8066,-0.1036);
HAnimJoint1817.SetLlimit([-0.0873,-0.0175,-0.1396]);
HAnimJoint1817.SetUlimit([0.0873,0.0175,0.1396]);
end;

procedure InitHAnimGimbalJointController22Part152;
begin

HAnimSegment1818 := THAnimSegmentNode.Create;
HAnimSegment1818.X3DName := 'hanim_l_metacarpal_5';
TouchSensor1819 := TTouchSensorNode.Create;
TouchSensor1819.X3DName := 'ts_l_carpometacarpal_5';
TouchSensor1819.Description := 'l_carpometacarpal_5';
{ .AddChildren }
HAnimSegment1818.AddChildren([TouchSensor1819]);
Transform1820 := TTransformNode.Create;
Transform1820.X3DName := 'jx_l_carpometacarpal_5';
Transform1820.Translation := Vector3(0.1925,0.8066,-0.1036);
Transform1821 := TTransformNode.Create;
Shape1822 := TShapeNode.Create;
Appearance1823 := TAppearanceNode.Create;
Appearance1823.X3DName := 'ap_l_carpometacarpal_5';
Material1824 := TMaterialNode.Create;
Material1824.X3DName := 'm_l_carpometacarpal_5';
Material1824.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1823.Material := Material1824;
{ .SetAppearance }
Shape1822.Appearance := Appearance1823;
Sphere1825 := TSphereNode.Create;
Sphere1825.Radius := 0.03;
{ .SetGeometry }
Shape1822.Geometry := Sphere1825;
{ .AddChild }
Transform1821.AddChildren([Shape1822]);
{ .AddChildren }
Transform1820.AddChildren([Transform1821]);
{ .AddChildren }
HAnimSegment1818.AddChildren([Transform1820]);
Shape1826 := TShapeNode.Create;
Appearance1827 := TAppearanceNode.Create;
Appearance1827.X3DName := 'apl_l_carpometacarpal_5';
Material1828 := TMaterialNode.Create;
Material1828.X3DName := 'lm_l_carpometacarpal_5';
Material1828.DiffuseColor := Vector3(0,0,0);
Material1828.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1827.Material := Material1828;
LineProperties1829 := TLinePropertiesNode.Create;
LineProperties1829.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1827.LineProperties := LineProperties1829;
{ .SetAppearance }
Shape1826.Appearance := Appearance1827;
LineSet1830 := TLineSetNode.Create;
LineSet1830.SetVertexCount([2]);
Coordinate1831 := TCoordinateNode.Create;
Coordinate1831.X3DName := 'lc_l_carpometacarpal_5_0';
end;

procedure InitHAnimGimbalJointController22Part153;
begin

Coordinate1831.SetPoint([Vector3(0.1925,0.8066,-0.1036),Vector3(0.1925,0.7866,-0.1036)]);
{ .SetCoord }
LineSet1830.Coord := Coordinate1831;
{ .SetGeometry }
Shape1826.Geometry := LineSet1830;
{ .AddChildren }
HAnimSegment1818.AddChildren([Shape1826]);
{ .AddChildren }
HAnimJoint1817.AddChildren([HAnimSegment1818]);
HAnimJoint1832 := THAnimJointNode.Create;
HAnimJoint1832.X3DName := 'hanim_l_metacarpophalangeal_5';
HAnimJoint1832.Center := Vector3(0.1925,0.7866,-0.1036);
HAnimJoint1832.SetLlimit([-0.2618,-0.0873,-1.5708]);
HAnimJoint1832.SetUlimit([0.2618,0.0873,0.5236]);
HAnimSegment1833 := THAnimSegmentNode.Create;
HAnimSegment1833.X3DName := 'hanim_l_carpal_proximal_phalanx_5';
TouchSensor1834 := TTouchSensorNode.Create;
TouchSensor1834.X3DName := 'ts_l_metacarpophalangeal_5';
TouchSensor1834.Description := 'l_metacarpophalangeal_5';
{ .AddChildren }
HAnimSegment1833.AddChildren([TouchSensor1834]);
Transform1835 := TTransformNode.Create;
Transform1835.X3DName := 'jx_l_metacarpophalangeal_5';
Transform1835.Translation := Vector3(0.1925,0.7866,-0.1036);
Transform1836 := TTransformNode.Create;
Shape1837 := TShapeNode.Create;
Appearance1838 := TAppearanceNode.Create;
Appearance1838.X3DName := 'ap_l_metacarpophalangeal_5';
Material1839 := TMaterialNode.Create;
Material1839.X3DName := 'm_l_metacarpophalangeal_5';
Material1839.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1838.Material := Material1839;
{ .SetAppearance }
Shape1837.Appearance := Appearance1838;
Sphere1840 := TSphereNode.Create;
Sphere1840.Radius := 0.03;
{ .SetGeometry }
Shape1837.Geometry := Sphere1840;
{ .AddChild }
Transform1836.AddChildren([Shape1837]);
{ .AddChildren }
Transform1835.AddChildren([Transform1836]);
{ .AddChildren }
HAnimSegment1833.AddChildren([Transform1835]);
Shape1841 := TShapeNode.Create;
Appearance1842 := TAppearanceNode.Create;
Appearance1842.X3DName := 'apl_l_metacarpophalangeal_5';
Material1843 := TMaterialNode.Create;
Material1843.X3DName := 'lm_l_metacarpophalangeal_5';
Material1843.DiffuseColor := Vector3(0,0,0);
end;

procedure InitHAnimGimbalJointController22Part154;
begin

Material1843.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1842.Material := Material1843;
LineProperties1844 := TLinePropertiesNode.Create;
LineProperties1844.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1842.LineProperties := LineProperties1844;
{ .SetAppearance }
Shape1841.Appearance := Appearance1842;
LineSet1845 := TLineSetNode.Create;
LineSet1845.SetVertexCount([2]);
Coordinate1846 := TCoordinateNode.Create;
Coordinate1846.X3DName := 'lc_l_metacarpophalangeal_5_0';
Coordinate1846.SetPoint([Vector3(0.1925,0.7866,-0.1036),Vector3(0.1938,0.7452,-0.1024)]);
{ .SetCoord }
LineSet1845.Coord := Coordinate1846;
{ .SetGeometry }
Shape1841.Geometry := LineSet1845;
{ .AddChildren }
HAnimSegment1833.AddChildren([Shape1841]);
{ .AddChildren }
HAnimJoint1832.AddChildren([HAnimSegment1833]);
HAnimJoint1847 := THAnimJointNode.Create;
HAnimJoint1847.X3DName := 'hanim_l_carpal_proximal_interphalangeal_5';
HAnimJoint1847.Center := Vector3(0.1938,0.7452,-0.1024);
HAnimJoint1847.SetLlimit([-0.0175,-0.0175,-1.9199]);
HAnimJoint1847.SetUlimit([0.0175,0.0175,0]);
HAnimSegment1848 := THAnimSegmentNode.Create;
HAnimSegment1848.X3DName := 'hanim_l_carpal_middle_phalanx_5';
TouchSensor1849 := TTouchSensorNode.Create;
TouchSensor1849.X3DName := 'ts_l_carpal_proximal_interphalangeal_5';
TouchSensor1849.Description := 'l_carpal_proximal_interphalangeal_5';
{ .AddChildren }
HAnimSegment1848.AddChildren([TouchSensor1849]);
Transform1850 := TTransformNode.Create;
Transform1850.X3DName := 'jx_l_carpal_proximal_interphalangeal_5';
Transform1850.Translation := Vector3(0.1938,0.7452,-0.1024);
Transform1851 := TTransformNode.Create;
Shape1852 := TShapeNode.Create;
Appearance1853 := TAppearanceNode.Create;
Appearance1853.X3DName := 'ap_l_carpal_proximal_interphalangeal_5';
Material1854 := TMaterialNode.Create;
Material1854.X3DName := 'm_l_carpal_proximal_interphalangeal_5';
Material1854.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1853.Material := Material1854;
{ .SetAppearance }
Shape1852.Appearance := Appearance1853;
Sphere1855 := TSphereNode.Create;
Sphere1855.Radius := 0.03;
end;

procedure InitHAnimGimbalJointController22Part155;
begin

{ .SetGeometry }
Shape1852.Geometry := Sphere1855;
{ .AddChild }
Transform1851.AddChildren([Shape1852]);
{ .AddChildren }
Transform1850.AddChildren([Transform1851]);
{ .AddChildren }
HAnimSegment1848.AddChildren([Transform1850]);
Shape1856 := TShapeNode.Create;
Appearance1857 := TAppearanceNode.Create;
Appearance1857.X3DName := 'apl_l_carpal_proximal_interphalangeal_5';
Material1858 := TMaterialNode.Create;
Material1858.X3DName := 'lm_l_carpal_proximal_interphalangeal_5';
Material1858.DiffuseColor := Vector3(0,0,0);
Material1858.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1857.Material := Material1858;
LineProperties1859 := TLinePropertiesNode.Create;
LineProperties1859.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1857.LineProperties := LineProperties1859;
{ .SetAppearance }
Shape1856.Appearance := Appearance1857;
LineSet1860 := TLineSetNode.Create;
LineSet1860.SetVertexCount([2]);
Coordinate1861 := TCoordinateNode.Create;
Coordinate1861.X3DName := 'lc_l_carpal_proximal_interphalangeal_5_0';
Coordinate1861.SetPoint([Vector3(0.1938,0.7452,-0.1024),Vector3(0.1948,0.7277,-0.1017)]);
{ .SetCoord }
LineSet1860.Coord := Coordinate1861;
{ .SetGeometry }
Shape1856.Geometry := LineSet1860;
{ .AddChildren }
HAnimSegment1848.AddChildren([Shape1856]);
{ .AddChildren }
HAnimJoint1847.AddChildren([HAnimSegment1848]);
HAnimJoint1862 := THAnimJointNode.Create;
HAnimJoint1862.X3DName := 'hanim_l_carpal_distal_interphalangeal_5';
HAnimJoint1862.Center := Vector3(0.1948,0.7277,-0.1017);
HAnimJoint1862.SetLlimit([-0.0175,-0.0175,-1.3963]);
HAnimJoint1862.SetUlimit([0.0175,0.0175,0]);
HAnimSegment1863 := THAnimSegmentNode.Create;
HAnimSegment1863.X3DName := 'hanim_l_carpal_distal_phalanx_5';
Group1864 := TGroupNode.Create;
Group1864.X3DName := 'jg_l_carpal_distal_interphalangeal_5';
TouchSensor1865 := TTouchSensorNode.Create;
TouchSensor1865.X3DName := 'ts_l_carpal_distal_interphalangeal_5';
TouchSensor1865.Description := 'l_carpal_distal_interphalangeal_5';
{ .AddChildren }
Group1864.AddChildren([TouchSensor1865]);
Transform1866 := TTransformNode.Create;
Transform1866.X3DName := 'jx_l_carpal_distal_interphalangeal_5';
end;

procedure InitHAnimGimbalJointController22Part156;
begin

Transform1866.Translation := Vector3(0.1948,0.7277,-0.1017);
Shape1867 := TShapeNode.Create;
Appearance1868 := TAppearanceNode.Create;
Appearance1868.X3DName := 'ap_l_carpal_distal_interphalangeal_5';
Material1869 := TMaterialNode.Create;
Material1869.X3DName := 'm_l_carpal_distal_interphalangeal_5';
Material1869.DiffuseColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1868.Material := Material1869;
{ .SetAppearance }
Shape1867.Appearance := Appearance1868;
Sphere1870 := TSphereNode.Create;
Sphere1870.Radius := 0.03;
{ .SetGeometry }
Shape1867.Geometry := Sphere1870;
{ .AddChild }
Transform1866.AddChildren([Shape1867]);
{ .AddChildren }
Group1864.AddChildren([Transform1866]);
Shape1871 := TShapeNode.Create;
Appearance1872 := TAppearanceNode.Create;
Appearance1872.X3DName := 'apl_l_carpal_distal_interphalangeal_5';
Material1873 := TMaterialNode.Create;
Material1873.X3DName := 'lm_l_carpal_distal_interphalangeal_5';
Material1873.DiffuseColor := Vector3(0,0,0);
Material1873.EmissiveColor := Vector3(0.35,0.55,0.95);
{ .SetMaterial }
Appearance1872.Material := Material1873;
LineProperties1874 := TLinePropertiesNode.Create;
LineProperties1874.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1872.LineProperties := LineProperties1874;
{ .SetAppearance }
Shape1871.Appearance := Appearance1872;
LineSet1875 := TLineSetNode.Create;
LineSet1875.SetVertexCount([2]);
Coordinate1876 := TCoordinateNode.Create;
Coordinate1876.X3DName := 'lc_l_carpal_distal_interphalangeal_5_0';
Coordinate1876.SetPoint([Vector3(0.1948,0.7277,-0.1017),Vector3(0.1958,0.7102,-0.101)]);
{ .SetCoord }
LineSet1875.Coord := Coordinate1876;
{ .SetGeometry }
Shape1871.Geometry := LineSet1875;
{ .AddChildren }
Group1864.AddChildren([Shape1871]);
{ .AddChildren }
HAnimSegment1863.AddChildren([Group1864]);
{ .AddChildren }
HAnimJoint1862.AddChildren([HAnimSegment1863]);
{ .AddChildren }
HAnimJoint1847.AddChildren([HAnimJoint1862]);
{ .AddChildren }
HAnimJoint1832.AddChildren([HAnimJoint1847]);
{ .AddChildren }
HAnimJoint1817.AddChildren([HAnimJoint1832]);
{ .AddChildren }
HAnimJoint1738.AddChildren([HAnimJoint1817]);
end;

procedure InitHAnimGimbalJointController22Part157;
begin

{ .AddChildren }
HAnimJoint1501.AddChildren([HAnimJoint1738]);
{ .AddChildren }
HAnimJoint1486.AddChildren([HAnimJoint1501]);
{ .AddChildren }
HAnimJoint1471.AddChildren([HAnimJoint1486]);
{ .AddChildren }
HAnimJoint1456.AddChildren([HAnimJoint1471]);
{ .AddChildren }
HAnimJoint1441.AddChildren([HAnimJoint1456]);
{ .AddChildren }
HAnimJoint1169.AddChildren([HAnimJoint1441]);
{ RIGHT ARM (Child 3 of vt1) }
HAnimJoint1877 := THAnimJointNode.Create;
HAnimJoint1877.X3DName := 'hanim_r_sternoclavicular';
HAnimJoint1877.Center := Vector3(-0.0694,1.46,-0.033);
HAnimJoint1877.SetLlimit([-0.3491,-0.2618,-0.4363]);
HAnimJoint1877.SetUlimit([0.3491,0.3491,0.1745]);
HAnimSegment1878 := THAnimSegmentNode.Create;
HAnimSegment1878.X3DName := 'hanim_r_clavicle';
TouchSensor1879 := TTouchSensorNode.Create;
TouchSensor1879.X3DName := 'ts_r_sternoclavicular';
TouchSensor1879.Description := 'r_sternoclavicular';
{ .AddChildren }
HAnimSegment1878.AddChildren([TouchSensor1879]);
Transform1880 := TTransformNode.Create;
Transform1880.X3DName := 'jx_r_sternoclavicular';
Transform1880.Translation := Vector3(-0.0694,1.46,-0.033);
Transform1881 := TTransformNode.Create;
Shape1882 := TShapeNode.Create;
Appearance1883 := TAppearanceNode.Create;
Appearance1883.X3DName := 'ap_r_sternoclavicular';
Material1884 := TMaterialNode.Create;
Material1884.X3DName := 'm_r_sternoclavicular';
Material1884.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance1883.Material := Material1884;
{ .SetAppearance }
Shape1882.Appearance := Appearance1883;
Sphere1885 := TSphereNode.Create;
Sphere1885.Radius := 0.03;
{ .SetGeometry }
Shape1882.Geometry := Sphere1885;
{ .AddChild }
Transform1881.AddChildren([Shape1882]);
{ .AddChildren }
Transform1880.AddChildren([Transform1881]);
{ .AddChildren }
HAnimSegment1878.AddChildren([Transform1880]);
Shape1886 := TShapeNode.Create;
Appearance1887 := TAppearanceNode.Create;
Appearance1887.X3DName := 'apl_r_sternoclavicular';
Material1888 := TMaterialNode.Create;
Material1888.X3DName := 'lm_r_sternoclavicular';
end;

procedure InitHAnimGimbalJointController22Part158;
begin

Material1888.DiffuseColor := Vector3(0,0,0);
Material1888.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance1887.Material := Material1888;
LineProperties1889 := TLinePropertiesNode.Create;
LineProperties1889.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1887.LineProperties := LineProperties1889;
{ .SetAppearance }
Shape1886.Appearance := Appearance1887;
LineSet1890 := TLineSetNode.Create;
LineSet1890.SetVertexCount([2]);
Coordinate1891 := TCoordinateNode.Create;
Coordinate1891.X3DName := 'lc_r_sternoclavicular_0';
Coordinate1891.SetPoint([Vector3(-0.0694,1.46,-0.033),Vector3(-0.0836,1.4281,-0.0401)]);
{ .SetCoord }
LineSet1890.Coord := Coordinate1891;
{ .SetGeometry }
Shape1886.Geometry := LineSet1890;
{ .AddChildren }
HAnimSegment1878.AddChildren([Shape1886]);
{ .AddChildren }
HAnimJoint1877.AddChildren([HAnimSegment1878]);
HAnimJoint1892 := THAnimJointNode.Create;
HAnimJoint1892.X3DName := 'hanim_r_acromioclavicular';
HAnimJoint1892.Center := Vector3(-0.0836,1.4281,-0.0401);
HAnimJoint1892.SetLlimit([-0.1745,-0.1745,-0.1745]);
HAnimJoint1892.SetUlimit([0.1745,0.1745,0.1745]);
HAnimSegment1893 := THAnimSegmentNode.Create;
HAnimSegment1893.X3DName := 'hanim_r_scapula';
TouchSensor1894 := TTouchSensorNode.Create;
TouchSensor1894.X3DName := 'ts_r_acromioclavicular';
TouchSensor1894.Description := 'r_acromioclavicular';
{ .AddChildren }
HAnimSegment1893.AddChildren([TouchSensor1894]);
Transform1895 := TTransformNode.Create;
Transform1895.X3DName := 'jx_r_acromioclavicular';
Transform1895.Translation := Vector3(-0.0836,1.4281,-0.0401);
Transform1896 := TTransformNode.Create;
Shape1897 := TShapeNode.Create;
Appearance1898 := TAppearanceNode.Create;
Appearance1898.X3DName := 'ap_r_acromioclavicular';
Material1899 := TMaterialNode.Create;
Material1899.X3DName := 'm_r_acromioclavicular';
Material1899.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance1898.Material := Material1899;
{ .SetAppearance }
Shape1897.Appearance := Appearance1898;
Sphere1900 := TSphereNode.Create;
end;

procedure InitHAnimGimbalJointController22Part159;
begin

Sphere1900.Radius := 0.03;
{ .SetGeometry }
Shape1897.Geometry := Sphere1900;
{ .AddChild }
Transform1896.AddChildren([Shape1897]);
{ .AddChildren }
Transform1895.AddChildren([Transform1896]);
{ .AddChildren }
HAnimSegment1893.AddChildren([Transform1895]);
Shape1901 := TShapeNode.Create;
Appearance1902 := TAppearanceNode.Create;
Appearance1902.X3DName := 'apl_r_acromioclavicular';
Material1903 := TMaterialNode.Create;
Material1903.X3DName := 'lm_r_acromioclavicular';
Material1903.DiffuseColor := Vector3(0,0,0);
Material1903.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance1902.Material := Material1903;
LineProperties1904 := TLinePropertiesNode.Create;
LineProperties1904.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1902.LineProperties := LineProperties1904;
{ .SetAppearance }
Shape1901.Appearance := Appearance1902;
LineSet1905 := TLineSetNode.Create;
LineSet1905.SetVertexCount([2]);
Coordinate1906 := TCoordinateNode.Create;
Coordinate1906.X3DName := 'lc_r_acromioclavicular_0';
Coordinate1906.SetPoint([Vector3(-0.0836,1.4281,-0.0401),Vector3(-0.1907,1.4407,-0.0325)]);
{ .SetCoord }
LineSet1905.Coord := Coordinate1906;
{ .SetGeometry }
Shape1901.Geometry := LineSet1905;
{ .AddChildren }
HAnimSegment1893.AddChildren([Shape1901]);
{ .AddChildren }
HAnimJoint1892.AddChildren([HAnimSegment1893]);
HAnimJoint1907 := THAnimJointNode.Create;
HAnimJoint1907.X3DName := 'hanim_r_shoulder';
HAnimJoint1907.Center := Vector3(-0.1907,1.4407,-0.0325);
HAnimJoint1907.SetLlimit([-3.1416,-1.5708,-3.1416]);
HAnimJoint1907.SetUlimit([1.0472,1.5708,0.5236]);
HAnimSegment1908 := THAnimSegmentNode.Create;
HAnimSegment1908.X3DName := 'hanim_r_upperarm';
TouchSensor1909 := TTouchSensorNode.Create;
TouchSensor1909.X3DName := 'ts_r_shoulder';
TouchSensor1909.Description := 'r_shoulder';
{ .AddChildren }
HAnimSegment1908.AddChildren([TouchSensor1909]);
Transform1910 := TTransformNode.Create;
Transform1910.X3DName := 'jx_r_shoulder';
Transform1910.Translation := Vector3(-0.1907,1.4407,-0.0325);
end;

procedure InitHAnimGimbalJointController22Part160;
begin

Transform1911 := TTransformNode.Create;
Shape1912 := TShapeNode.Create;
Appearance1913 := TAppearanceNode.Create;
Appearance1913.X3DName := 'ap_r_shoulder';
Material1914 := TMaterialNode.Create;
Material1914.X3DName := 'm_r_shoulder';
Material1914.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance1913.Material := Material1914;
{ .SetAppearance }
Shape1912.Appearance := Appearance1913;
Sphere1915 := TSphereNode.Create;
Sphere1915.Radius := 0.03;
{ .SetGeometry }
Shape1912.Geometry := Sphere1915;
{ .AddChild }
Transform1911.AddChildren([Shape1912]);
{ .AddChildren }
Transform1910.AddChildren([Transform1911]);
{ .AddChildren }
HAnimSegment1908.AddChildren([Transform1910]);
Shape1916 := TShapeNode.Create;
Appearance1917 := TAppearanceNode.Create;
Appearance1917.X3DName := 'apl_r_shoulder';
Material1918 := TMaterialNode.Create;
Material1918.X3DName := 'lm_r_shoulder';
Material1918.DiffuseColor := Vector3(0,0,0);
Material1918.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance1917.Material := Material1918;
LineProperties1919 := TLinePropertiesNode.Create;
LineProperties1919.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1917.LineProperties := LineProperties1919;
{ .SetAppearance }
Shape1916.Appearance := Appearance1917;
LineSet1920 := TLineSetNode.Create;
LineSet1920.SetVertexCount([2]);
Coordinate1921 := TCoordinateNode.Create;
Coordinate1921.X3DName := 'lc_r_shoulder_0';
Coordinate1921.SetPoint([Vector3(-0.1907,1.4407,-0.0325),Vector3(-0.1949,1.1388,-0.062)]);
{ .SetCoord }
LineSet1920.Coord := Coordinate1921;
{ .SetGeometry }
Shape1916.Geometry := LineSet1920;
{ .AddChildren }
HAnimSegment1908.AddChildren([Shape1916]);
{ .AddChildren }
HAnimJoint1907.AddChildren([HAnimSegment1908]);
HAnimJoint1922 := THAnimJointNode.Create;
HAnimJoint1922.X3DName := 'hanim_r_elbow';
HAnimJoint1922.Center := Vector3(-0.1949,1.1388,-0.062);
HAnimJoint1922.SetLlimit([-2.5307,-1.5708,-0.0175]);
end;

procedure InitHAnimGimbalJointController22Part161;
begin

HAnimJoint1922.SetUlimit([0,1.5708,0.0175]);
HAnimSegment1923 := THAnimSegmentNode.Create;
HAnimSegment1923.X3DName := 'hanim_r_forearm';
TouchSensor1924 := TTouchSensorNode.Create;
TouchSensor1924.X3DName := 'ts_r_elbow';
TouchSensor1924.Description := 'r_elbow';
{ .AddChildren }
HAnimSegment1923.AddChildren([TouchSensor1924]);
Transform1925 := TTransformNode.Create;
Transform1925.X3DName := 'jx_r_elbow';
Transform1925.Translation := Vector3(-0.1949,1.1388,-0.062);
Transform1926 := TTransformNode.Create;
Shape1927 := TShapeNode.Create;
Appearance1928 := TAppearanceNode.Create;
Appearance1928.X3DName := 'ap_r_elbow';
Material1929 := TMaterialNode.Create;
Material1929.X3DName := 'm_r_elbow';
Material1929.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance1928.Material := Material1929;
{ .SetAppearance }
Shape1927.Appearance := Appearance1928;
Sphere1930 := TSphereNode.Create;
Sphere1930.Radius := 0.03;
{ .SetGeometry }
Shape1927.Geometry := Sphere1930;
{ .AddChild }
Transform1926.AddChildren([Shape1927]);
{ .AddChildren }
Transform1925.AddChildren([Transform1926]);
{ .AddChildren }
HAnimSegment1923.AddChildren([Transform1925]);
Shape1931 := TShapeNode.Create;
Appearance1932 := TAppearanceNode.Create;
Appearance1932.X3DName := 'apl_r_elbow';
Material1933 := TMaterialNode.Create;
Material1933.X3DName := 'lm_r_elbow';
Material1933.DiffuseColor := Vector3(0,0,0);
Material1933.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance1932.Material := Material1933;
LineProperties1934 := TLinePropertiesNode.Create;
LineProperties1934.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1932.LineProperties := LineProperties1934;
{ .SetAppearance }
Shape1931.Appearance := Appearance1932;
LineSet1935 := TLineSetNode.Create;
LineSet1935.SetVertexCount([2]);
Coordinate1936 := TCoordinateNode.Create;
end;

procedure InitHAnimGimbalJointController22Part162;
begin

Coordinate1936.X3DName := 'lc_r_elbow_0';
Coordinate1936.SetPoint([Vector3(-0.1949,1.1388,-0.062),Vector3(-0.1959,0.8694,-0.0521)]);
{ .SetCoord }
LineSet1935.Coord := Coordinate1936;
{ .SetGeometry }
Shape1931.Geometry := LineSet1935;
{ .AddChildren }
HAnimSegment1923.AddChildren([Shape1931]);
{ .AddChildren }
HAnimJoint1922.AddChildren([HAnimSegment1923]);
HAnimJoint1937 := THAnimJointNode.Create;
HAnimJoint1937.X3DName := 'hanim_r_radiocarpal';
HAnimJoint1937.Center := Vector3(-0.1959,0.8694,-0.0521);
HAnimJoint1937.SetLlimit([-0.3491,-0.1745,-1.2217]);
HAnimJoint1937.SetUlimit([0.5236,0.1745,1.3963]);
HAnimSegment1938 := THAnimSegmentNode.Create;
HAnimSegment1938.X3DName := 'hanim_r_carpal';
TouchSensor1939 := TTouchSensorNode.Create;
TouchSensor1939.X3DName := 'ts_r_radiocarpal';
TouchSensor1939.Description := 'r_radiocarpal';
{ .AddChildren }
HAnimSegment1938.AddChildren([TouchSensor1939]);
Transform1940 := TTransformNode.Create;
Transform1940.X3DName := 'jx_r_radiocarpal';
Transform1940.Scale := Vector3(0.2,0.2,0.2);
Transform1940.Translation := Vector3(-0.2,0.85,-0.05);
Transform1940.Rotation := Vector4(0,0,1,-3.14);
Transform1941 := TTransformNode.Create;
Transform1941.Rotation := Vector4(0,1,0,1.57);
Shape1942 := TShapeNode.Create;
Appearance1943 := TAppearanceNode.Create;
Appearance1943.X3DName := 'ap_r_radiocarpal';
Material1944 := TMaterialNode.Create;
Material1944.X3DName := 'm_r_radiocarpal';
Material1944.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance1943.Material := Material1944;
{ .SetAppearance }
Shape1942.Appearance := Appearance1943;
Sphere1945 := TSphereNode.Create;
Sphere1945.Radius := 0.03;
{ .SetGeometry }
Shape1942.Geometry := Sphere1945;
{ .AddChild }
Transform1941.AddChildren([Shape1942]);
{ .AddChildren }
Transform1940.AddChildren([Transform1941]);
{ .AddChildren }
HAnimSegment1938.AddChildren([Transform1940]);
Shape1946 := TShapeNode.Create;
Appearance1947 := TAppearanceNode.Create;
end;

procedure InitHAnimGimbalJointController22Part163;
begin

Appearance1947.X3DName := 'apl_r_radiocarpal';
Material1948 := TMaterialNode.Create;
Material1948.X3DName := 'lm_r_radiocarpal';
Material1948.DiffuseColor := Vector3(0,0,0);
Material1948.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance1947.Material := Material1948;
LineProperties1949 := TLinePropertiesNode.Create;
LineProperties1949.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1947.LineProperties := LineProperties1949;
{ .SetAppearance }
Shape1946.Appearance := Appearance1947;
LineSet1950 := TLineSetNode.Create;
LineSet1950.SetVertexCount([2]);
Coordinate1951 := TCoordinateNode.Create;
Coordinate1951.X3DName := 'lc_r_radiocarpal_0';
Coordinate1951.SetPoint([Vector3(-0.1959,0.8694,-0.0521),Vector3(-0.1811,0.6975,-0.0826)]);
{ .SetCoord }
LineSet1950.Coord := Coordinate1951;
{ .SetGeometry }
Shape1946.Geometry := LineSet1950;
{ .AddChildren }
HAnimSegment1938.AddChildren([Shape1946]);
Shape1952 := TShapeNode.Create;
{ .SetAppearance }
Shape1952.Appearance := Appearance1947;
LineSet1954 := TLineSetNode.Create;
LineSet1954.SetVertexCount([2]);
Coordinate1955 := TCoordinateNode.Create;
Coordinate1955.X3DName := 'lc_r_radiocarpal_1';
Coordinate1955.SetPoint([Vector3(-0.1959,0.8694,-0.0521),Vector3(-0.1811,0.6984,-0.0935)]);
{ .SetCoord }
LineSet1954.Coord := Coordinate1955;
{ .SetGeometry }
Shape1952.Geometry := LineSet1954;
{ .AddChildren }
HAnimSegment1938.AddChildren([Shape1952]);
Shape1956 := TShapeNode.Create;
{ .SetAppearance }
Shape1956.Appearance := Appearance1947;
LineSet1958 := TLineSetNode.Create;
LineSet1958.SetVertexCount([2]);
Coordinate1959 := TCoordinateNode.Create;
Coordinate1959.X3DName := 'lc_r_radiocarpal_2';
Coordinate1959.SetPoint([Vector3(-0.1959,0.8694,-0.0521),Vector3(-0.1809,0.7,-0.1067)]);
{ .SetCoord }
LineSet1958.Coord := Coordinate1959;
{ .SetGeometry }
Shape1956.Geometry := LineSet1958;
{ .AddChildren }
HAnimSegment1938.AddChildren([Shape1956]);
Shape1960 := TShapeNode.Create;
{ .SetAppearance }
Shape1960.Appearance := Appearance1947;
end;

procedure InitHAnimGimbalJointController22Part164;
begin

LineSet1962 := TLineSetNode.Create;
LineSet1962.SetVertexCount([2]);
Coordinate1963 := TCoordinateNode.Create;
Coordinate1963.X3DName := 'lc_r_radiocarpal_3';
Coordinate1963.SetPoint([Vector3(-0.1959,0.8694,-0.0521),Vector3(-0.1809,0.6973,-0.1276)]);
{ .SetCoord }
LineSet1962.Coord := Coordinate1963;
{ .SetGeometry }
Shape1960.Geometry := LineSet1962;
{ .AddChildren }
HAnimSegment1938.AddChildren([Shape1960]);
{ .AddChildren }
HAnimJoint1937.AddChildren([HAnimSegment1938]);
HAnimJoint1964 := THAnimJointNode.Create;
HAnimJoint1964.X3DName := 'hanim_r_midcarpal_1';
HAnimJoint1964.Center := Vector3(-0.1811,0.6975,-0.0826);
HAnimJoint1964.SetLlimit([-0.1396,-0.0873,-0.1396]);
HAnimJoint1964.SetUlimit([0.1396,0.0873,0.1396]);
HAnimSegment1965 := THAnimSegmentNode.Create;
HAnimSegment1965.X3DName := 'hanim_r_trapezium';
TouchSensor1966 := TTouchSensorNode.Create;
TouchSensor1966.X3DName := 'ts_r_midcarpal_1';
TouchSensor1966.Description := 'r_midcarpal_1';
{ .AddChildren }
HAnimSegment1965.AddChildren([TouchSensor1966]);
Transform1967 := TTransformNode.Create;
Transform1967.X3DName := 'jx_r_midcarpal_1';
Transform1967.Translation := Vector3(-0.1811,0.6975,-0.0826);
Transform1968 := TTransformNode.Create;
Shape1969 := TShapeNode.Create;
Appearance1970 := TAppearanceNode.Create;
Appearance1970.X3DName := 'ap_r_midcarpal_1';
Material1971 := TMaterialNode.Create;
Material1971.X3DName := 'm_r_midcarpal_1';
Material1971.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance1970.Material := Material1971;
{ .SetAppearance }
Shape1969.Appearance := Appearance1970;
Sphere1972 := TSphereNode.Create;
Sphere1972.Radius := 0.03;
{ .SetGeometry }
Shape1969.Geometry := Sphere1972;
{ .AddChild }
Transform1968.AddChildren([Shape1969]);
{ .AddChildren }
Transform1967.AddChildren([Transform1968]);
{ .AddChildren }
HAnimSegment1965.AddChildren([Transform1967]);
Shape1973 := TShapeNode.Create;
Appearance1974 := TAppearanceNode.Create;
end;

procedure InitHAnimGimbalJointController22Part165;
begin

Appearance1974.X3DName := 'apl_r_midcarpal_1';
Material1975 := TMaterialNode.Create;
Material1975.X3DName := 'lm_r_midcarpal_1';
Material1975.DiffuseColor := Vector3(0,0,0);
Material1975.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance1974.Material := Material1975;
LineProperties1976 := TLinePropertiesNode.Create;
LineProperties1976.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1974.LineProperties := LineProperties1976;
{ .SetAppearance }
Shape1973.Appearance := Appearance1974;
LineSet1977 := TLineSetNode.Create;
LineSet1977.SetVertexCount([2]);
Coordinate1978 := TCoordinateNode.Create;
Coordinate1978.X3DName := 'lc_r_midcarpal_1_0';
Coordinate1978.SetPoint([Vector3(-0.1811,0.6975,-0.0826),Vector3(-0.1899,0.8502,-0.0473)]);
{ .SetCoord }
LineSet1977.Coord := Coordinate1978;
{ .SetGeometry }
Shape1973.Geometry := LineSet1977;
{ .AddChildren }
HAnimSegment1965.AddChildren([Shape1973]);
{ .AddChildren }
HAnimJoint1964.AddChildren([HAnimSegment1965]);
HAnimJoint1979 := THAnimJointNode.Create;
HAnimJoint1979.X3DName := 'hanim_r_carpometacarpal_1';
HAnimJoint1979.Center := Vector3(-0.1899,0.8502,-0.0473);
HAnimJoint1979.SetLlimit([-0.5236,-0.3491,-0.5236]);
HAnimJoint1979.SetUlimit([0.5236,0.6981,0.5236]);
HAnimSegment1980 := THAnimSegmentNode.Create;
HAnimSegment1980.X3DName := 'hanim_r_metacarpal_1';
TouchSensor1981 := TTouchSensorNode.Create;
TouchSensor1981.X3DName := 'ts_r_carpometacarpal_1';
TouchSensor1981.Description := 'r_carpometacarpal_1';
{ .AddChildren }
HAnimSegment1980.AddChildren([TouchSensor1981]);
Transform1982 := TTransformNode.Create;
Transform1982.X3DName := 'jx_r_carpometacarpal_1';
Transform1982.Translation := Vector3(-0.1899,0.8502,-0.0473);
Transform1983 := TTransformNode.Create;
Shape1984 := TShapeNode.Create;
Appearance1985 := TAppearanceNode.Create;
Appearance1985.X3DName := 'ap_r_carpometacarpal_1';
Material1986 := TMaterialNode.Create;
Material1986.X3DName := 'm_r_carpometacarpal_1';
Material1986.DiffuseColor := Vector3(0.95,0.45,0.35);
end;

procedure InitHAnimGimbalJointController22Part166;
begin

{ .SetMaterial }
Appearance1985.Material := Material1986;
{ .SetAppearance }
Shape1984.Appearance := Appearance1985;
Sphere1987 := TSphereNode.Create;
Sphere1987.Radius := 0.03;
{ .SetGeometry }
Shape1984.Geometry := Sphere1987;
{ .AddChild }
Transform1983.AddChildren([Shape1984]);
{ .AddChildren }
Transform1982.AddChildren([Transform1983]);
{ .AddChildren }
HAnimSegment1980.AddChildren([Transform1982]);
Shape1988 := TShapeNode.Create;
Appearance1989 := TAppearanceNode.Create;
Appearance1989.X3DName := 'apl_r_carpometacarpal_1';
Material1990 := TMaterialNode.Create;
Material1990.X3DName := 'lm_r_carpometacarpal_1';
Material1990.DiffuseColor := Vector3(0,0,0);
Material1990.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance1989.Material := Material1990;
LineProperties1991 := TLinePropertiesNode.Create;
LineProperties1991.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance1989.LineProperties := LineProperties1991;
{ .SetAppearance }
Shape1988.Appearance := Appearance1989;
LineSet1992 := TLineSetNode.Create;
LineSet1992.SetVertexCount([2]);
Coordinate1993 := TCoordinateNode.Create;
Coordinate1993.X3DName := 'lc_r_carpometacarpal_1_0';
Coordinate1993.SetPoint([Vector3(-0.1899,0.8502,-0.0473),Vector3(-0.1874,0.8256,0.0306)]);
{ .SetCoord }
LineSet1992.Coord := Coordinate1993;
{ .SetGeometry }
Shape1988.Geometry := LineSet1992;
{ .AddChildren }
HAnimSegment1980.AddChildren([Shape1988]);
{ .AddChildren }
HAnimJoint1979.AddChildren([HAnimSegment1980]);
HAnimJoint1994 := THAnimJointNode.Create;
HAnimJoint1994.X3DName := 'hanim_r_metacarpophalangeal_1';
HAnimJoint1994.Center := Vector3(-0.1874,0.8256,0.0306);
HAnimJoint1994.SetLlimit([-0.3491,-0.3491,-0.0175]);
HAnimJoint1994.SetUlimit([0.3491,1.0472,0.0175]);
HAnimSegment1995 := THAnimSegmentNode.Create;
HAnimSegment1995.X3DName := 'hanim_r_carpal_proximal_phalanx_1';
TouchSensor1996 := TTouchSensorNode.Create;
TouchSensor1996.X3DName := 'ts_r_metacarpophalangeal_1';
TouchSensor1996.Description := 'r_metacarpophalangeal_1';
{ .AddChildren }
HAnimSegment1995.AddChildren([TouchSensor1996]);
end;

procedure InitHAnimGimbalJointController22Part167;
begin

Transform1997 := TTransformNode.Create;
Transform1997.X3DName := 'jx_r_metacarpophalangeal_1';
Transform1997.Translation := Vector3(-0.1874,0.8256,0.0306);
Transform1998 := TTransformNode.Create;
Shape1999 := TShapeNode.Create;
Appearance2000 := TAppearanceNode.Create;
Appearance2000.X3DName := 'ap_r_metacarpophalangeal_1';
Material2001 := TMaterialNode.Create;
Material2001.X3DName := 'm_r_metacarpophalangeal_1';
Material2001.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2000.Material := Material2001;
{ .SetAppearance }
Shape1999.Appearance := Appearance2000;
Sphere2002 := TSphereNode.Create;
Sphere2002.Radius := 0.03;
{ .SetGeometry }
Shape1999.Geometry := Sphere2002;
{ .AddChild }
Transform1998.AddChildren([Shape1999]);
{ .AddChildren }
Transform1997.AddChildren([Transform1998]);
{ .AddChildren }
HAnimSegment1995.AddChildren([Transform1997]);
Shape2003 := TShapeNode.Create;
Appearance2004 := TAppearanceNode.Create;
Appearance2004.X3DName := 'apl_r_metacarpophalangeal_1';
Material2005 := TMaterialNode.Create;
Material2005.X3DName := 'lm_r_metacarpophalangeal_1';
Material2005.DiffuseColor := Vector3(0,0,0);
Material2005.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2004.Material := Material2005;
LineProperties2006 := TLinePropertiesNode.Create;
LineProperties2006.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance2004.LineProperties := LineProperties2006;
{ .SetAppearance }
Shape2003.Appearance := Appearance2004;
LineSet2007 := TLineSetNode.Create;
LineSet2007.SetVertexCount([2]);
Coordinate2008 := TCoordinateNode.Create;
Coordinate2008.X3DName := 'lc_r_metacarpophalangeal_1_0';
Coordinate2008.SetPoint([Vector3(-0.1874,0.8256,0.0306),Vector3(-0.1864,0.819,0.0506)]);
{ .SetCoord }
LineSet2007.Coord := Coordinate2008;
{ .SetGeometry }
Shape2003.Geometry := LineSet2007;
{ .AddChildren }
HAnimSegment1995.AddChildren([Shape2003]);
{ .AddChildren }
HAnimJoint1994.AddChildren([HAnimSegment1995]);
HAnimJoint2009 := THAnimJointNode.Create;
end;

procedure InitHAnimGimbalJointController22Part168;
begin

HAnimJoint2009.X3DName := 'hanim_r_carpal_interphalangeal_1';
HAnimJoint2009.Center := Vector3(-0.1864,0.819,0.0506);
HAnimJoint2009.SetLlimit([-0.0175,-0.1745,-0.0175]);
HAnimJoint2009.SetUlimit([0.0175,1.3963,0.0175]);
HAnimSegment2010 := THAnimSegmentNode.Create;
HAnimSegment2010.X3DName := 'hanim_r_carpal_distal_phalanx_1';
Group2011 := TGroupNode.Create;
Group2011.X3DName := 'jg_r_carpal_interphalangeal_1';
TouchSensor2012 := TTouchSensorNode.Create;
TouchSensor2012.X3DName := 'ts_r_carpal_interphalangeal_1';
TouchSensor2012.Description := 'r_carpal_interphalangeal_1';
{ .AddChildren }
Group2011.AddChildren([TouchSensor2012]);
Transform2013 := TTransformNode.Create;
Transform2013.X3DName := 'jx_r_carpal_interphalangeal_1';
Transform2013.Translation := Vector3(-0.1864,0.819,0.0506);
Shape2014 := TShapeNode.Create;
Appearance2015 := TAppearanceNode.Create;
Appearance2015.X3DName := 'ap_r_carpal_interphalangeal_1';
Material2016 := TMaterialNode.Create;
Material2016.X3DName := 'm_r_carpal_interphalangeal_1';
Material2016.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2015.Material := Material2016;
{ .SetAppearance }
Shape2014.Appearance := Appearance2015;
Sphere2017 := TSphereNode.Create;
Sphere2017.Radius := 0.03;
{ .SetGeometry }
Shape2014.Geometry := Sphere2017;
{ .AddChild }
Transform2013.AddChildren([Shape2014]);
{ .AddChildren }
Group2011.AddChildren([Transform2013]);
Shape2018 := TShapeNode.Create;
Appearance2019 := TAppearanceNode.Create;
Appearance2019.X3DName := 'apl_r_carpal_interphalangeal_1';
Material2020 := TMaterialNode.Create;
Material2020.X3DName := 'lm_r_carpal_interphalangeal_1';
Material2020.DiffuseColor := Vector3(0,0,0);
Material2020.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2019.Material := Material2020;
LineProperties2021 := TLinePropertiesNode.Create;
LineProperties2021.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance2019.LineProperties := LineProperties2021;
{ .SetAppearance }
Shape2018.Appearance := Appearance2019;
end;

procedure InitHAnimGimbalJointController22Part169;
begin

LineSet2022 := TLineSetNode.Create;
LineSet2022.SetVertexCount([2]);
Coordinate2023 := TCoordinateNode.Create;
Coordinate2023.X3DName := 'lc_r_carpal_interphalangeal_1_0';
Coordinate2023.SetPoint([Vector3(-0.1864,0.819,0.0506),Vector3(-0.1854,0.8124,0.0706)]);
{ .SetCoord }
LineSet2022.Coord := Coordinate2023;
{ .SetGeometry }
Shape2018.Geometry := LineSet2022;
{ .AddChildren }
Group2011.AddChildren([Shape2018]);
{ .AddChildren }
HAnimSegment2010.AddChildren([Group2011]);
{ .AddChildren }
HAnimJoint2009.AddChildren([HAnimSegment2010]);
{ .AddChildren }
HAnimJoint1994.AddChildren([HAnimJoint2009]);
{ .AddChildren }
HAnimJoint1979.AddChildren([HAnimJoint1994]);
{ .AddChildren }
HAnimJoint1964.AddChildren([HAnimJoint1979]);
{ .AddChildren }
HAnimJoint1937.AddChildren([HAnimJoint1964]);
HAnimJoint2024 := THAnimJointNode.Create;
HAnimJoint2024.X3DName := 'hanim_r_midcarpal_2';
HAnimJoint2024.Center := Vector3(-0.1811,0.6984,-0.0935);
HAnimJoint2024.SetLlimit([-0.1396,-0.0873,-0.1396]);
HAnimJoint2024.SetUlimit([0.1396,0.0873,0.1396]);
HAnimSegment2025 := THAnimSegmentNode.Create;
HAnimSegment2025.X3DName := 'hanim_r_trapezoid';
TouchSensor2026 := TTouchSensorNode.Create;
TouchSensor2026.X3DName := 'ts_r_midcarpal_2';
TouchSensor2026.Description := 'r_midcarpal_2';
{ .AddChildren }
HAnimSegment2025.AddChildren([TouchSensor2026]);
Transform2027 := TTransformNode.Create;
Transform2027.X3DName := 'jx_r_midcarpal_2';
Transform2027.Translation := Vector3(-0.1811,0.6984,-0.0935);
Transform2028 := TTransformNode.Create;
Shape2029 := TShapeNode.Create;
Appearance2030 := TAppearanceNode.Create;
Appearance2030.X3DName := 'ap_r_midcarpal_2';
Material2031 := TMaterialNode.Create;
Material2031.X3DName := 'm_r_midcarpal_2';
Material2031.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2030.Material := Material2031;
{ .SetAppearance }
Shape2029.Appearance := Appearance2030;
Sphere2032 := TSphereNode.Create;
Sphere2032.Radius := 0.03;
{ .SetGeometry }
Shape2029.Geometry := Sphere2032;
end;

procedure InitHAnimGimbalJointController22Part170;
begin

{ .AddChild }
Transform2028.AddChildren([Shape2029]);
{ .AddChildren }
Transform2027.AddChildren([Transform2028]);
{ .AddChildren }
HAnimSegment2025.AddChildren([Transform2027]);
Shape2033 := TShapeNode.Create;
Appearance2034 := TAppearanceNode.Create;
Appearance2034.X3DName := 'apl_r_midcarpal_2';
Material2035 := TMaterialNode.Create;
Material2035.X3DName := 'lm_r_midcarpal_2';
Material2035.DiffuseColor := Vector3(0,0,0);
Material2035.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2034.Material := Material2035;
LineProperties2036 := TLinePropertiesNode.Create;
LineProperties2036.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance2034.LineProperties := LineProperties2036;
{ .SetAppearance }
Shape2033.Appearance := Appearance2034;
LineSet2037 := TLineSetNode.Create;
LineSet2037.SetVertexCount([2]);
Coordinate2038 := TCoordinateNode.Create;
Coordinate2038.X3DName := 'lc_r_midcarpal_2_0';
Coordinate2038.SetPoint([Vector3(-0.1811,0.6984,-0.0935),Vector3(-0.1961,0.8055,-0.0218)]);
{ .SetCoord }
LineSet2037.Coord := Coordinate2038;
{ .SetGeometry }
Shape2033.Geometry := LineSet2037;
{ .AddChildren }
HAnimSegment2025.AddChildren([Shape2033]);
{ .AddChildren }
HAnimJoint2024.AddChildren([HAnimSegment2025]);
HAnimJoint2039 := THAnimJointNode.Create;
HAnimJoint2039.X3DName := 'hanim_r_carpometacarpal_2';
HAnimJoint2039.Center := Vector3(-0.1961,0.8055,-0.0218);
HAnimJoint2039.SetLlimit([-0.0873,-0.0175,-0.1396]);
HAnimJoint2039.SetUlimit([0.0873,0.0175,0.1396]);
HAnimSegment2040 := THAnimSegmentNode.Create;
HAnimSegment2040.X3DName := 'hanim_r_metacarpal_2';
TouchSensor2041 := TTouchSensorNode.Create;
TouchSensor2041.X3DName := 'ts_r_carpometacarpal_2';
TouchSensor2041.Description := 'r_carpometacarpal_2';
{ .AddChildren }
HAnimSegment2040.AddChildren([TouchSensor2041]);
Transform2042 := TTransformNode.Create;
Transform2042.X3DName := 'jx_r_carpometacarpal_2';
Transform2042.Translation := Vector3(-0.1961,0.8055,-0.0218);
Transform2043 := TTransformNode.Create;
Shape2044 := TShapeNode.Create;
end;

procedure InitHAnimGimbalJointController22Part171;
begin

Appearance2045 := TAppearanceNode.Create;
Appearance2045.X3DName := 'ap_r_carpometacarpal_2';
Material2046 := TMaterialNode.Create;
Material2046.X3DName := 'm_r_carpometacarpal_2';
Material2046.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2045.Material := Material2046;
{ .SetAppearance }
Shape2044.Appearance := Appearance2045;
Sphere2047 := TSphereNode.Create;
Sphere2047.Radius := 0.03;
{ .SetGeometry }
Shape2044.Geometry := Sphere2047;
{ .AddChild }
Transform2043.AddChildren([Shape2044]);
{ .AddChildren }
Transform2042.AddChildren([Transform2043]);
{ .AddChildren }
HAnimSegment2040.AddChildren([Transform2042]);
Shape2048 := TShapeNode.Create;
Appearance2049 := TAppearanceNode.Create;
Appearance2049.X3DName := 'apl_r_carpometacarpal_2';
Material2050 := TMaterialNode.Create;
Material2050.X3DName := 'lm_r_carpometacarpal_2';
Material2050.DiffuseColor := Vector3(0,0,0);
Material2050.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2049.Material := Material2050;
LineProperties2051 := TLinePropertiesNode.Create;
LineProperties2051.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance2049.LineProperties := LineProperties2051;
{ .SetAppearance }
Shape2048.Appearance := Appearance2049;
LineSet2052 := TLineSetNode.Create;
LineSet2052.SetVertexCount([2]);
Coordinate2053 := TCoordinateNode.Create;
Coordinate2053.X3DName := 'lc_r_carpometacarpal_2_0';
Coordinate2053.SetPoint([Vector3(-0.1961,0.8055,-0.0218),Vector3(-0.1961,0.7846,-0.0218)]);
{ .SetCoord }
LineSet2052.Coord := Coordinate2053;
{ .SetGeometry }
Shape2048.Geometry := LineSet2052;
{ .AddChildren }
HAnimSegment2040.AddChildren([Shape2048]);
{ .AddChildren }
HAnimJoint2039.AddChildren([HAnimSegment2040]);
HAnimJoint2054 := THAnimJointNode.Create;
HAnimJoint2054.X3DName := 'hanim_r_metacarpophalangeal_2';
HAnimJoint2054.Center := Vector3(-0.1961,0.7846,-0.0218);
HAnimJoint2054.SetLlimit([-0.2618,-0.0873,-0.5236]);
HAnimJoint2054.SetUlimit([0.2618,0.0873,1.5708]);
HAnimSegment2055 := THAnimSegmentNode.Create;
end;

procedure InitHAnimGimbalJointController22Part172;
begin

HAnimSegment2055.X3DName := 'hanim_r_carpal_proximal_phalanx_2';
TouchSensor2056 := TTouchSensorNode.Create;
TouchSensor2056.X3DName := 'ts_r_metacarpophalangeal_2';
TouchSensor2056.Description := 'r_metacarpophalangeal_2';
{ .AddChildren }
HAnimSegment2055.AddChildren([TouchSensor2056]);
Transform2057 := TTransformNode.Create;
Transform2057.X3DName := 'jx_r_metacarpophalangeal_2';
Transform2057.Translation := Vector3(-0.1961,0.7846,-0.0218);
Transform2058 := TTransformNode.Create;
Shape2059 := TShapeNode.Create;
Appearance2060 := TAppearanceNode.Create;
Appearance2060.X3DName := 'ap_r_metacarpophalangeal_2';
Material2061 := TMaterialNode.Create;
Material2061.X3DName := 'm_r_metacarpophalangeal_2';
Material2061.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2060.Material := Material2061;
{ .SetAppearance }
Shape2059.Appearance := Appearance2060;
Sphere2062 := TSphereNode.Create;
Sphere2062.Radius := 0.03;
{ .SetGeometry }
Shape2059.Geometry := Sphere2062;
{ .AddChild }
Transform2058.AddChildren([Shape2059]);
{ .AddChildren }
Transform2057.AddChildren([Transform2058]);
{ .AddChildren }
HAnimSegment2055.AddChildren([Transform2057]);
Shape2063 := TShapeNode.Create;
Appearance2064 := TAppearanceNode.Create;
Appearance2064.X3DName := 'apl_r_metacarpophalangeal_2';
Material2065 := TMaterialNode.Create;
Material2065.X3DName := 'lm_r_metacarpophalangeal_2';
Material2065.DiffuseColor := Vector3(0,0,0);
Material2065.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2064.Material := Material2065;
LineProperties2066 := TLinePropertiesNode.Create;
LineProperties2066.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance2064.LineProperties := LineProperties2066;
{ .SetAppearance }
Shape2063.Appearance := Appearance2064;
LineSet2067 := TLineSetNode.Create;
LineSet2067.SetVertexCount([2]);
Coordinate2068 := TCoordinateNode.Create;
Coordinate2068.X3DName := 'lc_r_metacarpophalangeal_2_0';
Coordinate2068.SetPoint([Vector3(-0.1961,0.7846,-0.0218),Vector3(-0.1954,0.7393,-0.0185)]);
end;

procedure InitHAnimGimbalJointController22Part173;
begin

{ .SetCoord }
LineSet2067.Coord := Coordinate2068;
{ .SetGeometry }
Shape2063.Geometry := LineSet2067;
{ .AddChildren }
HAnimSegment2055.AddChildren([Shape2063]);
{ .AddChildren }
HAnimJoint2054.AddChildren([HAnimSegment2055]);
HAnimJoint2069 := THAnimJointNode.Create;
HAnimJoint2069.X3DName := 'hanim_r_carpal_proximal_interphalangeal_2';
HAnimJoint2069.Center := Vector3(-0.1954,0.7393,-0.0185);
HAnimJoint2069.SetLlimit([-0.0175,-0.0175,0]);
HAnimJoint2069.SetUlimit([0.0175,0.0175,1.9199]);
HAnimSegment2070 := THAnimSegmentNode.Create;
HAnimSegment2070.X3DName := 'hanim_r_carpal_middle_phalanx_2';
TouchSensor2071 := TTouchSensorNode.Create;
TouchSensor2071.X3DName := 'ts_r_carpal_proximal_interphalangeal_2';
TouchSensor2071.Description := 'r_carpal_proximal_interphalangeal_2';
{ .AddChildren }
HAnimSegment2070.AddChildren([TouchSensor2071]);
Transform2072 := TTransformNode.Create;
Transform2072.X3DName := 'jx_r_carpal_proximal_interphalangeal_2';
Transform2072.Translation := Vector3(-0.1954,0.7393,-0.0185);
Transform2073 := TTransformNode.Create;
Shape2074 := TShapeNode.Create;
Appearance2075 := TAppearanceNode.Create;
Appearance2075.X3DName := 'ap_r_carpal_proximal_interphalangeal_2';
Material2076 := TMaterialNode.Create;
Material2076.X3DName := 'm_r_carpal_proximal_interphalangeal_2';
Material2076.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2075.Material := Material2076;
{ .SetAppearance }
Shape2074.Appearance := Appearance2075;
Sphere2077 := TSphereNode.Create;
Sphere2077.Radius := 0.03;
{ .SetGeometry }
Shape2074.Geometry := Sphere2077;
{ .AddChild }
Transform2073.AddChildren([Shape2074]);
{ .AddChildren }
Transform2072.AddChildren([Transform2073]);
{ .AddChildren }
HAnimSegment2070.AddChildren([Transform2072]);
Shape2078 := TShapeNode.Create;
Appearance2079 := TAppearanceNode.Create;
Appearance2079.X3DName := 'apl_r_carpal_proximal_interphalangeal_2';
Material2080 := TMaterialNode.Create;
Material2080.X3DName := 'lm_r_carpal_proximal_interphalangeal_2';
Material2080.DiffuseColor := Vector3(0,0,0);
Material2080.EmissiveColor := Vector3(0.95,0.45,0.35);
end;

procedure InitHAnimGimbalJointController22Part174;
begin

{ .SetMaterial }
Appearance2079.Material := Material2080;
LineProperties2081 := TLinePropertiesNode.Create;
LineProperties2081.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance2079.LineProperties := LineProperties2081;
{ .SetAppearance }
Shape2078.Appearance := Appearance2079;
LineSet2082 := TLineSetNode.Create;
LineSet2082.SetVertexCount([2]);
Coordinate2083 := TCoordinateNode.Create;
Coordinate2083.X3DName := 'lc_r_carpal_proximal_interphalangeal_2_0';
Coordinate2083.SetPoint([Vector3(-0.1954,0.7393,-0.0185),Vector3(-0.1945,0.7169,-0.0173)]);
{ .SetCoord }
LineSet2082.Coord := Coordinate2083;
{ .SetGeometry }
Shape2078.Geometry := LineSet2082;
{ .AddChildren }
HAnimSegment2070.AddChildren([Shape2078]);
{ .AddChildren }
HAnimJoint2069.AddChildren([HAnimSegment2070]);
HAnimJoint2084 := THAnimJointNode.Create;
HAnimJoint2084.X3DName := 'hanim_r_carpal_distal_interphalangeal_2';
HAnimJoint2084.Center := Vector3(-0.1945,0.7169,-0.0173);
HAnimJoint2084.SetLlimit([-0.0175,-0.0175,0]);
HAnimJoint2084.SetUlimit([0.0175,0.0175,1.3963]);
HAnimSegment2085 := THAnimSegmentNode.Create;
HAnimSegment2085.X3DName := 'hanim_r_carpal_distal_phalanx_2';
Group2086 := TGroupNode.Create;
Group2086.X3DName := 'jg_r_carpal_distal_interphalangeal_2';
TouchSensor2087 := TTouchSensorNode.Create;
TouchSensor2087.X3DName := 'ts_r_carpal_distal_interphalangeal_2';
TouchSensor2087.Description := 'r_carpal_distal_interphalangeal_2';
{ .AddChildren }
Group2086.AddChildren([TouchSensor2087]);
Transform2088 := TTransformNode.Create;
Transform2088.X3DName := 'jx_r_carpal_distal_interphalangeal_2';
Transform2088.Translation := Vector3(-0.1945,0.7169,-0.0173);
Shape2089 := TShapeNode.Create;
Appearance2090 := TAppearanceNode.Create;
Appearance2090.X3DName := 'ap_r_carpal_distal_interphalangeal_2';
Material2091 := TMaterialNode.Create;
Material2091.X3DName := 'm_r_carpal_distal_interphalangeal_2';
Material2091.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2090.Material := Material2091;
{ .SetAppearance }
Shape2089.Appearance := Appearance2090;
Sphere2092 := TSphereNode.Create;
Sphere2092.Radius := 0.03;
end;

procedure InitHAnimGimbalJointController22Part175;
begin

{ .SetGeometry }
Shape2089.Geometry := Sphere2092;
{ .AddChild }
Transform2088.AddChildren([Shape2089]);
{ .AddChildren }
Group2086.AddChildren([Transform2088]);
Shape2093 := TShapeNode.Create;
Appearance2094 := TAppearanceNode.Create;
Appearance2094.X3DName := 'apl_r_carpal_distal_interphalangeal_2';
Material2095 := TMaterialNode.Create;
Material2095.X3DName := 'lm_r_carpal_distal_interphalangeal_2';
Material2095.DiffuseColor := Vector3(0,0,0);
Material2095.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2094.Material := Material2095;
LineProperties2096 := TLinePropertiesNode.Create;
LineProperties2096.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance2094.LineProperties := LineProperties2096;
{ .SetAppearance }
Shape2093.Appearance := Appearance2094;
LineSet2097 := TLineSetNode.Create;
LineSet2097.SetVertexCount([2]);
Coordinate2098 := TCoordinateNode.Create;
Coordinate2098.X3DName := 'lc_r_carpal_distal_interphalangeal_2_0';
Coordinate2098.SetPoint([Vector3(-0.1945,0.7169,-0.0173),Vector3(-0.1936,0.6945,-0.0161)]);
{ .SetCoord }
LineSet2097.Coord := Coordinate2098;
{ .SetGeometry }
Shape2093.Geometry := LineSet2097;
{ .AddChildren }
Group2086.AddChildren([Shape2093]);
{ .AddChildren }
HAnimSegment2085.AddChildren([Group2086]);
{ .AddChildren }
HAnimJoint2084.AddChildren([HAnimSegment2085]);
{ .AddChildren }
HAnimJoint2069.AddChildren([HAnimJoint2084]);
{ .AddChildren }
HAnimJoint2054.AddChildren([HAnimJoint2069]);
{ .AddChildren }
HAnimJoint2039.AddChildren([HAnimJoint2054]);
{ .AddChildren }
HAnimJoint2024.AddChildren([HAnimJoint2039]);
{ .AddChildren }
HAnimJoint1937.AddChildren([HAnimJoint2024]);
HAnimJoint2099 := THAnimJointNode.Create;
HAnimJoint2099.X3DName := 'hanim_r_midcarpal_3';
HAnimJoint2099.Center := Vector3(-0.1809,0.7,-0.1067);
HAnimJoint2099.SetLlimit([-0.1396,-0.0873,-0.1396]);
HAnimJoint2099.SetUlimit([0.1396,0.0873,0.1396]);
HAnimSegment2100 := THAnimSegmentNode.Create;
HAnimSegment2100.X3DName := 'hanim_r_capitate';
TouchSensor2101 := TTouchSensorNode.Create;
TouchSensor2101.X3DName := 'ts_r_midcarpal_3';
TouchSensor2101.Description := 'r_midcarpal_3';
end;

procedure InitHAnimGimbalJointController22Part176;
begin

{ .AddChildren }
HAnimSegment2100.AddChildren([TouchSensor2101]);
Transform2102 := TTransformNode.Create;
Transform2102.X3DName := 'jx_r_midcarpal_3';
Transform2102.Translation := Vector3(-0.1809,0.7,-0.1067);
Transform2103 := TTransformNode.Create;
Shape2104 := TShapeNode.Create;
Appearance2105 := TAppearanceNode.Create;
Appearance2105.X3DName := 'ap_r_midcarpal_3';
Material2106 := TMaterialNode.Create;
Material2106.X3DName := 'm_r_midcarpal_3';
Material2106.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2105.Material := Material2106;
{ .SetAppearance }
Shape2104.Appearance := Appearance2105;
Sphere2107 := TSphereNode.Create;
Sphere2107.Radius := 0.03;
{ .SetGeometry }
Shape2104.Geometry := Sphere2107;
{ .AddChild }
Transform2103.AddChildren([Shape2104]);
{ .AddChildren }
Transform2102.AddChildren([Transform2103]);
{ .AddChildren }
HAnimSegment2100.AddChildren([Transform2102]);
Shape2108 := TShapeNode.Create;
Appearance2109 := TAppearanceNode.Create;
Appearance2109.X3DName := 'apl_r_midcarpal_3';
Material2110 := TMaterialNode.Create;
Material2110.X3DName := 'lm_r_midcarpal_3';
Material2110.DiffuseColor := Vector3(0,0,0);
Material2110.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2109.Material := Material2110;
LineProperties2111 := TLinePropertiesNode.Create;
LineProperties2111.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance2109.LineProperties := LineProperties2111;
{ .SetAppearance }
Shape2108.Appearance := Appearance2109;
LineSet2112 := TLineSetNode.Create;
LineSet2112.SetVertexCount([2]);
Coordinate2113 := TCoordinateNode.Create;
Coordinate2113.X3DName := 'lc_r_midcarpal_3_0';
Coordinate2113.SetPoint([Vector3(-0.1809,0.7,-0.1067),Vector3(-0.1972,0.806,-0.0468)]);
{ .SetCoord }
LineSet2112.Coord := Coordinate2113;
{ .SetGeometry }
Shape2108.Geometry := LineSet2112;
{ .AddChildren }
HAnimSegment2100.AddChildren([Shape2108]);
{ .AddChildren }
HAnimJoint2099.AddChildren([HAnimSegment2100]);
end;

procedure InitHAnimGimbalJointController22Part177;
begin

HAnimJoint2114 := THAnimJointNode.Create;
HAnimJoint2114.X3DName := 'hanim_r_carpometacarpal_3';
HAnimJoint2114.Center := Vector3(-0.1972,0.806,-0.0468);
HAnimJoint2114.SetLlimit([-0.0873,-0.0175,-0.1396]);
HAnimJoint2114.SetUlimit([0.0873,0.0175,0.1396]);
HAnimSegment2115 := THAnimSegmentNode.Create;
HAnimSegment2115.X3DName := 'hanim_r_metacarpal_3';
TouchSensor2116 := TTouchSensorNode.Create;
TouchSensor2116.X3DName := 'ts_r_carpometacarpal_3';
TouchSensor2116.Description := 'r_carpometacarpal_3';
{ .AddChildren }
HAnimSegment2115.AddChildren([TouchSensor2116]);
Transform2117 := TTransformNode.Create;
Transform2117.X3DName := 'jx_r_carpometacarpal_3';
Transform2117.Translation := Vector3(-0.1972,0.806,-0.0468);
Transform2118 := TTransformNode.Create;
Shape2119 := TShapeNode.Create;
Appearance2120 := TAppearanceNode.Create;
Appearance2120.X3DName := 'ap_r_carpometacarpal_3';
Material2121 := TMaterialNode.Create;
Material2121.X3DName := 'm_r_carpometacarpal_3';
Material2121.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2120.Material := Material2121;
{ .SetAppearance }
Shape2119.Appearance := Appearance2120;
Sphere2122 := TSphereNode.Create;
Sphere2122.Radius := 0.03;
{ .SetGeometry }
Shape2119.Geometry := Sphere2122;
{ .AddChild }
Transform2118.AddChildren([Shape2119]);
{ .AddChildren }
Transform2117.AddChildren([Transform2118]);
{ .AddChildren }
HAnimSegment2115.AddChildren([Transform2117]);
Shape2123 := TShapeNode.Create;
Appearance2124 := TAppearanceNode.Create;
Appearance2124.X3DName := 'apl_r_carpometacarpal_3';
Material2125 := TMaterialNode.Create;
Material2125.X3DName := 'lm_r_carpometacarpal_3';
Material2125.DiffuseColor := Vector3(0,0,0);
Material2125.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2124.Material := Material2125;
LineProperties2126 := TLinePropertiesNode.Create;
LineProperties2126.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance2124.LineProperties := LineProperties2126;
end;

procedure InitHAnimGimbalJointController22Part178;
begin

{ .SetAppearance }
Shape2123.Appearance := Appearance2124;
LineSet2127 := TLineSetNode.Create;
LineSet2127.SetVertexCount([2]);
Coordinate2128 := TCoordinateNode.Create;
Coordinate2128.X3DName := 'lc_r_carpometacarpal_3_0';
Coordinate2128.SetPoint([Vector3(-0.1972,0.806,-0.0468),Vector3(-0.1972,0.7849,-0.0468)]);
{ .SetCoord }
LineSet2127.Coord := Coordinate2128;
{ .SetGeometry }
Shape2123.Geometry := LineSet2127;
{ .AddChildren }
HAnimSegment2115.AddChildren([Shape2123]);
{ .AddChildren }
HAnimJoint2114.AddChildren([HAnimSegment2115]);
HAnimJoint2129 := THAnimJointNode.Create;
HAnimJoint2129.X3DName := 'hanim_r_metacarpophalangeal_3';
HAnimJoint2129.Center := Vector3(-0.1972,0.7849,-0.0468);
HAnimJoint2129.SetLlimit([-0.2618,-0.0873,-0.5236]);
HAnimJoint2129.SetUlimit([0.2618,0.0873,1.5708]);
HAnimSegment2130 := THAnimSegmentNode.Create;
HAnimSegment2130.X3DName := 'hanim_r_carpal_proximal_phalanx_3';
TouchSensor2131 := TTouchSensorNode.Create;
TouchSensor2131.X3DName := 'ts_r_metacarpophalangeal_3';
TouchSensor2131.Description := 'r_metacarpophalangeal_3';
{ .AddChildren }
HAnimSegment2130.AddChildren([TouchSensor2131]);
Transform2132 := TTransformNode.Create;
Transform2132.X3DName := 'jx_r_metacarpophalangeal_3';
Transform2132.Translation := Vector3(-0.1972,0.7849,-0.0468);
Transform2133 := TTransformNode.Create;
Shape2134 := TShapeNode.Create;
Appearance2135 := TAppearanceNode.Create;
Appearance2135.X3DName := 'ap_r_metacarpophalangeal_3';
Material2136 := TMaterialNode.Create;
Material2136.X3DName := 'm_r_metacarpophalangeal_3';
Material2136.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2135.Material := Material2136;
{ .SetAppearance }
Shape2134.Appearance := Appearance2135;
Sphere2137 := TSphereNode.Create;
Sphere2137.Radius := 0.03;
{ .SetGeometry }
Shape2134.Geometry := Sphere2137;
{ .AddChild }
Transform2133.AddChildren([Shape2134]);
{ .AddChildren }
Transform2132.AddChildren([Transform2133]);
{ .AddChildren }
HAnimSegment2130.AddChildren([Transform2132]);
Shape2138 := TShapeNode.Create;
end;

procedure InitHAnimGimbalJointController22Part179;
begin

Appearance2139 := TAppearanceNode.Create;
Appearance2139.X3DName := 'apl_r_metacarpophalangeal_3';
Material2140 := TMaterialNode.Create;
Material2140.X3DName := 'lm_r_metacarpophalangeal_3';
Material2140.DiffuseColor := Vector3(0,0,0);
Material2140.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2139.Material := Material2140;
LineProperties2141 := TLinePropertiesNode.Create;
LineProperties2141.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance2139.LineProperties := LineProperties2141;
{ .SetAppearance }
Shape2138.Appearance := Appearance2139;
LineSet2142 := TLineSetNode.Create;
LineSet2142.SetVertexCount([2]);
Coordinate2143 := TCoordinateNode.Create;
Coordinate2143.X3DName := 'lc_r_metacarpophalangeal_3_0';
Coordinate2143.SetPoint([Vector3(-0.1972,0.7849,-0.0468),Vector3(-0.195,0.7304,-0.0441)]);
{ .SetCoord }
LineSet2142.Coord := Coordinate2143;
{ .SetGeometry }
Shape2138.Geometry := LineSet2142;
{ .AddChildren }
HAnimSegment2130.AddChildren([Shape2138]);
{ .AddChildren }
HAnimJoint2129.AddChildren([HAnimSegment2130]);
HAnimJoint2144 := THAnimJointNode.Create;
HAnimJoint2144.X3DName := 'hanim_r_carpal_proximal_interphalangeal_3';
HAnimJoint2144.Center := Vector3(-0.195,0.7304,-0.0441);
HAnimJoint2144.SetLlimit([-0.0175,-0.0175,0]);
HAnimJoint2144.SetUlimit([0.0175,0.0175,1.9199]);
HAnimSegment2145 := THAnimSegmentNode.Create;
HAnimSegment2145.X3DName := 'hanim_r_carpal_middle_phalanx_3';
TouchSensor2146 := TTouchSensorNode.Create;
TouchSensor2146.X3DName := 'ts_r_carpal_proximal_interphalangeal_3';
TouchSensor2146.Description := 'r_carpal_proximal_interphalangeal_3';
{ .AddChildren }
HAnimSegment2145.AddChildren([TouchSensor2146]);
Transform2147 := TTransformNode.Create;
Transform2147.X3DName := 'jx_r_carpal_proximal_interphalangeal_3';
Transform2147.Translation := Vector3(-0.195,0.7304,-0.0441);
Transform2148 := TTransformNode.Create;
Shape2149 := TShapeNode.Create;
Appearance2150 := TAppearanceNode.Create;
Appearance2150.X3DName := 'ap_r_carpal_proximal_interphalangeal_3';
Material2151 := TMaterialNode.Create;
Material2151.X3DName := 'm_r_carpal_proximal_interphalangeal_3';
end;

procedure InitHAnimGimbalJointController22Part180;
begin

Material2151.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2150.Material := Material2151;
{ .SetAppearance }
Shape2149.Appearance := Appearance2150;
Sphere2152 := TSphereNode.Create;
Sphere2152.Radius := 0.03;
{ .SetGeometry }
Shape2149.Geometry := Sphere2152;
{ .AddChild }
Transform2148.AddChildren([Shape2149]);
{ .AddChildren }
Transform2147.AddChildren([Transform2148]);
{ .AddChildren }
HAnimSegment2145.AddChildren([Transform2147]);
Shape2153 := TShapeNode.Create;
Appearance2154 := TAppearanceNode.Create;
Appearance2154.X3DName := 'apl_r_carpal_proximal_interphalangeal_3';
Material2155 := TMaterialNode.Create;
Material2155.X3DName := 'lm_r_carpal_proximal_interphalangeal_3';
Material2155.DiffuseColor := Vector3(0,0,0);
Material2155.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2154.Material := Material2155;
LineProperties2156 := TLinePropertiesNode.Create;
LineProperties2156.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance2154.LineProperties := LineProperties2156;
{ .SetAppearance }
Shape2153.Appearance := Appearance2154;
LineSet2157 := TLineSetNode.Create;
LineSet2157.SetVertexCount([2]);
Coordinate2158 := TCoordinateNode.Create;
Coordinate2158.X3DName := 'lc_r_carpal_proximal_interphalangeal_3_0';
Coordinate2158.SetPoint([Vector3(-0.195,0.7304,-0.0441),Vector3(-0.1939,0.7042,-0.0432)]);
{ .SetCoord }
LineSet2157.Coord := Coordinate2158;
{ .SetGeometry }
Shape2153.Geometry := LineSet2157;
{ .AddChildren }
HAnimSegment2145.AddChildren([Shape2153]);
{ .AddChildren }
HAnimJoint2144.AddChildren([HAnimSegment2145]);
HAnimJoint2159 := THAnimJointNode.Create;
HAnimJoint2159.X3DName := 'hanim_r_carpal_distal_interphalangeal_3';
HAnimJoint2159.Center := Vector3(-0.1939,0.7042,-0.0432);
HAnimJoint2159.SetLlimit([-0.0175,-0.0175,0]);
HAnimJoint2159.SetUlimit([0.0175,0.0175,1.3963]);
HAnimSegment2160 := THAnimSegmentNode.Create;
HAnimSegment2160.X3DName := 'hanim_r_carpal_distal_phalanx_3';
Group2161 := TGroupNode.Create;
Group2161.X3DName := 'jg_r_carpal_distal_interphalangeal_3';
TouchSensor2162 := TTouchSensorNode.Create;
end;

procedure InitHAnimGimbalJointController22Part181;
begin

TouchSensor2162.X3DName := 'ts_r_carpal_distal_interphalangeal_3';
TouchSensor2162.Description := 'r_carpal_distal_interphalangeal_3';
{ .AddChildren }
Group2161.AddChildren([TouchSensor2162]);
Transform2163 := TTransformNode.Create;
Transform2163.X3DName := 'jx_r_carpal_distal_interphalangeal_3';
Transform2163.Translation := Vector3(-0.1939,0.7042,-0.0432);
Shape2164 := TShapeNode.Create;
Appearance2165 := TAppearanceNode.Create;
Appearance2165.X3DName := 'ap_r_carpal_distal_interphalangeal_3';
Material2166 := TMaterialNode.Create;
Material2166.X3DName := 'm_r_carpal_distal_interphalangeal_3';
Material2166.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2165.Material := Material2166;
{ .SetAppearance }
Shape2164.Appearance := Appearance2165;
Sphere2167 := TSphereNode.Create;
Sphere2167.Radius := 0.03;
{ .SetGeometry }
Shape2164.Geometry := Sphere2167;
{ .AddChild }
Transform2163.AddChildren([Shape2164]);
{ .AddChildren }
Group2161.AddChildren([Transform2163]);
Shape2168 := TShapeNode.Create;
Appearance2169 := TAppearanceNode.Create;
Appearance2169.X3DName := 'apl_r_carpal_distal_interphalangeal_3';
Material2170 := TMaterialNode.Create;
Material2170.X3DName := 'lm_r_carpal_distal_interphalangeal_3';
Material2170.DiffuseColor := Vector3(0,0,0);
Material2170.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2169.Material := Material2170;
LineProperties2171 := TLinePropertiesNode.Create;
LineProperties2171.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance2169.LineProperties := LineProperties2171;
{ .SetAppearance }
Shape2168.Appearance := Appearance2169;
LineSet2172 := TLineSetNode.Create;
LineSet2172.SetVertexCount([2]);
Coordinate2173 := TCoordinateNode.Create;
Coordinate2173.X3DName := 'lc_r_carpal_distal_interphalangeal_3_0';
Coordinate2173.SetPoint([Vector3(-0.1939,0.7042,-0.0432),Vector3(-0.1928,0.678,-0.0423)]);
{ .SetCoord }
LineSet2172.Coord := Coordinate2173;
{ .SetGeometry }
Shape2168.Geometry := LineSet2172;
{ .AddChildren }
Group2161.AddChildren([Shape2168]);
{ .AddChildren }
HAnimSegment2160.AddChildren([Group2161]);
end;

procedure InitHAnimGimbalJointController22Part182;
begin

{ .AddChildren }
HAnimJoint2159.AddChildren([HAnimSegment2160]);
{ .AddChildren }
HAnimJoint2144.AddChildren([HAnimJoint2159]);
{ .AddChildren }
HAnimJoint2129.AddChildren([HAnimJoint2144]);
{ .AddChildren }
HAnimJoint2114.AddChildren([HAnimJoint2129]);
{ .AddChildren }
HAnimJoint2099.AddChildren([HAnimJoint2114]);
{ .AddChildren }
HAnimJoint1937.AddChildren([HAnimJoint2099]);
HAnimJoint2174 := THAnimJointNode.Create;
HAnimJoint2174.X3DName := 'hanim_r_midcarpal_4_5';
HAnimJoint2174.Center := Vector3(-0.1809,0.6973,-0.1276);
HAnimJoint2174.SetLlimit([-0.1396,-0.0873,-0.1396]);
HAnimJoint2174.SetUlimit([0.1396,0.0873,0.1396]);
HAnimSegment2175 := THAnimSegmentNode.Create;
HAnimSegment2175.X3DName := 'hanim_r_hamate';
TouchSensor2176 := TTouchSensorNode.Create;
TouchSensor2176.X3DName := 'ts_r_midcarpal_4_5';
TouchSensor2176.Description := 'r_midcarpal_4_5';
{ .AddChildren }
HAnimSegment2175.AddChildren([TouchSensor2176]);
Transform2177 := TTransformNode.Create;
Transform2177.X3DName := 'jx_r_midcarpal_4_5';
Transform2177.Translation := Vector3(-0.1809,0.6973,-0.1276);
Transform2178 := TTransformNode.Create;
Shape2179 := TShapeNode.Create;
Appearance2180 := TAppearanceNode.Create;
Appearance2180.X3DName := 'ap_r_midcarpal_4_5';
Material2181 := TMaterialNode.Create;
Material2181.X3DName := 'm_r_midcarpal_4_5';
Material2181.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2180.Material := Material2181;
{ .SetAppearance }
Shape2179.Appearance := Appearance2180;
Sphere2182 := TSphereNode.Create;
Sphere2182.Radius := 0.03;
{ .SetGeometry }
Shape2179.Geometry := Sphere2182;
{ .AddChild }
Transform2178.AddChildren([Shape2179]);
{ .AddChildren }
Transform2177.AddChildren([Transform2178]);
{ .AddChildren }
HAnimSegment2175.AddChildren([Transform2177]);
Shape2183 := TShapeNode.Create;
Appearance2184 := TAppearanceNode.Create;
Appearance2184.X3DName := 'apl_r_midcarpal_4_5';
Material2185 := TMaterialNode.Create;
Material2185.X3DName := 'lm_r_midcarpal_4_5';
end;

procedure InitHAnimGimbalJointController22Part183;
begin

Material2185.DiffuseColor := Vector3(0,0,0);
Material2185.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2184.Material := Material2185;
LineProperties2186 := TLinePropertiesNode.Create;
LineProperties2186.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance2184.LineProperties := LineProperties2186;
{ .SetAppearance }
Shape2183.Appearance := Appearance2184;
LineSet2187 := TLineSetNode.Create;
LineSet2187.SetVertexCount([2]);
Coordinate2188 := TCoordinateNode.Create;
Coordinate2188.X3DName := 'lc_r_midcarpal_4_5_0';
Coordinate2188.SetPoint([Vector3(-0.1809,0.6973,-0.1276),Vector3(-0.1951,0.8049,-0.0732)]);
{ .SetCoord }
LineSet2187.Coord := Coordinate2188;
{ .SetGeometry }
Shape2183.Geometry := LineSet2187;
{ .AddChildren }
HAnimSegment2175.AddChildren([Shape2183]);
Shape2189 := TShapeNode.Create;
{ .SetAppearance }
Shape2189.Appearance := Appearance2184;
LineSet2191 := TLineSetNode.Create;
LineSet2191.SetVertexCount([2]);
Coordinate2192 := TCoordinateNode.Create;
Coordinate2192.X3DName := 'lc_r_midcarpal_4_5_1';
Coordinate2192.SetPoint([Vector3(-0.1809,0.6973,-0.1276),Vector3(-0.1926,0.8096,-0.0975)]);
{ .SetCoord }
LineSet2191.Coord := Coordinate2192;
{ .SetGeometry }
Shape2189.Geometry := LineSet2191;
{ .AddChildren }
HAnimSegment2175.AddChildren([Shape2189]);
{ .AddChildren }
HAnimJoint2174.AddChildren([HAnimSegment2175]);
HAnimJoint2193 := THAnimJointNode.Create;
HAnimJoint2193.X3DName := 'hanim_r_carpometacarpal_4';
HAnimJoint2193.Center := Vector3(-0.1951,0.8049,-0.0732);
HAnimJoint2193.SetLlimit([-0.0873,-0.0175,-0.1396]);
HAnimJoint2193.SetUlimit([0.0873,0.0175,0.1396]);
HAnimSegment2194 := THAnimSegmentNode.Create;
HAnimSegment2194.X3DName := 'hanim_r_metacarpal_4';
TouchSensor2195 := TTouchSensorNode.Create;
TouchSensor2195.X3DName := 'ts_r_carpometacarpal_4';
TouchSensor2195.Description := 'r_carpometacarpal_4';
{ .AddChildren }
HAnimSegment2194.AddChildren([TouchSensor2195]);
Transform2196 := TTransformNode.Create;
Transform2196.X3DName := 'jx_r_carpometacarpal_4';
Transform2196.Translation := Vector3(-0.1951,0.8049,-0.0732);
end;

procedure InitHAnimGimbalJointController22Part184;
begin

Transform2197 := TTransformNode.Create;
Shape2198 := TShapeNode.Create;
Appearance2199 := TAppearanceNode.Create;
Appearance2199.X3DName := 'ap_r_carpometacarpal_4';
Material2200 := TMaterialNode.Create;
Material2200.X3DName := 'm_r_carpometacarpal_4';
Material2200.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2199.Material := Material2200;
{ .SetAppearance }
Shape2198.Appearance := Appearance2199;
Sphere2201 := TSphereNode.Create;
Sphere2201.Radius := 0.03;
{ .SetGeometry }
Shape2198.Geometry := Sphere2201;
{ .AddChild }
Transform2197.AddChildren([Shape2198]);
{ .AddChildren }
Transform2196.AddChildren([Transform2197]);
{ .AddChildren }
HAnimSegment2194.AddChildren([Transform2196]);
Shape2202 := TShapeNode.Create;
Appearance2203 := TAppearanceNode.Create;
Appearance2203.X3DName := 'apl_r_carpometacarpal_4';
Material2204 := TMaterialNode.Create;
Material2204.X3DName := 'lm_r_carpometacarpal_4';
Material2204.DiffuseColor := Vector3(0,0,0);
Material2204.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2203.Material := Material2204;
LineProperties2205 := TLinePropertiesNode.Create;
LineProperties2205.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance2203.LineProperties := LineProperties2205;
{ .SetAppearance }
Shape2202.Appearance := Appearance2203;
LineSet2206 := TLineSetNode.Create;
LineSet2206.SetVertexCount([2]);
Coordinate2207 := TCoordinateNode.Create;
Coordinate2207.X3DName := 'lc_r_carpometacarpal_4_0';
Coordinate2207.SetPoint([Vector3(-0.1951,0.8049,-0.0732),Vector3(-0.1951,0.7845,-0.0732)]);
{ .SetCoord }
LineSet2206.Coord := Coordinate2207;
{ .SetGeometry }
Shape2202.Geometry := LineSet2206;
{ .AddChildren }
HAnimSegment2194.AddChildren([Shape2202]);
{ .AddChildren }
HAnimJoint2193.AddChildren([HAnimSegment2194]);
HAnimJoint2208 := THAnimJointNode.Create;
HAnimJoint2208.X3DName := 'hanim_r_metacarpophalangeal_4';
HAnimJoint2208.Center := Vector3(-0.1951,0.7845,-0.0732);
HAnimJoint2208.SetLlimit([-0.2618,-0.0873,-0.5236]);
end;

procedure InitHAnimGimbalJointController22Part185;
begin

HAnimJoint2208.SetUlimit([0.2618,0.0873,1.5708]);
HAnimSegment2209 := THAnimSegmentNode.Create;
HAnimSegment2209.X3DName := 'hanim_r_carpal_proximal_phalanx_4';
TouchSensor2210 := TTouchSensorNode.Create;
TouchSensor2210.X3DName := 'ts_r_metacarpophalangeal_4';
TouchSensor2210.Description := 'r_metacarpophalangeal_4';
{ .AddChildren }
HAnimSegment2209.AddChildren([TouchSensor2210]);
Transform2211 := TTransformNode.Create;
Transform2211.X3DName := 'jx_r_metacarpophalangeal_4';
Transform2211.Translation := Vector3(-0.1951,0.7845,-0.0732);
Transform2212 := TTransformNode.Create;
Shape2213 := TShapeNode.Create;
Appearance2214 := TAppearanceNode.Create;
Appearance2214.X3DName := 'ap_r_metacarpophalangeal_4';
Material2215 := TMaterialNode.Create;
Material2215.X3DName := 'm_r_metacarpophalangeal_4';
Material2215.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2214.Material := Material2215;
{ .SetAppearance }
Shape2213.Appearance := Appearance2214;
Sphere2216 := TSphereNode.Create;
Sphere2216.Radius := 0.03;
{ .SetGeometry }
Shape2213.Geometry := Sphere2216;
{ .AddChild }
Transform2212.AddChildren([Shape2213]);
{ .AddChildren }
Transform2211.AddChildren([Transform2212]);
{ .AddChildren }
HAnimSegment2209.AddChildren([Transform2211]);
Shape2217 := TShapeNode.Create;
Appearance2218 := TAppearanceNode.Create;
Appearance2218.X3DName := 'apl_r_metacarpophalangeal_4';
Material2219 := TMaterialNode.Create;
Material2219.X3DName := 'lm_r_metacarpophalangeal_4';
Material2219.DiffuseColor := Vector3(0,0,0);
Material2219.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2218.Material := Material2219;
LineProperties2220 := TLinePropertiesNode.Create;
LineProperties2220.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance2218.LineProperties := LineProperties2220;
{ .SetAppearance }
Shape2217.Appearance := Appearance2218;
LineSet2221 := TLineSetNode.Create;
LineSet2221.SetVertexCount([2]);
Coordinate2222 := TCoordinateNode.Create;
end;

procedure InitHAnimGimbalJointController22Part186;
begin

Coordinate2222.X3DName := 'lc_r_metacarpophalangeal_4_0';
Coordinate2222.SetPoint([Vector3(-0.1951,0.7845,-0.0732),Vector3(-0.192,0.7318,-0.0716)]);
{ .SetCoord }
LineSet2221.Coord := Coordinate2222;
{ .SetGeometry }
Shape2217.Geometry := LineSet2221;
{ .AddChildren }
HAnimSegment2209.AddChildren([Shape2217]);
{ .AddChildren }
HAnimJoint2208.AddChildren([HAnimSegment2209]);
HAnimJoint2223 := THAnimJointNode.Create;
HAnimJoint2223.X3DName := 'hanim_r_carpal_proximal_interphalangeal_4';
HAnimJoint2223.Center := Vector3(-0.192,0.7318,-0.0716);
HAnimJoint2223.SetLlimit([-0.0175,-0.0175,0]);
HAnimJoint2223.SetUlimit([0.0175,0.0175,1.9199]);
HAnimSegment2224 := THAnimSegmentNode.Create;
HAnimSegment2224.X3DName := 'hanim_r_carpal_middle_phalanx_4';
TouchSensor2225 := TTouchSensorNode.Create;
TouchSensor2225.X3DName := 'ts_r_carpal_proximal_interphalangeal_4';
TouchSensor2225.Description := 'r_carpal_proximal_interphalangeal_4';
{ .AddChildren }
HAnimSegment2224.AddChildren([TouchSensor2225]);
Transform2226 := TTransformNode.Create;
Transform2226.X3DName := 'jx_r_carpal_proximal_interphalangeal_4';
Transform2226.Translation := Vector3(-0.192,0.7318,-0.0716);
Transform2227 := TTransformNode.Create;
Shape2228 := TShapeNode.Create;
Appearance2229 := TAppearanceNode.Create;
Appearance2229.X3DName := 'ap_r_carpal_proximal_interphalangeal_4';
Material2230 := TMaterialNode.Create;
Material2230.X3DName := 'm_r_carpal_proximal_interphalangeal_4';
Material2230.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2229.Material := Material2230;
{ .SetAppearance }
Shape2228.Appearance := Appearance2229;
Sphere2231 := TSphereNode.Create;
Sphere2231.Radius := 0.03;
{ .SetGeometry }
Shape2228.Geometry := Sphere2231;
{ .AddChild }
Transform2227.AddChildren([Shape2228]);
{ .AddChildren }
Transform2226.AddChildren([Transform2227]);
{ .AddChildren }
HAnimSegment2224.AddChildren([Transform2226]);
Shape2232 := TShapeNode.Create;
Appearance2233 := TAppearanceNode.Create;
Appearance2233.X3DName := 'apl_r_carpal_proximal_interphalangeal_4';
Material2234 := TMaterialNode.Create;
Material2234.X3DName := 'lm_r_carpal_proximal_interphalangeal_4';
end;

procedure InitHAnimGimbalJointController22Part187;
begin

Material2234.DiffuseColor := Vector3(0,0,0);
Material2234.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2233.Material := Material2234;
LineProperties2235 := TLinePropertiesNode.Create;
LineProperties2235.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance2233.LineProperties := LineProperties2235;
{ .SetAppearance }
Shape2232.Appearance := Appearance2233;
LineSet2236 := TLineSetNode.Create;
LineSet2236.SetVertexCount([2]);
Coordinate2237 := TCoordinateNode.Create;
Coordinate2237.X3DName := 'lc_r_carpal_proximal_interphalangeal_4_0';
Coordinate2237.SetPoint([Vector3(-0.192,0.7318,-0.0716),Vector3(-0.1908,0.7077,-0.0706)]);
{ .SetCoord }
LineSet2236.Coord := Coordinate2237;
{ .SetGeometry }
Shape2232.Geometry := LineSet2236;
{ .AddChildren }
HAnimSegment2224.AddChildren([Shape2232]);
{ .AddChildren }
HAnimJoint2223.AddChildren([HAnimSegment2224]);
HAnimJoint2238 := THAnimJointNode.Create;
HAnimJoint2238.X3DName := 'hanim_r_carpal_distal_interphalangeal_4';
HAnimJoint2238.Center := Vector3(-0.1908,0.7077,-0.0706);
HAnimJoint2238.SetLlimit([-0.0175,-0.0175,0]);
HAnimJoint2238.SetUlimit([0.0175,0.0175,1.3963]);
HAnimSegment2239 := THAnimSegmentNode.Create;
HAnimSegment2239.X3DName := 'hanim_r_carpal_distal_phalanx_4';
Group2240 := TGroupNode.Create;
Group2240.X3DName := 'jg_r_carpal_distal_interphalangeal_4';
TouchSensor2241 := TTouchSensorNode.Create;
TouchSensor2241.X3DName := 'ts_r_carpal_distal_interphalangeal_4';
TouchSensor2241.Description := 'r_carpal_distal_interphalangeal_4';
{ .AddChildren }
Group2240.AddChildren([TouchSensor2241]);
Transform2242 := TTransformNode.Create;
Transform2242.X3DName := 'jx_r_carpal_distal_interphalangeal_4';
Transform2242.Translation := Vector3(-0.1908,0.7077,-0.0706);
Shape2243 := TShapeNode.Create;
Appearance2244 := TAppearanceNode.Create;
Appearance2244.X3DName := 'ap_r_carpal_distal_interphalangeal_4';
Material2245 := TMaterialNode.Create;
Material2245.X3DName := 'm_r_carpal_distal_interphalangeal_4';
Material2245.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2244.Material := Material2245;
{ .SetAppearance }
Shape2243.Appearance := Appearance2244;
end;

procedure InitHAnimGimbalJointController22Part188;
begin

Sphere2246 := TSphereNode.Create;
Sphere2246.Radius := 0.03;
{ .SetGeometry }
Shape2243.Geometry := Sphere2246;
{ .AddChild }
Transform2242.AddChildren([Shape2243]);
{ .AddChildren }
Group2240.AddChildren([Transform2242]);
Shape2247 := TShapeNode.Create;
Appearance2248 := TAppearanceNode.Create;
Appearance2248.X3DName := 'apl_r_carpal_distal_interphalangeal_4';
Material2249 := TMaterialNode.Create;
Material2249.X3DName := 'lm_r_carpal_distal_interphalangeal_4';
Material2249.DiffuseColor := Vector3(0,0,0);
Material2249.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2248.Material := Material2249;
LineProperties2250 := TLinePropertiesNode.Create;
LineProperties2250.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance2248.LineProperties := LineProperties2250;
{ .SetAppearance }
Shape2247.Appearance := Appearance2248;
LineSet2251 := TLineSetNode.Create;
LineSet2251.SetVertexCount([2]);
Coordinate2252 := TCoordinateNode.Create;
Coordinate2252.X3DName := 'lc_r_carpal_distal_interphalangeal_4_0';
Coordinate2252.SetPoint([Vector3(-0.1908,0.7077,-0.0706),Vector3(-0.1896,0.6836,-0.0696)]);
{ .SetCoord }
LineSet2251.Coord := Coordinate2252;
{ .SetGeometry }
Shape2247.Geometry := LineSet2251;
{ .AddChildren }
Group2240.AddChildren([Shape2247]);
{ .AddChildren }
HAnimSegment2239.AddChildren([Group2240]);
{ .AddChildren }
HAnimJoint2238.AddChildren([HAnimSegment2239]);
{ .AddChildren }
HAnimJoint2223.AddChildren([HAnimJoint2238]);
{ .AddChildren }
HAnimJoint2208.AddChildren([HAnimJoint2223]);
{ .AddChildren }
HAnimJoint2193.AddChildren([HAnimJoint2208]);
{ .AddChildren }
HAnimJoint2174.AddChildren([HAnimJoint2193]);
HAnimJoint2253 := THAnimJointNode.Create;
HAnimJoint2253.X3DName := 'hanim_r_carpometacarpal_5';
HAnimJoint2253.Center := Vector3(-0.1926,0.8096,-0.0975);
HAnimJoint2253.SetLlimit([-0.0873,-0.0175,-0.1396]);
HAnimJoint2253.SetUlimit([0.0873,0.0175,0.1396]);
HAnimSegment2254 := THAnimSegmentNode.Create;
HAnimSegment2254.X3DName := 'hanim_r_metacarpal_5';
TouchSensor2255 := TTouchSensorNode.Create;
TouchSensor2255.X3DName := 'ts_r_carpometacarpal_5';
end;

procedure InitHAnimGimbalJointController22Part189;
begin

TouchSensor2255.Description := 'r_carpometacarpal_5';
{ .AddChildren }
HAnimSegment2254.AddChildren([TouchSensor2255]);
Transform2256 := TTransformNode.Create;
Transform2256.X3DName := 'jx_r_carpometacarpal_5';
Transform2256.Translation := Vector3(-0.1926,0.8096,-0.0975);
Transform2257 := TTransformNode.Create;
Shape2258 := TShapeNode.Create;
Appearance2259 := TAppearanceNode.Create;
Appearance2259.X3DName := 'ap_r_carpometacarpal_5';
Material2260 := TMaterialNode.Create;
Material2260.X3DName := 'm_r_carpometacarpal_5';
Material2260.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2259.Material := Material2260;
{ .SetAppearance }
Shape2258.Appearance := Appearance2259;
Sphere2261 := TSphereNode.Create;
Sphere2261.Radius := 0.03;
{ .SetGeometry }
Shape2258.Geometry := Sphere2261;
{ .AddChild }
Transform2257.AddChildren([Shape2258]);
{ .AddChildren }
Transform2256.AddChildren([Transform2257]);
{ .AddChildren }
HAnimSegment2254.AddChildren([Transform2256]);
Shape2262 := TShapeNode.Create;
Appearance2263 := TAppearanceNode.Create;
Appearance2263.X3DName := 'apl_r_carpometacarpal_5';
Material2264 := TMaterialNode.Create;
Material2264.X3DName := 'lm_r_carpometacarpal_5';
Material2264.DiffuseColor := Vector3(0,0,0);
Material2264.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2263.Material := Material2264;
LineProperties2265 := TLinePropertiesNode.Create;
LineProperties2265.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance2263.LineProperties := LineProperties2265;
{ .SetAppearance }
Shape2262.Appearance := Appearance2263;
LineSet2266 := TLineSetNode.Create;
LineSet2266.SetVertexCount([2]);
Coordinate2267 := TCoordinateNode.Create;
Coordinate2267.X3DName := 'lc_r_carpometacarpal_5_0';
Coordinate2267.SetPoint([Vector3(-0.1926,0.8096,-0.0975),Vector3(-0.1926,0.7896,-0.0975)]);
{ .SetCoord }
LineSet2266.Coord := Coordinate2267;
{ .SetGeometry }
Shape2262.Geometry := LineSet2266;
{ .AddChildren }
HAnimSegment2254.AddChildren([Shape2262]);
end;

procedure InitHAnimGimbalJointController22Part190;
begin

{ .AddChildren }
HAnimJoint2253.AddChildren([HAnimSegment2254]);
HAnimJoint2268 := THAnimJointNode.Create;
HAnimJoint2268.X3DName := 'hanim_r_metacarpophalangeal_5';
HAnimJoint2268.Center := Vector3(-0.1926,0.7896,-0.0975);
HAnimJoint2268.SetLlimit([-0.2618,-0.0873,-0.5236]);
HAnimJoint2268.SetUlimit([0.2618,0.0873,1.5708]);
HAnimSegment2269 := THAnimSegmentNode.Create;
HAnimSegment2269.X3DName := 'hanim_r_carpal_proximal_phalanx_5';
TouchSensor2270 := TTouchSensorNode.Create;
TouchSensor2270.X3DName := 'ts_r_metacarpophalangeal_5';
TouchSensor2270.Description := 'r_metacarpophalangeal_5';
{ .AddChildren }
HAnimSegment2269.AddChildren([TouchSensor2270]);
Transform2271 := TTransformNode.Create;
Transform2271.X3DName := 'jx_r_metacarpophalangeal_5';
Transform2271.Translation := Vector3(-0.1926,0.7896,-0.0975);
Transform2272 := TTransformNode.Create;
Shape2273 := TShapeNode.Create;
Appearance2274 := TAppearanceNode.Create;
Appearance2274.X3DName := 'ap_r_metacarpophalangeal_5';
Material2275 := TMaterialNode.Create;
Material2275.X3DName := 'm_r_metacarpophalangeal_5';
Material2275.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2274.Material := Material2275;
{ .SetAppearance }
Shape2273.Appearance := Appearance2274;
Sphere2276 := TSphereNode.Create;
Sphere2276.Radius := 0.03;
{ .SetGeometry }
Shape2273.Geometry := Sphere2276;
{ .AddChild }
Transform2272.AddChildren([Shape2273]);
{ .AddChildren }
Transform2271.AddChildren([Transform2272]);
{ .AddChildren }
HAnimSegment2269.AddChildren([Transform2271]);
Shape2277 := TShapeNode.Create;
Appearance2278 := TAppearanceNode.Create;
Appearance2278.X3DName := 'apl_r_metacarpophalangeal_5';
Material2279 := TMaterialNode.Create;
Material2279.X3DName := 'lm_r_metacarpophalangeal_5';
Material2279.DiffuseColor := Vector3(0,0,0);
Material2279.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2278.Material := Material2279;
LineProperties2280 := TLinePropertiesNode.Create;
LineProperties2280.LinewidthScaleFactor := 6;
end;

procedure InitHAnimGimbalJointController22Part191;
begin

{ .SetLineProperties }
Appearance2278.LineProperties := LineProperties2280;
{ .SetAppearance }
Shape2277.Appearance := Appearance2278;
LineSet2281 := TLineSetNode.Create;
LineSet2281.SetVertexCount([2]);
Coordinate2282 := TCoordinateNode.Create;
Coordinate2282.X3DName := 'lc_r_metacarpophalangeal_5_0';
Coordinate2282.SetPoint([Vector3(-0.1926,0.7896,-0.0975),Vector3(-0.1902,0.7483,-0.0963)]);
{ .SetCoord }
LineSet2281.Coord := Coordinate2282;
{ .SetGeometry }
Shape2277.Geometry := LineSet2281;
{ .AddChildren }
HAnimSegment2269.AddChildren([Shape2277]);
{ .AddChildren }
HAnimJoint2268.AddChildren([HAnimSegment2269]);
HAnimJoint2283 := THAnimJointNode.Create;
HAnimJoint2283.X3DName := 'hanim_r_carpal_proximal_interphalangeal_5';
HAnimJoint2283.Center := Vector3(-0.1902,0.7483,-0.0963);
HAnimJoint2283.SetLlimit([-0.0175,-0.0175,0]);
HAnimJoint2283.SetUlimit([0.0175,0.0175,1.9199]);
HAnimSegment2284 := THAnimSegmentNode.Create;
HAnimSegment2284.X3DName := 'hanim_r_carpal_middle_phalanx_5';
TouchSensor2285 := TTouchSensorNode.Create;
TouchSensor2285.X3DName := 'ts_r_carpal_proximal_interphalangeal_5';
TouchSensor2285.Description := 'r_carpal_proximal_interphalangeal_5';
{ .AddChildren }
HAnimSegment2284.AddChildren([TouchSensor2285]);
Transform2286 := TTransformNode.Create;
Transform2286.X3DName := 'jx_r_carpal_proximal_interphalangeal_5';
Transform2286.Translation := Vector3(-0.1902,0.7483,-0.0963);
Transform2287 := TTransformNode.Create;
Shape2288 := TShapeNode.Create;
Appearance2289 := TAppearanceNode.Create;
Appearance2289.X3DName := 'ap_r_carpal_proximal_interphalangeal_5';
Material2290 := TMaterialNode.Create;
Material2290.X3DName := 'm_r_carpal_proximal_interphalangeal_5';
Material2290.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2289.Material := Material2290;
{ .SetAppearance }
Shape2288.Appearance := Appearance2289;
Sphere2291 := TSphereNode.Create;
Sphere2291.Radius := 0.03;
{ .SetGeometry }
Shape2288.Geometry := Sphere2291;
{ .AddChild }
Transform2287.AddChildren([Shape2288]);
{ .AddChildren }
Transform2286.AddChildren([Transform2287]);
{ .AddChildren }
HAnimSegment2284.AddChildren([Transform2286]);
end;

procedure InitHAnimGimbalJointController22Part192;
begin

Shape2292 := TShapeNode.Create;
Appearance2293 := TAppearanceNode.Create;
Appearance2293.X3DName := 'apl_r_carpal_proximal_interphalangeal_5';
Material2294 := TMaterialNode.Create;
Material2294.X3DName := 'lm_r_carpal_proximal_interphalangeal_5';
Material2294.DiffuseColor := Vector3(0,0,0);
Material2294.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2293.Material := Material2294;
LineProperties2295 := TLinePropertiesNode.Create;
LineProperties2295.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance2293.LineProperties := LineProperties2295;
{ .SetAppearance }
Shape2292.Appearance := Appearance2293;
LineSet2296 := TLineSetNode.Create;
LineSet2296.SetVertexCount([2]);
Coordinate2297 := TCoordinateNode.Create;
Coordinate2297.X3DName := 'lc_r_carpal_proximal_interphalangeal_5_0';
Coordinate2297.SetPoint([Vector3(-0.1902,0.7483,-0.0963),Vector3(-0.1908,0.754,-0.096)]);
{ .SetCoord }
LineSet2296.Coord := Coordinate2297;
{ .SetGeometry }
Shape2292.Geometry := LineSet2296;
{ .AddChildren }
HAnimSegment2284.AddChildren([Shape2292]);
{ .AddChildren }
HAnimJoint2283.AddChildren([HAnimSegment2284]);
HAnimJoint2298 := THAnimJointNode.Create;
HAnimJoint2298.X3DName := 'hanim_r_carpal_distal_interphalangeal_5';
HAnimJoint2298.Center := Vector3(-0.1908,0.754,-0.096);
HAnimJoint2298.SetLlimit([-0.0175,-0.0175,0]);
HAnimJoint2298.SetUlimit([0.0175,0.0175,1.3963]);
HAnimSegment2299 := THAnimSegmentNode.Create;
HAnimSegment2299.X3DName := 'hanim_r_carpal_distal_phalanx_5';
Group2300 := TGroupNode.Create;
Group2300.X3DName := 'jg_r_carpal_distal_interphalangeal_5';
TouchSensor2301 := TTouchSensorNode.Create;
TouchSensor2301.X3DName := 'ts_r_carpal_distal_interphalangeal_5';
TouchSensor2301.Description := 'r_carpal_distal_interphalangeal_5';
{ .AddChildren }
Group2300.AddChildren([TouchSensor2301]);
Transform2302 := TTransformNode.Create;
Transform2302.X3DName := 'jx_r_carpal_distal_interphalangeal_5';
Transform2302.Translation := Vector3(-0.1908,0.754,-0.096);
Shape2303 := TShapeNode.Create;
Appearance2304 := TAppearanceNode.Create;
Appearance2304.X3DName := 'ap_r_carpal_distal_interphalangeal_5';
end;

procedure InitHAnimGimbalJointController22Part193;
begin

Material2305 := TMaterialNode.Create;
Material2305.X3DName := 'm_r_carpal_distal_interphalangeal_5';
Material2305.DiffuseColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2304.Material := Material2305;
{ .SetAppearance }
Shape2303.Appearance := Appearance2304;
Sphere2306 := TSphereNode.Create;
Sphere2306.Radius := 0.03;
{ .SetGeometry }
Shape2303.Geometry := Sphere2306;
{ .AddChild }
Transform2302.AddChildren([Shape2303]);
{ .AddChildren }
Group2300.AddChildren([Transform2302]);
Shape2307 := TShapeNode.Create;
Appearance2308 := TAppearanceNode.Create;
Appearance2308.X3DName := 'apl_r_carpal_distal_interphalangeal_5';
Material2309 := TMaterialNode.Create;
Material2309.X3DName := 'lm_r_carpal_distal_interphalangeal_5';
Material2309.DiffuseColor := Vector3(0,0,0);
Material2309.EmissiveColor := Vector3(0.95,0.45,0.35);
{ .SetMaterial }
Appearance2308.Material := Material2309;
LineProperties2310 := TLinePropertiesNode.Create;
LineProperties2310.LinewidthScaleFactor := 6;
{ .SetLineProperties }
Appearance2308.LineProperties := LineProperties2310;
{ .SetAppearance }
Shape2307.Appearance := Appearance2308;
LineSet2311 := TLineSetNode.Create;
LineSet2311.SetVertexCount([2]);
Coordinate2312 := TCoordinateNode.Create;
Coordinate2312.X3DName := 'lc_r_carpal_distal_interphalangeal_5_0';
Coordinate2312.SetPoint([Vector3(-0.1908,0.754,-0.096),Vector3(-0.1924,0.7689,-0.0952)]);
{ .SetCoord }
LineSet2311.Coord := Coordinate2312;
{ .SetGeometry }
Shape2307.Geometry := LineSet2311;
{ .AddChildren }
Group2300.AddChildren([Shape2307]);
{ .AddChildren }
HAnimSegment2299.AddChildren([Group2300]);
{ .AddChildren }
HAnimJoint2298.AddChildren([HAnimSegment2299]);
{ .AddChildren }
HAnimJoint2283.AddChildren([HAnimJoint2298]);
{ .AddChildren }
HAnimJoint2268.AddChildren([HAnimJoint2283]);
{ .AddChildren }
HAnimJoint2253.AddChildren([HAnimJoint2268]);
{ .AddChildren }
HAnimJoint2174.AddChildren([HAnimJoint2253]);
{ .AddChildren }
HAnimJoint1937.AddChildren([HAnimJoint2174]);
{ .AddChildren }
HAnimJoint1922.AddChildren([HAnimJoint1937]);
{ .AddChildren }
HAnimJoint1907.AddChildren([HAnimJoint1922]);
{ .AddChildren }
HAnimJoint1892.AddChildren([HAnimJoint1907]);
end;

procedure InitHAnimGimbalJointController22Part194;
begin

{ .AddChildren }
HAnimJoint1877.AddChildren([HAnimJoint1892]);
{ .AddChildren }
HAnimJoint1169.AddChildren([HAnimJoint1877]);
{ .AddChildren }
HAnimJoint1154.AddChildren([HAnimJoint1169]);
{ .AddChildren }
HAnimJoint1139.AddChildren([HAnimJoint1154]);
{ .AddChildren }
HAnimJoint1124.AddChildren([HAnimJoint1139]);
{ .AddChildren }
HAnimJoint1109.AddChildren([HAnimJoint1124]);
{ .AddChildren }
HAnimJoint1094.AddChildren([HAnimJoint1109]);
{ .AddChildren }
HAnimJoint1079.AddChildren([HAnimJoint1094]);
{ .AddChildren }
HAnimJoint1064.AddChildren([HAnimJoint1079]);
{ .AddChildren }
HAnimJoint1049.AddChildren([HAnimJoint1064]);
{ .AddChildren }
HAnimJoint1034.AddChildren([HAnimJoint1049]);
{ .AddChildren }
HAnimJoint1019.AddChildren([HAnimJoint1034]);
{ .AddChildren }
HAnimJoint1004.AddChildren([HAnimJoint1019]);
{ .AddChildren }
HAnimJoint989.AddChildren([HAnimJoint1004]);
{ .AddChildren }
HAnimJoint974.AddChildren([HAnimJoint989]);
{ .AddChildren }
HAnimJoint959.AddChildren([HAnimJoint974]);
{ .AddChildren }
HAnimJoint944.AddChildren([HAnimJoint959]);
{ .AddChildren }
HAnimJoint929.AddChildren([HAnimJoint944]);
{ .AddChildren }
HAnimJoint19.AddChildren([HAnimJoint929]);
{ .AddSkeleton }
HAnimHumanoid18.SetSkeleton([HAnimJoint19]);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint19);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint38);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint57);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint72);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint87);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint106);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint129);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint144);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint159);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint174);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint189);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint204);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint219);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint234);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint249);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint264);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint279);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint294);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint309);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint324);
end;

procedure InitHAnimGimbalJointController22Part195;
begin

{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint339);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint354);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint373);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint388);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint403);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint418);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint433);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint448);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint463);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint478);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint493);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint508);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint523);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint542);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint565);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint580);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint595);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint610);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint625);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint640);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint655);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint670);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint685);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint700);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint715);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint730);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint745);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint760);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint775);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint790);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint809);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint824);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint839);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint854);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint869);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint884);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint899);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint914);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint929);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint944);
end;

procedure InitHAnimGimbalJointController22Part196;
begin

{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint959);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint974);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint989);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1004);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1019);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1034);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1049);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1064);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1079);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1094);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1109);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1124);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1139);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1154);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1169);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1192);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1207);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1222);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1237);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1252);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1267);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1282);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1297);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1336);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1351);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1366);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1381);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1396);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1411);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1426);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1441);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1456);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1471);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1486);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1501);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1528);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1543);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1558);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1573);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1588);
end;

procedure InitHAnimGimbalJointController22Part197;
begin

{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1603);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1618);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1633);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1648);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1663);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1678);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1693);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1708);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1723);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1738);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1757);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1772);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1787);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1802);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1817);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1832);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1847);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1862);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1877);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1892);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1907);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1922);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1937);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1964);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1979);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint1994);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint2009);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint2024);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint2039);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint2054);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint2069);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint2084);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint2099);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint2114);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint2129);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint2144);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint2159);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint2174);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint2193);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint2208);
end;

procedure InitHAnimGimbalJointController22Part198;
begin

{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint2223);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint2238);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint2253);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint2268);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint2283);
{ .FdJoints.Add }
HAnimHumanoid18.FdJoints.Add(HAnimJoint2298);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment20);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment39);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment58);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment73);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment88);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment107);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment130);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment145);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment160);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment175);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment190);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment205);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment220);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment235);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment250);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment265);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment280);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment295);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment310);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment325);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment340);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment355);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment374);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment389);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment404);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment419);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment434);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment449);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment464);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment479);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment494);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment509);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment524);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment543);
end;

procedure InitHAnimGimbalJointController22Part199;
begin

{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment566);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment581);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment596);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment611);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment626);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment641);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment656);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment671);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment686);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment701);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment716);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment731);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment746);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment761);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment776);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment791);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment810);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment825);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment840);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment855);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment870);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment885);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment900);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment915);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment930);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment945);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment960);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment975);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment990);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1005);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1020);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1035);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1050);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1065);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1080);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1095);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1110);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1125);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1140);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1155);
end;

procedure InitHAnimGimbalJointController22Part200;
begin

{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1170);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1193);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1208);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1223);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1238);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1253);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1268);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1283);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1298);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1337);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1352);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1367);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1382);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1397);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1412);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1427);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1442);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1457);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1472);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1487);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1502);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1529);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1544);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1559);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1574);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1589);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1604);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1619);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1634);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1649);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1664);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1679);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1694);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1709);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1724);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1739);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1758);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1773);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1788);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1803);
end;

procedure InitHAnimGimbalJointController22Part201;
begin

{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1818);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1833);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1848);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1863);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1878);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1893);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1908);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1923);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1938);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1965);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1980);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment1995);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment2010);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment2025);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment2040);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment2055);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment2070);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment2085);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment2100);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment2115);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment2130);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment2145);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment2160);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment2175);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment2194);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment2209);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment2224);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment2239);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment2254);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment2269);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment2284);
{ .FdSegments.Add }
HAnimHumanoid18.FdSegments.Add(HAnimSegment2299);
{ .FdChildren.Add }
Layer15.FdChildren.Add(HAnimHumanoid18);
{ .FdLayers.Add }
LayerSet14.FdLayers.Add(Layer15);
Layer2605 := TLayerNode.Create;
Layer2605.Pickable := True;
Layer2605.SetObjectType(['ALL']);
Background2606 := TBackgroundNode.Create;
{ .FdChildren.Add }
Layer2605.FdChildren.Add(Background2606);
{ ==================== GIMBAL CONTROLLER DISPLAY ==================== }
Transform2607 := TTransformNode.Create;
end;

procedure InitHAnimGimbalJointController22Part202;
begin

Transform2607.X3DName := 'gimbalG';
Transform2607.Translation := Vector3(4.1,1.1,0);
Transform2607.Scale := Vector3(2.9,2.9,1);
Group2608 := TGroupNode.Create;
CylinderSensor2609 := TCylinderSensorNode.Create;
CylinderSensor2609.X3DName := 'csGX';
CylinderSensor2609.AxisRotation := Vector4(0,0,1,-1.5708);
CylinderSensor2609.Description := 'X ring';
{ .AddChildren }
Group2608.AddChildren([CylinderSensor2609]);
Transform2610 := TTransformNode.Create;
Transform2610.X3DName := 'ringGX';
Transform2611 := TTransformNode.Create;
Transform2611.Rotation := Vector4(0,0,1,1.5708);
Shape2612 := TShapeNode.Create;
Appearance2613 := TAppearanceNode.Create;
Material2614 := TMaterialNode.Create;
Material2614.X3DName := 'rmGX';
Material2614.DiffuseColor := Vector3(1,0.2,0.2);
Material2614.EmissiveColor := Vector3(0.3,0.06,0.06);
{ .SetMaterial }
Appearance2613.Material := Material2614;
{ .SetAppearance }
Shape2612.Appearance := Appearance2613;
Extrusion2615 := TExtrusionNode.Create;
Extrusion2615.BeginCap := False;
Extrusion2615.EndCap := False;
Extrusion2615.Solid := False;
Extrusion2615.CreaseAngle := 1.57;
Extrusion2615.SetCrossSection([Vector2(0.045,0),Vector2(0.0318,0.0318),Vector2(0,0.045),Vector2(-0.0318,0.0318),Vector2(-0.045,0),Vector2(-0.0318,-0.0318),Vector2(0,-0.045),Vector2(0.0318,-0.0318),Vector2(0.045,0)]);
Extrusion2615.SetSpine([Vector3(0.6,0,0),Vector3(0.5949,0,0.0783),Vector3(0.5796,0,0.1553),Vector3(0.5543,0,0.2296),Vector3(0.5196,0,0.3),Vector3(0.476,0,0.3653),Vector3(0.4243,0,0.4243),Vector3(0.3653,0,0.476),Vector3(0.3,0,0.5196),Vector3(0.2296,0,0.5543),Vector3(0.1553,0,0.5796),Vector3(0.0783,0,0.5949),Vector3(0,0,0.6),Vector3(-0.0783,0,0.5949),Vector3(-0.1553,0,0.5796),Vector3(-0.2296,0,0.5543),Vector3(-0.3,0,0.5196),Vector3(-0.3653,0,0.476),Vector3(-0.4243,0,0.4243),Vector3(-0.476,0,0.3653),Vector3(-0.5196,0,0.3),Vector3(-0.5543,0,0.2296),Vector3(-0.5796,0,0.1553),Vector3(-0.5949,0,0.0783),Vector3(-0.6,0,0),Vector3(-0.5949,0,-0.0783),Vector3(-0.5796,0,-0.1553),Vector3(-0.5543,0,-0.2296),Vector3(-0.5196,0,-0.3),Vector3(-0.476,0,-0.3653),Vector3(-0.4243,0,-0.4243),Vector3(-0.3653,0,-0.476),Vector3(-0.3,0,-0.5196),Vector3(-0.2296,0,-0.5543),Vector3(-0.1553,0,-0.5796),Vector3(-0.0783,0,-0.5949),Vector3(0,0,-0.6),Vector3(0.0783,0,-0.5949),Vector3(0.1553,0,-0.5796),Vector3(0.2296,0,-0.5543),Vector3(0.3,0,-0.5196),Vector3(0.3653,0,-0.476),Vector3(0.4243,0,-0.4243),Vector3(0.476,0,-0.3653),Vector3(0.5196,0,-0.3),Vector3(0.5543,0,-0.2296),Vector3(0.5796,0,-0.1553),Vector3(0.5949,0,-0.0783),Vector3(0.6,0,0)]);
{ .SetGeometry }
Shape2612.Geometry := Extrusion2615;
{ .AddChild }
Transform2611.AddChildren([Shape2612]);
{ .AddChildren }
Transform2610.AddChildren([Transform2611]);
Group2616 := TGroupNode.Create;
CylinderSensor2617 := TCylinderSensorNode.Create;
CylinderSensor2617.X3DName := 'csGY';
CylinderSensor2617.Description := 'Y ring';
{ .AddChildren }
Group2616.AddChildren([CylinderSensor2617]);
Transform2618 := TTransformNode.Create;
Transform2618.X3DName := 'ringGY';
Transform2619 := TTransformNode.Create;
Shape2620 := TShapeNode.Create;
end;

procedure InitHAnimGimbalJointController22Part203;
begin

Appearance2621 := TAppearanceNode.Create;
Material2622 := TMaterialNode.Create;
Material2622.X3DName := 'rmGY';
Material2622.DiffuseColor := Vector3(0.2,0.9,0.2);
Material2622.EmissiveColor := Vector3(0.06,0.27,0.06);
{ .SetMaterial }
Appearance2621.Material := Material2622;
{ .SetAppearance }
Shape2620.Appearance := Appearance2621;
Extrusion2623 := TExtrusionNode.Create;
Extrusion2623.BeginCap := False;
Extrusion2623.EndCap := False;
Extrusion2623.Solid := False;
Extrusion2623.CreaseAngle := 1.57;
Extrusion2623.SetCrossSection([Vector2(0.045,0),Vector2(0.0318,0.0318),Vector2(0,0.045),Vector2(-0.0318,0.0318),Vector2(-0.045,0),Vector2(-0.0318,-0.0318),Vector2(0,-0.045),Vector2(0.0318,-0.0318),Vector2(0.045,0)]);
Extrusion2623.SetSpine([Vector3(0.48,0,0),Vector3(0.4759,0,0.0627),Vector3(0.4636,0,0.1242),Vector3(0.4435,0,0.1837),Vector3(0.4157,0,0.24),Vector3(0.3808,0,0.2922),Vector3(0.3394,0,0.3394),Vector3(0.2922,0,0.3808),Vector3(0.24,0,0.4157),Vector3(0.1837,0,0.4435),Vector3(0.1242,0,0.4636),Vector3(0.0627,0,0.4759),Vector3(0,0,0.48),Vector3(-0.0627,0,0.4759),Vector3(-0.1242,0,0.4636),Vector3(-0.1837,0,0.4435),Vector3(-0.24,0,0.4157),Vector3(-0.2922,0,0.3808),Vector3(-0.3394,0,0.3394),Vector3(-0.3808,0,0.2922),Vector3(-0.4157,0,0.24),Vector3(-0.4435,0,0.1837),Vector3(-0.4636,0,0.1242),Vector3(-0.4759,0,0.0627),Vector3(-0.48,0,0),Vector3(-0.4759,0,-0.0627),Vector3(-0.4636,0,-0.1242),Vector3(-0.4435,0,-0.1837),Vector3(-0.4157,0,-0.24),Vector3(-0.3808,0,-0.2922),Vector3(-0.3394,0,-0.3394),Vector3(-0.2922,0,-0.3808),Vector3(-0.24,0,-0.4157),Vector3(-0.1837,0,-0.4435),Vector3(-0.1242,0,-0.4636),Vector3(-0.0627,0,-0.4759),Vector3(0,0,-0.48),Vector3(0.0627,0,-0.4759),Vector3(0.1242,0,-0.4636),Vector3(0.1837,0,-0.4435),Vector3(0.24,0,-0.4157),Vector3(0.2922,0,-0.3808),Vector3(0.3394,0,-0.3394),Vector3(0.3808,0,-0.2922),Vector3(0.4157,0,-0.24),Vector3(0.4435,0,-0.1837),Vector3(0.4636,0,-0.1242),Vector3(0.4759,0,-0.0627),Vector3(0.48,0,0)]);
{ .SetGeometry }
Shape2620.Geometry := Extrusion2623;
{ .AddChild }
Transform2619.AddChildren([Shape2620]);
{ .AddChildren }
Transform2618.AddChildren([Transform2619]);
Group2624 := TGroupNode.Create;
CylinderSensor2625 := TCylinderSensorNode.Create;
CylinderSensor2625.X3DName := 'csGZ';
CylinderSensor2625.AxisRotation := Vector4(1,0,0,1.5708);
CylinderSensor2625.Description := 'Z ring';
{ .AddChildren }
Group2624.AddChildren([CylinderSensor2625]);
Transform2626 := TTransformNode.Create;
Transform2626.X3DName := 'ringGZ';
Transform2627 := TTransformNode.Create;
Transform2627.Rotation := Vector4(1,0,0,1.5708);
Shape2628 := TShapeNode.Create;
Appearance2629 := TAppearanceNode.Create;
Material2630 := TMaterialNode.Create;
Material2630.X3DName := 'rmGZ';
Material2630.DiffuseColor := Vector3(0.3,0.5,1);
Material2630.EmissiveColor := Vector3(0.09,0.15,0.3);
{ .SetMaterial }
Appearance2629.Material := Material2630;
{ .SetAppearance }
Shape2628.Appearance := Appearance2629;
Extrusion2631 := TExtrusionNode.Create;
Extrusion2631.BeginCap := False;
Extrusion2631.EndCap := False;
Extrusion2631.Solid := False;
Extrusion2631.CreaseAngle := 1.57;
end;

procedure InitHAnimGimbalJointController22Part204;
begin

Extrusion2631.SetCrossSection([Vector2(0.045,0),Vector2(0.0318,0.0318),Vector2(0,0.045),Vector2(-0.0318,0.0318),Vector2(-0.045,0),Vector2(-0.0318,-0.0318),Vector2(0,-0.045),Vector2(0.0318,-0.0318),Vector2(0.045,0)]);
Extrusion2631.SetSpine([Vector3(0.36,0,0),Vector3(0.3569,0,0.047),Vector3(0.3477,0,0.0932),Vector3(0.3326,0,0.1378),Vector3(0.3118,0,0.18),Vector3(0.2856,0,0.2192),Vector3(0.2546,0,0.2546),Vector3(0.2192,0,0.2856),Vector3(0.18,0,0.3118),Vector3(0.1378,0,0.3326),Vector3(0.0932,0,0.3477),Vector3(0.047,0,0.3569),Vector3(0,0,0.36),Vector3(-0.047,0,0.3569),Vector3(-0.0932,0,0.3477),Vector3(-0.1378,0,0.3326),Vector3(-0.18,0,0.3118),Vector3(-0.2192,0,0.2856),Vector3(-0.2546,0,0.2546),Vector3(-0.2856,0,0.2192),Vector3(-0.3118,0,0.18),Vector3(-0.3326,0,0.1378),Vector3(-0.3477,0,0.0932),Vector3(-0.3569,0,0.047),Vector3(-0.36,0,0),Vector3(-0.3569,0,-0.047),Vector3(-0.3477,0,-0.0932),Vector3(-0.3326,0,-0.1378),Vector3(-0.3118,0,-0.18),Vector3(-0.2856,0,-0.2192),Vector3(-0.2546,0,-0.2546),Vector3(-0.2192,0,-0.2856),Vector3(-0.18,0,-0.3118),Vector3(-0.1378,0,-0.3326),Vector3(-0.0932,0,-0.3477),Vector3(-0.047,0,-0.3569),Vector3(0,0,-0.36),Vector3(0.047,0,-0.3569),Vector3(0.0932,0,-0.3477),Vector3(0.1378,0,-0.3326),Vector3(0.18,0,-0.3118),Vector3(0.2192,0,-0.2856),Vector3(0.2546,0,-0.2546),Vector3(0.2856,0,-0.2192),Vector3(0.3118,0,-0.18),Vector3(0.3326,0,-0.1378),Vector3(0.3477,0,-0.0932),Vector3(0.3569,0,-0.047),Vector3(0.36,0,0)]);
{ .SetGeometry }
Shape2628.Geometry := Extrusion2631;
{ .AddChild }
Transform2627.AddChildren([Shape2628]);
{ .AddChildren }
Transform2626.AddChildren([Transform2627]);
Transform2632 := TTransformNode.Create;
Transform2632.Translation := Vector3(0.15,0,0);
Transform2632.Rotation := Vector4(0,0,1,-1.5708);
Shape2633 := TShapeNode.Create;
Appearance2634 := TAppearanceNode.Create;
Material2635 := TMaterialNode.Create;
Material2635.X3DName := 'm_axis_x';
Material2635.DiffuseColor := Vector3(1,0,0);
Material2635.EmissiveColor := Vector3(1,0,0);
{ .SetMaterial }
Appearance2634.Material := Material2635;
{ .SetAppearance }
Shape2633.Appearance := Appearance2634;
Cylinder2636 := TCylinderNode.Create;
Cylinder2636.Height := 0.3;
Cylinder2636.Radius := 0.015;
{ .SetGeometry }
Shape2633.Geometry := Cylinder2636;
{ .AddChild }
Transform2632.AddChildren([Shape2633]);
{ .AddChildren }
Transform2626.AddChildren([Transform2632]);
Transform2637 := TTransformNode.Create;
Transform2637.Translation := Vector3(0,0.15,0);
Shape2638 := TShapeNode.Create;
Appearance2639 := TAppearanceNode.Create;
Material2640 := TMaterialNode.Create;
Material2640.X3DName := 'm_axis_y';
Material2640.DiffuseColor := Vector3(0,1,0);
Material2640.EmissiveColor := Vector3(0,1,0);
{ .SetMaterial }
Appearance2639.Material := Material2640;
{ .SetAppearance }
Shape2638.Appearance := Appearance2639;
Cylinder2641 := TCylinderNode.Create;
Cylinder2641.Height := 0.3;
Cylinder2641.Radius := 0.015;
{ .SetGeometry }
Shape2638.Geometry := Cylinder2641;
{ .AddChild }
Transform2637.AddChildren([Shape2638]);
{ .AddChildren }
Transform2626.AddChildren([Transform2637]);
Transform2642 := TTransformNode.Create;
Transform2642.Translation := Vector3(0,0,0.15);
end;

procedure InitHAnimGimbalJointController22Part205;
begin

Transform2642.Rotation := Vector4(1,0,0,1.5708);
Shape2643 := TShapeNode.Create;
Appearance2644 := TAppearanceNode.Create;
Material2645 := TMaterialNode.Create;
Material2645.X3DName := 'm_axis_z';
Material2645.DiffuseColor := Vector3(0,0,1);
Material2645.EmissiveColor := Vector3(0,0,1);
{ .SetMaterial }
Appearance2644.Material := Material2645;
{ .SetAppearance }
Shape2643.Appearance := Appearance2644;
Cylinder2646 := TCylinderNode.Create;
Cylinder2646.Height := 0.3;
Cylinder2646.Radius := 0.015;
{ .SetGeometry }
Shape2643.Geometry := Cylinder2646;
{ .AddChild }
Transform2642.AddChildren([Shape2643]);
{ .AddChildren }
Transform2626.AddChildren([Transform2642]);
{ .AddChildren }
Group2624.AddChildren([Transform2626]);
{ .AddChildren }
Transform2618.AddChildren([Group2624]);
{ .AddChildren }
Group2616.AddChildren([Transform2618]);
{ .AddChildren }
Transform2610.AddChildren([Group2616]);
{ .AddChildren }
Group2608.AddChildren([Transform2610]);
{ .AddChildren }
Transform2607.AddChildren([Group2608]);
Shape2647 := TShapeNode.Create;
Appearance2648 := TAppearanceNode.Create;
Material2649 := TMaterialNode.Create;
Material2649.X3DName := 'm_gimbal_center';
{ .SetMaterial }
Appearance2648.Material := Material2649;
{ .SetAppearance }
Shape2647.Appearance := Appearance2648;
Sphere2650 := TSphereNode.Create;
Sphere2650.Radius := 0.05;
{ .SetGeometry }
Shape2647.Geometry := Sphere2650;
{ .AddChild }
Transform2607.AddChildren([Shape2647]);
Transform2651 := TTransformNode.Create;
Transform2651.Translation := Vector3(0,-0.85,0);
Shape2652 := TShapeNode.Create;
Appearance2653 := TAppearanceNode.Create;
Material2654 := TMaterialNode.Create;
Material2654.X3DName := 'm_txtG';
Material2654.DiffuseColor := Vector3(1,1,1);
Material2654.EmissiveColor := Vector3(1,1,1);
{ .SetMaterial }
Appearance2653.Material := Material2654;
end;

procedure InitHAnimGimbalJointController22Part206;
begin

{ .SetAppearance }
Shape2652.Appearance := Appearance2653;
Text2655 := TTextNode.Create;
Text2655.X3DName := 'txtG';
Text2655.SetText(['GIMBAL']);
FontStyle2656 := TFontStyleNode.Create;
FontStyle2656.Justify := fjMiddle;
FontStyle2656.JustifyMinor := fjFirst;
FontStyle2656.Size := 0.075;
FontStyle2656.Spacing := 1.2;
{ .SetFontStyle }
Text2655.FontStyle := FontStyle2656;
{ .SetGeometry }
Shape2652.Geometry := Text2655;
{ .AddChild }
Transform2651.AddChildren([Shape2652]);
{ .AddChildren }
Transform2607.AddChildren([Transform2651]);
Group2657 := TGroupNode.Create;
TouchSensor2658 := TTouchSensorNode.Create;
TouchSensor2658.X3DName := 'tsPrev';
TouchSensor2658.Description := 'previous joint (depth-first)';
{ .AddChildren }
Group2657.AddChildren([TouchSensor2658]);
Transform2659 := TTransformNode.Create;
Transform2659.Translation := Vector3(-0.69,-1.5,0);
Shape2660 := TShapeNode.Create;
Appearance2661 := TAppearanceNode.Create;
Material2662 := TMaterialNode.Create;
Material2662.X3DName := 'm_btn_prev';
Material2662.DiffuseColor := Vector3(0.2,0.2,0.28);
Material2662.EmissiveColor := Vector3(0.08,0.08,0.14);
{ .SetMaterial }
Appearance2661.Material := Material2662;
{ .SetAppearance }
Shape2660.Appearance := Appearance2661;
Box2663 := TBoxNode.Create;
Box2663.Size := Vector3(0.42,0.14,0.04);
{ .SetGeometry }
Shape2660.Geometry := Box2663;
{ .AddChild }
Transform2659.AddChildren([Shape2660]);
Transform2664 := TTransformNode.Create;
Transform2664.Translation := Vector3(0,0,0.03);
Shape2665 := TShapeNode.Create;
Appearance2666 := TAppearanceNode.Create;
Material2667 := TMaterialNode.Create;
Material2667.X3DName := 'm_txt_prev';
Material2667.DiffuseColor := Vector3(1,1,1);
Material2667.EmissiveColor := Vector3(1,1,1);
end;

procedure InitHAnimGimbalJointController22Part207;
begin

{ .SetMaterial }
Appearance2666.Material := Material2667;
{ .SetAppearance }
Shape2665.Appearance := Appearance2666;
Text2668 := TTextNode.Create;
Text2668.SetText(['PREV']);
FontStyle2669 := TFontStyleNode.Create;
FontStyle2669.Justify := fjMiddle;
FontStyle2669.JustifyMinor := fjMiddle;
FontStyle2669.Size := 0.06;
{ .SetFontStyle }
Text2668.FontStyle := FontStyle2669;
{ .SetGeometry }
Shape2665.Geometry := Text2668;
{ .AddChild }
Transform2664.AddChildren([Shape2665]);
{ .AddChildren }
Transform2659.AddChildren([Transform2664]);
{ .AddChildren }
Group2657.AddChildren([Transform2659]);
{ .AddChildren }
Transform2607.AddChildren([Group2657]);
Group2670 := TGroupNode.Create;
TouchSensor2671 := TTouchSensorNode.Create;
TouchSensor2671.X3DName := 'tsNext';
TouchSensor2671.Description := 'next joint (depth-first)';
{ .AddChildren }
Group2670.AddChildren([TouchSensor2671]);
Transform2672 := TTransformNode.Create;
Transform2672.Translation := Vector3(-0.23,-1.5,0);
Shape2673 := TShapeNode.Create;
Appearance2674 := TAppearanceNode.Create;
Material2675 := TMaterialNode.Create;
Material2675.X3DName := 'm_btn_next';
Material2675.DiffuseColor := Vector3(0.2,0.2,0.28);
Material2675.EmissiveColor := Vector3(0.08,0.08,0.14);
{ .SetMaterial }
Appearance2674.Material := Material2675;
{ .SetAppearance }
Shape2673.Appearance := Appearance2674;
Box2676 := TBoxNode.Create;
Box2676.Size := Vector3(0.42,0.14,0.04);
{ .SetGeometry }
Shape2673.Geometry := Box2676;
{ .AddChild }
Transform2672.AddChildren([Shape2673]);
Transform2677 := TTransformNode.Create;
Transform2677.Translation := Vector3(0,0,0.03);
Shape2678 := TShapeNode.Create;
Appearance2679 := TAppearanceNode.Create;
Material2680 := TMaterialNode.Create;
Material2680.X3DName := 'm_txt_next';
Material2680.DiffuseColor := Vector3(1,1,1);
end;

procedure InitHAnimGimbalJointController22Part208;
begin

Material2680.EmissiveColor := Vector3(1,1,1);
{ .SetMaterial }
Appearance2679.Material := Material2680;
{ .SetAppearance }
Shape2678.Appearance := Appearance2679;
Text2681 := TTextNode.Create;
Text2681.SetText(['NEXT']);
FontStyle2682 := TFontStyleNode.Create;
FontStyle2682.Justify := fjMiddle;
FontStyle2682.JustifyMinor := fjMiddle;
FontStyle2682.Size := 0.06;
{ .SetFontStyle }
Text2681.FontStyle := FontStyle2682;
{ .SetGeometry }
Shape2678.Geometry := Text2681;
{ .AddChild }
Transform2677.AddChildren([Shape2678]);
{ .AddChildren }
Transform2672.AddChildren([Transform2677]);
{ .AddChildren }
Group2670.AddChildren([Transform2672]);
{ .AddChildren }
Transform2607.AddChildren([Group2670]);
Group2683 := TGroupNode.Create;
TouchSensor2684 := TTouchSensorNode.Create;
TouchSensor2684.X3DName := 'tsUp';
TouchSensor2684.Description := 'up: parent joint';
{ .AddChildren }
Group2683.AddChildren([TouchSensor2684]);
Transform2685 := TTransformNode.Create;
Transform2685.Translation := Vector3(0.23,-1.5,0);
Shape2686 := TShapeNode.Create;
Appearance2687 := TAppearanceNode.Create;
Material2688 := TMaterialNode.Create;
Material2688.X3DName := 'm_btn_up';
Material2688.DiffuseColor := Vector3(0.2,0.2,0.28);
Material2688.EmissiveColor := Vector3(0.08,0.08,0.14);
{ .SetMaterial }
Appearance2687.Material := Material2688;
{ .SetAppearance }
Shape2686.Appearance := Appearance2687;
Box2689 := TBoxNode.Create;
Box2689.Size := Vector3(0.42,0.14,0.04);
{ .SetGeometry }
Shape2686.Geometry := Box2689;
{ .AddChild }
Transform2685.AddChildren([Shape2686]);
Transform2690 := TTransformNode.Create;
Transform2690.Translation := Vector3(0,0,0.03);
Shape2691 := TShapeNode.Create;
Appearance2692 := TAppearanceNode.Create;
Material2693 := TMaterialNode.Create;
Material2693.X3DName := 'm_txt_up';
end;

procedure InitHAnimGimbalJointController22Part209;
begin

Material2693.DiffuseColor := Vector3(1,1,1);
Material2693.EmissiveColor := Vector3(1,1,1);
{ .SetMaterial }
Appearance2692.Material := Material2693;
{ .SetAppearance }
Shape2691.Appearance := Appearance2692;
Text2694 := TTextNode.Create;
Text2694.SetText(['PARENT']);
FontStyle2695 := TFontStyleNode.Create;
FontStyle2695.Justify := fjMiddle;
FontStyle2695.JustifyMinor := fjMiddle;
FontStyle2695.Size := 0.06;
{ .SetFontStyle }
Text2694.FontStyle := FontStyle2695;
{ .SetGeometry }
Shape2691.Geometry := Text2694;
{ .AddChild }
Transform2690.AddChildren([Shape2691]);
{ .AddChildren }
Transform2685.AddChildren([Transform2690]);
{ .AddChildren }
Group2683.AddChildren([Transform2685]);
{ .AddChildren }
Transform2607.AddChildren([Group2683]);
Group2696 := TGroupNode.Create;
TouchSensor2697 := TTouchSensorNode.Create;
TouchSensor2697.X3DName := 'tsDown';
TouchSensor2697.Description := 'down: first child joint';
{ .AddChildren }
Group2696.AddChildren([TouchSensor2697]);
Transform2698 := TTransformNode.Create;
Transform2698.Translation := Vector3(0.69,-1.5,0);
Shape2699 := TShapeNode.Create;
Appearance2700 := TAppearanceNode.Create;
Material2701 := TMaterialNode.Create;
Material2701.X3DName := 'm_btn_down';
Material2701.DiffuseColor := Vector3(0.2,0.2,0.28);
Material2701.EmissiveColor := Vector3(0.08,0.08,0.14);
{ .SetMaterial }
Appearance2700.Material := Material2701;
{ .SetAppearance }
Shape2699.Appearance := Appearance2700;
Box2702 := TBoxNode.Create;
Box2702.Size := Vector3(0.42,0.14,0.04);
{ .SetGeometry }
Shape2699.Geometry := Box2702;
{ .AddChild }
Transform2698.AddChildren([Shape2699]);
Transform2703 := TTransformNode.Create;
Transform2703.Translation := Vector3(0,0,0.03);
Shape2704 := TShapeNode.Create;
Appearance2705 := TAppearanceNode.Create;
Material2706 := TMaterialNode.Create;
end;

procedure InitHAnimGimbalJointController22Part210;
begin

Material2706.X3DName := 'm_txt_down';
Material2706.DiffuseColor := Vector3(1,1,1);
Material2706.EmissiveColor := Vector3(1,1,1);
{ .SetMaterial }
Appearance2705.Material := Material2706;
{ .SetAppearance }
Shape2704.Appearance := Appearance2705;
Text2707 := TTextNode.Create;
Text2707.SetText(['CHILD']);
FontStyle2708 := TFontStyleNode.Create;
FontStyle2708.Justify := fjMiddle;
FontStyle2708.JustifyMinor := fjMiddle;
FontStyle2708.Size := 0.06;
{ .SetFontStyle }
Text2707.FontStyle := FontStyle2708;
{ .SetGeometry }
Shape2704.Geometry := Text2707;
{ .AddChild }
Transform2703.AddChildren([Shape2704]);
{ .AddChildren }
Transform2698.AddChildren([Transform2703]);
{ .AddChildren }
Group2696.AddChildren([Transform2698]);
{ .AddChildren }
Transform2607.AddChildren([Group2696]);
Group2709 := TGroupNode.Create;
TouchSensor2710 := TTouchSensorNode.Create;
TouchSensor2710.X3DName := 'tsSibPrev';
TouchSensor2710.Description := 'previous sibling joint';
{ .AddChildren }
Group2709.AddChildren([TouchSensor2710]);
Transform2711 := TTransformNode.Create;
Transform2711.Translation := Vector3(-0.69,-1.72,0);
Shape2712 := TShapeNode.Create;
Appearance2713 := TAppearanceNode.Create;
Material2714 := TMaterialNode.Create;
Material2714.X3DName := 'm_btn_sibprev';
Material2714.DiffuseColor := Vector3(0.2,0.2,0.28);
Material2714.EmissiveColor := Vector3(0.08,0.08,0.14);
{ .SetMaterial }
Appearance2713.Material := Material2714;
{ .SetAppearance }
Shape2712.Appearance := Appearance2713;
Box2715 := TBoxNode.Create;
Box2715.Size := Vector3(0.42,0.14,0.04);
{ .SetGeometry }
Shape2712.Geometry := Box2715;
{ .AddChild }
Transform2711.AddChildren([Shape2712]);
Transform2716 := TTransformNode.Create;
Transform2716.Translation := Vector3(0,0,0.03);
Shape2717 := TShapeNode.Create;
Appearance2718 := TAppearanceNode.Create;
end;

procedure InitHAnimGimbalJointController22Part211;
begin

Material2719 := TMaterialNode.Create;
Material2719.X3DName := 'm_txt_sibprev';
Material2719.DiffuseColor := Vector3(1,1,1);
Material2719.EmissiveColor := Vector3(1,1,1);
{ .SetMaterial }
Appearance2718.Material := Material2719;
{ .SetAppearance }
Shape2717.Appearance := Appearance2718;
Text2720 := TTextNode.Create;
Text2720.SetText(['SIB -']);
FontStyle2721 := TFontStyleNode.Create;
FontStyle2721.Justify := fjMiddle;
FontStyle2721.JustifyMinor := fjMiddle;
FontStyle2721.Size := 0.06;
{ .SetFontStyle }
Text2720.FontStyle := FontStyle2721;
{ .SetGeometry }
Shape2717.Geometry := Text2720;
{ .AddChild }
Transform2716.AddChildren([Shape2717]);
{ .AddChildren }
Transform2711.AddChildren([Transform2716]);
{ .AddChildren }
Group2709.AddChildren([Transform2711]);
{ .AddChildren }
Transform2607.AddChildren([Group2709]);
Group2722 := TGroupNode.Create;
TouchSensor2723 := TTouchSensorNode.Create;
TouchSensor2723.X3DName := 'tsSibNext';
TouchSensor2723.Description := 'next sibling joint';
{ .AddChildren }
Group2722.AddChildren([TouchSensor2723]);
Transform2724 := TTransformNode.Create;
Transform2724.Translation := Vector3(-0.23,-1.72,0);
Shape2725 := TShapeNode.Create;
Appearance2726 := TAppearanceNode.Create;
Material2727 := TMaterialNode.Create;
Material2727.X3DName := 'm_btn_sibnext';
Material2727.DiffuseColor := Vector3(0.2,0.2,0.28);
Material2727.EmissiveColor := Vector3(0.08,0.08,0.14);
{ .SetMaterial }
Appearance2726.Material := Material2727;
{ .SetAppearance }
Shape2725.Appearance := Appearance2726;
Box2728 := TBoxNode.Create;
Box2728.Size := Vector3(0.42,0.14,0.04);
{ .SetGeometry }
Shape2725.Geometry := Box2728;
{ .AddChild }
Transform2724.AddChildren([Shape2725]);
Transform2729 := TTransformNode.Create;
Transform2729.Translation := Vector3(0,0,0.03);
Shape2730 := TShapeNode.Create;
end;

procedure InitHAnimGimbalJointController22Part212;
begin

Appearance2731 := TAppearanceNode.Create;
Material2732 := TMaterialNode.Create;
Material2732.X3DName := 'm_txt_sibnext';
Material2732.DiffuseColor := Vector3(1,1,1);
Material2732.EmissiveColor := Vector3(1,1,1);
{ .SetMaterial }
Appearance2731.Material := Material2732;
{ .SetAppearance }
Shape2730.Appearance := Appearance2731;
Text2733 := TTextNode.Create;
Text2733.SetText(['SIB +']);
FontStyle2734 := TFontStyleNode.Create;
FontStyle2734.Justify := fjMiddle;
FontStyle2734.JustifyMinor := fjMiddle;
FontStyle2734.Size := 0.06;
{ .SetFontStyle }
Text2733.FontStyle := FontStyle2734;
{ .SetGeometry }
Shape2730.Geometry := Text2733;
{ .AddChild }
Transform2729.AddChildren([Shape2730]);
{ .AddChildren }
Transform2724.AddChildren([Transform2729]);
{ .AddChildren }
Group2722.AddChildren([Transform2724]);
{ .AddChildren }
Transform2607.AddChildren([Group2722]);
Group2735 := TGroupNode.Create;
TouchSensor2736 := TTouchSensorNode.Create;
TouchSensor2736.X3DName := 'tsReset';
TouchSensor2736.Description := 'reset selected joint';
{ .AddChildren }
Group2735.AddChildren([TouchSensor2736]);
Transform2737 := TTransformNode.Create;
Transform2737.Translation := Vector3(0.23,-1.72,0);
Shape2738 := TShapeNode.Create;
Appearance2739 := TAppearanceNode.Create;
Material2740 := TMaterialNode.Create;
Material2740.X3DName := 'm_btn_reset';
Material2740.DiffuseColor := Vector3(0.2,0.2,0.28);
Material2740.EmissiveColor := Vector3(0.08,0.08,0.14);
{ .SetMaterial }
Appearance2739.Material := Material2740;
{ .SetAppearance }
Shape2738.Appearance := Appearance2739;
Box2741 := TBoxNode.Create;
Box2741.Size := Vector3(0.42,0.14,0.04);
{ .SetGeometry }
Shape2738.Geometry := Box2741;
{ .AddChild }
Transform2737.AddChildren([Shape2738]);
Transform2742 := TTransformNode.Create;
Transform2742.Translation := Vector3(0,0,0.03);
end;

procedure InitHAnimGimbalJointController22Part213;
begin

Shape2743 := TShapeNode.Create;
Appearance2744 := TAppearanceNode.Create;
Material2745 := TMaterialNode.Create;
Material2745.X3DName := 'm_txt_reset';
Material2745.DiffuseColor := Vector3(1,1,1);
Material2745.EmissiveColor := Vector3(1,1,1);
{ .SetMaterial }
Appearance2744.Material := Material2745;
{ .SetAppearance }
Shape2743.Appearance := Appearance2744;
Text2746 := TTextNode.Create;
Text2746.SetText(['RESET']);
FontStyle2747 := TFontStyleNode.Create;
FontStyle2747.Justify := fjMiddle;
FontStyle2747.JustifyMinor := fjMiddle;
FontStyle2747.Size := 0.06;
{ .SetFontStyle }
Text2746.FontStyle := FontStyle2747;
{ .SetGeometry }
Shape2743.Geometry := Text2746;
{ .AddChild }
Transform2742.AddChildren([Shape2743]);
{ .AddChildren }
Transform2737.AddChildren([Transform2742]);
{ .AddChildren }
Group2735.AddChildren([Transform2737]);
{ .AddChildren }
Transform2607.AddChildren([Group2735]);
Group2748 := TGroupNode.Create;
TouchSensor2749 := TTouchSensorNode.Create;
TouchSensor2749.X3DName := 'tsDeselect';
TouchSensor2749.Description := 'deselect joint';
{ .AddChildren }
Group2748.AddChildren([TouchSensor2749]);
Transform2750 := TTransformNode.Create;
Transform2750.Translation := Vector3(0.69,-1.72,0);
Shape2751 := TShapeNode.Create;
Appearance2752 := TAppearanceNode.Create;
Material2753 := TMaterialNode.Create;
Material2753.X3DName := 'm_btn_deselect';
Material2753.DiffuseColor := Vector3(0.2,0.2,0.28);
Material2753.EmissiveColor := Vector3(0.08,0.08,0.14);
{ .SetMaterial }
Appearance2752.Material := Material2753;
{ .SetAppearance }
Shape2751.Appearance := Appearance2752;
Box2754 := TBoxNode.Create;
Box2754.Size := Vector3(0.42,0.14,0.04);
{ .SetGeometry }
Shape2751.Geometry := Box2754;
{ .AddChild }
Transform2750.AddChildren([Shape2751]);
Transform2755 := TTransformNode.Create;
end;

procedure InitHAnimGimbalJointController22Part214;
begin

Transform2755.Translation := Vector3(0,0,0.03);
Shape2756 := TShapeNode.Create;
Appearance2757 := TAppearanceNode.Create;
Material2758 := TMaterialNode.Create;
Material2758.X3DName := 'm_txt_deselect';
Material2758.DiffuseColor := Vector3(1,1,1);
Material2758.EmissiveColor := Vector3(1,1,1);
{ .SetMaterial }
Appearance2757.Material := Material2758;
{ .SetAppearance }
Shape2756.Appearance := Appearance2757;
Text2759 := TTextNode.Create;
Text2759.SetText(['DESELECT']);
FontStyle2760 := TFontStyleNode.Create;
FontStyle2760.Justify := fjMiddle;
FontStyle2760.JustifyMinor := fjMiddle;
FontStyle2760.Size := 0.06;
{ .SetFontStyle }
Text2759.FontStyle := FontStyle2760;
{ .SetGeometry }
Shape2756.Geometry := Text2759;
{ .AddChild }
Transform2755.AddChildren([Shape2756]);
{ .AddChildren }
Transform2750.AddChildren([Transform2755]);
{ .AddChildren }
Group2748.AddChildren([Transform2750]);
{ .AddChildren }
Transform2607.AddChildren([Group2748]);
{ .FdChildren.Add }
Layer2605.FdChildren.Add(Transform2607);
{ ==================== HUMANOID IMPORT / EXPORT BUTTONS ==================== }
Transform2761 := TTransformNode.Create;
Transform2761.X3DName := 'ioPanel';
Transform2761.Translation := Vector3(4.1,3.5,0);
Transform2761.Scale := Vector3(2.9,2.9,1);
Group2762 := TGroupNode.Create;
TouchSensor2763 := TTouchSensorNode.Create;
TouchSensor2763.X3DName := 'tsExport';
TouchSensor2763.Description := 'export entire humanoid as X3D scene';
{ .AddChildren }
Group2762.AddChildren([TouchSensor2763]);
Transform2764 := TTransformNode.Create;
Transform2764.Translation := Vector3(0.23,0,0);
Shape2765 := TShapeNode.Create;
Appearance2766 := TAppearanceNode.Create;
Material2767 := TMaterialNode.Create;
Material2767.X3DName := 'm_btn_export';
Material2767.DiffuseColor := Vector3(0.2,0.2,0.28);
Material2767.EmissiveColor := Vector3(0.08,0.08,0.14);
{ .SetMaterial }
Appearance2766.Material := Material2767;
end;

procedure InitHAnimGimbalJointController22Part215;
begin

{ .SetAppearance }
Shape2765.Appearance := Appearance2766;
Box2768 := TBoxNode.Create;
Box2768.Size := Vector3(0.42,0.14,0.04);
{ .SetGeometry }
Shape2765.Geometry := Box2768;
{ .AddChild }
Transform2764.AddChildren([Shape2765]);
Transform2769 := TTransformNode.Create;
Transform2769.Translation := Vector3(0,0,0.03);
Shape2770 := TShapeNode.Create;
Appearance2771 := TAppearanceNode.Create;
Material2772 := TMaterialNode.Create;
Material2772.X3DName := 'm_txt_export';
Material2772.DiffuseColor := Vector3(1,1,1);
Material2772.EmissiveColor := Vector3(1,1,1);
{ .SetMaterial }
Appearance2771.Material := Material2772;
{ .SetAppearance }
Shape2770.Appearance := Appearance2771;
Text2773 := TTextNode.Create;
Text2773.SetText(['EXPORT']);
FontStyle2774 := TFontStyleNode.Create;
FontStyle2774.Justify := fjMiddle;
FontStyle2774.JustifyMinor := fjMiddle;
FontStyle2774.Size := 0.06;
{ .SetFontStyle }
Text2773.FontStyle := FontStyle2774;
{ .SetGeometry }
Shape2770.Geometry := Text2773;
{ .AddChild }
Transform2769.AddChildren([Shape2770]);
{ .AddChildren }
Transform2764.AddChildren([Transform2769]);
{ .AddChildren }
Group2762.AddChildren([Transform2764]);
{ .AddChildren }
Transform2761.AddChildren([Group2762]);
Group2775 := TGroupNode.Create;
TouchSensor2776 := TTouchSensorNode.Create;
TouchSensor2776.X3DName := 'tsImport';
TouchSensor2776.Description := 'import humanoid pose from X3D scene';
{ .AddChildren }
Group2775.AddChildren([TouchSensor2776]);
Transform2777 := TTransformNode.Create;
Transform2777.Translation := Vector3(-0.23,0,0);
Shape2778 := TShapeNode.Create;
Appearance2779 := TAppearanceNode.Create;
Material2780 := TMaterialNode.Create;
Material2780.X3DName := 'm_btn_import';
Material2780.DiffuseColor := Vector3(0.2,0.2,0.28);
Material2780.EmissiveColor := Vector3(0.08,0.08,0.14);
end;

procedure InitHAnimGimbalJointController22Part216;
begin

{ .SetMaterial }
Appearance2779.Material := Material2780;
{ .SetAppearance }
Shape2778.Appearance := Appearance2779;
Box2781 := TBoxNode.Create;
Box2781.Size := Vector3(0.42,0.14,0.04);
{ .SetGeometry }
Shape2778.Geometry := Box2781;
{ .AddChild }
Transform2777.AddChildren([Shape2778]);
Transform2782 := TTransformNode.Create;
Transform2782.Translation := Vector3(0,0,0.03);
Shape2783 := TShapeNode.Create;
Appearance2784 := TAppearanceNode.Create;
Material2785 := TMaterialNode.Create;
Material2785.X3DName := 'm_txt_import';
Material2785.DiffuseColor := Vector3(1,1,1);
Material2785.EmissiveColor := Vector3(1,1,1);
{ .SetMaterial }
Appearance2784.Material := Material2785;
{ .SetAppearance }
Shape2783.Appearance := Appearance2784;
Text2786 := TTextNode.Create;
Text2786.SetText(['IMPORT']);
FontStyle2787 := TFontStyleNode.Create;
FontStyle2787.Justify := fjMiddle;
FontStyle2787.JustifyMinor := fjMiddle;
FontStyle2787.Size := 0.06;
{ .SetFontStyle }
Text2786.FontStyle := FontStyle2787;
{ .SetGeometry }
Shape2783.Geometry := Text2786;
{ .AddChild }
Transform2782.AddChildren([Shape2783]);
{ .AddChildren }
Transform2777.AddChildren([Transform2782]);
{ .AddChildren }
Group2775.AddChildren([Transform2777]);
{ .AddChildren }
Transform2761.AddChildren([Group2775]);
Transform2788 := TTransformNode.Create;
Transform2788.Translation := Vector3(0,-0.14,0);
Shape2789 := TShapeNode.Create;
Appearance2790 := TAppearanceNode.Create;
Material2791 := TMaterialNode.Create;
Material2791.X3DName := 'm_txt_io';
Material2791.EmissiveColor := Vector3(0.8,0.8,0.8);
{ .SetMaterial }
Appearance2790.Material := Material2791;
{ .SetAppearance }
Shape2789.Appearance := Appearance2790;
Text2792 := TTextNode.Create;
Text2792.X3DName := 'txtIO';
Text2792.SetText(['humanoid X3D import / export']);
end;

procedure InitHAnimGimbalJointController22Part217;
begin

FontStyle2793 := TFontStyleNode.Create;
FontStyle2793.Justify := fjMiddle;
FontStyle2793.JustifyMinor := fjMiddle;
FontStyle2793.Size := 0.045;
{ .SetFontStyle }
Text2792.FontStyle := FontStyle2793;
{ .SetGeometry }
Shape2789.Geometry := Text2792;
{ .AddChild }
Transform2788.AddChildren([Shape2789]);
{ .AddChildren }
Transform2761.AddChildren([Transform2788]);
{ .FdChildren.Add }
Layer2605.FdChildren.Add(Transform2761);
{ ==================== SLIDER / INPUT / OUTPUT PANEL ==================== }
Transform2794 := TTransformNode.Create;
Transform2794.X3DName := 'sliderPanel';
Transform2794.Translation := Vector3(-4.6,3.2,0);
Transform2794.Scale := Vector3(1.6,1.6,0.8);
Transform2795 := TTransformNode.Create;
Transform2795.Translation := Vector3(0,-2.2,-0.03);
Shape2796 := TShapeNode.Create;
Appearance2797 := TAppearanceNode.Create;
Material2798 := TMaterialNode.Create;
Material2798.DiffuseColor := Vector3(0.05,0.06,0.1);
Material2798.Transparency := 0.25;
{ .SetMaterial }
Appearance2797.Material := Material2798;
{ .SetAppearance }
Shape2796.Appearance := Appearance2797;
Box2799 := TBoxNode.Create;
Box2799.Size := Vector3(3.2,4.5,0.01);
{ .SetGeometry }
Shape2796.Geometry := Box2799;
{ .AddChild }
Transform2795.AddChildren([Shape2796]);
{ .AddChildren }
Transform2794.AddChildren([Transform2795]);
Transform2800 := TTransformNode.Create;
Transform2800.Translation := Vector3(0,-0.22,0.01);
Shape2801 := TShapeNode.Create;
Appearance2802 := TAppearanceNode.Create;
Material2803 := TMaterialNode.Create;
Material2803.DiffuseColor := Vector3(1,1,1);
Material2803.EmissiveColor := Vector3(1,1,1);
{ .SetMaterial }
Appearance2802.Material := Material2803;
{ .SetAppearance }
Shape2801.Appearance := Appearance2802;
Text2804 := TTextNode.Create;
Text2804.SetText(['JOINT ROTATION (degrees)']);
FontStyle2805 := TFontStyleNode.Create;
FontStyle2805.Justify := fjMiddle;
end;

procedure InitHAnimGimbalJointController22Part218;
begin

FontStyle2805.JustifyMinor := fjMiddle;
FontStyle2805.Size := 0.16;
{ .SetFontStyle }
Text2804.FontStyle := FontStyle2805;
{ .SetGeometry }
Shape2801.Geometry := Text2804;
{ .AddChild }
Transform2800.AddChildren([Shape2801]);
{ .AddChildren }
Transform2794.AddChildren([Transform2800]);
{ ===== axis X ===== }
Transform2806 := TTransformNode.Create;
Transform2806.Translation := Vector3(0,-0.8,0);
Transform2807 := TTransformNode.Create;
Transform2807.Translation := Vector3(-1.25,0,0.01);
Shape2808 := TShapeNode.Create;
Appearance2809 := TAppearanceNode.Create;
Material2810 := TMaterialNode.Create;
Material2810.DiffuseColor := Vector3(1,0.2,0.2);
Material2810.EmissiveColor := Vector3(1,0.2,0.2);
{ .SetMaterial }
Appearance2809.Material := Material2810;
{ .SetAppearance }
Shape2808.Appearance := Appearance2809;
Text2811 := TTextNode.Create;
Text2811.SetText(['X']);
FontStyle2812 := TFontStyleNode.Create;
FontStyle2812.Justify := fjMiddle;
FontStyle2812.JustifyMinor := fjMiddle;
FontStyle2812.Size := 0.26;
{ .SetFontStyle }
Text2811.FontStyle := FontStyle2812;
{ .SetGeometry }
Shape2808.Geometry := Text2811;
{ .AddChild }
Transform2807.AddChildren([Shape2808]);
{ .AddChildren }
Transform2806.AddChildren([Transform2807]);
Transform2813 := TTransformNode.Create;
Transform2813.Translation := Vector3(-0.1,0,0);
Shape2814 := TShapeNode.Create;
Appearance2815 := TAppearanceNode.Create;
Material2816 := TMaterialNode.Create;
Material2816.DiffuseColor := Vector3(0.55,0.55,0.6);
Material2816.EmissiveColor := Vector3(0.15,0.15,0.2);
{ .SetMaterial }
Appearance2815.Material := Material2816;
{ .SetAppearance }
Shape2814.Appearance := Appearance2815;
Box2817 := TBoxNode.Create;
Box2817.Size := Vector3(1.5,0.04,0.03);
{ .SetGeometry }
Shape2814.Geometry := Box2817;
{ .AddChild }
Transform2813.AddChildren([Shape2814]);
end;

procedure InitHAnimGimbalJointController22Part219;
begin

Transform2818 := TTransformNode.Create;
Transform2818.Translation := Vector3(-0.75,0,0);
Shape2819 := TShapeNode.Create;
Appearance2820 := TAppearanceNode.Create;
Material2821 := TMaterialNode.Create;
{ .SetMaterial }
Appearance2820.Material := Material2821;
{ .SetAppearance }
Shape2819.Appearance := Appearance2820;
Box2822 := TBoxNode.Create;
Box2822.Size := Vector3(0.02,0.2,0.03);
{ .SetGeometry }
Shape2819.Geometry := Box2822;
{ .AddChild }
Transform2818.AddChildren([Shape2819]);
{ .AddChildren }
Transform2813.AddChildren([Transform2818]);
Transform2823 := TTransformNode.Create;
Transform2823.Translation := Vector3(0.75,0,0);
Shape2824 := TShapeNode.Create;
Appearance2825 := TAppearanceNode.Create;
Material2826 := TMaterialNode.Create;
{ .SetMaterial }
Appearance2825.Material := Material2826;
{ .SetAppearance }
Shape2824.Appearance := Appearance2825;
Box2827 := TBoxNode.Create;
Box2827.Size := Vector3(0.02,0.2,0.03);
{ .SetGeometry }
Shape2824.Geometry := Box2827;
{ .AddChild }
Transform2823.AddChildren([Shape2824]);
{ .AddChildren }
Transform2813.AddChildren([Transform2823]);
Group2828 := TGroupNode.Create;
PlaneSensor2829 := TPlaneSensorNode.Create;
PlaneSensor2829.X3DName := 'psX';
PlaneSensor2829.Description := 'X rotation slider';
PlaneSensor2829.MinPosition := Vector2(-0.75,0);
PlaneSensor2829.MaxPosition := Vector2(0.75,0);
{ .AddChildren }
Group2828.AddChildren([PlaneSensor2829]);
Transform2830 := TTransformNode.Create;
Transform2830.X3DName := 'knobX';
Shape2831 := TShapeNode.Create;
Appearance2832 := TAppearanceNode.Create;
Material2833 := TMaterialNode.Create;
Material2833.X3DName := 'mat_knobX';
Material2833.DiffuseColor := Vector3(1,0.2,0.2);
Material2833.EmissiveColor := Vector3(0.5,0.1,0.1);
{ .SetMaterial }
Appearance2832.Material := Material2833;
end;

procedure InitHAnimGimbalJointController22Part220;
begin

{ .SetAppearance }
Shape2831.Appearance := Appearance2832;
Box2834 := TBoxNode.Create;
Box2834.Size := Vector3(0.12,0.3,0.08);
{ .SetGeometry }
Shape2831.Geometry := Box2834;
{ .AddChild }
Transform2830.AddChildren([Shape2831]);
{ .AddChildren }
Group2828.AddChildren([Transform2830]);
{ .AddChildren }
Transform2813.AddChildren([Group2828]);
Transform2835 := TTransformNode.Create;
Transform2835.Translation := Vector3(-0.75,-0.26,0.01);
Shape2836 := TShapeNode.Create;
Appearance2837 := TAppearanceNode.Create;
Material2838 := TMaterialNode.Create;
Material2838.EmissiveColor := Vector3(0.8,0.8,0.8);
{ .SetMaterial }
Appearance2837.Material := Material2838;
{ .SetAppearance }
Shape2836.Appearance := Appearance2837;
Text2839 := TTextNode.Create;
Text2839.X3DName := 'txtMinX';
Text2839.SetText(['-']);
FontStyle2840 := TFontStyleNode.Create;
FontStyle2840.Justify := fjMiddle;
FontStyle2840.JustifyMinor := fjMiddle;
FontStyle2840.Size := 0.1;
{ .SetFontStyle }
Text2839.FontStyle := FontStyle2840;
{ .SetGeometry }
Shape2836.Geometry := Text2839;
{ .AddChild }
Transform2835.AddChildren([Shape2836]);
{ .AddChildren }
Transform2813.AddChildren([Transform2835]);
Transform2841 := TTransformNode.Create;
Transform2841.Translation := Vector3(0.75,-0.26,0.01);
Shape2842 := TShapeNode.Create;
Appearance2843 := TAppearanceNode.Create;
Material2844 := TMaterialNode.Create;
Material2844.EmissiveColor := Vector3(0.8,0.8,0.8);
{ .SetMaterial }
Appearance2843.Material := Material2844;
{ .SetAppearance }
Shape2842.Appearance := Appearance2843;
Text2845 := TTextNode.Create;
Text2845.X3DName := 'txtMaxX';
Text2845.SetText(['-']);
FontStyle2846 := TFontStyleNode.Create;
FontStyle2846.Justify := fjMiddle;
FontStyle2846.JustifyMinor := fjMiddle;
end;

procedure InitHAnimGimbalJointController22Part221;
begin

FontStyle2846.Size := 0.1;
{ .SetFontStyle }
Text2845.FontStyle := FontStyle2846;
{ .SetGeometry }
Shape2842.Geometry := Text2845;
{ .AddChild }
Transform2841.AddChildren([Shape2842]);
{ .AddChildren }
Transform2813.AddChildren([Transform2841]);
{ .AddChildren }
Transform2806.AddChildren([Transform2813]);
Transform2847 := TTransformNode.Create;
Transform2847.Translation := Vector3(1.1,0,0);
Group2848 := TGroupNode.Create;
TouchSensor2849 := TTouchSensorNode.Create;
TouchSensor2849.X3DName := 'tsInX';
TouchSensor2849.Description := 'click, type degrees, press Enter';
{ .AddChildren }
Group2848.AddChildren([TouchSensor2849]);
Shape2850 := TShapeNode.Create;
Appearance2851 := TAppearanceNode.Create;
Material2852 := TMaterialNode.Create;
Material2852.X3DName := 'matInX';
Material2852.DiffuseColor := Vector3(0.12,0.12,0.18);
{ .SetMaterial }
Appearance2851.Material := Material2852;
{ .SetAppearance }
Shape2850.Appearance := Appearance2851;
Box2853 := TBoxNode.Create;
Box2853.Size := Vector3(0.8,0.34,0.02);
{ .SetGeometry }
Shape2850.Geometry := Box2853;
{ .AddChildren }
Group2848.AddChildren([Shape2850]);
{ .AddChildren }
Transform2847.AddChildren([Group2848]);
Transform2854 := TTransformNode.Create;
Transform2854.Translation := Vector3(0,0,0.02);
Shape2855 := TShapeNode.Create;
Appearance2856 := TAppearanceNode.Create;
Material2857 := TMaterialNode.Create;
Material2857.DiffuseColor := Vector3(1,1,0.8);
Material2857.EmissiveColor := Vector3(1,1,0.8);
{ .SetMaterial }
Appearance2856.Material := Material2857;
{ .SetAppearance }
Shape2855.Appearance := Appearance2856;
Text2858 := TTextNode.Create;
Text2858.X3DName := 'txtInX';
Text2858.SetText(['-']);
FontStyle2859 := TFontStyleNode.Create;
FontStyle2859.Justify := fjMiddle;
FontStyle2859.JustifyMinor := fjMiddle;
end;

procedure InitHAnimGimbalJointController22Part222;
begin

FontStyle2859.Size := 0.14;
{ .SetFontStyle }
Text2858.FontStyle := FontStyle2859;
{ .SetGeometry }
Shape2855.Geometry := Text2858;
{ .AddChild }
Transform2854.AddChildren([Shape2855]);
{ .AddChildren }
Transform2847.AddChildren([Transform2854]);
{ .AddChildren }
Transform2806.AddChildren([Transform2847]);
{ .AddChildren }
Transform2794.AddChildren([Transform2806]);
{ ===== axis Y ===== }
Transform2860 := TTransformNode.Create;
Transform2860.Translation := Vector3(0,-1.55,0);
Transform2861 := TTransformNode.Create;
Transform2861.Translation := Vector3(-1.25,0,0.01);
Shape2862 := TShapeNode.Create;
Appearance2863 := TAppearanceNode.Create;
Material2864 := TMaterialNode.Create;
Material2864.DiffuseColor := Vector3(0.2,0.9,0.2);
Material2864.EmissiveColor := Vector3(0.2,0.9,0.2);
{ .SetMaterial }
Appearance2863.Material := Material2864;
{ .SetAppearance }
Shape2862.Appearance := Appearance2863;
Text2865 := TTextNode.Create;
Text2865.SetText(['Y']);
FontStyle2866 := TFontStyleNode.Create;
FontStyle2866.Justify := fjMiddle;
FontStyle2866.JustifyMinor := fjMiddle;
FontStyle2866.Size := 0.26;
{ .SetFontStyle }
Text2865.FontStyle := FontStyle2866;
{ .SetGeometry }
Shape2862.Geometry := Text2865;
{ .AddChild }
Transform2861.AddChildren([Shape2862]);
{ .AddChildren }
Transform2860.AddChildren([Transform2861]);
Transform2867 := TTransformNode.Create;
Transform2867.Translation := Vector3(-0.1,0,0);
Shape2868 := TShapeNode.Create;
Appearance2869 := TAppearanceNode.Create;
Material2870 := TMaterialNode.Create;
Material2870.DiffuseColor := Vector3(0.55,0.55,0.6);
Material2870.EmissiveColor := Vector3(0.15,0.15,0.2);
{ .SetMaterial }
Appearance2869.Material := Material2870;
{ .SetAppearance }
Shape2868.Appearance := Appearance2869;
Box2871 := TBoxNode.Create;
Box2871.Size := Vector3(1.5,0.04,0.03);
{ .SetGeometry }
Shape2868.Geometry := Box2871;
end;

procedure InitHAnimGimbalJointController22Part223;
begin

{ .AddChild }
Transform2867.AddChildren([Shape2868]);
Transform2872 := TTransformNode.Create;
Transform2872.Translation := Vector3(-0.75,0,0);
Shape2873 := TShapeNode.Create;
Appearance2874 := TAppearanceNode.Create;
Material2875 := TMaterialNode.Create;
{ .SetMaterial }
Appearance2874.Material := Material2875;
{ .SetAppearance }
Shape2873.Appearance := Appearance2874;
Box2876 := TBoxNode.Create;
Box2876.Size := Vector3(0.02,0.2,0.03);
{ .SetGeometry }
Shape2873.Geometry := Box2876;
{ .AddChild }
Transform2872.AddChildren([Shape2873]);
{ .AddChildren }
Transform2867.AddChildren([Transform2872]);
Transform2877 := TTransformNode.Create;
Transform2877.Translation := Vector3(0.75,0,0);
Shape2878 := TShapeNode.Create;
Appearance2879 := TAppearanceNode.Create;
Material2880 := TMaterialNode.Create;
{ .SetMaterial }
Appearance2879.Material := Material2880;
{ .SetAppearance }
Shape2878.Appearance := Appearance2879;
Box2881 := TBoxNode.Create;
Box2881.Size := Vector3(0.02,0.2,0.03);
{ .SetGeometry }
Shape2878.Geometry := Box2881;
{ .AddChild }
Transform2877.AddChildren([Shape2878]);
{ .AddChildren }
Transform2867.AddChildren([Transform2877]);
Group2882 := TGroupNode.Create;
PlaneSensor2883 := TPlaneSensorNode.Create;
PlaneSensor2883.X3DName := 'psY';
PlaneSensor2883.Description := 'Y rotation slider';
PlaneSensor2883.MinPosition := Vector2(-0.75,0);
PlaneSensor2883.MaxPosition := Vector2(0.75,0);
{ .AddChildren }
Group2882.AddChildren([PlaneSensor2883]);
Transform2884 := TTransformNode.Create;
Transform2884.X3DName := 'knobY';
Shape2885 := TShapeNode.Create;
Appearance2886 := TAppearanceNode.Create;
Material2887 := TMaterialNode.Create;
Material2887.X3DName := 'mat_knobY';
Material2887.DiffuseColor := Vector3(0.2,0.9,0.2);
Material2887.EmissiveColor := Vector3(0.1,0.45,0.1);
end;

procedure InitHAnimGimbalJointController22Part224;
begin

{ .SetMaterial }
Appearance2886.Material := Material2887;
{ .SetAppearance }
Shape2885.Appearance := Appearance2886;
Box2888 := TBoxNode.Create;
Box2888.Size := Vector3(0.12,0.3,0.08);
{ .SetGeometry }
Shape2885.Geometry := Box2888;
{ .AddChild }
Transform2884.AddChildren([Shape2885]);
{ .AddChildren }
Group2882.AddChildren([Transform2884]);
{ .AddChildren }
Transform2867.AddChildren([Group2882]);
Transform2889 := TTransformNode.Create;
Transform2889.Translation := Vector3(-0.75,-0.26,0.01);
Shape2890 := TShapeNode.Create;
Appearance2891 := TAppearanceNode.Create;
Material2892 := TMaterialNode.Create;
Material2892.EmissiveColor := Vector3(0.8,0.8,0.8);
{ .SetMaterial }
Appearance2891.Material := Material2892;
{ .SetAppearance }
Shape2890.Appearance := Appearance2891;
Text2893 := TTextNode.Create;
Text2893.X3DName := 'txtMinY';
Text2893.SetText(['-']);
FontStyle2894 := TFontStyleNode.Create;
FontStyle2894.Justify := fjMiddle;
FontStyle2894.JustifyMinor := fjMiddle;
FontStyle2894.Size := 0.1;
{ .SetFontStyle }
Text2893.FontStyle := FontStyle2894;
{ .SetGeometry }
Shape2890.Geometry := Text2893;
{ .AddChild }
Transform2889.AddChildren([Shape2890]);
{ .AddChildren }
Transform2867.AddChildren([Transform2889]);
Transform2895 := TTransformNode.Create;
Transform2895.Translation := Vector3(0.75,-0.26,0.01);
Shape2896 := TShapeNode.Create;
Appearance2897 := TAppearanceNode.Create;
Material2898 := TMaterialNode.Create;
Material2898.EmissiveColor := Vector3(0.8,0.8,0.8);
{ .SetMaterial }
Appearance2897.Material := Material2898;
{ .SetAppearance }
Shape2896.Appearance := Appearance2897;
Text2899 := TTextNode.Create;
Text2899.X3DName := 'txtMaxY';
Text2899.SetText(['-']);
FontStyle2900 := TFontStyleNode.Create;
FontStyle2900.Justify := fjMiddle;
end;

procedure InitHAnimGimbalJointController22Part225;
begin

FontStyle2900.JustifyMinor := fjMiddle;
FontStyle2900.Size := 0.1;
{ .SetFontStyle }
Text2899.FontStyle := FontStyle2900;
{ .SetGeometry }
Shape2896.Geometry := Text2899;
{ .AddChild }
Transform2895.AddChildren([Shape2896]);
{ .AddChildren }
Transform2867.AddChildren([Transform2895]);
{ .AddChildren }
Transform2860.AddChildren([Transform2867]);
Transform2901 := TTransformNode.Create;
Transform2901.Translation := Vector3(1.1,0,0);
Group2902 := TGroupNode.Create;
TouchSensor2903 := TTouchSensorNode.Create;
TouchSensor2903.X3DName := 'tsInY';
TouchSensor2903.Description := 'click, type degrees, press Enter';
{ .AddChildren }
Group2902.AddChildren([TouchSensor2903]);
Shape2904 := TShapeNode.Create;
Appearance2905 := TAppearanceNode.Create;
Material2906 := TMaterialNode.Create;
Material2906.X3DName := 'matInY';
Material2906.DiffuseColor := Vector3(0.12,0.12,0.18);
{ .SetMaterial }
Appearance2905.Material := Material2906;
{ .SetAppearance }
Shape2904.Appearance := Appearance2905;
Box2907 := TBoxNode.Create;
Box2907.Size := Vector3(0.8,0.34,0.02);
{ .SetGeometry }
Shape2904.Geometry := Box2907;
{ .AddChildren }
Group2902.AddChildren([Shape2904]);
{ .AddChildren }
Transform2901.AddChildren([Group2902]);
Transform2908 := TTransformNode.Create;
Transform2908.Translation := Vector3(0,0,0.02);
Shape2909 := TShapeNode.Create;
Appearance2910 := TAppearanceNode.Create;
Material2911 := TMaterialNode.Create;
Material2911.DiffuseColor := Vector3(1,1,0.8);
Material2911.EmissiveColor := Vector3(1,1,0.8);
{ .SetMaterial }
Appearance2910.Material := Material2911;
{ .SetAppearance }
Shape2909.Appearance := Appearance2910;
Text2912 := TTextNode.Create;
Text2912.X3DName := 'txtInY';
Text2912.SetText(['-']);
FontStyle2913 := TFontStyleNode.Create;
FontStyle2913.Justify := fjMiddle;
end;

procedure InitHAnimGimbalJointController22Part226;
begin

FontStyle2913.JustifyMinor := fjMiddle;
FontStyle2913.Size := 0.14;
{ .SetFontStyle }
Text2912.FontStyle := FontStyle2913;
{ .SetGeometry }
Shape2909.Geometry := Text2912;
{ .AddChild }
Transform2908.AddChildren([Shape2909]);
{ .AddChildren }
Transform2901.AddChildren([Transform2908]);
{ .AddChildren }
Transform2860.AddChildren([Transform2901]);
{ .AddChildren }
Transform2794.AddChildren([Transform2860]);
{ ===== axis Z ===== }
Transform2914 := TTransformNode.Create;
Transform2914.Translation := Vector3(0,-2.3,0);
Transform2915 := TTransformNode.Create;
Transform2915.Translation := Vector3(-1.25,0,0.01);
Shape2916 := TShapeNode.Create;
Appearance2917 := TAppearanceNode.Create;
Material2918 := TMaterialNode.Create;
Material2918.DiffuseColor := Vector3(0.3,0.5,1);
Material2918.EmissiveColor := Vector3(0.3,0.5,1);
{ .SetMaterial }
Appearance2917.Material := Material2918;
{ .SetAppearance }
Shape2916.Appearance := Appearance2917;
Text2919 := TTextNode.Create;
Text2919.SetText(['Z']);
FontStyle2920 := TFontStyleNode.Create;
FontStyle2920.Justify := fjMiddle;
FontStyle2920.JustifyMinor := fjMiddle;
FontStyle2920.Size := 0.26;
{ .SetFontStyle }
Text2919.FontStyle := FontStyle2920;
{ .SetGeometry }
Shape2916.Geometry := Text2919;
{ .AddChild }
Transform2915.AddChildren([Shape2916]);
{ .AddChildren }
Transform2914.AddChildren([Transform2915]);
Transform2921 := TTransformNode.Create;
Transform2921.Translation := Vector3(-0.1,0,0);
Shape2922 := TShapeNode.Create;
Appearance2923 := TAppearanceNode.Create;
Material2924 := TMaterialNode.Create;
Material2924.DiffuseColor := Vector3(0.55,0.55,0.6);
Material2924.EmissiveColor := Vector3(0.15,0.15,0.2);
{ .SetMaterial }
Appearance2923.Material := Material2924;
{ .SetAppearance }
Shape2922.Appearance := Appearance2923;
Box2925 := TBoxNode.Create;
Box2925.Size := Vector3(1.5,0.04,0.03);
end;

procedure InitHAnimGimbalJointController22Part227;
begin

{ .SetGeometry }
Shape2922.Geometry := Box2925;
{ .AddChild }
Transform2921.AddChildren([Shape2922]);
Transform2926 := TTransformNode.Create;
Transform2926.Translation := Vector3(-0.75,0,0);
Shape2927 := TShapeNode.Create;
Appearance2928 := TAppearanceNode.Create;
Material2929 := TMaterialNode.Create;
{ .SetMaterial }
Appearance2928.Material := Material2929;
{ .SetAppearance }
Shape2927.Appearance := Appearance2928;
Box2930 := TBoxNode.Create;
Box2930.Size := Vector3(0.02,0.2,0.03);
{ .SetGeometry }
Shape2927.Geometry := Box2930;
{ .AddChild }
Transform2926.AddChildren([Shape2927]);
{ .AddChildren }
Transform2921.AddChildren([Transform2926]);
Transform2931 := TTransformNode.Create;
Transform2931.Translation := Vector3(0.75,0,0);
Shape2932 := TShapeNode.Create;
Appearance2933 := TAppearanceNode.Create;
Material2934 := TMaterialNode.Create;
{ .SetMaterial }
Appearance2933.Material := Material2934;
{ .SetAppearance }
Shape2932.Appearance := Appearance2933;
Box2935 := TBoxNode.Create;
Box2935.Size := Vector3(0.02,0.2,0.03);
{ .SetGeometry }
Shape2932.Geometry := Box2935;
{ .AddChild }
Transform2931.AddChildren([Shape2932]);
{ .AddChildren }
Transform2921.AddChildren([Transform2931]);
Group2936 := TGroupNode.Create;
PlaneSensor2937 := TPlaneSensorNode.Create;
PlaneSensor2937.X3DName := 'psZ';
PlaneSensor2937.Description := 'Z rotation slider';
PlaneSensor2937.MinPosition := Vector2(-0.75,0);
PlaneSensor2937.MaxPosition := Vector2(0.75,0);
{ .AddChildren }
Group2936.AddChildren([PlaneSensor2937]);
Transform2938 := TTransformNode.Create;
Transform2938.X3DName := 'knobZ';
Shape2939 := TShapeNode.Create;
Appearance2940 := TAppearanceNode.Create;
Material2941 := TMaterialNode.Create;
Material2941.X3DName := 'mat_knobZ';
Material2941.DiffuseColor := Vector3(0.3,0.5,1);
end;

procedure InitHAnimGimbalJointController22Part228;
begin

Material2941.EmissiveColor := Vector3(0.15,0.25,0.5);
{ .SetMaterial }
Appearance2940.Material := Material2941;
{ .SetAppearance }
Shape2939.Appearance := Appearance2940;
Box2942 := TBoxNode.Create;
Box2942.Size := Vector3(0.12,0.3,0.08);
{ .SetGeometry }
Shape2939.Geometry := Box2942;
{ .AddChild }
Transform2938.AddChildren([Shape2939]);
{ .AddChildren }
Group2936.AddChildren([Transform2938]);
{ .AddChildren }
Transform2921.AddChildren([Group2936]);
Transform2943 := TTransformNode.Create;
Transform2943.Translation := Vector3(-0.75,-0.26,0.01);
Shape2944 := TShapeNode.Create;
Appearance2945 := TAppearanceNode.Create;
Material2946 := TMaterialNode.Create;
Material2946.EmissiveColor := Vector3(0.8,0.8,0.8);
{ .SetMaterial }
Appearance2945.Material := Material2946;
{ .SetAppearance }
Shape2944.Appearance := Appearance2945;
Text2947 := TTextNode.Create;
Text2947.X3DName := 'txtMinZ';
Text2947.SetText(['-']);
FontStyle2948 := TFontStyleNode.Create;
FontStyle2948.Justify := fjMiddle;
FontStyle2948.JustifyMinor := fjMiddle;
FontStyle2948.Size := 0.1;
{ .SetFontStyle }
Text2947.FontStyle := FontStyle2948;
{ .SetGeometry }
Shape2944.Geometry := Text2947;
{ .AddChild }
Transform2943.AddChildren([Shape2944]);
{ .AddChildren }
Transform2921.AddChildren([Transform2943]);
Transform2949 := TTransformNode.Create;
Transform2949.Translation := Vector3(0.75,-0.26,0.01);
Shape2950 := TShapeNode.Create;
Appearance2951 := TAppearanceNode.Create;
Material2952 := TMaterialNode.Create;
Material2952.EmissiveColor := Vector3(0.8,0.8,0.8);
{ .SetMaterial }
Appearance2951.Material := Material2952;
{ .SetAppearance }
Shape2950.Appearance := Appearance2951;
Text2953 := TTextNode.Create;
Text2953.X3DName := 'txtMaxZ';
Text2953.SetText(['-']);
FontStyle2954 := TFontStyleNode.Create;
end;

procedure InitHAnimGimbalJointController22Part229;
begin

FontStyle2954.Justify := fjMiddle;
FontStyle2954.JustifyMinor := fjMiddle;
FontStyle2954.Size := 0.1;
{ .SetFontStyle }
Text2953.FontStyle := FontStyle2954;
{ .SetGeometry }
Shape2950.Geometry := Text2953;
{ .AddChild }
Transform2949.AddChildren([Shape2950]);
{ .AddChildren }
Transform2921.AddChildren([Transform2949]);
{ .AddChildren }
Transform2914.AddChildren([Transform2921]);
Transform2955 := TTransformNode.Create;
Transform2955.Translation := Vector3(1.1,0,0);
Group2956 := TGroupNode.Create;
TouchSensor2957 := TTouchSensorNode.Create;
TouchSensor2957.X3DName := 'tsInZ';
TouchSensor2957.Description := 'click, type degrees, press Enter';
{ .AddChildren }
Group2956.AddChildren([TouchSensor2957]);
Shape2958 := TShapeNode.Create;
Appearance2959 := TAppearanceNode.Create;
Material2960 := TMaterialNode.Create;
Material2960.X3DName := 'matInZ';
Material2960.DiffuseColor := Vector3(0.12,0.12,0.18);
{ .SetMaterial }
Appearance2959.Material := Material2960;
{ .SetAppearance }
Shape2958.Appearance := Appearance2959;
Box2961 := TBoxNode.Create;
Box2961.Size := Vector3(0.8,0.34,0.02);
{ .SetGeometry }
Shape2958.Geometry := Box2961;
{ .AddChildren }
Group2956.AddChildren([Shape2958]);
{ .AddChildren }
Transform2955.AddChildren([Group2956]);
Transform2962 := TTransformNode.Create;
Transform2962.Translation := Vector3(0,0,0.02);
Shape2963 := TShapeNode.Create;
Appearance2964 := TAppearanceNode.Create;
Material2965 := TMaterialNode.Create;
Material2965.DiffuseColor := Vector3(1,1,0.8);
Material2965.EmissiveColor := Vector3(1,1,0.8);
{ .SetMaterial }
Appearance2964.Material := Material2965;
{ .SetAppearance }
Shape2963.Appearance := Appearance2964;
Text2966 := TTextNode.Create;
Text2966.X3DName := 'txtInZ';
Text2966.SetText(['-']);
FontStyle2967 := TFontStyleNode.Create;
end;

procedure InitHAnimGimbalJointController22Part230;
begin

FontStyle2967.Justify := fjMiddle;
FontStyle2967.JustifyMinor := fjMiddle;
FontStyle2967.Size := 0.14;
{ .SetFontStyle }
Text2966.FontStyle := FontStyle2967;
{ .SetGeometry }
Shape2963.Geometry := Text2966;
{ .AddChild }
Transform2962.AddChildren([Shape2963]);
{ .AddChildren }
Transform2955.AddChildren([Transform2962]);
{ .AddChildren }
Transform2914.AddChildren([Transform2955]);
{ .AddChildren }
Transform2794.AddChildren([Transform2914]);
Transform2968 := TTransformNode.Create;
Transform2968.Translation := Vector3(0,-2.9,0.01);
Shape2969 := TShapeNode.Create;
Appearance2970 := TAppearanceNode.Create;
Material2971 := TMaterialNode.Create;
Material2971.DiffuseColor := Vector3(0.7,0.7,0.7);
Material2971.EmissiveColor := Vector3(0.7,0.7,0.7);
{ .SetMaterial }
Appearance2970.Material := Material2971;
{ .SetAppearance }
Shape2969.Appearance := Appearance2970;
Text2972 := TTextNode.Create;
Text2972.SetText(['INPUT: click a box, type degrees, Enter','(45r = radians, or type: x y z)']);
FontStyle2973 := TFontStyleNode.Create;
FontStyle2973.Justify := fjMiddle;
FontStyle2973.JustifyMinor := fjMiddle;
FontStyle2973.Size := 0.08;
FontStyle2973.Spacing := 1.4;
{ .SetFontStyle }
Text2972.FontStyle := FontStyle2973;
{ .SetGeometry }
Shape2969.Geometry := Text2972;
{ .AddChild }
Transform2968.AddChildren([Shape2969]);
{ .AddChildren }
Transform2794.AddChildren([Transform2968]);
Transform2974 := TTransformNode.Create;
Transform2974.Translation := Vector3(0,-3.82,-0.01);
Shape2975 := TShapeNode.Create;
Appearance2976 := TAppearanceNode.Create;
Material2977 := TMaterialNode.Create;
Material2977.DiffuseColor := Vector3(0.02,0.03,0.06);
{ .SetMaterial }
Appearance2976.Material := Material2977;
{ .SetAppearance }
Shape2975.Appearance := Appearance2976;
Box2978 := TBoxNode.Create;
Box2978.Size := Vector3(3,1.1,0.01);
{ .SetGeometry }
Shape2975.Geometry := Box2978;
end;

procedure InitHAnimGimbalJointController22Part231;
begin

{ .AddChild }
Transform2974.AddChildren([Shape2975]);
{ .AddChildren }
Transform2794.AddChildren([Transform2974]);
Transform2979 := TTransformNode.Create;
Transform2979.Translation := Vector3(-1.43,-3.4,0.01);
Shape2980 := TShapeNode.Create;
Appearance2981 := TAppearanceNode.Create;
Material2982 := TMaterialNode.Create;
Material2982.DiffuseColor := Vector3(0.6,1,0.6);
Material2982.EmissiveColor := Vector3(0.6,1,0.6);
{ .SetMaterial }
Appearance2981.Material := Material2982;
{ .SetAppearance }
Shape2980.Appearance := Appearance2981;
Text2983 := TTextNode.Create;
Text2983.X3DName := 'txtOut';
Text2983.SetText(['OUTPUT']);
FontStyle2984 := TFontStyleNode.Create;
FontStyle2984.Justify := fjBegin;
FontStyle2984.JustifyMinor := fjFirst;
FontStyle2984.Size := 0.104;
FontStyle2984.Spacing := 1.3;
{ .SetFontStyle }
Text2983.FontStyle := FontStyle2984;
{ .SetGeometry }
Shape2980.Geometry := Text2983;
{ .AddChild }
Transform2979.AddChildren([Shape2980]);
{ .AddChildren }
Transform2794.AddChildren([Transform2979]);
{ .FdChildren.Add }
Layer2605.FdChildren.Add(Transform2794);
{ ==================== ROOT TRANSLATION PANEL (hanim_humanoid_root) ==================== }
Transform2985 := TTransformNode.Create;
Transform2985.X3DName := 'translatePanel';
Transform2985.Translation := Vector3(0.2,3.9,0);
Transform2986 := TTransformNode.Create;
Transform2986.Translation := Vector3(0,-1.5,-0.03);
Shape2987 := TShapeNode.Create;
Appearance2988 := TAppearanceNode.Create;
Material2989 := TMaterialNode.Create;
Material2989.DiffuseColor := Vector3(0.05,0.06,0.1);
Material2989.Transparency := 0.25;
{ .SetMaterial }
Appearance2988.Material := Material2989;
{ .SetAppearance }
Shape2987.Appearance := Appearance2988;
Box2990 := TBoxNode.Create;
Box2990.Size := Vector3(3.2,3.2,0.01);
{ .SetGeometry }
Shape2987.Geometry := Box2990;
{ .AddChild }
Transform2986.AddChildren([Shape2987]);
end;

procedure InitHAnimGimbalJointController22Part232;
begin

{ .AddChildren }
Transform2985.AddChildren([Transform2986]);
Transform2991 := TTransformNode.Create;
Transform2991.Translation := Vector3(0,-0.25,0.01);
Shape2992 := TShapeNode.Create;
Appearance2993 := TAppearanceNode.Create;
Material2994 := TMaterialNode.Create;
Material2994.DiffuseColor := Vector3(1,1,1);
Material2994.EmissiveColor := Vector3(1,1,1);
{ .SetMaterial }
Appearance2993.Material := Material2994;
{ .SetAppearance }
Shape2992.Appearance := Appearance2993;
Text2995 := TTextNode.Create;
Text2995.SetText(['ROOT TRANSLATION (meters)']);
FontStyle2996 := TFontStyleNode.Create;
FontStyle2996.Justify := fjMiddle;
FontStyle2996.JustifyMinor := fjMiddle;
FontStyle2996.Size := 0.17;
{ .SetFontStyle }
Text2995.FontStyle := FontStyle2996;
{ .SetGeometry }
Shape2992.Geometry := Text2995;
{ .AddChild }
Transform2991.AddChildren([Shape2992]);
{ .AddChildren }
Transform2985.AddChildren([Transform2991]);
{ ===== translate axis X ===== }
Transform2997 := TTransformNode.Create;
Transform2997.Translation := Vector3(0,-0.75,0);
Transform2998 := TTransformNode.Create;
Transform2998.Translation := Vector3(-1.25,0,0.01);
Shape2999 := TShapeNode.Create;
Appearance3000 := TAppearanceNode.Create;
Material3001 := TMaterialNode.Create;
Material3001.DiffuseColor := Vector3(1,0.2,0.2);
Material3001.EmissiveColor := Vector3(1,0.2,0.2);
{ .SetMaterial }
Appearance3000.Material := Material3001;
{ .SetAppearance }
Shape2999.Appearance := Appearance3000;
Text3002 := TTextNode.Create;
Text3002.SetText(['X']);
FontStyle3003 := TFontStyleNode.Create;
FontStyle3003.Justify := fjMiddle;
FontStyle3003.JustifyMinor := fjMiddle;
FontStyle3003.Size := 0.26;
{ .SetFontStyle }
Text3002.FontStyle := FontStyle3003;
{ .SetGeometry }
Shape2999.Geometry := Text3002;
{ .AddChild }
Transform2998.AddChildren([Shape2999]);
end;

procedure InitHAnimGimbalJointController22Part233;
begin

{ .AddChildren }
Transform2997.AddChildren([Transform2998]);
Transform3004 := TTransformNode.Create;
Transform3004.Translation := Vector3(-0.1,0,0);
Shape3005 := TShapeNode.Create;
Appearance3006 := TAppearanceNode.Create;
Material3007 := TMaterialNode.Create;
Material3007.DiffuseColor := Vector3(0.55,0.55,0.6);
Material3007.EmissiveColor := Vector3(0.15,0.15,0.2);
{ .SetMaterial }
Appearance3006.Material := Material3007;
{ .SetAppearance }
Shape3005.Appearance := Appearance3006;
Box3008 := TBoxNode.Create;
Box3008.Size := Vector3(1.5,0.04,0.03);
{ .SetGeometry }
Shape3005.Geometry := Box3008;
{ .AddChild }
Transform3004.AddChildren([Shape3005]);
Transform3009 := TTransformNode.Create;
Transform3009.Translation := Vector3(-0.75,0,0);
Shape3010 := TShapeNode.Create;
Appearance3011 := TAppearanceNode.Create;
Material3012 := TMaterialNode.Create;
{ .SetMaterial }
Appearance3011.Material := Material3012;
{ .SetAppearance }
Shape3010.Appearance := Appearance3011;
Box3013 := TBoxNode.Create;
Box3013.Size := Vector3(0.02,0.2,0.03);
{ .SetGeometry }
Shape3010.Geometry := Box3013;
{ .AddChild }
Transform3009.AddChildren([Shape3010]);
{ .AddChildren }
Transform3004.AddChildren([Transform3009]);
Transform3014 := TTransformNode.Create;
Shape3015 := TShapeNode.Create;
Appearance3016 := TAppearanceNode.Create;
Material3017 := TMaterialNode.Create;
Material3017.DiffuseColor := Vector3(0.6,0.6,0.6);
{ .SetMaterial }
Appearance3016.Material := Material3017;
{ .SetAppearance }
Shape3015.Appearance := Appearance3016;
Box3018 := TBoxNode.Create;
Box3018.Size := Vector3(0.015,0.14,0.03);
{ .SetGeometry }
Shape3015.Geometry := Box3018;
{ .AddChild }
Transform3014.AddChildren([Shape3015]);
{ .AddChildren }
Transform3004.AddChildren([Transform3014]);
Transform3019 := TTransformNode.Create;
Transform3019.Translation := Vector3(0.75,0,0);
end;

procedure InitHAnimGimbalJointController22Part234;
begin

Shape3020 := TShapeNode.Create;
Appearance3021 := TAppearanceNode.Create;
Material3022 := TMaterialNode.Create;
{ .SetMaterial }
Appearance3021.Material := Material3022;
{ .SetAppearance }
Shape3020.Appearance := Appearance3021;
Box3023 := TBoxNode.Create;
Box3023.Size := Vector3(0.02,0.2,0.03);
{ .SetGeometry }
Shape3020.Geometry := Box3023;
{ .AddChild }
Transform3019.AddChildren([Shape3020]);
{ .AddChildren }
Transform3004.AddChildren([Transform3019]);
Group3024 := TGroupNode.Create;
PlaneSensor3025 := TPlaneSensorNode.Create;
PlaneSensor3025.X3DName := 'psTX';
PlaneSensor3025.Description := 'X translation slider';
PlaneSensor3025.MinPosition := Vector2(-0.75,0);
PlaneSensor3025.MaxPosition := Vector2(0.75,0);
{ .AddChildren }
Group3024.AddChildren([PlaneSensor3025]);
Transform3026 := TTransformNode.Create;
Transform3026.X3DName := 'knobTX';
Shape3027 := TShapeNode.Create;
Appearance3028 := TAppearanceNode.Create;
Material3029 := TMaterialNode.Create;
Material3029.X3DName := 'mat_knobTX';
Material3029.DiffuseColor := Vector3(1,0.2,0.2);
Material3029.EmissiveColor := Vector3(0.5,0.1,0.1);
{ .SetMaterial }
Appearance3028.Material := Material3029;
{ .SetAppearance }
Shape3027.Appearance := Appearance3028;
Box3030 := TBoxNode.Create;
Box3030.Size := Vector3(0.12,0.3,0.08);
{ .SetGeometry }
Shape3027.Geometry := Box3030;
{ .AddChild }
Transform3026.AddChildren([Shape3027]);
{ .AddChildren }
Group3024.AddChildren([Transform3026]);
{ .AddChildren }
Transform3004.AddChildren([Group3024]);
Transform3031 := TTransformNode.Create;
Transform3031.Translation := Vector3(-0.75,-0.22,0.01);
Shape3032 := TShapeNode.Create;
Appearance3033 := TAppearanceNode.Create;
Material3034 := TMaterialNode.Create;
Material3034.EmissiveColor := Vector3(0.8,0.8,0.8);
{ .SetMaterial }
Appearance3033.Material := Material3034;
end;

procedure InitHAnimGimbalJointController22Part235;
begin

{ .SetAppearance }
Shape3032.Appearance := Appearance3033;
Text3035 := TTextNode.Create;
Text3035.SetText(['-6']);
FontStyle3036 := TFontStyleNode.Create;
FontStyle3036.Justify := fjMiddle;
FontStyle3036.JustifyMinor := fjMiddle;
FontStyle3036.Size := 0.1;
{ .SetFontStyle }
Text3035.FontStyle := FontStyle3036;
{ .SetGeometry }
Shape3032.Geometry := Text3035;
{ .AddChild }
Transform3031.AddChildren([Shape3032]);
{ .AddChildren }
Transform3004.AddChildren([Transform3031]);
Transform3037 := TTransformNode.Create;
Transform3037.Translation := Vector3(0.75,-0.22,0.01);
Shape3038 := TShapeNode.Create;
Appearance3039 := TAppearanceNode.Create;
Material3040 := TMaterialNode.Create;
Material3040.EmissiveColor := Vector3(0.8,0.8,0.8);
{ .SetMaterial }
Appearance3039.Material := Material3040;
{ .SetAppearance }
Shape3038.Appearance := Appearance3039;
Text3041 := TTextNode.Create;
Text3041.SetText(['+6']);
FontStyle3042 := TFontStyleNode.Create;
FontStyle3042.Justify := fjMiddle;
FontStyle3042.JustifyMinor := fjMiddle;
FontStyle3042.Size := 0.1;
{ .SetFontStyle }
Text3041.FontStyle := FontStyle3042;
{ .SetGeometry }
Shape3038.Geometry := Text3041;
{ .AddChild }
Transform3037.AddChildren([Shape3038]);
{ .AddChildren }
Transform3004.AddChildren([Transform3037]);
{ .AddChildren }
Transform2997.AddChildren([Transform3004]);
Transform3043 := TTransformNode.Create;
Transform3043.Translation := Vector3(1.1,0,0);
Group3044 := TGroupNode.Create;
TouchSensor3045 := TTouchSensorNode.Create;
TouchSensor3045.X3DName := 'tsTInX';
TouchSensor3045.Description := 'click, type meters, press Enter';
{ .AddChildren }
Group3044.AddChildren([TouchSensor3045]);
Shape3046 := TShapeNode.Create;
Appearance3047 := TAppearanceNode.Create;
Material3048 := TMaterialNode.Create;
end;

procedure InitHAnimGimbalJointController22Part236;
begin

Material3048.X3DName := 'matTInX';
Material3048.DiffuseColor := Vector3(0.12,0.12,0.18);
{ .SetMaterial }
Appearance3047.Material := Material3048;
{ .SetAppearance }
Shape3046.Appearance := Appearance3047;
Box3049 := TBoxNode.Create;
Box3049.Size := Vector3(0.8,0.34,0.02);
{ .SetGeometry }
Shape3046.Geometry := Box3049;
{ .AddChildren }
Group3044.AddChildren([Shape3046]);
{ .AddChildren }
Transform3043.AddChildren([Group3044]);
Transform3050 := TTransformNode.Create;
Transform3050.Translation := Vector3(0,0,0.02);
Shape3051 := TShapeNode.Create;
Appearance3052 := TAppearanceNode.Create;
Material3053 := TMaterialNode.Create;
Material3053.DiffuseColor := Vector3(1,1,0.8);
Material3053.EmissiveColor := Vector3(1,1,0.8);
{ .SetMaterial }
Appearance3052.Material := Material3053;
{ .SetAppearance }
Shape3051.Appearance := Appearance3052;
Text3054 := TTextNode.Create;
Text3054.X3DName := 'txtTInX';
Text3054.SetText(['0.000']);
FontStyle3055 := TFontStyleNode.Create;
FontStyle3055.Justify := fjMiddle;
FontStyle3055.JustifyMinor := fjMiddle;
FontStyle3055.Size := 0.14;
{ .SetFontStyle }
Text3054.FontStyle := FontStyle3055;
{ .SetGeometry }
Shape3051.Geometry := Text3054;
{ .AddChild }
Transform3050.AddChildren([Shape3051]);
{ .AddChildren }
Transform3043.AddChildren([Transform3050]);
{ .AddChildren }
Transform2997.AddChildren([Transform3043]);
{ .AddChildren }
Transform2985.AddChildren([Transform2997]);
{ ===== translate axis Y ===== }
Transform3056 := TTransformNode.Create;
Transform3056.Translation := Vector3(0,-1.3,0);
Transform3057 := TTransformNode.Create;
Transform3057.Translation := Vector3(-1.25,0,0.01);
Shape3058 := TShapeNode.Create;
Appearance3059 := TAppearanceNode.Create;
Material3060 := TMaterialNode.Create;
Material3060.DiffuseColor := Vector3(0.2,0.9,0.2);
Material3060.EmissiveColor := Vector3(0.2,0.9,0.2);
end;

procedure InitHAnimGimbalJointController22Part237;
begin

{ .SetMaterial }
Appearance3059.Material := Material3060;
{ .SetAppearance }
Shape3058.Appearance := Appearance3059;
Text3061 := TTextNode.Create;
Text3061.SetText(['Y']);
FontStyle3062 := TFontStyleNode.Create;
FontStyle3062.Justify := fjMiddle;
FontStyle3062.JustifyMinor := fjMiddle;
FontStyle3062.Size := 0.26;
{ .SetFontStyle }
Text3061.FontStyle := FontStyle3062;
{ .SetGeometry }
Shape3058.Geometry := Text3061;
{ .AddChild }
Transform3057.AddChildren([Shape3058]);
{ .AddChildren }
Transform3056.AddChildren([Transform3057]);
Transform3063 := TTransformNode.Create;
Transform3063.Translation := Vector3(-0.1,0,0);
Shape3064 := TShapeNode.Create;
Appearance3065 := TAppearanceNode.Create;
Material3066 := TMaterialNode.Create;
Material3066.DiffuseColor := Vector3(0.55,0.55,0.6);
Material3066.EmissiveColor := Vector3(0.15,0.15,0.2);
{ .SetMaterial }
Appearance3065.Material := Material3066;
{ .SetAppearance }
Shape3064.Appearance := Appearance3065;
Box3067 := TBoxNode.Create;
Box3067.Size := Vector3(1.5,0.04,0.03);
{ .SetGeometry }
Shape3064.Geometry := Box3067;
{ .AddChild }
Transform3063.AddChildren([Shape3064]);
Transform3068 := TTransformNode.Create;
Transform3068.Translation := Vector3(-0.75,0,0);
Shape3069 := TShapeNode.Create;
Appearance3070 := TAppearanceNode.Create;
Material3071 := TMaterialNode.Create;
{ .SetMaterial }
Appearance3070.Material := Material3071;
{ .SetAppearance }
Shape3069.Appearance := Appearance3070;
Box3072 := TBoxNode.Create;
Box3072.Size := Vector3(0.02,0.2,0.03);
{ .SetGeometry }
Shape3069.Geometry := Box3072;
{ .AddChild }
Transform3068.AddChildren([Shape3069]);
{ .AddChildren }
Transform3063.AddChildren([Transform3068]);
Transform3073 := TTransformNode.Create;
Shape3074 := TShapeNode.Create;
Appearance3075 := TAppearanceNode.Create;
end;

procedure InitHAnimGimbalJointController22Part238;
begin

Material3076 := TMaterialNode.Create;
Material3076.DiffuseColor := Vector3(0.6,0.6,0.6);
{ .SetMaterial }
Appearance3075.Material := Material3076;
{ .SetAppearance }
Shape3074.Appearance := Appearance3075;
Box3077 := TBoxNode.Create;
Box3077.Size := Vector3(0.015,0.14,0.03);
{ .SetGeometry }
Shape3074.Geometry := Box3077;
{ .AddChild }
Transform3073.AddChildren([Shape3074]);
{ .AddChildren }
Transform3063.AddChildren([Transform3073]);
Transform3078 := TTransformNode.Create;
Transform3078.Translation := Vector3(0.75,0,0);
Shape3079 := TShapeNode.Create;
Appearance3080 := TAppearanceNode.Create;
Material3081 := TMaterialNode.Create;
{ .SetMaterial }
Appearance3080.Material := Material3081;
{ .SetAppearance }
Shape3079.Appearance := Appearance3080;
Box3082 := TBoxNode.Create;
Box3082.Size := Vector3(0.02,0.2,0.03);
{ .SetGeometry }
Shape3079.Geometry := Box3082;
{ .AddChild }
Transform3078.AddChildren([Shape3079]);
{ .AddChildren }
Transform3063.AddChildren([Transform3078]);
Group3083 := TGroupNode.Create;
PlaneSensor3084 := TPlaneSensorNode.Create;
PlaneSensor3084.X3DName := 'psTY';
PlaneSensor3084.Description := 'Y translation slider';
PlaneSensor3084.MinPosition := Vector2(-0.75,0);
PlaneSensor3084.MaxPosition := Vector2(0.75,0);
{ .AddChildren }
Group3083.AddChildren([PlaneSensor3084]);
Transform3085 := TTransformNode.Create;
Transform3085.X3DName := 'knobTY';
Shape3086 := TShapeNode.Create;
Appearance3087 := TAppearanceNode.Create;
Material3088 := TMaterialNode.Create;
Material3088.X3DName := 'mat_knobTY';
Material3088.DiffuseColor := Vector3(0.2,0.9,0.2);
Material3088.EmissiveColor := Vector3(0.1,0.45,0.1);
{ .SetMaterial }
Appearance3087.Material := Material3088;
{ .SetAppearance }
Shape3086.Appearance := Appearance3087;
Box3089 := TBoxNode.Create;
Box3089.Size := Vector3(0.12,0.3,0.08);
end;

procedure InitHAnimGimbalJointController22Part239;
begin

{ .SetGeometry }
Shape3086.Geometry := Box3089;
{ .AddChild }
Transform3085.AddChildren([Shape3086]);
{ .AddChildren }
Group3083.AddChildren([Transform3085]);
{ .AddChildren }
Transform3063.AddChildren([Group3083]);
Transform3090 := TTransformNode.Create;
Transform3090.Translation := Vector3(-0.75,-0.22,0.01);
Shape3091 := TShapeNode.Create;
Appearance3092 := TAppearanceNode.Create;
Material3093 := TMaterialNode.Create;
Material3093.EmissiveColor := Vector3(0.8,0.8,0.8);
{ .SetMaterial }
Appearance3092.Material := Material3093;
{ .SetAppearance }
Shape3091.Appearance := Appearance3092;
Text3094 := TTextNode.Create;
Text3094.SetText(['-6']);
FontStyle3095 := TFontStyleNode.Create;
FontStyle3095.Justify := fjMiddle;
FontStyle3095.JustifyMinor := fjMiddle;
FontStyle3095.Size := 0.1;
{ .SetFontStyle }
Text3094.FontStyle := FontStyle3095;
{ .SetGeometry }
Shape3091.Geometry := Text3094;
{ .AddChild }
Transform3090.AddChildren([Shape3091]);
{ .AddChildren }
Transform3063.AddChildren([Transform3090]);
Transform3096 := TTransformNode.Create;
Transform3096.Translation := Vector3(0.75,-0.22,0.01);
Shape3097 := TShapeNode.Create;
Appearance3098 := TAppearanceNode.Create;
Material3099 := TMaterialNode.Create;
Material3099.EmissiveColor := Vector3(0.8,0.8,0.8);
{ .SetMaterial }
Appearance3098.Material := Material3099;
{ .SetAppearance }
Shape3097.Appearance := Appearance3098;
Text3100 := TTextNode.Create;
Text3100.SetText(['+6']);
FontStyle3101 := TFontStyleNode.Create;
FontStyle3101.Justify := fjMiddle;
FontStyle3101.JustifyMinor := fjMiddle;
FontStyle3101.Size := 0.1;
{ .SetFontStyle }
Text3100.FontStyle := FontStyle3101;
{ .SetGeometry }
Shape3097.Geometry := Text3100;
{ .AddChild }
Transform3096.AddChildren([Shape3097]);
{ .AddChildren }
Transform3063.AddChildren([Transform3096]);
end;

procedure InitHAnimGimbalJointController22Part240;
begin

{ .AddChildren }
Transform3056.AddChildren([Transform3063]);
Transform3102 := TTransformNode.Create;
Transform3102.Translation := Vector3(1.1,0,0);
Group3103 := TGroupNode.Create;
TouchSensor3104 := TTouchSensorNode.Create;
TouchSensor3104.X3DName := 'tsTInY';
TouchSensor3104.Description := 'click, type meters, press Enter';
{ .AddChildren }
Group3103.AddChildren([TouchSensor3104]);
Shape3105 := TShapeNode.Create;
Appearance3106 := TAppearanceNode.Create;
Material3107 := TMaterialNode.Create;
Material3107.X3DName := 'matTInY';
Material3107.DiffuseColor := Vector3(0.12,0.12,0.18);
{ .SetMaterial }
Appearance3106.Material := Material3107;
{ .SetAppearance }
Shape3105.Appearance := Appearance3106;
Box3108 := TBoxNode.Create;
Box3108.Size := Vector3(0.8,0.34,0.02);
{ .SetGeometry }
Shape3105.Geometry := Box3108;
{ .AddChildren }
Group3103.AddChildren([Shape3105]);
{ .AddChildren }
Transform3102.AddChildren([Group3103]);
Transform3109 := TTransformNode.Create;
Transform3109.Translation := Vector3(0,0,0.02);
Shape3110 := TShapeNode.Create;
Appearance3111 := TAppearanceNode.Create;
Material3112 := TMaterialNode.Create;
Material3112.DiffuseColor := Vector3(1,1,0.8);
Material3112.EmissiveColor := Vector3(1,1,0.8);
{ .SetMaterial }
Appearance3111.Material := Material3112;
{ .SetAppearance }
Shape3110.Appearance := Appearance3111;
Text3113 := TTextNode.Create;
Text3113.X3DName := 'txtTInY';
Text3113.SetText(['0.000']);
FontStyle3114 := TFontStyleNode.Create;
FontStyle3114.Justify := fjMiddle;
FontStyle3114.JustifyMinor := fjMiddle;
FontStyle3114.Size := 0.14;
{ .SetFontStyle }
Text3113.FontStyle := FontStyle3114;
{ .SetGeometry }
Shape3110.Geometry := Text3113;
{ .AddChild }
Transform3109.AddChildren([Shape3110]);
{ .AddChildren }
Transform3102.AddChildren([Transform3109]);
end;

procedure InitHAnimGimbalJointController22Part241;
begin

{ .AddChildren }
Transform3056.AddChildren([Transform3102]);
{ .AddChildren }
Transform2985.AddChildren([Transform3056]);
{ ===== translate axis Z ===== }
Transform3115 := TTransformNode.Create;
Transform3115.Translation := Vector3(0,-1.85,0);
Transform3116 := TTransformNode.Create;
Transform3116.Translation := Vector3(-1.25,0,0.01);
Shape3117 := TShapeNode.Create;
Appearance3118 := TAppearanceNode.Create;
Material3119 := TMaterialNode.Create;
Material3119.DiffuseColor := Vector3(0.3,0.5,1);
Material3119.EmissiveColor := Vector3(0.3,0.5,1);
{ .SetMaterial }
Appearance3118.Material := Material3119;
{ .SetAppearance }
Shape3117.Appearance := Appearance3118;
Text3120 := TTextNode.Create;
Text3120.SetText(['Z']);
FontStyle3121 := TFontStyleNode.Create;
FontStyle3121.Justify := fjMiddle;
FontStyle3121.JustifyMinor := fjMiddle;
FontStyle3121.Size := 0.26;
{ .SetFontStyle }
Text3120.FontStyle := FontStyle3121;
{ .SetGeometry }
Shape3117.Geometry := Text3120;
{ .AddChild }
Transform3116.AddChildren([Shape3117]);
{ .AddChildren }
Transform3115.AddChildren([Transform3116]);
Transform3122 := TTransformNode.Create;
Transform3122.Translation := Vector3(-0.1,0,0);
Shape3123 := TShapeNode.Create;
Appearance3124 := TAppearanceNode.Create;
Material3125 := TMaterialNode.Create;
Material3125.DiffuseColor := Vector3(0.55,0.55,0.6);
Material3125.EmissiveColor := Vector3(0.15,0.15,0.2);
{ .SetMaterial }
Appearance3124.Material := Material3125;
{ .SetAppearance }
Shape3123.Appearance := Appearance3124;
Box3126 := TBoxNode.Create;
Box3126.Size := Vector3(1.5,0.04,0.03);
{ .SetGeometry }
Shape3123.Geometry := Box3126;
{ .AddChild }
Transform3122.AddChildren([Shape3123]);
Transform3127 := TTransformNode.Create;
Transform3127.Translation := Vector3(-0.75,0,0);
Shape3128 := TShapeNode.Create;
Appearance3129 := TAppearanceNode.Create;
end;

procedure InitHAnimGimbalJointController22Part242;
begin

Material3130 := TMaterialNode.Create;
{ .SetMaterial }
Appearance3129.Material := Material3130;
{ .SetAppearance }
Shape3128.Appearance := Appearance3129;
Box3131 := TBoxNode.Create;
Box3131.Size := Vector3(0.02,0.2,0.03);
{ .SetGeometry }
Shape3128.Geometry := Box3131;
{ .AddChild }
Transform3127.AddChildren([Shape3128]);
{ .AddChildren }
Transform3122.AddChildren([Transform3127]);
Transform3132 := TTransformNode.Create;
Shape3133 := TShapeNode.Create;
Appearance3134 := TAppearanceNode.Create;
Material3135 := TMaterialNode.Create;
Material3135.DiffuseColor := Vector3(0.6,0.6,0.6);
{ .SetMaterial }
Appearance3134.Material := Material3135;
{ .SetAppearance }
Shape3133.Appearance := Appearance3134;
Box3136 := TBoxNode.Create;
Box3136.Size := Vector3(0.015,0.14,0.03);
{ .SetGeometry }
Shape3133.Geometry := Box3136;
{ .AddChild }
Transform3132.AddChildren([Shape3133]);
{ .AddChildren }
Transform3122.AddChildren([Transform3132]);
Transform3137 := TTransformNode.Create;
Transform3137.Translation := Vector3(0.75,0,0);
Shape3138 := TShapeNode.Create;
Appearance3139 := TAppearanceNode.Create;
Material3140 := TMaterialNode.Create;
{ .SetMaterial }
Appearance3139.Material := Material3140;
{ .SetAppearance }
Shape3138.Appearance := Appearance3139;
Box3141 := TBoxNode.Create;
Box3141.Size := Vector3(0.02,0.2,0.03);
{ .SetGeometry }
Shape3138.Geometry := Box3141;
{ .AddChild }
Transform3137.AddChildren([Shape3138]);
{ .AddChildren }
Transform3122.AddChildren([Transform3137]);
Group3142 := TGroupNode.Create;
PlaneSensor3143 := TPlaneSensorNode.Create;
PlaneSensor3143.X3DName := 'psTZ';
PlaneSensor3143.Description := 'Z translation slider';
PlaneSensor3143.MinPosition := Vector2(-0.75,0);
PlaneSensor3143.MaxPosition := Vector2(0.75,0);
{ .AddChildren }
Group3142.AddChildren([PlaneSensor3143]);
Transform3144 := TTransformNode.Create;
end;

procedure InitHAnimGimbalJointController22Part243;
begin

Transform3144.X3DName := 'knobTZ';
Shape3145 := TShapeNode.Create;
Appearance3146 := TAppearanceNode.Create;
Material3147 := TMaterialNode.Create;
Material3147.X3DName := 'mat_knobTZ';
Material3147.DiffuseColor := Vector3(0.3,0.5,1);
Material3147.EmissiveColor := Vector3(0.15,0.25,0.5);
{ .SetMaterial }
Appearance3146.Material := Material3147;
{ .SetAppearance }
Shape3145.Appearance := Appearance3146;
Box3148 := TBoxNode.Create;
Box3148.Size := Vector3(0.12,0.3,0.08);
{ .SetGeometry }
Shape3145.Geometry := Box3148;
{ .AddChild }
Transform3144.AddChildren([Shape3145]);
{ .AddChildren }
Group3142.AddChildren([Transform3144]);
{ .AddChildren }
Transform3122.AddChildren([Group3142]);
Transform3149 := TTransformNode.Create;
Transform3149.Translation := Vector3(-0.75,-0.22,0.01);
Shape3150 := TShapeNode.Create;
Appearance3151 := TAppearanceNode.Create;
Material3152 := TMaterialNode.Create;
Material3152.EmissiveColor := Vector3(0.8,0.8,0.8);
{ .SetMaterial }
Appearance3151.Material := Material3152;
{ .SetAppearance }
Shape3150.Appearance := Appearance3151;
Text3153 := TTextNode.Create;
Text3153.SetText(['-6']);
FontStyle3154 := TFontStyleNode.Create;
FontStyle3154.Justify := fjMiddle;
FontStyle3154.JustifyMinor := fjMiddle;
FontStyle3154.Size := 0.1;
{ .SetFontStyle }
Text3153.FontStyle := FontStyle3154;
{ .SetGeometry }
Shape3150.Geometry := Text3153;
{ .AddChild }
Transform3149.AddChildren([Shape3150]);
{ .AddChildren }
Transform3122.AddChildren([Transform3149]);
Transform3155 := TTransformNode.Create;
Transform3155.Translation := Vector3(0.75,-0.22,0.01);
Shape3156 := TShapeNode.Create;
Appearance3157 := TAppearanceNode.Create;
Material3158 := TMaterialNode.Create;
Material3158.EmissiveColor := Vector3(0.8,0.8,0.8);
{ .SetMaterial }
Appearance3157.Material := Material3158;
end;

procedure InitHAnimGimbalJointController22Part244;
begin

{ .SetAppearance }
Shape3156.Appearance := Appearance3157;
Text3159 := TTextNode.Create;
Text3159.SetText(['+6']);
FontStyle3160 := TFontStyleNode.Create;
FontStyle3160.Justify := fjMiddle;
FontStyle3160.JustifyMinor := fjMiddle;
FontStyle3160.Size := 0.1;
{ .SetFontStyle }
Text3159.FontStyle := FontStyle3160;
{ .SetGeometry }
Shape3156.Geometry := Text3159;
{ .AddChild }
Transform3155.AddChildren([Shape3156]);
{ .AddChildren }
Transform3122.AddChildren([Transform3155]);
{ .AddChildren }
Transform3115.AddChildren([Transform3122]);
Transform3161 := TTransformNode.Create;
Transform3161.Translation := Vector3(1.1,0,0);
Group3162 := TGroupNode.Create;
TouchSensor3163 := TTouchSensorNode.Create;
TouchSensor3163.X3DName := 'tsTInZ';
TouchSensor3163.Description := 'click, type meters, press Enter';
{ .AddChildren }
Group3162.AddChildren([TouchSensor3163]);
Shape3164 := TShapeNode.Create;
Appearance3165 := TAppearanceNode.Create;
Material3166 := TMaterialNode.Create;
Material3166.X3DName := 'matTInZ';
Material3166.DiffuseColor := Vector3(0.12,0.12,0.18);
{ .SetMaterial }
Appearance3165.Material := Material3166;
{ .SetAppearance }
Shape3164.Appearance := Appearance3165;
Box3167 := TBoxNode.Create;
Box3167.Size := Vector3(0.8,0.34,0.02);
{ .SetGeometry }
Shape3164.Geometry := Box3167;
{ .AddChildren }
Group3162.AddChildren([Shape3164]);
{ .AddChildren }
Transform3161.AddChildren([Group3162]);
Transform3168 := TTransformNode.Create;
Transform3168.Translation := Vector3(0,0,0.02);
Shape3169 := TShapeNode.Create;
Appearance3170 := TAppearanceNode.Create;
Material3171 := TMaterialNode.Create;
Material3171.DiffuseColor := Vector3(1,1,0.8);
Material3171.EmissiveColor := Vector3(1,1,0.8);
{ .SetMaterial }
Appearance3170.Material := Material3171;
{ .SetAppearance }
Shape3169.Appearance := Appearance3170;
end;

procedure InitHAnimGimbalJointController22Part245;
begin

Text3172 := TTextNode.Create;
Text3172.X3DName := 'txtTInZ';
Text3172.SetText(['0.000']);
FontStyle3173 := TFontStyleNode.Create;
FontStyle3173.Justify := fjMiddle;
FontStyle3173.JustifyMinor := fjMiddle;
FontStyle3173.Size := 0.14;
{ .SetFontStyle }
Text3172.FontStyle := FontStyle3173;
{ .SetGeometry }
Shape3169.Geometry := Text3172;
{ .AddChild }
Transform3168.AddChildren([Shape3169]);
{ .AddChildren }
Transform3161.AddChildren([Transform3168]);
{ .AddChildren }
Transform3115.AddChildren([Transform3161]);
{ .AddChildren }
Transform2985.AddChildren([Transform3115]);
{ ===== reset translation button ===== }
Group3174 := TGroupNode.Create;
TouchSensor3175 := TTouchSensorNode.Create;
TouchSensor3175.X3DName := 'tsTReset';
TouchSensor3175.Description := 'reset humanoid_root translation to original position';
{ .AddChildren }
Group3174.AddChildren([TouchSensor3175]);
Transform3176 := TTransformNode.Create;
Transform3176.Translation := Vector3(0,-2.4,0);
Shape3177 := TShapeNode.Create;
Appearance3178 := TAppearanceNode.Create;
Material3179 := TMaterialNode.Create;
Material3179.X3DName := 'm_btn_treset';
Material3179.DiffuseColor := Vector3(0.2,0.2,0.28);
Material3179.EmissiveColor := Vector3(0.08,0.08,0.14);
{ .SetMaterial }
Appearance3178.Material := Material3179;
{ .SetAppearance }
Shape3177.Appearance := Appearance3178;
Box3180 := TBoxNode.Create;
Box3180.Size := Vector3(1.6,0.3,0.04);
{ .SetGeometry }
Shape3177.Geometry := Box3180;
{ .AddChild }
Transform3176.AddChildren([Shape3177]);
Transform3181 := TTransformNode.Create;
Transform3181.Translation := Vector3(0,0,0.03);
Shape3182 := TShapeNode.Create;
Appearance3183 := TAppearanceNode.Create;
Material3184 := TMaterialNode.Create;
Material3184.DiffuseColor := Vector3(1,1,1);
Material3184.EmissiveColor := Vector3(1,1,1);
{ .SetMaterial }
Appearance3183.Material := Material3184;
end;

procedure InitHAnimGimbalJointController22Part246;
begin

{ .SetAppearance }
Shape3182.Appearance := Appearance3183;
Text3185 := TTextNode.Create;
Text3185.SetText(['RESET POSITION']);
FontStyle3186 := TFontStyleNode.Create;
FontStyle3186.Justify := fjMiddle;
FontStyle3186.JustifyMinor := fjMiddle;
FontStyle3186.Size := 0.12;
{ .SetFontStyle }
Text3185.FontStyle := FontStyle3186;
{ .SetGeometry }
Shape3182.Geometry := Text3185;
{ .AddChild }
Transform3181.AddChildren([Shape3182]);
{ .AddChildren }
Transform3176.AddChildren([Transform3181]);
{ .AddChildren }
Group3174.AddChildren([Transform3176]);
{ .AddChildren }
Transform2985.AddChildren([Group3174]);
Transform3187 := TTransformNode.Create;
Transform3187.Translation := Vector3(0,-2.85,0.01);
Shape3188 := TShapeNode.Create;
Appearance3189 := TAppearanceNode.Create;
Material3190 := TMaterialNode.Create;
Material3190.DiffuseColor := Vector3(0.7,0.7,0.7);
Material3190.EmissiveColor := Vector3(0.7,0.7,0.7);
{ .SetMaterial }
Appearance3189.Material := Material3190;
{ .SetAppearance }
Shape3188.Appearance := Appearance3189;
Text3191 := TTextNode.Create;
Text3191.SetText(['INPUT: click a box, type meters, Enter','(or type: x y z) range -6 to +6']);
FontStyle3192 := TFontStyleNode.Create;
FontStyle3192.Justify := fjMiddle;
FontStyle3192.JustifyMinor := fjMiddle;
FontStyle3192.Size := 0.08;
FontStyle3192.Spacing := 1.4;
{ .SetFontStyle }
Text3191.FontStyle := FontStyle3192;
{ .SetGeometry }
Shape3188.Geometry := Text3191;
{ .AddChild }
Transform3187.AddChildren([Shape3188]);
{ .AddChildren }
Transform2985.AddChildren([Transform3187]);
{ .FdChildren.Add }
Layer2605.FdChildren.Add(Transform2985);
{ ==================== ACCESSIBILITY: caption line + keyboard help ==================== }
Transform3193 := TTransformNode.Create;
Transform3193.Translation := Vector3(0.15,-2.45,0.05);
Shape3194 := TShapeNode.Create;
Appearance3195 := TAppearanceNode.Create;
Material3196 := TMaterialNode.Create;
Material3196.DiffuseColor := Vector3(1,1,1);
end;

procedure InitHAnimGimbalJointController22Part247;
begin

Material3196.EmissiveColor := Vector3(1,1,1);
{ .SetMaterial }
Appearance3195.Material := Material3196;
{ .SetAppearance }
Shape3194.Appearance := Appearance3195;
Text3197 := TTextNode.Create;
Text3197.X3DName := 'txtStatus';
Text3197.SetText(['MODE JOINT | H keys']);
FontStyle3198 := TFontStyleNode.Create;
FontStyle3198.Justify := fjMiddle;
FontStyle3198.JustifyMinor := fjFirst;
FontStyle3198.Size := 0.12;
FontStyle3198.Spacing := 1.25;
{ .SetFontStyle }
Text3197.FontStyle := FontStyle3198;
{ .SetGeometry }
Shape3194.Geometry := Text3197;
{ .AddChild }
Transform3193.AddChildren([Shape3194]);
{ .FdChildren.Add }
Layer2605.FdChildren.Add(Transform3193);
Switch3199 := TSwitchNode.Create;
Switch3199.X3DName := 'swHelp';
Switch3199.WhichChoice := -1;
Transform3200 := TTransformNode.Create;
Transform3201 := TTransformNode.Create;
Transform3201.Translation := Vector3(0.15,-3.4,0.02);
Shape3202 := TShapeNode.Create;
Appearance3203 := TAppearanceNode.Create;
Material3204 := TMaterialNode.Create;
Material3204.DiffuseColor := Vector3(0.02,0.03,0.08);
Material3204.Transparency := 0.1;
{ .SetMaterial }
Appearance3203.Material := Material3204;
{ .SetAppearance }
Shape3202.Appearance := Appearance3203;
Box3205 := TBoxNode.Create;
Box3205.Size := Vector3(4.5,1.3,0.01);
{ .SetGeometry }
Shape3202.Geometry := Box3205;
{ .AddChild }
Transform3201.AddChildren([Shape3202]);
{ .AddChildren }
Transform3200.AddChildren([Transform3201]);
Transform3206 := TTransformNode.Create;
Transform3206.Translation := Vector3(-2.05,-2.82,0.06);
Shape3207 := TShapeNode.Create;
Appearance3208 := TAppearanceNode.Create;
Material3209 := TMaterialNode.Create;
Material3209.DiffuseColor := Vector3(1,1,1);
Material3209.EmissiveColor := Vector3(0.95,0.95,0.85);
end;

procedure InitHAnimGimbalJointController22Part248;
begin

{ .SetMaterial }
Appearance3208.Material := Material3209;
{ .SetAppearance }
Shape3207.Appearance := Appearance3208;
Text3210 := TTextNode.Create;
Text3210.SetText(['KEYBOARD H closes help, I says where you are, Esc = joint mode','J joint mode: Up parent, Down child, Left/Right sibling,',' PgUp/PgDn or P/N previous/next joint, Home/End first/last','R rotate mode: X Y Z or Up/Down choose axis, Left/Right adjust',' Shift = 10 degrees, Alt = 0.1, Home/End = limits, 0 = zero axis',' Delete = reset joint, Enter = type a value (Enter again applies)','T translate mode: same keys, moves the humanoid root in meters','D deselect E export L import M sound on/off V voice on/off','Mouse: hover gives sounds. Axis tones: X low, Y mid, Z high.',' X = 1 pulse, Y = 2 pulses, Z = 3 pulses. Pitch rises with value.']);
FontStyle3211 := TFontStyleNode.Create;
FontStyle3211.Justify := fjBegin;
FontStyle3211.JustifyMinor := fjFirst;
FontStyle3211.Size := 0.085;
FontStyle3211.Spacing := 1.2;
{ .SetFontStyle }
Text3210.FontStyle := FontStyle3211;
{ .SetGeometry }
Shape3207.Geometry := Text3210;
{ .AddChild }
Transform3206.AddChildren([Shape3207]);
{ .AddChildren }
Transform3200.AddChildren([Transform3206]);
{ .AddChildren }
Switch3199.AddChildren([Transform3200]);
{ .FdChildren.Add }
Layer2605.FdChildren.Add(Switch3199);
StringSensor3212 := TStringSensorNode.Create;
StringSensor3212.X3DName := 'strSens';
{ .FdChildren.Add }
Layer2605.FdChildren.Add(StringSensor3212);
StringSensor3213 := TStringSensorNode.Create;
StringSensor3213.X3DName := 'strSensT';
{ .FdChildren.Add }
Layer2605.FdChildren.Add(StringSensor3213);
{ ==================== SCRIPT CONTROLLER ==================== }
Script3214 := TScriptNode.Create;
Script3214.X3DName := 'controller';
Script3214.DirectOutput := True;
Script3214.SetUrl(['ecmascript: var names = [ ''humanoid_root'', ''sacroiliac'', ''l_hip'', ''l_knee'', ''l_talocrural'', ''l_talocalcaneonavicular'', ''l_cuneonavicular_1'', ''l_tarsometatarsal_1'', ''l_metatarsophalangeal_1'', ''l_tarsal_interphalangeal_1'', ''l_cuneonavicular_2'', ''l_tarsometatarsal_2'', ''l_metatarsophalangeal_2'', ''l_tarsal_proximal_interphalangeal_2'', ''l_tarsal_distal_interphalangeal_2'', ''l_cuneonavicular_3'', ''l_tarsometatarsal_3'', ''l_metatarsophalangeal_3'', ''l_tarsal_proximal_interphalangeal_3'', ''l_tarsal_distal_interphalangeal_3'', ''l_calcaneocuboid'', ''l_transversetarsal'', ''l_tarsometatarsal_4'', ''l_metatarsophalangeal_4'', ''l_tarsal_proximal_interphalangeal_4'', ''l_tarsal_distal_interphalangeal_4'', ''l_tarsometatarsal_5'', ''l_metatarsophalangeal_5'', ''l_tarsal_proximal_interphalangeal_5'', ''l_tarsal_distal_interphalangeal_5'', ''r_hip'', ''r_knee'', ''r_talocrural'', ''r_talocalcaneonavicular'', ''r_cuneonavicular_1'', ''r_tarsometatarsal_1'', ''r_metatarsophalangeal_1'', ''r_tarsal_interphalangeal_1'', ''r_cuneonavicular_2'', ''r_tarsometatarsal_2'', ''r_metatarsophalangeal_2'', ''r_tarsal_proximal_interphalangeal_2'', ''r_tarsal_distal_interphalangeal_2'', ''r_cuneonavicular_3'', ''r_tarsometatarsal_3'', ''r_metatarsophalangeal_3'', ''r_tarsal_proximal_interphalangeal_3'', ''r_tarsal_distal_interphalangeal_3'', ''r_calcaneocuboid'', ''r_transversetarsal'', ''r_tarsometatarsal_4'', ''r_metatarsophalangeal_4'', ''r_tarsal_proximal_interphalangeal_4'', ''r_tarsal_distal_interphalangeal_4'', ''r_tarsometatarsal_5'', ''r_metatarsophalangeal_5'', ''r_tarsal_proximal_interphalangeal_5'', ''r_tarsal_distal_interphalangeal_5'', ''vl5'', ''vl4'', ''vl3'', ''vl2'', ''vl1'', ''vt12'', ''vt11'', ''vt10'', ''vt9'', ''vt8'', ''vt7'', ''vt6'', ''vt5'', ''vt4'', ''vt3'', ''vt2'', ''vt1'', ''vc7'', ''vc6'', ''vc5'', ''vc4'', ''vc3'', ''vc2'', ''vc1'', ''skullbase'', ''l_eyelid_joint'', ''r_eyelid_joint'', ''l_eyeball_joint'', ''r_eyeball_joint'', ''l_eyebrow_joint'', ''r_eyebrow_joint'', ''temporomandibular'', ''l_sternoclavicular'', ''l_acromioclavicular'', ''l_shoulder'', ''l_elbow'', ''l_radiocarpal'', ''l_midcarpal_1'', ''l_carpometacarpal_1'', ''l_metacarpophalangeal_1'', ''l_carpal_interphalangeal_1'', ''l_midcarpal_2'', ''l_carpometacarpal_2'', ''l_metacarpophalangeal_2'', ''l_carpal_proximal_interphalangeal_2'', ''l_carpal_distal_interphalangeal_2'', ''l_midcarpal_3'', ''l_carpometacarpal_3'', ''l_metacarpophalangeal_3'', ''l_carpal_proximal_interphalangeal_3'', ''l_carpal_distal_interphalangeal_3'', ''l_midcarpal_4_5'', ''l_carpometacarpal_4'', ''l_metacarpophalangeal_4'', ''l_carpal_proximal_interphalangeal_4'', ''l_carpal_distal_interphalangeal_4'', ''l_carpometacarpal_5'', ''l_metacarpophalangeal_5'', ''l_carpal_proximal_interphalangeal_5'', ''l_carpal_distal_interphalangeal_5'', ''r_sternoclavicular'', ''r_acromioclavicular'', ''r_shoulder'', ''r_elbow'', ''r_radiocarpal'', ''r_midcarpal_1'', ''r_carpometacarpal_1'', ''r_metacarpophalangeal_1'', ''r_carpal_interphalangeal_1'', ''r_midcarpal_2'', ''r_carpometacarpal_2'', ''r_metacarpophalangeal_2'', ''r_carpal_proximal_interphalangeal_2'', ''r_carpal_distal_interphalangeal_2'', ''r_midcarpal_3'', ''r_carpometacarpal_3'', ''r_metacarpophalangeal_3'', ''r_carpal_proximal_interphalangeal_3'', ''r_carpal_distal_interphalangeal_3'', ''r_midcarpal_4_5'', ''r_carpometacarpal_4'', ''r_metacarpophalangeal_4'', ''r_carpal_proximal_interphalangeal_4'', ''r_carpal_distal_interphalangeal_4'', ''r_carpometacarpal_5'', ''r_metacarpophalangeal_5'', ''r_carpal_proximal_interphalangeal_5'', ''r_carpal_distal_interphalangeal_5'' ]; var parentName = [ null, ''humanoid_root'', ''sacroiliac'', ''l_hip'', ''l_knee'', ''l_talocrural'', ''l_talocalcaneonavicular'', ''l_cuneonavicular_1'', ''l_tarsometatarsal_1'', ''l_metatarsophalangeal_1'', ''l_talocalcaneonavicular'', ''l_cuneonavicular_2'', ''l_tarsometatarsal_2'', ''l_metatarsophalangeal_2'', ''l_tarsal_proximal_interphalangeal_2'', ''l_talocalcaneonavicular'', ''l_cuneonavicular_3'', ''l_tarsometatarsal_3'', ''l_metatarsophalangeal_3'', ''l_tarsal_proximal_interphalangeal_3'', ''l_talocrural'', ''l_calcaneocuboid'', ''l_transversetarsal'', ''l_tarsometatarsal_4'', ''l_metatarsophalangeal_4'', ''l_tarsal_proximal_interphalangeal_4'', ''l_transversetarsal'', ''l_tarsometatarsal_5'', ''l_metatarsophalangeal_5'', ''l_tarsal_proximal_interphalangeal_5'', ''sacroiliac'', ''r_hip'', ''r_knee'', ''r_talocrural'', ''r_talocalcaneonavicular'', ''r_cuneonavicular_1'', ''r_tarsometatarsal_1'', ''r_metatarsophalangeal_1'', ''r_talocalcaneonavicular'', ''r_cuneonavicular_2'', ''r_tarsometatarsal_2'', ''r_metatarsophalangeal_2'', ''r_tarsal_proximal_interphalangeal_2'', ''r_talocalcaneonavicular'', ''r_cuneonavicular_3'', ''r_tarsometatarsal_3'', ''r_metatarsophalangeal_3'', ''r_tarsal_proximal_interphalangeal_3'', ''r_talocrural'', ''r_calcaneocuboid'', ''r_transversetarsal'', ''r_tarsometatarsal_4'', ''r_metatarsophalangeal_4'', ''r_tarsal_proximal_interphalangeal_4'', ''r_transversetarsal'', ''r_tarsometatarsal_5'', ''r_metatarsophalangeal_5'', ''r_tarsal_proximal_interphalangeal_5'', ''humanoid_root'', ''vl5'', ''vl4'', ''vl3'', ''vl2'', ''vl1'', ''vt12'', ''vt11'', ''vt10'', ''vt9'', ''vt8'', ''vt7'', ''vt6'', ''vt5'', ''vt4'', ''vt3'', ''vt2'', ''vt1'', ''vc7'', ''vc6'', ''vc5'', ''vc4'', ''vc3'', ''vc2'', ''vc1'', ''skullbase'', ''skullbase'', ''skullbase'', ''skullbase'', ''skullbase'', ''skullbase'', ''skullbase'', ''vt1'', ''l_sternoclavicular'', ''l_acromioclavicular'', ''l_shoulder'', ''l_elbow'', ''l_radiocarpal'', ''l_midcarpal_1'', ''l_carpometacarpal_1'', ''l_metacarpophalangeal_1'', ''l_radiocarpal'', ''l_midcarpal_2'', ''l_carpometacarpal_2'', ''l_metacarpophalangeal_2'', ''l_carpal_proximal_interphalangeal_2'', ''l_radiocarpal'', ''l_midcarpal_3'', ''l_carpometacarpal_3'', ''l_metacarpophalangeal_3'', ''l_carpal_proximal_interphalangeal_3'', ''l_radiocarpal'', ''l_midcarpal_4_5'', ''l_carpometacarpal_4'', ''l_metacarpophalangeal_4'', ''l_carpal_proximal_interphalangeal_4'', ''l_midcarpal_4_5'', ''l_carpometacarpal_5'', ''l_metacarpophalangeal_5'', ''l_carpal_proximal_interphalangeal_5'', ''vt1'', ''r_sternoclavicular'', ''r_acromioclavicular'', ''r_shoulder'', ''r_elbow'', ''r_radiocarpal'', ''r_midcarpal_1'', ''r_carpometacarpal_1'', ''r_metacarpophalangeal_1'', ''r_radiocarpal'', ''r_midcarpal_2'', ''r_carpometacarpal_2'', ''r_metacarpophalangeal_2'', ''r_carpal_proximal_interphalangeal_2'', ''r_radiocarpal'', ''r_midcarpal_3'', ''r_carpometacarpal_3'', ''r_metacarpophalangeal_3'', ''r_carpal_proximal_interphalangeal_3'', ''r_radiocarpal'', ''r_midcarpal_4_5'', ''r_carpometacarpal_4'', ''r_metacarpophalangeal_4'', ''r_carpal_proximal_interphalangeal_4'', ''r_midcarpal_4_5'', ''r_carpometacarpal_5'', ''r_metacarpophalangeal_5'', ''r_carpal_proximal_interphalangeal_5'' ]; var side = []; var parentOf = []; var firstChild = []; var nKids = []; var prevSib = []; var nextSib = []; var title = [''LEFT'',''RIGHT'',''CENTER'']; var base = [[0.35,0.55,0.95],[0.95,0.45,0.35],[0.4,0.8,0.4]]; var sel = -1; var ang = []; var FREE = 6.28; var dragLogged = false; function log(m) { try { Browser.println(''[gimbal] '' + m); } catch (e) {} } function rotAbout(k, a, name) { log(name+''.rotation = SFRotation(''+(k==0?1:0)+'' ''+(k==1?1:0)+'' ''+(k==2?1:0)+'' ''+a+'');''); return new SFRotation(k==0?1:0, k==1?1:0, k==2?1:0, a); } function clamp(v, lo, hi) { return Math.max(lo, Math.min(hi, v)); } function deg(r) { return Math.round(r*180/Math.PI); } function lim(joint, k) { var l = joint.llimit, u = joint.ulimit; if (!l || !u || l.length < 3 || u.length < 3) return null; if (l[k] == u[k]) return null; return [l[k], u[k]]; } var lnames = [''humanoid_root'', ''sacroiliac'', ''l_hip'', ''l_knee'', ''l_talocrural'', ''l_talocalcaneonavicular'', ''l_cuneonavicular_1'', ''l_tarsometatarsal_1'', ''l_metatarsophalangeal_1'', ''l_tarsal_interphalangeal_1'', ''l_cuneonavicular_2'', ''l_tarsometatarsal_2'', ''l_metatarsophalangeal_2'', ''l_tarsal_proximal_interphalangeal_2'', ''l_tarsal_distal_interphalangeal_2'', ''l_cuneonavicular_3'', ''l_tarsometatarsal_3'', ''l_metatarsophalangeal_3'', ''l_tarsal_proximal_interphalangeal_3'', ''l_tarsal_distal_interphalangeal_3'', ''l_calcaneocuboid'', ''l_transversetarsal'', ''l_tarsometatarsal_4'', ''l_metatarsophalangeal_4'', ''l_tarsal_proximal_interphalangeal_4'', ''l_tarsal_distal_interphalangeal_4'', ''l_tarsometatarsal_5'', ''l_metatarsophalangeal_5'', ''l_tarsal_proximal_interphalangeal_5'', ''l_tarsal_distal_interphalangeal_5'', ''r_hip'', ''r_knee'', ''r_talocrural'', ''r_talocalcaneonavicular'', ''r_cuneonavicular_1'', ''r_tarsometatarsal_1'', ''r_metatarsophalangeal_1'', ''r_tarsal_interphalangeal_1'', ''r_cuneonavicular_2'', ''r_tarsometatarsal_2'', ''r_metatarsophalangeal_2'', ''r_tarsal_proximal_interphalangeal_2'', ''r_tarsal_distal_interphalangeal_2'', ''r_cuneonavicular_3'', ''r_tarsometatarsal_3'', ''r_metatarsophalangeal_3'', ''r_tarsal_proximal_interphalangeal_3'', ''r_tarsal_distal_interphalangeal_3'', ''r_calcaneocuboid'', ''r_transversetarsal'', ''r_tarsometatarsal_4'', ''r_metatarsophalangeal_4'', ''r_tarsal_proximal_interphalangeal_4'', ''r_tarsal_distal_interphalangeal_4'', ''r_tarsometatarsal_5'', ''r_metatarsophalangeal_5'', ''r_tarsal_proximal_interphalangeal_5'', ''r_tarsal_distal_interphalangeal_5'', ''vl5'', ''vl4'', ''vl3'', ''vl2'', ''vl1'', ''vt12'', ''vt11'', ''vt10'', ''vt9'', ''vt8'', ''vt7'', ''vt6'', ''vt5'', ''vt4'', ''vt3'', ''vt2'', ''vt1'', ''vc7'', ''vc6'', ''vc5'', ''vc4'', ''vc3'', ''vc2'', ''vc1'', ''skullbase'', ''l_eyelid_joint'', ''r_eyelid_joint'', ''l_eyeball_joint'', ''r_eyeball_joint'', ''l_eyebrow_joint'', ''r_eyebrow_joint'', ''temporomandibular'', ''l_sternoclavicular'', ''l_acromioclavicular'', ''l_shoulder'', ''l_elbow'', ''l_radiocarpal'', ''l_midcarpal_1'', ''l_carpometacarpal_1'', ''l_metacarpophalangeal_1'', ''l_carpal_interphalangeal_1'', ''l_midcarpal_2'', ''l_carpometacarpal_2'', ''l_metacarpophalangeal_2'', ''l_carpal_proximal_interphalangeal_2'', ''l_carpal_distal_interphalangeal_2'', ''l_midcarpal_3'', ''l_carpometacarpal_3'', ''l_metacarpophalangeal_3'', ''l_carpal_proximal_interphalangeal_3'', ''l_carpal_distal_interphalangeal_3'', ''l_midcarpal_4_5'', ''l_carpometacarpal_4'', ''l_metacarpophalangeal_4'', ''l_carpal_proximal_interphalangeal_4'', ''l_carpal_distal_interphalangeal_4'', ''l_carpometacarpal_5'', ''l_metacarpophalangeal_5'', ''l_carpal_proximal_interphalangeal_5'', ''l_carpal_distal_interphalangeal_5'', ''r_sternoclavicular'', ''r_acromioclavicular'', ''r_shoulder'', ''r_elbow'', ''r_radiocarpal'', ''r_midcarpal_1'', ''r_carpometacarpal_1'', ''r_metacarpophalangeal_1'', ''r_carpal_interphalangeal_1'', ''r_midcarpal_2'', ''r_carpometacarpal_2'', ''r_metacarpophalangeal_2'', ''r_carpal_proximal_interphalangeal_2'', ''r_carpal_distal_interphalangeal_2'', ''r_midcarpal_3'', ''r_carpometacarpal_3'', ''r_metacarpophalangeal_3'', ''r_carpal_proximal_interphalangeal_3'', ''r_carpal_distal_interphalangeal_3'', ''r_midcarpal_4_5'', ''r_carpometacarpal_4'', ''r_metacarpophalangeal_4'', ''r_carpal_proximal_interphalangeal_4'', ''r_carpal_distal_interphalangeal_4'', ''r_carpometacarpal_5'', ''r_metacarpophalangeal_5'', ''r_carpal_proximal_interphalangeal_5'', ''r_carpal_distal_interphalangeal_5'']; var lmatOf = {}; for (var li = 0; li < lnames.length; li++) { lmatOf[lnames[li]] = lmats[li]; } function paint(j, on) { var m = mats[j], c = base[side[j]], lm = lmatOf[names[j]]; if (on) { m.diffuseColor = new SFColor(1,0.85,0.1); m.emissiveColor = new SFColor(0.45,0.38,0); if (lm) lm.emissiveColor = new SFColor(1,0.85,0.1); } else { m.diffuseColor = new SFColor(c[0],c[1],c[2]); m.emissiveColor = new SFColor(0,0,0); if (lm) lm.emissiveColor = new SFColor(c[0],c[1],c[2]); } } function showLabel() { if (sel < 0) { label.string = new MFString(''GIMBAL'', ''no joint selected'', ''click a joint, or use NEXT''); syncUI(); return; } var a = ang[sel], s2 = '''', s3 = ''''; for (var k = 0; k < 3; k++) { var r = lim(joints[sel], k), n = ''XYZ''.charAt(k); s2 += n + '' '' + deg(a[k]) + '' ''; s3 += n + (r ? ''['' + deg(r[0]) + '','' + deg(r[1]) + '']'' : ''[free]'') + '' ''; } var s4 = ''parent '' + (parentOf[sel] >= 0 ? names[parentOf[sel]] : ''-'') + '' children '' + nKids[sel]; label.string = new MFString(title[side[sel]] + '': '' + names[sel] + '' ('' + (sel + 1) + ''/'' + names.length + '')'', s2, ''limits '' + s3, s4); syncUI(); } function applyJoint() { var a = ang[sel]; lastRot = rotAbout(0,a[0],names[sel]).multiply(rotAbout(1,a[1], names[sel])).multiply(rotAbout(2,a[2], names[sel])); joints[sel].rotation = lastRot; showLabel(); } function loadGimbal() { var joint = joints[sel], info = ''''; for (var k = 0; k < 3; k++) { try { var s = sensors[k], r = lim(joint, k), locked = false; if (r) { ang[sel][k] = clamp(ang[sel][k], r[0], r[1]); locked = (r[1] - r[0]) < 0.04; s.minAngle = r[0]; s.maxAngle = r[1]; } else { s.minAngle = -FREE; s.maxAngle = FREE; } s.offset = ang[sel][k]; s.enabled = true; ringMat[k].transparency = locked ? 0.65 : 0; ringXf[k].rotation = rotAbout(k, ang[sel][k], names[sel]); info += ''XYZ''.charAt(k) + ''['' + s.minAngle.toFixed(2) + '','' + s.maxAngle.toFixed(2) + '']'' + (locked ? ''L '' : '' ''); } catch (e) { log(''loadGimbal axis '' + k + '' error: '' + e); } } log(''rings '' + info); dragLogged = false; applyJoint(); } function select(j) { if (sel >= 0) paint(sel, false); sel = j; log(''selected '' + names[j]); paint(j, true); loadGimbal(); earSelect(j); } function clearSel() { if (sel >= 0) paint(sel, false); sel = -1; log(''deselected''); for (var k = 0; k < 3; k++) { try { sensors[k].enabled = true; ringMat[k].transparency = 0.65; ringXf[k].rotation = rotAbout(k, 0, ''''); } catch (e) { log(''clearSel axis '' + k + '' error: '' + e); } } earDeselect(); showLabel(); } function toggle(j) { if (j == sel) clearSel(); else select(j); } function drag(k, v) { if (sel < 0) return; if (!dragLogged) { dragLogged = true; log(''drag '' + ''XYZ''.charAt(k) + '' on '' + names[sel] + '' angle '' + v.angle); } var a = ((v.x + v.y + v.z) < 0 ? -1 : 1) * v.angle; var r = lim(joints[sel], k); if (r) a = clamp(a, r[0], r[1]); earMoveR(k, ang[sel][k], a, ''drag''); ang[sel][k] = a; ringXf[k].rotation = rotAbout(k, a, names[sel]); applyJoint(); } var lastRot = null; var uiSrc = -1; var activeIn = -1; var typedBuf = ''''; var SL = 0.75; function fl(v) { var o = ''''; for (var i = 0; i < 3; i++) o += (i ? '' '' : '''') + v[i].toFixed(4); return o; } function degf(r) { return r * 180 / Math.PI; } function fmt1(v) { return (Math.round(v * 10) / 10).toFixed(1); } function range(k) { var r = lim(joints[sel], k); return r ? r : [-FREE, FREE]; } function trim(s) { s = '''' + s; while (s.length > 0 && s.charAt(0) == '' '') s = s.substring(1); while (s.length > 0 && s.charAt(s.length - 1) == '' '') s = s.substring(0, s.length - 1); return s; } function setAxis(k, a) { var rg = range(k); a = clamp(a, rg[0], rg[1]); ang[sel][k] = a; sensors[k].offset = a; ringXf[k].rotation = rotAbout(k, a, names[sel]); } function syncUI() { var k; a11ySync(); if (sel < 0) { for (k = 0; k < 3; k++) { knobXf[k].translation = new SFVec3f(0, 0, 0); planeSens[k].offset = new SFVec3f(0, 0, 0); minTxt[k].string = new MFString(''-''); maxTxt[k].string = new MFString(''-''); inTxt[k].string = new MFString(''-''); inMat[k].diffuseColor = new SFColor(0.12, 0.12, 0.18); } outTxt.string = new MFString(''OUTPUT'', ''no joint selected'', ''click a joint, or use NEXT''); return; } var a = ang[sel], lines = []; for (k = 0; k < 3; k++) { var r = lim(joints[sel], k), rg = range(k); var t = clamp((a[k] - rg[0]) / (rg[1] - rg[0]), 0, 1); var x = -SL + 2 * SL * t; knobXf[k].translation = new SFVec3f(x, 0, 0); if (k != uiSrc) planeSens[k].offset = new SFVec3f(x, 0, 0); minTxt[k].string = new MFString(r ? '''' + deg(rg[0]) : ''-360''); maxTxt[k].string = new MFString(r ? '''' + deg(rg[1]) : ''360''); if (k == activeIn) { inTxt[k].string = new MFString(typedBuf + ''_''); inMat[k].diffuseColor = new SFColor(0.5, 0.45, 0.1); } else { inTxt[k].string = new MFString(fmt1(degf(a[k]))); inMat[k].diffuseColor = new SFColor(0.12, 0.12, 0.18); } } var q = lastRot; var rotStr = q ? (q.x.toFixed(4) + '' '' + q.y.toFixed(4) + '' '' + q.z.toFixed(4) + '' '' + q.angle.toFixed(4)) : ''-''; outTxt.string = new MFString( ''OUTPUT '' + title[side[sel]] + '': '' + names[sel], ''deg X '' + fmt1(degf(a[0])) + '' Y '' + fmt1(degf(a[1])) + '' Z '' + fmt1(degf(a[2])), ''rad X '' + a[0].toFixed(3) + '' Y '' + a[1].toFixed(3) + '' Z '' + a[2].toFixed(3), ''rotation '' + rotStr, ''llimit '' + fl(joints[sel].llimit), ''ulimit '' + fl(joints[sel].ulimit)); } function slide(k, v) { if (sel < 0) { syncUI(); return; } var rg = range(k); var t = clamp((v.x + SL) / (2 * SL), 0, 1); var a = rg[0] + t * (rg[1] - rg[0]); if (Math.abs(a - ang[sel][k]) < 0.0001) return; earMoveR(k, ang[sel][k], a, ''slide''); setAxis(k, a); uiSrc = k; applyJoint(); uiSrc = -1; } function pickIn(k) { if (activeT >= 0) { activeT = -1; typedBufT = ''''; syncT(); } if (sel < 0) return; activeIn = k; typedBuf = ''''; syncUI(); earTypeStart(k, 0); } function typedIn(str) { if (activeIn < 0 || sel < 0) return; typedBuf = '''' + str; syncUI(); earTypedKey(str); } function parseAngle(tok) { tok = trim(tok); if (tok.length == 0) return NaN; var last = tok.charAt(tok.length - 1); var isRad = (last == ''r'' || last == ''R''); var v = parseFloat(tok); if (isNaN(v)) return NaN; return isRad ? v : v * Math.PI / 180; } function typedFinalIn(str) { if (activeIn < 0 || sel < 0) return; var s = trim(str).split('','').join('' ''); var raw = s.split('' ''), toks = []; for (var i = 0; i < raw.length; i++) if (raw[i].length > 0) toks.push(raw[i]); typedBuf = ''''; var k = activeIn; if (toks.length == 3) { var v = [parseAngle(toks[0]), parseAngle(toks[1]), parseAngle(toks[2])]; if (!isNaN(v[0]) && !isNaN(v[1]) && !isNaN(v[2])) { for (var j = 0; j < 3; j++) setAxis(j, v[j]); activeIn = -1; applyJoint(); earCommit(0); return; } } else if (toks.length == 1) { var a = parseAngle(toks[0]); if (!isNaN(a)) { setAxis(k, a); activeIn = (k + 1) % 3; applyJoint(); earCommit(0); return; } } earBad(); syncUI(); } function slideX(v){ try { slide(0, v); } catch (e) { log(''slide X error: '' + e); } } function slideY(v){ try { slide(1, v); } catch (e) { log(''slide Y error: '' + e); } } function slideZ(v){ try { slide(2, v); } catch (e) { log(''slide Z error: '' + e); } } function pickInX(t){ try { pickIn(0); } catch (e) { log(''pickIn X error: '' + e); } } function pickInY(t){ try { pickIn(1); } catch (e) { log(''pickIn Y error: '' + e); } } function pickInZ(t){ try { pickIn(2); } catch (e) { log(''pickIn Z error: '' + e); } } function typed(v){ try { typedIn(v); } catch (e) { log(''typed error: '' + e); } } function typedFinal(v){ try { typedFinalIn(v); } catch (e) { log(''typedFinal error: '' + e); } } var fileInput = null; function setIO(m) { try { ioText.string = new MFString(m); } catch (e) {} log(m); } function numsOf(str, def, n) { if (!str) return def; var raw = ('''' + str).split('','').join('' '').split('' ''), out = []; for (var i = 0; i < raw.length; i++) { if (raw[i].length > 0) { var v = parseFloat(raw[i]); if (isNaN(v)) return def; out.push(v); } } return out.length == n ? out : def; } function eulerOf(r) { var x = r[0], y = r[1], z = r[2], an = r[3]; var len = Math.sqrt(x*x + y*y + z*z); if (len < 1e-9 || Math.abs(an) < 1e-9) return [0, 0, 0]; x /= len; y /= len; z /= len; var c = Math.cos(an), s = Math.sin(an), t = 1 - c; var r01 = t*x*y - s*z, r02 = t*x*z + s*y, r00 = t*x*x + c; var r11 = t*y*y + c, r12 = t*y*z - s*x, r21 = t*y*z + s*x, r22 = t*z*z + c; var b = Math.asin(clamp(r02, -1, 1)); if (Math.abs(Math.cos(b)) > 1e-6) return [Math.atan2(-r12, r22), b, Math.atan2(-r01, r00)]; return [Math.atan2(r21, r11), b, 0]; } function v3s(v) { function q(a) { return '''' + parseFloat(a.toFixed(6)); } return q(v.x) + '' '' + q(v.y) + '' '' + q(v.z); } function cenOf(i) { var c = joints[i].center; return [c.x, c.y, c.z]; } function dist3(a, b) { return Math.sqrt((a[0]-b[0])*(a[0]-b[0]) + (a[1]-b[1])*(a[1]-b[1]) + (a[2]-b[2])*(a[2]-b[2])); } function setLine(coord, a, b) { coord.point = new MFVec3f(new SFVec3f(a[0], a[1], a[2]), new SFVec3f(b[0], b[1], b[2])); } function leafEnd(i) { var c = cenOf(i), a = parentOf[i]; while (a >= 0 && dist3(cenOf(a), c) < 1e-4) a = parentOf[a]; if (a < 0) return [c[0], c[1] + 0.03, c[2]]; var pc = cenOf(a), L = dist3(pc, c), ext = Math.min(Math.max(L, 0.015), 0.05); return [c[0] + (c[0]-pc[0])/L*ext, c[1] + (c[1]-pc[1])/L*ext, c[2] + (c[2]-pc[2])/L*ext]; } var lcStart = null; function updateLines(i) { if (!lcStart) { lcStart = []; var n = 0; for (var q = 0; q < names.length; q++) { lcStart[q] = n; n += Math.max(1, nKids[q]); } } var c = cenOf(i), k = firstChild[i], m = 0; if (k < 0) { setLine(lcoords[lcStart[i]], c, leafEnd(i)); return; } while (k >= 0) { setLine(lcoords[lcStart[i] + m], c, cenOf(k)); m++; k = nextSib[k]; } } function updateGeom(changed) { var todo = {}, order = []; function add(i) { if (i >= 0 && !todo[i]) { todo[i] = true; order.push(i); } } for (var a = 0; a < changed.length; a++) { var i = changed[a], c = cenOf(i); jxf[i].translation = new SFVec3f(c[0], c[1], c[2]); add(i); add(parentOf[i]); var k = firstChild[i]; while (k >= 0) { add(k); k = nextSib[k]; } } for (var b = 0; b < order.length; b++) updateLines(order[b]); } function saveText(fname, text) { var blob = new Blob([text], { type: ''model/x3d+xml'' }); var url = URL.createObjectURL(blob); var a = document.createElement(''a''); a.href = url; a.download = fname; a.style.display = ''none''; document.body.appendChild(a); a.click(); setTimeout(function () { document.body.removeChild(a); URL.revokeObjectURL(url); }, 1000); } function normalizeBody(body) { try { var d = new DOMParser().parseFromString(body, ''text/xml''); if (d.getElementsByTagName(''parsererror'').length > 0) return body; var idx = {}, i; for (i = 0; i < names.length; i++) idx[names[i]] = i; var els = d.getElementsByTagName(''HAnimJoint''); for (var e = 0; e < els.length; e++) { var el = els[e], nm = el.getAttribute(''name''); if (el.getAttribute(''USE'') || !nm || idx[nm] === undefined) continue; var j = joints[idx[nm]]; if (!el.hasAttribute(''center'')) el.setAttribute(''center'', v3s(j.center)); if (!el.hasAttribute(''translation'')) el.setAttribute(''translation'', v3s(j.translation)); } var r = d.documentElement; if (r.tagName == ''HAnimHumanoid'') { if (!r.hasAttribute(''center'')) r.setAttribute(''center'', v3s(humanoid.center)); if (!r.hasAttribute(''translation'')) r.setAttribute(''translation'', v3s(humanoid.translation)); } return new XMLSerializer().serializeToString(r); } catch (ex) { log(''export normalize skipped: '' + ex); return body; } } function exportNow() { var wasSel = sel, body = null; if (wasSel >= 0) paint(wasSel, false); try { body = humanoid.toXMLString(); } finally { if (wasSel >= 0) paint(wasSel, true); } if (!body) { setIO(''export failed: toXMLString not available''); return; } body = normalizeBody(body); var NL = String.fromCharCode(10), DQ = String.fromCharCode(34); var doc = ''<?xml version=~1.0~ encoding=~UTF-8~?>'' + NL + ''<!DOCTYPE X3D PUBLIC ~ISO//Web3D//DTD X3D 4.0//EN~ ~https://www.web3d.org/specifications/x3d-4.0.dtd~>'' + NL + ''<X3D profile=~Immersive~ version=~4.0~ xmlns:xsd=~http://www.w3.org/2001/XMLSchema-instance~ xsd:noNamespaceSchemaLocation=~https://www.web3d.org/specifications/x3d-4.0.xsd~>'' + NL + '' <head>'' + NL + '' <component name=~HAnim~ level=~1~/>'' + NL + '' <meta name=~title~ content=~HAnimHumanoid.x3d~/>'' + NL + '' <meta name=~description~ content=~Humanoid exported from HAnimGimbalJointController18~/>'' + NL + '' </head>'' + NL + '' <Scene>'' + NL + '' <Viewpoint description=~Front~ position=~-0.3 1.3 7.0~/>'' + NL; doc = doc.split(''~'').join(DQ) + body + NL + '' </Scene>'' + NL + ''</X3D>'' + NL; saveText(''HAnimHumanoid.x3d'', doc); setIO(''exported humanoid ('' + doc.length + '' chars, centers + translations) to HAnimHumanoid.x3d''); } function applyImport(text, fname) { var doc = new DOMParser().parseFromString(text, ''text/xml''); if (doc.getElementsByTagName(''parsererror'').length > 0) { setIO(''import failed: '' + fname + '' is not well-formed X3D XML''); return; } var els = doc.getElementsByTagName(''HAnimJoint''), byName = {}; for (var e = 0; e < els.length; e++) { var nm = els[e].getAttribute(''name''); if (nm && !els[e].getAttribute(''USE'')) byName[nm] = els[e]; } var count = 0, missing = 0, moved = []; for (var i = 0; i < names.length; i++) { var el = byName[names[i]]; if (!el) { missing++; continue; } var j = joints[i]; var rot = numsOf(el.getAttribute(''rotation''), [0, 0, 1, 0], 4); var tr = numsOf(el.getAttribute(''translation''), [0, 0, 0], 3); var sc = numsOf(el.getAttribute(''scale''), [1, 1, 1], 3); var so = numsOf(el.getAttribute(''scaleOrientation''), [0, 0, 1, 0], 4); var ce = numsOf(el.getAttribute(''center''), null, 3); if (ce) { var oc = j.center; if (Math.abs(oc.x - ce[0]) > 1e-6 || Math.abs(oc.y - ce[1]) > 1e-6 || Math.abs(oc.z - ce[2]) > 1e-6) { j.center = new SFVec3f(ce[0], ce[1], ce[2]); moved.push(i); } } j.rotation = new SFRotation(rot[0], rot[1], rot[2], rot[3]); j.translation = new SFVec3f(tr[0], tr[1], tr[2]); j.scale = new SFVec3f(sc[0], sc[1], sc[2]); j.scaleOrientation = new SFRotation(so[0], so[1], so[2], so[3]); ang[i] = eulerOf(rot); count++; } if (count == 0) { setIO(''import: no matching HAnimJoint names in '' + fname); return; } if (moved.length > 0) updateGeom(moved); syncT(); if (sel >= 0) loadGimbal(); else showLabel(); setIO(''imported '' + count + ''/'' + names.length + '' joints from '' + fname + '' ('' + moved.length + '' centers changed'' + (missing > 0 ? '', '' + missing + '' joints not found'' : '''') + '')''); } function importNow() { fileInput = document.createElement(''input''); fileInput.type = ''file''; fileInput.accept = ''.x3d,.xml''; fileInput.onchange = function () { var f = fileInput.files[0]; if (!f) return; var rd = new FileReader(); rd.onload = function () { try { applyImport('''' + rd.result, f.name); } catch (e) { setIO(''import error: '' + e); } }; rd.readAsText(f); }; fileInput.click(); } function exportHumanoid(t){ try { earPress(); exportNow(); } catch (e) { setIO(''export error: '' + e); } } function importHumanoid(t){ try { earPress(); importNow(); } catch (e) { setIO(''import error: '' + e); } } var TR = 6.0; var origT = [0, 0, 0]; var activeT = -1; var typedBufT = ''''; var uiSrcT = -1; function rootJ() { return joints[0]; } function getT() { var t = rootJ().translation; return [t.x, t.y, t.z]; } function fmt3(v) { return (Math.round(v * 1000) / 1000).toFixed(3); } function setT(k, v) { v = clamp(v, -TR, TR); var t = getT(); t[k] = v; rootJ().translation = new SFVec3f(t[0], t[1], t[2]); } function syncT() { a11ySync(); var t = getT(); for (var k = 0; k < 3; k++) { var x = clamp(t[k] / TR, -1, 1) * SL; tknobXf[k].translation = new SFVec3f(x, 0, 0); if (k != uiSrcT) tplaneSens[k].offset = new SFVec3f(x, 0, 0); if (k == activeT) { tinTxt[k].string = new MFString(typedBufT + ''_''); tinMat[k].diffuseColor = new SFColor(0.5, 0.45, 0.1); } else { tinTxt[k].string = new MFString(fmt3(t[k])); tinMat[k].diffuseColor = new SFColor(0.12, 0.12, 0.18); } } } function initT() { origT = getT(); log(''root original translation '' + origT[0] + '' '' + origT[1] + '' '' + origT[2]); syncT(); } function slideT(k, v) { var a = clamp(v.x / SL, -1, 1) * TR; if (Math.abs(a - getT()[k]) < 0.00005) return; earMoveT(k, getT()[k], a, ''slide''); setT(k, a); uiSrcT = k; syncT(); uiSrcT = -1; } function pickT(k) { if (activeIn >= 0) { activeIn = -1; typedBuf = ''''; if (sel >= 0) syncUI(); } activeT = k; typedBufT = ''''; syncT(); earTypeStart(k, 1); } function typedT_(str) { if (activeT < 0) return; typedBufT = '''' + str; syncT(); earTypedKey(str); } function parseMeters(tok) { tok = trim(tok); if (tok.length == 0) return NaN; return parseFloat(tok); } function typedFinalT_(str) { if (activeT < 0) return; var s = trim(str).split('','').join('' ''); var raw = s.split('' ''), toks = []; for (var i = 0; i < raw.length; i++) if (raw[i].length > 0) toks.push(raw[i]); typedBufT = ''''; var k = activeT; if (toks.length == 3) { var v = [parseMeters(toks[0]), parseMeters(toks[1]), parseMeters(toks[2])]; if (!isNaN(v[0]) && !isNaN(v[1]) && !isNaN(v[2])) { for (var j = 0; j < 3; j++) setT(j, v[j]); activeT = -1; syncT(); earCommit(1); return; } } else if (toks.length == 1) { var a = parseMeters(toks[0]); if (!isNaN(a)) { setT(k, a); activeT = (k + 1) % 3; syncT(); earCommit(1); return; } } earBad(); syncT(); } function resetTranslation() { rootJ().translation = new SFVec3f(0, 0, 0); activeT = -1; typedBufT = ''''; syncT(); log(''root translation reset to 0 0 0''); earSay(''Root position reset to zero''); } function slideTX(v){ try { slideT(0, v); } catch (e) { log(''slide TX error: '' + e); } } function slideTY(v){ try { slideT(1, v); } catch (e) { log(''slide TY error: '' + e); } } function slideTZ(v){ try { slideT(2, v); } catch (e) { log(''slide TZ error: '' + e); } } function pickTInX(t){ try { pickT(0); } catch (e) { log(''pickT X error: '' + e); } } function pickTInY(t){ try { pickT(1); } catch (e) { log(''pickT Y error: '' + e); } } function pickTInZ(t){ try { pickT(2); } catch (e) { log(''pickT Z error: '' + e); } } function typedT(v){ try { typedT_(v); } catch (e) { log(''typedT error: '' + e); } } function typedFinalT(v){ try { typedFinalT_(v); } catch (e) { log(''typedFinalT error: '' + e); } } function resetT(t){ try { earPress(); resetTranslation(); } catch (e) { log(''resetT error: '' + e); } } /* ACCESSIBILITY LAYER (v22): sounds, speech, aria-live, keyboard modes J/R/T, hover and focus highlights. Axis tones: X low 1 pulse, Y mid 2 pulses, Z high 3 pulses; pitch and pan follow the value. */ var AXN = [''X'', ''Y'', ''Z'']; var AXF = [165, 415, 1040]; var AXW = [''triangle'', ''sine'', ''sine'']; var AXV = [0.26, 0.2, 0.12]; var BTN = [''previous joint'', ''next joint'', ''parent joint'', ''first child joint'', ''previous sibling'', ''next sibling'', ''reset selected joint'', ''deselect joint'', ''export humanoid'', ''import humanoid'', ''reset root position'']; var snd = true, vox = true, helpOn = false, a11yReady = false, domKeys = false; var mode = ''J'', kAx = 0; var actx_ = null, master = null, live = null; var lastSay = '''', lastMoveSnd = 0, sayTimer = null, hoverJ = -1, lastTypedLen = 0; var depthOf = []; function actx() { try { if (!actx_) { var C = window.AudioContext || window.webkitAudioContext; if (!C) return null; actx_ = new C(); master = actx_.createGain(); master.gain.value = 0.6; master.connect(actx_.destination); } if (actx_.state == ''suspended'') { var pr = actx_.resume(); if (pr && pr.catch) pr.catch(function () {}); } return actx_; } catch (e) { return null; } } function unlock() { actx(); } function beep(f, d, type, v, pan, delay) { if (!snd) return; var ac = actx(); if (!ac) return; try { var t0 = ac.currentTime + (delay || 0); var o = ac.createOscillator(), g = ac.createGain(); o.type = type || ''sine''; o.frequency.setValueAtTime(f, t0); g.gain.setValueAtTime(0.0001, t0); g.gain.exponentialRampToValueAtTime(Math.max(0.0002, v || 0.2), t0 + 0.008); g.gain.exponentialRampToValueAtTime(0.0001, t0 + d); o.connect(g); if (ac.createStereoPanner) { var p = ac.createStereoPanner(); p.pan.value = clamp(pan || 0, -1, 1); g.connect(p); p.connect(master); } else { g.connect(master); } o.start(t0); o.stop(t0 + d + 0.03); } catch (e) {} } function seq(freqs, step, type, vol, pan) { for (var i = 0; i < freqs.length; i++) beep(freqs[i], step * 1.4, type, vol, pan, i * step); } function pulses(n, f, type, vol, pan, delay) { for (var i = 0; i < n; i++) beep(f, 0.07, type, vol, pan, (delay || 0) + i * 0.13); } function thud(dir) { beep(70, 0.22, ''sine'', 0.6, dir * 0.8); beep(140, 0.06, ''square'', 0.12, dir * 0.8); } function errTone() { beep(150, 0.2, ''sawtooth'', 0.15, 0); beep(110, 0.2, ''sawtooth'', 0.15, 0, 0.12); } function trunc(s, n) { s = '''' + s; return s.length > n ? s.substring(0, n - 1) + ''...'' : s; } function speak(msg) { try { var ss = window.speechSynthesis; if (!ss) return; ss.cancel(); var u = new SpeechSynthesisUtterance(msg); u.rate = 1.15; ss.speak(u); } catch (e) {} } function say(msg) { lastSay = '''' + msg; showStatus(); try { if (live) { live.textContent = ''''; setTimeout(function () { try { live.textContent = lastSay; } catch (e2) {} }, 40); } } catch (e) {} if (vox) speak(msg); } function clearSayTimer() { if (sayTimer) { clearTimeout(sayTimer); sayTimer = null; } } function sayLater(msg, ms) { clearSayTimer(); sayTimer = setTimeout(function () { sayTimer = null; say(msg); }, ms); } function earSay(msg) { if (a11yReady) say(msg); } function earBlocked(msg) { errTone(); say(msg); } function earPress() { if (a11yReady) beep(780, 0.05, ''square'', 0.09, 0); } function showStatus() { try { var m = mode == ''J'' ? ''JOINT'' : (mode == ''R'' ? ''ROTATE '' + AXN[kAx] : ''TRANSLATE '' + AXN[kAx]); statusText.string = new MFString(''MODE '' + m + '' | H keys | sound '' + (snd ? ''on'' : ''off'') + '' voice '' + (vox ? ''on'' : ''off''), trunc(lastSay, 62)); } catch (e) {} } function pretty(n) { var s = '''' + n, m; if (s.indexOf(''l_'') == 0) s = ''left '' + s.substring(2); else if (s.indexOf(''r_'') == 0) s = ''right '' + s.substring(2); m = /^v([ctl])([0-9]+)$/.exec(s); if (m) return (m[1] == ''c'' ? ''cervical'' : (m[1] == ''t'' ? ''thoracic'' : ''lumbar'')) + '' vertebra '' + m[2]; return s.split(''_'').join('' ''); } function sidePan(j) { return side[j] == 0 ? -0.8 : (side[j] == 1 ? 0.8 : 0); } function jointFreq(j) { return 262 * Math.pow(2, Math.min(depthOf[j] || 0, 18) / 9); } function jointPhrase(j) { var s = pretty(names[j]) + '', '' + (j + 1) + '' of '' + names.length; s += parentOf[j] >= 0 ? '', parent '' + pretty(names[parentOf[j]]) : '', root joint''; s += '', '' + nKids[j] + (nKids[j] == 1 ? '' child'' : '' children''); return s; } function limitsPhrase(j) { var o = []; for (var k = 0; k < 3; k++) { var r = lim(joints[j], k); o.push(AXN[k] + (r ? '' '' + deg(r[0]) + '' to '' + deg(r[1]) : '' free'')); } return ''limits in degrees: '' + o.join('', ''); } function axisPhrase(k) { if (sel < 0) return ''no joint selected''; var r = lim(joints[sel], k); return fmt1(degf(ang[sel][k])) + '' degrees, '' + (r ? ''limits '' + deg(r[0]) + '' to '' + deg(r[1]) : ''free''); } function transPhrase(k) { return fmt3(getT()[k]) + '' meters''; } function axisSpeech() { return mode == ''T'' ? AXN[kAx] + '' translation, '' + transPhrase(kAx) : AXN[kAx] + '' rotation, '' + axisPhrase(kAx); } function valueSpeech() { if (mode == ''T'') return AXN[kAx] + '' '' + fmt3(getT()[kAx]) + '' meters''; return AXN[kAx] + '' '' + fmt1(degf(ang[sel][kAx])) + '' degrees''; } function hoverPaint(j, on) { try { if (on) { if (j == sel) return; mats[j].diffuseColor = new SFColor(1, 1, 1); mats[j].emissiveColor = new SFColor(0.75, 0.75, 0.75); var lm = lmatOf[names[j]]; if (lm) lm.emissiveColor = new SFColor(1, 1, 1); } else { paint(j, j == sel); } } catch (e) {} } function paintFocus() { try { for (var k = 0; k < 3; k++) { inMat[k].emissiveColor = (mode == ''R'' && k == kAx && sel >= 0) ? new SFColor(0, 0.22, 0.35) : new SFColor(0, 0, 0); tinMat[k].emissiveColor = (mode == ''T'' && k == kAx) ? new SFColor(0, 0.22, 0.35) : new SFColor(0, 0, 0); } } catch (e) {} } function a11ySync() { try { var typR = activeIn >= 0, typT = activeT >= 0; var wantR = domKeys ? false : typR, wantT = domKeys ? false : typT; if (strSens.enabled != wantR) strSens.enabled = wantR; if (strSensT.enabled != wantT) strSensT.enabled = wantT; } catch (e) {} paintFocus(); } function earSelect(j) { if (!a11yReady) return; var f = jointFreq(j), p = sidePan(j); beep(f, 0.09, ''triangle'', 0.2, p); beep(f * 1.5, 0.12, ''triangle'', 0.2, p, 0.09); say(jointPhrase(j) + '', selected''); } function earDeselect() { if (!a11yReady) return; beep(520, 0.08, ''triangle'', 0.18, 0); beep(390, 0.12, ''triangle'', 0.18, 0, 0.08); say(''Joint deselected''); } function overJoint(j, b) { if (j < 0 || !a11yReady) return; if (b) { hoverJ = j; hoverPaint(j, true); var f = jointFreq(j), p = sidePan(j); beep(f, 0.06, ''sine'', 0.15, p); if (j == sel) beep(f * 2, 0.05, ''sine'', 0.1, p, 0.07); sayLater(pretty(names[j]) + (j == sel ? '', selected'' : ''''), 220); } else { if (hoverJ == j) hoverJ = -1; hoverPaint(j, false); clearSayTimer(); } } function overBtn(i, b) { if (!a11yReady) return; try { var m = btnMats[i]; if (b) { m.emissiveColor = new SFColor(0.35, 0.35, 0.65); m.diffuseColor = new SFColor(0.32, 0.32, 0.45); beep(540 + i * 14, 0.045, ''sine'', 0.13, 0); sayLater(BTN[i] + '' button'', 200); } else { m.emissiveColor = new SFColor(0.08, 0.08, 0.14); m.diffuseColor = new SFColor(0.2, 0.2, 0.28); clearSayTimer(); } } catch (e) {} } function knobGlow(idx, on) { try { var m = knobMats[idx]; m.emissiveColor = on ? new SFColor(0.95, 0.95, 0.95) : new SFColor(0.5, 0.1, 0.1); if (!on) { var k = idx % 3; if (k == 1) m.emissiveColor = new SFColor(0.1, 0.5, 0.1); if (k == 2) m.emissiveColor = new SFColor(0.15, 0.25, 0.5); } } catch (e) {} } function overSlider(k, grp, ring, b) { if (!a11yReady) return; if (b) { var d0 = grp == 1 ? 0.14 : 0; if (grp == 1) beep(82, 0.09, ''sine'', 0.3, 0); pulses(k + 1, AXF[k], AXW[k], AXV[k], 0, d0); if (ring) pulses(k + 1, AXF[k] * 1.012, AXW[k], AXV[k] * 0.8, 0, d0); if (!ring) knobGlow(grp * 3 + k, true); var what = grp == 1 ? '' translation slider, '' + transPhrase(k) : (ring ? '' rotation ring, '' + axisPhrase(k) : '' rotation slider, '' + axisPhrase(k)); sayLater(AXN[k] + what, 200 + 130 * (k + 1) + d0 * 1000); } else { if (!ring) knobGlow(grp * 3 + k, false); clearSayTimer(); } } function overBox(k, grp, b) { if (!a11yReady) return; if (b) { beep(AXF[k] * 2, 0.05, ''sine'', 0.1, 0); sayLater(AXN[k] + (grp == 1 ? '' translation input box, '' + transPhrase(k) : '' rotation input box, '' + (sel < 0 ? ''no joint selected'' : fmt1(degf(ang[sel][k])) + '' degrees'')) + ''. Click to type a value'', 260); } else { clearSayTimer(); } } function actCtl(k, b) { if (!a11yReady) return; if (b) beep(AXF[k] * 2, 0.03, ''square'', 0.1, 0); else beep(AXF[k], 0.05, ''sine'', 0.12, 0); } function moveCue(k, grp, old, a, lo, hi, src) { if (!a11yReady) return 0; var span = hi - lo, t = span > 0 ? clamp((a - lo) / span, 0, 1) : 0.5; var atMax = a >= hi - 0.000001, atMin = a <= lo + 0.000001; var wasMax = old >= hi - 0.000001, wasMin = old <= lo + 0.000001; var hit = atMax ? 1 : (atMin ? -1 : 0); if (hit != 0) { if (src == ''key'' || (atMax && !wasMax) || (atMin && !wasMin)) thud(hit); return hit; } if ((old < 0 && a >= 0) || (old > 0 && a <= 0)) beep(1320, 0.04, ''square'', 0.12, 2 * t - 1); var now = (new Date()).getTime(); if (now - lastMoveSnd > 45) { lastMoveSnd = now; beep(AXF[k] * Math.pow(2, t), 0.07, AXW[k], AXV[k], 2 * t - 1); } return 0; } function earMoveR(k, old, a, src) { var rg = range(k); return moveCue(k, 0, old, a, rg[0], rg[1], src); } function earMoveT(k, old, a, src) { return moveCue(k, 1, old, a, -TR, TR, src); } function charName(c) { if (c == ''.'') return ''point''; if (c == ''-'') return ''minus''; if (c == ''+'') return ''plus''; if (c == '' '') return ''space''; if (c == '','') return ''comma''; return c; } function earTypeStart(k, grp) { kAx = k; mode = grp == 0 ? ''R'' : ''T''; lastTypedLen = 0; paintFocus(); if (!a11yReady) return; beep(900, 0.04, ''sine'', 0.15, 0); beep(1200, 0.05, ''sine'', 0.15, 0, 0.06); say(''Typing '' + AXN[k] + (grp == 0 ? '' rotation in degrees'' : '' translation in meters'') + ''. Type a number, then Enter. Enter on an empty box finishes. Escape cancels.''); } function earTypedKey(str) { if (!a11yReady) return; var s = '''' + str, n = s.length; if (n > lastTypedLen) { beep(700 + n * 20, 0.025, ''square'', 0.07, 0); speak(charName(s.charAt(n - 1))); } else { beep(300, 0.04, ''square'', 0.08, 0); speak(''deleted''); } lastTypedLen = n; } function earCommit(grp) { lastTypedLen = 0; if (!a11yReady) return; beep(660, 0.06, ''triangle'', 0.18, 0); beep(990, 0.09, ''triangle'', 0.18, 0, 0.07); var s = ''Applied. '', k; if (grp == 0) { var a = ang[sel]; s += ''X '' + fmt1(degf(a[0])) + '', Y '' + fmt1(degf(a[1])) + '', Z '' + fmt1(degf(a[2])) + '' degrees.''; k = activeIn; } else { var t = getT(); s += ''X '' + fmt3(t[0]) + '', Y '' + fmt3(t[1]) + '', Z '' + fmt3(t[2]) + '' meters.''; k = activeT; } if (k >= 0) { kAx = k; s += '' Now typing '' + AXN[k] + ''.''; } say(s); } function earBad() { lastTypedLen = 0; if (!a11yReady) return; errTone(); say(''That is not a number. Try again, or press Escape.''); } function consume(e) { try { e.preventDefault(); e.stopPropagation(); } catch (x) {} } function setMode(m) { if (m == ''R'' && sel < 0) { earBlocked(''Rotate mode needs a joint. Press N to select the first joint.''); return; } mode = m; if (m == ''J'') seq([392, 523], 0.09, ''triangle'', 0.2, 0); else if (m == ''R'') seq([330, 415, 523], 0.08, ''triangle'', 0.2, 0); else seq([523, 415, 330], 0.08, ''triangle'', 0.2, 0); a11ySync(); if (m == ''J'') say(''Joint mode. Up arrow parent, down arrow child, left and right arrows siblings. N and P next and previous joint.''); else if (m == ''R'') say(''Rotate mode. '' + pretty(names[sel]) + ''. Axis '' + axisSpeech() + ''. Left and right arrows adjust.''); else say(''Translate mode, humanoid root. Axis '' + axisSpeech() + ''. Left and right arrows adjust.''); } function focusAxis(k) { kAx = (k + 3) % 3; a11ySync(); pulses(kAx + 1, AXF[kAx], AXW[kAx], AXV[kAx], 0); sayLater(axisSpeech(), 200 + 130 * (kAx + 1)); } function afterMove(hit) { sayLater(valueSpeech() + (hit > 0 ? '', maximum'' : (hit < 0 ? '', minimum'' : '''')), 110); } function nudge(dir, mult) { var k = kAx, old, a, rg, hit; if (mode == ''R'') { if (sel < 0) { earBlocked(''No joint selected. Press N to select the first joint.''); return; } rg = range(k); old = ang[sel][k]; a = clamp(old + dir * (mult == 2 ? 10 : (mult == 0 ? 0.1 : 1)) * Math.PI / 180, rg[0], rg[1]); hit = earMoveR(k, old, a, ''key''); setAxis(k, a); applyJoint(); } else { old = getT()[k]; a = clamp(old + dir * (mult == 2 ? 0.1 : (mult == 0 ? 0.001 : 0.01)), -TR, TR); hit = earMoveT(k, old, a, ''key''); setT(k, a); syncT(); } afterMove(hit); } function jump(which) { var k = kAx, old, a, lo, hi, hit, rg; if (mode == ''R'') { if (sel < 0) { earBlocked(''No joint selected. Press N to select the first joint.''); return; } rg = range(k); lo = rg[0]; hi = rg[1]; old = ang[sel][k]; } else { lo = -TR; hi = TR; old = getT()[k]; } a = which == ''min'' ? lo : (which == ''max'' ? hi : clamp(0, lo, hi)); hit = mode == ''R'' ? earMoveR(k, old, a, ''key'') : earMoveT(k, old, a, ''key''); if (which == ''zero'') beep(1320, 0.05, ''square'', 0.12, 0); if (mode == ''R'') { setAxis(k, a); applyJoint(); } else { setT(k, a); syncT(); } afterMove(hit); } function describe() { var s = ''Mode '' + (mode == ''J'' ? ''joint'' : (mode == ''R'' ? ''rotate, axis '' + AXN[kAx] : ''translate, axis '' + AXN[kAx])) + ''. ''; if (sel < 0) s += ''No joint selected. ''; else { var a = ang[sel]; s += jointPhrase(sel) + ''. X '' + fmt1(degf(a[0])) + '', Y '' + fmt1(degf(a[1])) + '', Z '' + fmt1(degf(a[2])) + '' degrees. '' + limitsPhrase(sel) + ''. ''; } var t = getT(); s += ''Root position X '' + fmt3(t[0]) + '', Y '' + fmt3(t[1]) + '', Z '' + fmt3(t[2]) + '' meters.''; say(s); } function toggleHelp() { helpOn = !helpOn; try { helpSwitch.whichChoice = helpOn ? 0 : -1; } catch (e) {} if (helpOn) say(''Keyboard help shown. J joint mode: arrows move to the parent, child and siblings. R rotate mode: X Y Z or up and down choose the axis, left and right adjust, shift for ten degrees, alt for a tenth, Home and End jump to the limits, zero zeroes the axis, Enter types a value. T translate mode moves the root. N and P select the next and previous joint. D deselects. E exports, L imports. M toggles sound, V toggles speech, I says where you are, Escape returns to joint mode.''); else say(''Keyboard help hidden''); } function typingKey(e, key) { var r = activeIn >= 0; var buf = r ? typedBuf : typedBufT; if (key == ''Escape'') { activeIn = -1; activeT = -1; typedBuf = ''''; typedBufT = ''''; lastTypedLen = 0; if (sel >= 0) syncUI(); syncT(); beep(300, 0.08, ''sine'', 0.15, 0); say(''Typing cancelled''); consume(e); return; } if (key == ''Enter'') { consume(e); if (buf.length == 0) { activeIn = -1; activeT = -1; lastTypedLen = 0; if (sel >= 0) syncUI(); syncT(); beep(660, 0.06, ''triangle'', 0.15, 0); say(''Finished typing''); return; } if (r) typedFinalIn(buf); else typedFinalT_(buf); return; } if (key == ''Backspace'') { buf = buf.substring(0, buf.length - 1); } else if (key.length == 1 && ''0123456789.+-, rR''.indexOf(key) >= 0) { buf += key; } else { if (key.length == 1) consume(e); return; } consume(e); if (r) typedIn(buf); else typedT_(buf); } function onKey(e) { try { var tg = e.target, tn = (tg && tg.tagName) ? ('''' + tg.tagName).toLowerCase() : ''''; if (tn == ''input'' || tn == ''textarea'' || tn == ''select'' || (tg && tg.isContentEditable)) return; if (e.ctrlKey || e.metaKey) return; actx(); var key = e.key; if (!key) return; if (activeIn >= 0 || activeT >= 0) { typingKey(e, key); return; } var mult = e.shiftKey ? 2 : (e.altKey ? 0 : 1); var low = key.length == 1 ? key.toLowerCase() : key; var axisMode = (mode == ''R'' || mode == ''T''); switch (low) { case ''h'': case ''?'': toggleHelp(); break; case ''i'': describe(); break; case ''m'': snd = !snd; if (snd) beep(660, 0.08, ''triangle'', 0.2, 0); say(snd ? ''Sound on'' : ''Sound off''); break; case ''v'': if (vox) { say(''Speech off''); vox = false; } else { vox = true; say(''Speech on''); } showStatus(); break; case ''j'': setMode(''J''); break; case ''r'': setMode(''R''); break; case ''t'': setMode(''T''); break; case ''Escape'': if (helpOn) toggleHelp(); setMode(''J''); break; case ''d'': if (sel >= 0) clearSel(); else earBlocked(''No joint selected''); break; case ''e'': exportHumanoid(0); break; case ''l'': importHumanoid(0); break; case ''n'': case ''PageDown'': next(0); break; case ''p'': case ''PageUp'': prev(0); break; case ''x'': case ''y'': case ''z'': if (axisMode) focusAxis(low == ''x'' ? 0 : (low == ''y'' ? 1 : 2)); else earBlocked(''Press R for rotate mode or T for translate mode first''); break; case ''ArrowUp'': if (axisMode) focusAxis(kAx - 1); else up(0); break; case ''ArrowDown'': if (axisMode) focusAxis(kAx + 1); else down(0); break; case ''ArrowLeft'': if (axisMode) nudge(-1, mult); else sibPrev(0); break; case ''ArrowRight'': if (axisMode) nudge(1, mult); else sibNext(0); break; case ''Home'': if (axisMode) jump(''min''); else select(0); break; case ''End'': if (axisMode) jump(''max''); else select(names.length - 1); break; case ''0'': if (axisMode) jump(''zero''); else return; break; case ''Delete'': case ''Backspace'': if (mode == ''R'') reset(0); else if (mode == ''T'') resetT(0); else return; break; case ''Enter'': case '' '': if (mode == ''R'') { if (sel < 0) earBlocked(''No joint selected''); else pickIn(kAx); } else if (mode == ''T'') pickT(kAx); else describe(); break; default: return; } consume(e); } catch (x) { log(''key error: '' + x); } } function a11yInit() { var i, d, p; for (i = 0; i < names.length; i++) { d = 0; p = parentOf[i]; while (p >= 0) { d++; p = parentOf[p]; } depthOf[i] = d; } try { live = document.createElement(''div''); live.setAttribute(''role'', ''status''); live.setAttribute(''aria-live'', ''polite''); live.setAttribute(''aria-atomic'', ''true''); live.style.cssText = ''position:absolute;left:-9999px;width:1px;height:1px;overflow:hidden;''; document.body.appendChild(live); } catch (e) { log(''live region unavailable: '' + e); } try { if (window.gimbalKeyHandler) document.removeEventListener(''keydown'', window.gimbalKeyHandler, true); if (window.gimbalPtrHandler) document.removeEventListener(''pointerdown'', window.gimbalPtrHandler, true); window.gimbalKeyHandler = onKey; window.gimbalPtrHandler = unlock; document.addEventListener(''keydown'', onKey, true); document.addEventListener(''pointerdown'', unlock, true); domKeys = true; } catch (e) { domKeys = false; log(''keyboard modes unavailable: '' + e); } a11yReady = true; a11ySync(); showStatus(); say(''Accessibility on. Press H for keyboard help. Press any key or click once to enable sound.''); } function ovJ_humanoid_root(b){ try { overJoint(names.indexOf(''humanoid_root''), b); } catch(e){} } function ovJ_sacroiliac(b){ try { overJoint(names.indexOf(''sacroiliac''), b); } catch(e){} } function ovJ_l_hip(b){ try { overJoint(names.indexOf(''l_hip''), b); } catch(e){} } function ovJ_l_knee(b){ try { overJoint(names.indexOf(''l_knee''), b); } catch(e){} } function ovJ_l_talocrural(b){ try { overJoint(names.indexOf(''l_talocrural''), b); } catch(e){} } function ovJ_l_talocalcaneonavicular(b){ try { overJoint(names.indexOf(''l_talocalcaneonavicular''), b); } catch(e){} } function ovJ_l_cuneonavicular_1(b){ try { overJoint(names.indexOf(''l_cuneonavicular_1''), b); } catch(e){} } function ovJ_l_tarsometatarsal_1(b){ try { overJoint(names.indexOf(''l_tarsometatarsal_1''), b); } catch(e){} } function ovJ_l_metatarsophalangeal_1(b){ try { overJoint(names.indexOf(''l_metatarsophalangeal_1''), b); } catch(e){} } function ovJ_l_tarsal_interphalangeal_1(b){ try { overJoint(names.indexOf(''l_tarsal_interphalangeal_1''), b); } catch(e){} } function ovJ_l_cuneonavicular_2(b){ try { overJoint(names.indexOf(''l_cuneonavicular_2''), b); } catch(e){} } function ovJ_l_tarsometatarsal_2(b){ try { overJoint(names.indexOf(''l_tarsometatarsal_2''), b); } catch(e){} } function ovJ_l_metatarsophalangeal_2(b){ try { overJoint(names.indexOf(''l_metatarsophalangeal_2''), b); } catch(e){} } function ovJ_l_tarsal_proximal_interphalangeal_2(b){ try { overJoint(names.indexOf(''l_tarsal_proximal_interphalangeal_2''), b); } catch(e){} } function ovJ_l_tarsal_distal_interphalangeal_2(b){ try { overJoint(names.indexOf(''l_tarsal_distal_interphalangeal_2''), b); } catch(e){} } function ovJ_l_cuneonavicular_3(b){ try { overJoint(names.indexOf(''l_cuneonavicular_3''), b); } catch(e){} } function ovJ_l_tarsometatarsal_3(b){ try { overJoint(names.indexOf(''l_tarsometatarsal_3''), b); } catch(e){} } function ovJ_l_metatarsophalangeal_3(b){ try { overJoint(names.indexOf(''l_metatarsophalangeal_3''), b); } catch(e){} } function ovJ_l_tarsal_proximal_interphalangeal_3(b){ try { overJoint(names.indexOf(''l_tarsal_proximal_interphalangeal_3''), b); } catch(e){} } function ovJ_l_tarsal_distal_interphalangeal_3(b){ try { overJoint(names.indexOf(''l_tarsal_distal_interphalangeal_3''), b); } catch(e){} } function ovJ_l_calcaneocuboid(b){ try { overJoint(names.indexOf(''l_calcaneocuboid''), b); } catch(e){} } function ovJ_l_transversetarsal(b){ try { overJoint(names.indexOf(''l_transversetarsal''), b); } catch(e){} } function ovJ_l_tarsometatarsal_4(b){ try { overJoint(names.indexOf(''l_tarsometatarsal_4''), b); } catch(e){} } function ovJ_l_metatarsophalangeal_4(b){ try { overJoint(names.indexOf(''l_metatarsophalangeal_4''), b); } catch(e){} } function ovJ_l_tarsal_proximal_interphalangeal_4(b){ try { overJoint(names.indexOf(''l_tarsal_proximal_interphalangeal_4''), b); } catch(e){} } function ovJ_l_tarsal_distal_interphalangeal_4(b){ try { overJoint(names.indexOf(''l_tarsal_distal_interphalangeal_4''), b); } catch(e){} } function ovJ_l_tarsometatarsal_5(b){ try { overJoint(names.indexOf(''l_tarsometatarsal_5''), b); } catch(e){} } function ovJ_l_metatarsophalangeal_5(b){ try { overJoint(names.indexOf(''l_metatarsophalangeal_5''), b); } catch(e){} } function ovJ_l_tarsal_proximal_interphalangeal_5(b){ try { overJoint(names.indexOf(''l_tarsal_proximal_interphalangeal_5''), b); } catch(e){} } function ovJ_l_tarsal_distal_interphalangeal_5(b){ try { overJoint(names.indexOf(''l_tarsal_distal_interphalangeal_5''), b); } catch(e){} } function ovJ_r_hip(b){ try { overJoint(names.indexOf(''r_hip''), b); } catch(e){} } function ovJ_r_knee(b){ try { overJoint(names.indexOf(''r_knee''), b); } catch(e){} } function ovJ_r_talocrural(b){ try { overJoint(names.indexOf(''r_talocrural''), b); } catch(e){} } function ovJ_r_talocalcaneonavicular(b){ try { overJoint(names.indexOf(''r_talocalcaneonavicular''), b); } catch(e){} } function ovJ_r_cuneonavicular_1(b){ try { overJoint(names.indexOf(''r_cuneonavicular_1''), b); } catch(e){} } function ovJ_r_tarsometatarsal_1(b){ try { overJoint(names.indexOf(''r_tarsometatarsal_1''), b); } catch(e){} } function ovJ_r_metatarsophalangeal_1(b){ try { overJoint(names.indexOf(''r_metatarsophalangeal_1''), b); } catch(e){} } function ovJ_r_tarsal_interphalangeal_1(b){ try { overJoint(names.indexOf(''r_tarsal_interphalangeal_1''), b); } catch(e){} } function ovJ_r_cuneonavicular_2(b){ try { overJoint(names.indexOf(''r_cuneonavicular_2''), b); } catch(e){} } function ovJ_r_tarsometatarsal_2(b){ try { overJoint(names.indexOf(''r_tarsometatarsal_2''), b); } catch(e){} } function ovJ_r_metatarsophalangeal_2(b){ try { overJoint(names.indexOf(''r_metatarsophalangeal_2''), b); } catch(e){} } function ovJ_r_tarsal_proximal_interphalangeal_2(b){ try { overJoint(names.indexOf(''r_tarsal_proximal_interphalangeal_2''), b); } catch(e){} } function ovJ_r_tarsal_distal_interphalangeal_2(b){ try { overJoint(names.indexOf(''r_tarsal_distal_interphalangeal_2''), b); } catch(e){} } function ovJ_r_cuneonavicular_3(b){ try { overJoint(names.indexOf(''r_cuneonavicular_3''), b); } catch(e){} } function ovJ_r_tarsometatarsal_3(b){ try { overJoint(names.indexOf(''r_tarsometatarsal_3''), b); } catch(e){} } function ovJ_r_metatarsophalangeal_3(b){ try { overJoint(names.indexOf(''r_metatarsophalangeal_3''), b); } catch(e){} } function ovJ_r_tarsal_proximal_interphalangeal_3(b){ try { overJoint(names.indexOf(''r_tarsal_proximal_interphalangeal_3''), b); } catch(e){} } function ovJ_r_tarsal_distal_interphalangeal_3(b){ try { overJoint(names.indexOf(''r_tarsal_distal_interphalangeal_3''), b); } catch(e){} } function ovJ_r_calcaneocuboid(b){ try { overJoint(names.indexOf(''r_calcaneocuboid''), b); } catch(e){} } function ovJ_r_transversetarsal(b){ try { overJoint(names.indexOf(''r_transversetarsal''), b); } catch(e){} } function ovJ_r_tarsometatarsal_4(b){ try { overJoint(names.indexOf(''r_tarsometatarsal_4''), b); } catch(e){} } function ovJ_r_metatarsophalangeal_4(b){ try { overJoint(names.indexOf(''r_metatarsophalangeal_4''), b); } catch(e){} } function ovJ_r_tarsal_proximal_interphalangeal_4(b){ try { overJoint(names.indexOf(''r_tarsal_proximal_interphalangeal_4''), b); } catch(e){} } function ovJ_r_tarsal_distal_interphalangeal_4(b){ try { overJoint(names.indexOf(''r_tarsal_distal_interphalangeal_4''), b); } catch(e){} } function ovJ_r_tarsometatarsal_5(b){ try { overJoint(names.indexOf(''r_tarsometatarsal_5''), b); } catch(e){} } function ovJ_r_metatarsophalangeal_5(b){ try { overJoint(names.indexOf(''r_metatarsophalangeal_5''), b); } catch(e){} } function ovJ_r_tarsal_proximal_interphalangeal_5(b){ try { overJoint(names.indexOf(''r_tarsal_proximal_interphalangeal_5''), b); } catch(e){} } function ovJ_r_tarsal_distal_interphalangeal_5(b){ try { overJoint(names.indexOf(''r_tarsal_distal_interphalangeal_5''), b); } catch(e){} } function ovJ_vl5(b){ try { overJoint(names.indexOf(''vl5''), b); } catch(e){} } function ovJ_vl4(b){ try { overJoint(names.indexOf(''vl4''), b); } catch(e){} } function ovJ_vl3(b){ try { overJoint(names.indexOf(''vl3''), b); } catch(e){} } function ovJ_vl2(b){ try { overJoint(names.indexOf(''vl2''), b); } catch(e){} } function ovJ_vl1(b){ try { overJoint(names.indexOf(''vl1''), b); } catch(e){} } function ovJ_vt12(b){ try { overJoint(names.indexOf(''vt12''), b); } catch(e){} } function ovJ_vt11(b){ try { overJoint(names.indexOf(''vt11''), b); } catch(e){} } function ovJ_vt10(b){ try { overJoint(names.indexOf(''vt10''), b); } catch(e){} } function ovJ_vt9(b){ try { overJoint(names.indexOf(''vt9''), b); } catch(e){} } function ovJ_vt8(b){ try { overJoint(names.indexOf(''vt8''), b); } catch(e){} } function ovJ_vt7(b){ try { overJoint(names.indexOf(''vt7''), b); } catch(e){} } function ovJ_vt6(b){ try { overJoint(names.indexOf(''vt6''), b); } catch(e){} } function ovJ_vt5(b){ try { overJoint(names.indexOf(''vt5''), b); } catch(e){} } function ovJ_vt4(b){ try { overJoint(names.indexOf(''vt4''), b); } catch(e){} } function ovJ_vt3(b){ try { overJoint(names.indexOf(''vt3''), b); } catch(e){} } function ovJ_vt2(b){ try { overJoint(names.indexOf(''vt2''), b); } catch(e){} } function ovJ_vt1(b){ try { overJoint(names.indexOf(''vt1''), b); } catch(e){} } function ovJ_vc7(b){ try { overJoint(names.indexOf(''vc7''), b); } catch(e){} } function ovJ_vc6(b){ try { overJoint(names.indexOf(''vc6''), b); } catch(e){} } function ovJ_vc5(b){ try { overJoint(names.indexOf(''vc5''), b); } catch(e){} } function ovJ_vc4(b){ try { overJoint(names.indexOf(''vc4''), b); } catch(e){} } function ovJ_vc3(b){ try { overJoint(names.indexOf(''vc3''), b); } catch(e){} } function ovJ_vc2(b){ try { overJoint(names.indexOf(''vc2''), b); } catch(e){} } function ovJ_vc1(b){ try { overJoint(names.indexOf(''vc1''), b); } catch(e){} } function ovJ_skullbase(b){ try { overJoint(names.indexOf(''skullbase''), b); } catch(e){} } function ovJ_l_eyelid_joint(b){ try { overJoint(names.indexOf(''l_eyelid_joint''), b); } catch(e){} } function ovJ_r_eyelid_joint(b){ try { overJoint(names.indexOf(''r_eyelid_joint''), b); } catch(e){} } function ovJ_l_eyeball_joint(b){ try { overJoint(names.indexOf(''l_eyeball_joint''), b); } catch(e){} } function ovJ_r_eyeball_joint(b){ try { overJoint(names.indexOf(''r_eyeball_joint''), b); } catch(e){} } function ovJ_l_eyebrow_joint(b){ try { overJoint(names.indexOf(''l_eyebrow_joint''), b); } catch(e){} } function ovJ_r_eyebrow_joint(b){ try { overJoint(names.indexOf(''r_eyebrow_joint''), b); } catch(e){} } function ovJ_temporomandibular(b){ try { overJoint(names.indexOf(''temporomandibular''), b); } catch(e){} } function ovJ_l_sternoclavicular(b){ try { overJoint(names.indexOf(''l_sternoclavicular''), b); } catch(e){} } function ovJ_l_acromioclavicular(b){ try { overJoint(names.indexOf(''l_acromioclavicular''), b); } catch(e){} } function ovJ_l_shoulder(b){ try { overJoint(names.indexOf(''l_shoulder''), b); } catch(e){} } function ovJ_l_elbow(b){ try { overJoint(names.indexOf(''l_elbow''), b); } catch(e){} } function ovJ_l_radiocarpal(b){ try { overJoint(names.indexOf(''l_radiocarpal''), b); } catch(e){} } function ovJ_l_midcarpal_1(b){ try { overJoint(names.indexOf(''l_midcarpal_1''), b); } catch(e){} } function ovJ_l_carpometacarpal_1(b){ try { overJoint(names.indexOf(''l_carpometacarpal_1''), b); } catch(e){} } function ovJ_l_metacarpophalangeal_1(b){ try { overJoint(names.indexOf(''l_metacarpophalangeal_1''), b); } catch(e){} } function ovJ_l_carpal_interphalangeal_1(b){ try { overJoint(names.indexOf(''l_carpal_interphalangeal_1''), b); } catch(e){} } function ovJ_l_midcarpal_2(b){ try { overJoint(names.indexOf(''l_midcarpal_2''), b); } catch(e){} } function ovJ_l_carpometacarpal_2(b){ try { overJoint(names.indexOf(''l_carpometacarpal_2''), b); } catch(e){} } function ovJ_l_metacarpophalangeal_2(b){ try { overJoint(names.indexOf(''l_metacarpophalangeal_2''), b); } catch(e){} } function ovJ_l_carpal_proximal_interphalangeal_2(b){ try { overJoint(names.indexOf(''l_carpal_proximal_interphalangeal_2''), b); } catch(e){} } function ovJ_l_carpal_distal_interphalangeal_2(b){ try { overJoint(names.indexOf(''l_carpal_distal_interphalangeal_2''), b); } catch(e){} } function ovJ_l_midcarpal_3(b){ try { overJoint(names.indexOf(''l_midcarpal_3''), b); } catch(e){} } function ovJ_l_carpometacarpal_3(b){ try { overJoint(names.indexOf(''l_carpometacarpal_3''), b); } catch(e){} } function ovJ_l_metacarpophalangeal_3(b){ try { overJoint(names.indexOf(''l_metacarpophalangeal_3''), b); } catch(e){} } function ovJ_l_carpal_proximal_interphalangeal_3(b){ try { overJoint(names.indexOf(''l_carpal_proximal_interphalangeal_3''), b); } catch(e){} } function ovJ_l_carpal_distal_interphalangeal_3(b){ try { overJoint(names.indexOf(''l_carpal_distal_interphalangeal_3''), b); } catch(e){} } function ovJ_l_midcarpal_4_5(b){ try { overJoint(names.indexOf(''l_midcarpal_4_5''), b); } catch(e){} } function ovJ_l_carpometacarpal_4(b){ try { overJoint(names.indexOf(''l_carpometacarpal_4''), b); } catch(e){} } function ovJ_l_metacarpophalangeal_4(b){ try { overJoint(names.indexOf(''l_metacarpophalangeal_4''), b); } catch(e){} } function ovJ_l_carpal_proximal_interphalangeal_4(b){ try { overJoint(names.indexOf(''l_carpal_proximal_interphalangeal_4''), b); } catch(e){} } function ovJ_l_carpal_distal_interphalangeal_4(b){ try { overJoint(names.indexOf(''l_carpal_distal_interphalangeal_4''), b); } catch(e){} } function ovJ_l_carpometacarpal_5(b){ try { overJoint(names.indexOf(''l_carpometacarpal_5''), b); } catch(e){} } function ovJ_l_metacarpophalangeal_5(b){ try { overJoint(names.indexOf(''l_metacarpophalangeal_5''), b); } catch(e){} } function ovJ_l_carpal_proximal_interphalangeal_5(b){ try { overJoint(names.indexOf(''l_carpal_proximal_interphalangeal_5''), b); } catch(e){} } function ovJ_l_carpal_distal_interphalangeal_5(b){ try { overJoint(names.indexOf(''l_carpal_distal_interphalangeal_5''), b); } catch(e){} } function ovJ_r_sternoclavicular(b){ try { overJoint(names.indexOf(''r_sternoclavicular''), b); } catch(e){} } function ovJ_r_acromioclavicular(b){ try { overJoint(names.indexOf(''r_acromioclavicular''), b); } catch(e){} } function ovJ_r_shoulder(b){ try { overJoint(names.indexOf(''r_shoulder''), b); } catch(e){} } function ovJ_r_elbow(b){ try { overJoint(names.indexOf(''r_elbow''), b); } catch(e){} } function ovJ_r_radiocarpal(b){ try { overJoint(names.indexOf(''r_radiocarpal''), b); } catch(e){} } function ovJ_r_midcarpal_1(b){ try { overJoint(names.indexOf(''r_midcarpal_1''), b); } catch(e){} } function ovJ_r_carpometacarpal_1(b){ try { overJoint(names.indexOf(''r_carpometacarpal_1''), b); } catch(e){} } function ovJ_r_metacarpophalangeal_1(b){ try { overJoint(names.indexOf(''r_metacarpophalangeal_1''), b); } catch(e){} } function ovJ_r_carpal_interphalangeal_1(b){ try { overJoint(names.indexOf(''r_carpal_interphalangeal_1''), b); } catch(e){} } function ovJ_r_midcarpal_2(b){ try { overJoint(names.indexOf(''r_midcarpal_2''), b); } catch(e){} } function ovJ_r_carpometacarpal_2(b){ try { overJoint(names.indexOf(''r_carpometacarpal_2''), b); } catch(e){} } function ovJ_r_metacarpophalangeal_2(b){ try { overJoint(names.indexOf(''r_metacarpophalangeal_2''), b); } catch(e){} } function ovJ_r_carpal_proximal_interphalangeal_2(b){ try { overJoint(names.indexOf(''r_carpal_proximal_interphalangeal_2''), b); } catch(e){} } function ovJ_r_carpal_distal_interphalangeal_2(b){ try { overJoint(names.indexOf(''r_carpal_distal_interphalangeal_2''), b); } catch(e){} } function ovJ_r_midcarpal_3(b){ try { overJoint(names.indexOf(''r_midcarpal_3''), b); } catch(e){} } function ovJ_r_carpometacarpal_3(b){ try { overJoint(names.indexOf(''r_carpometacarpal_3''), b); } catch(e){} } function ovJ_r_metacarpophalangeal_3(b){ try { overJoint(names.indexOf(''r_metacarpophalangeal_3''), b); } catch(e){} } function ovJ_r_carpal_proximal_interphalangeal_3(b){ try { overJoint(names.indexOf(''r_carpal_proximal_interphalangeal_3''), b); } catch(e){} } function ovJ_r_carpal_distal_interphalangeal_3(b){ try { overJoint(names.indexOf(''r_carpal_distal_interphalangeal_3''), b); } catch(e){} } function ovJ_r_midcarpal_4_5(b){ try { overJoint(names.indexOf(''r_midcarpal_4_5''), b); } catch(e){} } function ovJ_r_carpometacarpal_4(b){ try { overJoint(names.indexOf(''r_carpometacarpal_4''), b); } catch(e){} } function ovJ_r_metacarpophalangeal_4(b){ try { overJoint(names.indexOf(''r_metacarpophalangeal_4''), b); } catch(e){} } function ovJ_r_carpal_proximal_interphalangeal_4(b){ try { overJoint(names.indexOf(''r_carpal_proximal_interphalangeal_4''), b); } catch(e){} } function ovJ_r_carpal_distal_interphalangeal_4(b){ try { overJoint(names.indexOf(''r_carpal_distal_interphalangeal_4''), b); } catch(e){} } function ovJ_r_carpometacarpal_5(b){ try { overJoint(names.indexOf(''r_carpometacarpal_5''), b); } catch(e){} } function ovJ_r_metacarpophalangeal_5(b){ try { overJoint(names.indexOf(''r_metacarpophalangeal_5''), b); } catch(e){} } function ovJ_r_carpal_proximal_interphalangeal_5(b){ try { overJoint(names.indexOf(''r_carpal_proximal_interphalangeal_5''), b); } catch(e){} } function ovJ_r_carpal_distal_interphalangeal_5(b){ try { overJoint(names.indexOf(''r_carpal_distal_interphalangeal_5''), b); } catch(e){} } function ovB0(b){ overBtn(0,b); } function ovB1(b){ overBtn(1,b); } function ovB2(b){ overBtn(2,b); } function ovB3(b){ overBtn(3,b); } function ovB4(b){ overBtn(4,b); } function ovB5(b){ overBtn(5,b); } function ovB6(b){ overBtn(6,b); } function ovB7(b){ overBtn(7,b); } function ovB8(b){ overBtn(8,b); } function ovB9(b){ overBtn(9,b); } function ovB10(b){ overBtn(10,b); } function ovSl0(b){ overSlider(0, 0, false, b); } function ovTSl0(b){ overSlider(0, 1, false, b); } function ovRg0(b){ overSlider(0, 0, true, b); } function ovIn0(b){ overBox(0, 0, b); } function ovTIn0(b){ overBox(0, 1, b); } function acSl0(b){ actCtl(0, b); } function acTSl0(b){ actCtl(0, b); } function acRg0(b){ actCtl(0, b); } function ovSl1(b){ overSlider(1, 0, false, b); } function ovTSl1(b){ overSlider(1, 1, false, b); } function ovRg1(b){ overSlider(1, 0, true, b); } function ovIn1(b){ overBox(1, 0, b); } function ovTIn1(b){ overBox(1, 1, b); } function acSl1(b){ actCtl(1, b); } function acTSl1(b){ actCtl(1, b); } function acRg1(b){ actCtl(1, b); } function ovSl2(b){ overSlider(2, 0, false, b); } function ovTSl2(b){ overSlider(2, 1, false, b); } function ovRg2(b){ overSlider(2, 0, true, b); } function ovIn2(b){ overBox(2, 0, b); } function ovTIn2(b){ overBox(2, 1, b); } function acSl2(b){ actCtl(2, b); } function acTSl2(b){ actCtl(2, b); } function acRg2(b){ actCtl(2, b); } function initialize() { log(''controller initialize''); var children = []; for (var i = 0; i < names.length; i++) { ang[i] = [0,0,0]; children[i] = []; var p = parentName[i]; parentOf[i] = p ? names.indexOf(p) : -1; side[i] = names[i].indexOf(''l_'') == 0 ? 0 : (names[i].indexOf(''r_'') == 0 ? 1 : 2); } for (var i = 0; i < names.length; i++) { var p = parentOf[i]; if (p >= 0) children[p].push(i); } for (var i = 0; i < names.length; i++) { var kids = children[i]; nKids[i] = kids.length; firstChild[i] = kids.length > 0 ? kids[0] : -1; prevSib[i] = -1; nextSib[i] = -1; } for (var i = 0; i < names.length; i++) { var kids = children[i]; for (var k = 0; k < kids.length; k++) { var c = kids[k]; if (k > 0) prevSib[c] = kids[k - 1]; if (k < kids.length - 1) nextSib[c] = kids[k + 1]; } } try { initT(); } catch (e) { log(''initT error: '' + e); } try { select(names.indexOf(''l_shoulder'')); } catch (e) { log(''initialize error: '' + e); } try { a11yInit(); } catch (e) { log(''a11y init error: '' + e); } } function rotX(v){ try { drag(0, v); } catch (e) { log(''drag X error: '' + e); } } function rotY(v){ try { drag(1, v); } catch (e) { log(''drag Y error: '' + e); } } function rotZ(v){ try { drag(2, v); } catch (e) { log(''drag Z error: '' + e); } } function next(t){ try { earPress(); select(sel < 0 ? 0 : (sel + 1) % names.length); } catch (e) { log(''next error: '' + e); } } function prev(t){ try { earPress(); select(sel < 0 ? names.length - 1 : (sel + names.length - 1) % names.length); } catch (e) { log(''prev error: '' + e); } } function up(t){ try { earPress(); if (sel >= 0 && parentOf[sel] >= 0) select(parentOf[sel]); else earBlocked(sel < 0 ? ''No joint selected'' : ''No parent, this is the root joint''); } catch (e) { log(''up error: '' + e); } } function down(t){ try { earPress(); if (sel >= 0 && firstChild[sel] >= 0) select(firstChild[sel]); else earBlocked(sel < 0 ? ''No joint selected'' : ''No child, this joint is a leaf''); } catch (e) { log(''down error: '' + e); } } function sibPrev(t){ try { earPress(); if (sel >= 0 && prevSib[sel] >= 0) select(prevSib[sel]); else earBlocked(sel < 0 ? ''No joint selected'' : ''No previous sibling''); } catch (e) { log(''sibPrev error: '' + e); } } function sibNext(t){ try { earPress(); if (sel >= 0 && nextSib[sel] >= 0) select(nextSib[sel]); else earBlocked(sel < 0 ? ''No joint selected'' : ''No next sibling''); } catch (e) { log(''sibNext error: '' + e); } } function reset(t){ try { earPress(); if (sel >= 0) { ang[sel] = [0,0,0]; loadGimbal(); earSay(''Joint reset to zero''); }; } catch (e) { log(''reset error: '' + e); } } function deselect(t){ try { earPress(); clearSel(); } catch (e) { log(''deselect error: '' + e); } } function pick_humanoid_root(t){ try { toggle(names.indexOf(''humanoid_root'')); } catch(e){} } function pick_sacroiliac(t){ try { toggle(names.indexOf(''sacroiliac'')); } catch(e){} } function pick_l_hip(t){ try { toggle(names.indexOf(''l_hip'')); } catch(e){} } function pick_l_knee(t){ try { toggle(names.indexOf(''l_knee'')); } catch(e){} } function pick_l_talocrural(t){ try { toggle(names.indexOf(''l_talocrural'')); } catch(e){} } function pick_l_talocalcaneonavicular(t){ try { toggle(names.indexOf(''l_talocalcaneonavicular'')); } catch(e){} } function pick_l_cuneonavicular_1(t){ try { toggle(names.indexOf(''l_cuneonavicular_1'')); } catch(e){} } function pick_l_tarsometatarsal_1(t){ try { toggle(names.indexOf(''l_tarsometatarsal_1'')); } catch(e){} } function pick_l_metatarsophalangeal_1(t){ try { toggle(names.indexOf(''l_metatarsophalangeal_1'')); } catch(e){} } function pick_l_tarsal_interphalangeal_1(t){ try { toggle(names.indexOf(''l_tarsal_interphalangeal_1'')); } catch(e){} } function pick_l_cuneonavicular_2(t){ try { toggle(names.indexOf(''l_cuneonavicular_2'')); } catch(e){} } function pick_l_tarsometatarsal_2(t){ try { toggle(names.indexOf(''l_tarsometatarsal_2'')); } catch(e){} } function pick_l_metatarsophalangeal_2(t){ try { toggle(names.indexOf(''l_metatarsophalangeal_2'')); } catch(e){} } function pick_l_tarsal_proximal_interphalangeal_2(t){ try { toggle(names.indexOf(''l_tarsal_proximal_interphalangeal_2'')); } catch(e){} } function pick_l_tarsal_distal_interphalangeal_2(t){ try { toggle(names.indexOf(''l_tarsal_distal_interphalangeal_2'')); } catch(e){} } function pick_l_cuneonavicular_3(t){ try { toggle(names.indexOf(''l_cuneonavicular_3'')); } catch(e){} } function pick_l_tarsometatarsal_3(t){ try { toggle(names.indexOf(''l_tarsometatarsal_3'')); } catch(e){} } function pick_l_metatarsophalangeal_3(t){ try { toggle(names.indexOf(''l_metatarsophalangeal_3'')); } catch(e){} } function pick_l_tarsal_proximal_interphalangeal_3(t){ try { toggle(names.indexOf(''l_tarsal_proximal_interphalangeal_3'')); } catch(e){} } function pick_l_tarsal_distal_interphalangeal_3(t){ try { toggle(names.indexOf(''l_tarsal_distal_interphalangeal_3'')); } catch(e){} } function pick_l_calcaneocuboid(t){ try { toggle(names.indexOf(''l_calcaneocuboid'')); } catch(e){} } function pick_l_transversetarsal(t){ try { toggle(names.indexOf(''l_transversetarsal'')); } catch(e){} } function pick_l_tarsometatarsal_4(t){ try { toggle(names.indexOf(''l_tarsometatarsal_4'')); } catch(e){} } function pick_l_metatarsophalangeal_4(t){ try { toggle(names.indexOf(''l_metatarsophalangeal_4'')); } catch(e){} } function pick_l_tarsal_proximal_interphalangeal_4(t){ try { toggle(names.indexOf(''l_tarsal_proximal_interphalangeal_4'')); } catch(e){} } function pick_l_tarsal_distal_interphalangeal_4(t){ try { toggle(names.indexOf(''l_tarsal_distal_interphalangeal_4'')); } catch(e){} } function pick_l_tarsometatarsal_5(t){ try { toggle(names.indexOf(''l_tarsometatarsal_5'')); } catch(e){} } function pick_l_metatarsophalangeal_5(t){ try { toggle(names.indexOf(''l_metatarsophalangeal_5'')); } catch(e){} } function pick_l_tarsal_proximal_interphalangeal_5(t){ try { toggle(names.indexOf(''l_tarsal_proximal_interphalangeal_5'')); } catch(e){} } function pick_l_tarsal_distal_interphalangeal_5(t){ try { toggle(names.indexOf(''l_tarsal_distal_interphalangeal_5'')); } catch(e){} } function pick_r_hip(t){ try { toggle(names.indexOf(''r_hip'')); } catch(e){} } function pick_r_knee(t){ try { toggle(names.indexOf(''r_knee'')); } catch(e){} } function pick_r_talocrural(t){ try { toggle(names.indexOf(''r_talocrural'')); } catch(e){} } function pick_r_talocalcaneonavicular(t){ try { toggle(names.indexOf(''r_talocalcaneonavicular'')); } catch(e){} } function pick_r_cuneonavicular_1(t){ try { toggle(names.indexOf(''r_cuneonavicular_1'')); } catch(e){} } function pick_r_tarsometatarsal_1(t){ try { toggle(names.indexOf(''r_tarsometatarsal_1'')); } catch(e){} } function pick_r_metatarsophalangeal_1(t){ try { toggle(names.indexOf(''r_metatarsophalangeal_1'')); } catch(e){} } function pick_r_tarsal_interphalangeal_1(t){ try { toggle(names.indexOf(''r_tarsal_interphalangeal_1'')); } catch(e){} } function pick_r_cuneonavicular_2(t){ try { toggle(names.indexOf(''r_cuneonavicular_2'')); } catch(e){} } function pick_r_tarsometatarsal_2(t){ try { toggle(names.indexOf(''r_tarsometatarsal_2'')); } catch(e){} } function pick_r_metatarsophalangeal_2(t){ try { toggle(names.indexOf(''r_metatarsophalangeal_2'')); } catch(e){} } function pick_r_tarsal_proximal_interphalangeal_2(t){ try { toggle(names.indexOf(''r_tarsal_proximal_interphalangeal_2'')); } catch(e){} } function pick_r_tarsal_distal_interphalangeal_2(t){ try { toggle(names.indexOf(''r_tarsal_distal_interphalangeal_2'')); } catch(e){} } function pick_r_cuneonavicular_3(t){ try { toggle(names.indexOf(''r_cuneonavicular_3'')); } catch(e){} } function pick_r_tarsometatarsal_3(t){ try { toggle(names.indexOf(''r_tarsometatarsal_3'')); } catch(e){} } function pick_r_metatarsophalangeal_3(t){ try { toggle(names.indexOf(''r_metatarsophalangeal_3'')); } catch(e){} } function pick_r_tarsal_proximal_interphalangeal_3(t){ try { toggle(names.indexOf(''r_tarsal_proximal_interphalangeal_3'')); } catch(e){} } function pick_r_tarsal_distal_interphalangeal_3(t){ try { toggle(names.indexOf(''r_tarsal_distal_interphalangeal_3'')); } catch(e){} } function pick_r_calcaneocuboid(t){ try { toggle(names.indexOf(''r_calcaneocuboid'')); } catch(e){} } function pick_r_transversetarsal(t){ try { toggle(names.indexOf(''r_transversetarsal'')); } catch(e){} } function pick_r_tarsometatarsal_4(t){ try { toggle(names.indexOf(''r_tarsometatarsal_4'')); } catch(e){} } function pick_r_metatarsophalangeal_4(t){ try { toggle(names.indexOf(''r_metatarsophalangeal_4'')); } catch(e){} } function pick_r_tarsal_proximal_interphalangeal_4(t){ try { toggle(names.indexOf(''r_tarsal_proximal_interphalangeal_4'')); } catch(e){} } function pick_r_tarsal_distal_interphalangeal_4(t){ try { toggle(names.indexOf(''r_tarsal_distal_interphalangeal_4'')); } catch(e){} } function pick_r_tarsometatarsal_5(t){ try { toggle(names.indexOf(''r_tarsometatarsal_5'')); } catch(e){} } function pick_r_metatarsophalangeal_5(t){ try { toggle(names.indexOf(''r_metatarsophalangeal_5'')); } catch(e){} } function pick_r_tarsal_proximal_interphalangeal_5(t){ try { toggle(names.indexOf(''r_tarsal_proximal_interphalangeal_5'')); } catch(e){} } function pick_r_tarsal_distal_interphalangeal_5(t){ try { toggle(names.indexOf(''r_tarsal_distal_interphalangeal_5'')); } catch(e){} } function pick_vl5(t){ try { toggle(names.indexOf(''vl5'')); } catch(e){} } function pick_vl4(t){ try { toggle(names.indexOf(''vl4'')); } catch(e){} } function pick_vl3(t){ try { toggle(names.indexOf(''vl3'')); } catch(e){} } function pick_vl2(t){ try { toggle(names.indexOf(''vl2'')); } catch(e){} } function pick_vl1(t){ try { toggle(names.indexOf(''vl1'')); } catch(e){} } function pick_vt12(t){ try { toggle(names.indexOf(''vt12'')); } catch(e){} } function pick_vt11(t){ try { toggle(names.indexOf(''vt11'')); } catch(e){} } function pick_vt10(t){ try { toggle(names.indexOf(''vt10'')); } catch(e){} } function pick_vt9(t){ try { toggle(names.indexOf(''vt9'')); } catch(e){} } function pick_vt8(t){ try { toggle(names.indexOf(''vt8'')); } catch(e){} } function pick_vt7(t){ try { toggle(names.indexOf(''vt7'')); } catch(e){} } function pick_vt6(t){ try { toggle(names.indexOf(''vt6'')); } catch(e){} } function pick_vt5(t){ try { toggle(names.indexOf(''vt5'')); } catch(e){} } function pick_vt4(t){ try { toggle(names.indexOf(''vt4'')); } catch(e){} } function pick_vt3(t){ try { toggle(names.indexOf(''vt3'')); } catch(e){} } function pick_vt2(t){ try { toggle(names.indexOf(''vt2'')); } catch(e){} } function pick_vt1(t){ try { toggle(names.indexOf(''vt1'')); } catch(e){} } function pick_vc7(t){ try { toggle(names.indexOf(''vc7'')); } catch(e){} } function pick_vc6(t){ try { toggle(names.indexOf(''vc6'')); } catch(e){} } function pick_vc5(t){ try { toggle(names.indexOf(''vc5'')); } catch(e){} } function pick_vc4(t){ try { toggle(names.indexOf(''vc4'')); } catch(e){} } function pick_vc3(t){ try { toggle(names.indexOf(''vc3'')); } catch(e){} } function pick_vc2(t){ try { toggle(names.indexOf(''vc2'')); } catch(e){} } function pick_vc1(t){ try { toggle(names.indexOf(''vc1'')); } catch(e){} } function pick_skullbase(t){ try { toggle(names.indexOf(''skullbase'')); } catch(e){} } function pick_l_eyelid_joint(t){ try { toggle(names.indexOf(''l_eyelid_joint'')); } catch(e){} } function pick_r_eyelid_joint(t){ try { toggle(names.indexOf(''r_eyelid_joint'')); } catch(e){} } function pick_l_eyeball_joint(t){ try { toggle(names.indexOf(''l_eyeball_joint'')); } catch(e){} } function pick_r_eyeball_joint(t){ try { toggle(names.indexOf(''r_eyeball_joint'')); } catch(e){} } function pick_l_eyebrow_joint(t){ try { toggle(names.indexOf(''l_eyebrow_joint'')); } catch(e){} } function pick_r_eyebrow_joint(t){ try { toggle(names.indexOf(''r_eyebrow_joint'')); } catch(e){} } function pick_temporomandibular(t){ try { toggle(names.indexOf(''temporomandibular'')); } catch(e){} } function pick_l_sternoclavicular(t){ try { toggle(names.indexOf(''l_sternoclavicular'')); } catch(e){} } function pick_l_acromioclavicular(t){ try { toggle(names.indexOf(''l_acromioclavicular'')); } catch(e){} } function pick_l_shoulder(t){ try { toggle(names.indexOf(''l_shoulder'')); } catch(e){} } function pick_l_elbow(t){ try { toggle(names.indexOf(''l_elbow'')); } catch(e){} } function pick_l_radiocarpal(t){ try { toggle(names.indexOf(''l_radiocarpal'')); } catch(e){} } function pick_l_midcarpal_1(t){ try { toggle(names.indexOf(''l_midcarpal_1'')); } catch(e){} } function pick_l_carpometacarpal_1(t){ try { toggle(names.indexOf(''l_carpometacarpal_1'')); } catch(e){} } function pick_l_metacarpophalangeal_1(t){ try { toggle(names.indexOf(''l_metacarpophalangeal_1'')); } catch(e){} } function pick_l_carpal_interphalangeal_1(t){ try { toggle(names.indexOf(''l_carpal_interphalangeal_1'')); } catch(e){} } function pick_l_midcarpal_2(t){ try { toggle(names.indexOf(''l_midcarpal_2'')); } catch(e){} } function pick_l_carpometacarpal_2(t){ try { toggle(names.indexOf(''l_carpometacarpal_2'')); } catch(e){} } function pick_l_metacarpophalangeal_2(t){ try { toggle(names.indexOf(''l_metacarpophalangeal_2'')); } catch(e){} } function pick_l_carpal_proximal_interphalangeal_2(t){ try { toggle(names.indexOf(''l_carpal_proximal_interphalangeal_2'')); } catch(e){} } function pick_l_carpal_distal_interphalangeal_2(t){ try { toggle(names.indexOf(''l_carpal_distal_interphalangeal_2'')); } catch(e){} } function pick_l_midcarpal_3(t){ try { toggle(names.indexOf(''l_midcarpal_3'')); } catch(e){} } function pick_l_carpometacarpal_3(t){ try { toggle(names.indexOf(''l_carpometacarpal_3'')); } catch(e){} } function pick_l_metacarpophalangeal_3(t){ try { toggle(names.indexOf(''l_metacarpophalangeal_3'')); } catch(e){} } function pick_l_carpal_proximal_interphalangeal_3(t){ try { toggle(names.indexOf(''l_carpal_proximal_interphalangeal_3'')); } catch(e){} } function pick_l_carpal_distal_interphalangeal_3(t){ try { toggle(names.indexOf(''l_carpal_distal_interphalangeal_3'')); } catch(e){} } function pick_l_midcarpal_4_5(t){ try { toggle(names.indexOf(''l_midcarpal_4_5'')); } catch(e){} } function pick_l_carpometacarpal_4(t){ try { toggle(names.indexOf(''l_carpometacarpal_4'')); } catch(e){} } function pick_l_metacarpophalangeal_4(t){ try { toggle(names.indexOf(''l_metacarpophalangeal_4'')); } catch(e){} } function pick_l_carpal_proximal_interphalangeal_4(t){ try { toggle(names.indexOf(''l_carpal_proximal_interphalangeal_4'')); } catch(e){} } function pick_l_carpal_distal_interphalangeal_4(t){ try { toggle(names.indexOf(''l_carpal_distal_interphalangeal_4'')); } catch(e){} } function pick_l_carpometacarpal_5(t){ try { toggle(names.indexOf(''l_carpometacarpal_5'')); } catch(e){} } function pick_l_metacarpophalangeal_5(t){ try { toggle(names.indexOf(''l_metacarpophalangeal_5'')); } catch(e){} } function pick_l_carpal_proximal_interphalangeal_5(t){ try { toggle(names.indexOf(''l_carpal_proximal_interphalangeal_5'')); } catch(e){} } function pick_l_carpal_distal_interphalangeal_5(t){ try { toggle(names.indexOf(''l_carpal_distal_interphalangeal_5'')); } catch(e){} } function pick_r_sternoclavicular(t){ try { toggle(names.indexOf(''r_sternoclavicular'')); } catch(e){} } function pick_r_acromioclavicular(t){ try { toggle(names.indexOf(''r_acromioclavicular'')); } catch(e){} } function pick_r_shoulder(t){ try { toggle(names.indexOf(''r_shoulder'')); } catch(e){} } function pick_r_elbow(t){ try { toggle(names.indexOf(''r_elbow'')); } catch(e){} } function pick_r_radiocarpal(t){ try { toggle(names.indexOf(''r_radiocarpal'')); } catch(e){} } function pick_r_midcarpal_1(t){ try { toggle(names.indexOf(''r_midcarpal_1'')); } catch(e){} } function pick_r_carpometacarpal_1(t){ try { toggle(names.indexOf(''r_carpometacarpal_1'')); } catch(e){} } function pick_r_metacarpophalangeal_1(t){ try { toggle(names.indexOf(''r_metacarpophalangeal_1'')); } catch(e){} } function pick_r_carpal_interphalangeal_1(t){ try { toggle(names.indexOf(''r_carpal_interphalangeal_1'')); } catch(e){} } function pick_r_midcarpal_2(t){ try { toggle(names.indexOf(''r_midcarpal_2'')); } catch(e){} } function pick_r_carpometacarpal_2(t){ try { toggle(names.indexOf(''r_carpometacarpal_2'')); } catch(e){} } function pick_r_metacarpophalangeal_2(t){ try { toggle(names.indexOf(''r_metacarpophalangeal_2'')); } catch(e){} } function pick_r_carpal_proximal_interphalangeal_2(t){ try { toggle(names.indexOf(''r_carpal_proximal_interphalangeal_2'')); } catch(e){} } function pick_r_carpal_distal_interphalangeal_2(t){ try { toggle(names.indexOf(''r_carpal_distal_interphalangeal_2'')); } catch(e){} } function pick_r_midcarpal_3(t){ try { toggle(names.indexOf(''r_midcarpal_3'')); } catch(e){} } function pick_r_carpometacarpal_3(t){ try { toggle(names.indexOf(''r_carpometacarpal_3'')); } catch(e){} } function pick_r_metacarpophalangeal_3(t){ try { toggle(names.indexOf(''r_metacarpophalangeal_3'')); } catch(e){} } function pick_r_carpal_proximal_interphalangeal_3(t){ try { toggle(names.indexOf(''r_carpal_proximal_interphalangeal_3'')); } catch(e){} } function pick_r_carpal_distal_interphalangeal_3(t){ try { toggle(names.indexOf(''r_carpal_distal_interphalangeal_3'')); } catch(e){} } function pick_r_midcarpal_4_5(t){ try { toggle(names.indexOf(''r_midcarpal_4_5'')); } catch(e){} } function pick_r_carpometacarpal_4(t){ try { toggle(names.indexOf(''r_carpometacarpal_4'')); } catch(e){} } function pick_r_metacarpophalangeal_4(t){ try { toggle(names.indexOf(''r_metacarpophalangeal_4'')); } catch(e){} } function pick_r_carpal_proximal_interphalangeal_4(t){ try { toggle(names.indexOf(''r_carpal_proximal_interphalangeal_4'')); } catch(e){} } function pick_r_carpal_distal_interphalangeal_4(t){ try { toggle(names.indexOf(''r_carpal_distal_interphalangeal_4'')); } catch(e){} } function pick_r_carpometacarpal_5(t){ try { toggle(names.indexOf(''r_carpometacarpal_5'')); } catch(e){} } function pick_r_metacarpophalangeal_5(t){ try { toggle(names.indexOf(''r_metacarpophalangeal_5'')); } catch(e){} } function pick_r_carpal_proximal_interphalangeal_5(t){ try { toggle(names.indexOf(''r_carpal_proximal_interphalangeal_5'')); } catch(e){} } function pick_r_carpal_distal_interphalangeal_5(t){ try { toggle(names.indexOf(''r_carpal_distal_interphalangeal_5'')); } catch(e){} } ']);
end;

procedure InitHAnimGimbalJointController22Part249;
begin

MFNode3215 := TMFNode.CreateUndefined(Script3214, false, 'joints');
{ .Fd.Add }
MFNode3215.Add(HAnimJoint19);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint38);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint57);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint72);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint87);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint106);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint129);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint144);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint159);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint174);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint189);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint204);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint219);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint234);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint249);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint264);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint279);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint294);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint309);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint324);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint339);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint354);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint373);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint388);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint403);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint418);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint433);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint448);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint463);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint478);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint493);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint508);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint523);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint542);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint565);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint580);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint595);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint610);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint625);
end;

procedure InitHAnimGimbalJointController22Part250;
begin

{ .Fd.Add }
MFNode3215.Add(HAnimJoint640);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint655);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint670);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint685);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint700);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint715);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint730);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint745);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint760);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint775);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint790);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint809);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint824);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint839);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint854);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint869);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint884);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint899);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint914);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint929);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint944);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint959);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint974);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint989);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1004);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1019);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1034);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1049);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1064);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1079);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1094);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1109);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1124);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1139);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1154);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1169);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1192);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1207);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1222);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1237);
end;

procedure InitHAnimGimbalJointController22Part251;
begin

{ .Fd.Add }
MFNode3215.Add(HAnimJoint1252);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1267);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1282);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1297);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1336);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1351);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1366);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1381);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1396);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1411);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1426);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1441);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1456);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1471);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1486);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1501);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1528);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1543);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1558);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1573);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1588);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1603);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1618);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1633);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1648);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1663);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1678);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1693);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1708);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1723);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1738);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1757);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1772);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1787);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1802);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1817);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1832);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1847);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1862);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1877);
end;

procedure InitHAnimGimbalJointController22Part252;
begin

{ .Fd.Add }
MFNode3215.Add(HAnimJoint1892);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1907);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1922);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1937);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1964);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1979);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint1994);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint2009);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint2024);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint2039);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint2054);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint2069);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint2084);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint2099);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint2114);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint2129);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint2144);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint2159);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint2174);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint2193);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint2208);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint2223);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint2238);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint2253);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint2268);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint2283);
{ .Fd.Add }
MFNode3215.Add(HAnimJoint2298);
{ .Fd.AddCustomField }
Script3214.AddCustomField(MFNode3215);
MFNode3362 := TMFNode.CreateUndefined(Script3214, false, 'lmats');
{ .Fd.Add }
MFNode3362.Add(Material30);
{ .Fd.Add }
MFNode3362.Add(Material49);
{ .Fd.Add }
MFNode3362.Add(Material68);
{ .Fd.Add }
MFNode3362.Add(Material83);
{ .Fd.Add }
MFNode3362.Add(Material98);
{ .Fd.Add }
MFNode3362.Add(Material117);
{ .Fd.Add }
MFNode3362.Add(Material140);
{ .Fd.Add }
MFNode3362.Add(Material155);
{ .Fd.Add }
MFNode3362.Add(Material170);
{ .Fd.Add }
MFNode3362.Add(Material185);
{ .Fd.Add }
MFNode3362.Add(Material200);
end;

procedure InitHAnimGimbalJointController22Part253;
begin

{ .Fd.Add }
MFNode3362.Add(Material215);
{ .Fd.Add }
MFNode3362.Add(Material230);
{ .Fd.Add }
MFNode3362.Add(Material245);
{ .Fd.Add }
MFNode3362.Add(Material260);
{ .Fd.Add }
MFNode3362.Add(Material275);
{ .Fd.Add }
MFNode3362.Add(Material290);
{ .Fd.Add }
MFNode3362.Add(Material305);
{ .Fd.Add }
MFNode3362.Add(Material320);
{ .Fd.Add }
MFNode3362.Add(Material335);
{ .Fd.Add }
MFNode3362.Add(Material350);
{ .Fd.Add }
MFNode3362.Add(Material365);
{ .Fd.Add }
MFNode3362.Add(Material384);
{ .Fd.Add }
MFNode3362.Add(Material399);
{ .Fd.Add }
MFNode3362.Add(Material414);
{ .Fd.Add }
MFNode3362.Add(Material429);
{ .Fd.Add }
MFNode3362.Add(Material444);
{ .Fd.Add }
MFNode3362.Add(Material459);
{ .Fd.Add }
MFNode3362.Add(Material474);
{ .Fd.Add }
MFNode3362.Add(Material489);
{ .Fd.Add }
MFNode3362.Add(Material504);
{ .Fd.Add }
MFNode3362.Add(Material519);
{ .Fd.Add }
MFNode3362.Add(Material534);
{ .Fd.Add }
MFNode3362.Add(Material553);
{ .Fd.Add }
MFNode3362.Add(Material576);
{ .Fd.Add }
MFNode3362.Add(Material591);
{ .Fd.Add }
MFNode3362.Add(Material606);
{ .Fd.Add }
MFNode3362.Add(Material621);
{ .Fd.Add }
MFNode3362.Add(Material636);
{ .Fd.Add }
MFNode3362.Add(Material651);
{ .Fd.Add }
MFNode3362.Add(Material666);
{ .Fd.Add }
MFNode3362.Add(Material681);
{ .Fd.Add }
MFNode3362.Add(Material696);
{ .Fd.Add }
MFNode3362.Add(Material711);
{ .Fd.Add }
MFNode3362.Add(Material726);
{ .Fd.Add }
MFNode3362.Add(Material741);
{ .Fd.Add }
MFNode3362.Add(Material756);
{ .Fd.Add }
MFNode3362.Add(Material771);
{ .Fd.Add }
MFNode3362.Add(Material786);
{ .Fd.Add }
MFNode3362.Add(Material801);
{ .Fd.Add }
MFNode3362.Add(Material820);
end;

procedure InitHAnimGimbalJointController22Part254;
begin

{ .Fd.Add }
MFNode3362.Add(Material835);
{ .Fd.Add }
MFNode3362.Add(Material850);
{ .Fd.Add }
MFNode3362.Add(Material865);
{ .Fd.Add }
MFNode3362.Add(Material880);
{ .Fd.Add }
MFNode3362.Add(Material895);
{ .Fd.Add }
MFNode3362.Add(Material910);
{ .Fd.Add }
MFNode3362.Add(Material925);
{ .Fd.Add }
MFNode3362.Add(Material940);
{ .Fd.Add }
MFNode3362.Add(Material955);
{ .Fd.Add }
MFNode3362.Add(Material970);
{ .Fd.Add }
MFNode3362.Add(Material985);
{ .Fd.Add }
MFNode3362.Add(Material1000);
{ .Fd.Add }
MFNode3362.Add(Material1015);
{ .Fd.Add }
MFNode3362.Add(Material1030);
{ .Fd.Add }
MFNode3362.Add(Material1045);
{ .Fd.Add }
MFNode3362.Add(Material1060);
{ .Fd.Add }
MFNode3362.Add(Material1075);
{ .Fd.Add }
MFNode3362.Add(Material1090);
{ .Fd.Add }
MFNode3362.Add(Material1105);
{ .Fd.Add }
MFNode3362.Add(Material1120);
{ .Fd.Add }
MFNode3362.Add(Material1135);
{ .Fd.Add }
MFNode3362.Add(Material1150);
{ .Fd.Add }
MFNode3362.Add(Material1165);
{ .Fd.Add }
MFNode3362.Add(Material1180);
{ .Fd.Add }
MFNode3362.Add(Material1203);
{ .Fd.Add }
MFNode3362.Add(Material1218);
{ .Fd.Add }
MFNode3362.Add(Material1233);
{ .Fd.Add }
MFNode3362.Add(Material1248);
{ .Fd.Add }
MFNode3362.Add(Material1263);
{ .Fd.Add }
MFNode3362.Add(Material1278);
{ .Fd.Add }
MFNode3362.Add(Material1293);
{ .Fd.Add }
MFNode3362.Add(Material1308);
{ .Fd.Add }
MFNode3362.Add(Material1347);
{ .Fd.Add }
MFNode3362.Add(Material1362);
{ .Fd.Add }
MFNode3362.Add(Material1377);
{ .Fd.Add }
MFNode3362.Add(Material1392);
{ .Fd.Add }
MFNode3362.Add(Material1407);
{ .Fd.Add }
MFNode3362.Add(Material1422);
{ .Fd.Add }
MFNode3362.Add(Material1437);
{ .Fd.Add }
MFNode3362.Add(Material1452);
end;

procedure InitHAnimGimbalJointController22Part255;
begin

{ .Fd.Add }
MFNode3362.Add(Material1467);
{ .Fd.Add }
MFNode3362.Add(Material1482);
{ .Fd.Add }
MFNode3362.Add(Material1497);
{ .Fd.Add }
MFNode3362.Add(Material1512);
{ .Fd.Add }
MFNode3362.Add(Material1539);
{ .Fd.Add }
MFNode3362.Add(Material1554);
{ .Fd.Add }
MFNode3362.Add(Material1569);
{ .Fd.Add }
MFNode3362.Add(Material1584);
{ .Fd.Add }
MFNode3362.Add(Material1599);
{ .Fd.Add }
MFNode3362.Add(Material1614);
{ .Fd.Add }
MFNode3362.Add(Material1629);
{ .Fd.Add }
MFNode3362.Add(Material1644);
{ .Fd.Add }
MFNode3362.Add(Material1659);
{ .Fd.Add }
MFNode3362.Add(Material1674);
{ .Fd.Add }
MFNode3362.Add(Material1689);
{ .Fd.Add }
MFNode3362.Add(Material1704);
{ .Fd.Add }
MFNode3362.Add(Material1719);
{ .Fd.Add }
MFNode3362.Add(Material1734);
{ .Fd.Add }
MFNode3362.Add(Material1749);
{ .Fd.Add }
MFNode3362.Add(Material1768);
{ .Fd.Add }
MFNode3362.Add(Material1783);
{ .Fd.Add }
MFNode3362.Add(Material1798);
{ .Fd.Add }
MFNode3362.Add(Material1813);
{ .Fd.Add }
MFNode3362.Add(Material1828);
{ .Fd.Add }
MFNode3362.Add(Material1843);
{ .Fd.Add }
MFNode3362.Add(Material1858);
{ .Fd.Add }
MFNode3362.Add(Material1873);
{ .Fd.Add }
MFNode3362.Add(Material1888);
{ .Fd.Add }
MFNode3362.Add(Material1903);
{ .Fd.Add }
MFNode3362.Add(Material1918);
{ .Fd.Add }
MFNode3362.Add(Material1933);
{ .Fd.Add }
MFNode3362.Add(Material1948);
{ .Fd.Add }
MFNode3362.Add(Material1975);
{ .Fd.Add }
MFNode3362.Add(Material1990);
{ .Fd.Add }
MFNode3362.Add(Material2005);
{ .Fd.Add }
MFNode3362.Add(Material2020);
{ .Fd.Add }
MFNode3362.Add(Material2035);
{ .Fd.Add }
MFNode3362.Add(Material2050);
{ .Fd.Add }
MFNode3362.Add(Material2065);
{ .Fd.Add }
MFNode3362.Add(Material2080);
end;

procedure InitHAnimGimbalJointController22Part256;
begin

{ .Fd.Add }
MFNode3362.Add(Material2095);
{ .Fd.Add }
MFNode3362.Add(Material2110);
{ .Fd.Add }
MFNode3362.Add(Material2125);
{ .Fd.Add }
MFNode3362.Add(Material2140);
{ .Fd.Add }
MFNode3362.Add(Material2155);
{ .Fd.Add }
MFNode3362.Add(Material2170);
{ .Fd.Add }
MFNode3362.Add(Material2185);
{ .Fd.Add }
MFNode3362.Add(Material2204);
{ .Fd.Add }
MFNode3362.Add(Material2219);
{ .Fd.Add }
MFNode3362.Add(Material2234);
{ .Fd.Add }
MFNode3362.Add(Material2249);
{ .Fd.Add }
MFNode3362.Add(Material2264);
{ .Fd.Add }
MFNode3362.Add(Material2279);
{ .Fd.Add }
MFNode3362.Add(Material2294);
{ .Fd.Add }
MFNode3362.Add(Material2309);
{ .Fd.AddCustomField }
Script3214.AddCustomField(MFNode3362);
MFNode3509 := TMFNode.CreateUndefined(Script3214, false, 'mats');
{ .Fd.Add }
MFNode3509.Add(Material26);
{ .Fd.Add }
MFNode3509.Add(Material45);
{ .Fd.Add }
MFNode3509.Add(Material64);
{ .Fd.Add }
MFNode3509.Add(Material79);
{ .Fd.Add }
MFNode3509.Add(Material94);
{ .Fd.Add }
MFNode3509.Add(Material113);
{ .Fd.Add }
MFNode3509.Add(Material136);
{ .Fd.Add }
MFNode3509.Add(Material151);
{ .Fd.Add }
MFNode3509.Add(Material166);
{ .Fd.Add }
MFNode3509.Add(Material181);
{ .Fd.Add }
MFNode3509.Add(Material196);
{ .Fd.Add }
MFNode3509.Add(Material211);
{ .Fd.Add }
MFNode3509.Add(Material226);
{ .Fd.Add }
MFNode3509.Add(Material241);
{ .Fd.Add }
MFNode3509.Add(Material256);
{ .Fd.Add }
MFNode3509.Add(Material271);
{ .Fd.Add }
MFNode3509.Add(Material286);
{ .Fd.Add }
MFNode3509.Add(Material301);
{ .Fd.Add }
MFNode3509.Add(Material316);
{ .Fd.Add }
MFNode3509.Add(Material331);
{ .Fd.Add }
MFNode3509.Add(Material346);
{ .Fd.Add }
MFNode3509.Add(Material361);
{ .Fd.Add }
MFNode3509.Add(Material380);
end;

procedure InitHAnimGimbalJointController22Part257;
begin

{ .Fd.Add }
MFNode3509.Add(Material395);
{ .Fd.Add }
MFNode3509.Add(Material410);
{ .Fd.Add }
MFNode3509.Add(Material425);
{ .Fd.Add }
MFNode3509.Add(Material440);
{ .Fd.Add }
MFNode3509.Add(Material455);
{ .Fd.Add }
MFNode3509.Add(Material470);
{ .Fd.Add }
MFNode3509.Add(Material485);
{ .Fd.Add }
MFNode3509.Add(Material500);
{ .Fd.Add }
MFNode3509.Add(Material515);
{ .Fd.Add }
MFNode3509.Add(Material530);
{ .Fd.Add }
MFNode3509.Add(Material549);
{ .Fd.Add }
MFNode3509.Add(Material572);
{ .Fd.Add }
MFNode3509.Add(Material587);
{ .Fd.Add }
MFNode3509.Add(Material602);
{ .Fd.Add }
MFNode3509.Add(Material617);
{ .Fd.Add }
MFNode3509.Add(Material632);
{ .Fd.Add }
MFNode3509.Add(Material647);
{ .Fd.Add }
MFNode3509.Add(Material662);
{ .Fd.Add }
MFNode3509.Add(Material677);
{ .Fd.Add }
MFNode3509.Add(Material692);
{ .Fd.Add }
MFNode3509.Add(Material707);
{ .Fd.Add }
MFNode3509.Add(Material722);
{ .Fd.Add }
MFNode3509.Add(Material737);
{ .Fd.Add }
MFNode3509.Add(Material752);
{ .Fd.Add }
MFNode3509.Add(Material767);
{ .Fd.Add }
MFNode3509.Add(Material782);
{ .Fd.Add }
MFNode3509.Add(Material797);
{ .Fd.Add }
MFNode3509.Add(Material816);
{ .Fd.Add }
MFNode3509.Add(Material831);
{ .Fd.Add }
MFNode3509.Add(Material846);
{ .Fd.Add }
MFNode3509.Add(Material861);
{ .Fd.Add }
MFNode3509.Add(Material876);
{ .Fd.Add }
MFNode3509.Add(Material891);
{ .Fd.Add }
MFNode3509.Add(Material906);
{ .Fd.Add }
MFNode3509.Add(Material921);
{ .Fd.Add }
MFNode3509.Add(Material936);
{ .Fd.Add }
MFNode3509.Add(Material951);
{ .Fd.Add }
MFNode3509.Add(Material966);
{ .Fd.Add }
MFNode3509.Add(Material981);
{ .Fd.Add }
MFNode3509.Add(Material996);
end;

procedure InitHAnimGimbalJointController22Part258;
begin

{ .Fd.Add }
MFNode3509.Add(Material1011);
{ .Fd.Add }
MFNode3509.Add(Material1026);
{ .Fd.Add }
MFNode3509.Add(Material1041);
{ .Fd.Add }
MFNode3509.Add(Material1056);
{ .Fd.Add }
MFNode3509.Add(Material1071);
{ .Fd.Add }
MFNode3509.Add(Material1086);
{ .Fd.Add }
MFNode3509.Add(Material1101);
{ .Fd.Add }
MFNode3509.Add(Material1116);
{ .Fd.Add }
MFNode3509.Add(Material1131);
{ .Fd.Add }
MFNode3509.Add(Material1146);
{ .Fd.Add }
MFNode3509.Add(Material1161);
{ .Fd.Add }
MFNode3509.Add(Material1176);
{ .Fd.Add }
MFNode3509.Add(Material1199);
{ .Fd.Add }
MFNode3509.Add(Material1214);
{ .Fd.Add }
MFNode3509.Add(Material1229);
{ .Fd.Add }
MFNode3509.Add(Material1244);
{ .Fd.Add }
MFNode3509.Add(Material1259);
{ .Fd.Add }
MFNode3509.Add(Material1274);
{ .Fd.Add }
MFNode3509.Add(Material1289);
{ .Fd.Add }
MFNode3509.Add(Material1304);
{ .Fd.Add }
MFNode3509.Add(Material1343);
{ .Fd.Add }
MFNode3509.Add(Material1358);
{ .Fd.Add }
MFNode3509.Add(Material1373);
{ .Fd.Add }
MFNode3509.Add(Material1388);
{ .Fd.Add }
MFNode3509.Add(Material1403);
{ .Fd.Add }
MFNode3509.Add(Material1418);
{ .Fd.Add }
MFNode3509.Add(Material1433);
{ .Fd.Add }
MFNode3509.Add(Material1448);
{ .Fd.Add }
MFNode3509.Add(Material1463);
{ .Fd.Add }
MFNode3509.Add(Material1478);
{ .Fd.Add }
MFNode3509.Add(Material1493);
{ .Fd.Add }
MFNode3509.Add(Material1508);
{ .Fd.Add }
MFNode3509.Add(Material1535);
{ .Fd.Add }
MFNode3509.Add(Material1550);
{ .Fd.Add }
MFNode3509.Add(Material1565);
{ .Fd.Add }
MFNode3509.Add(Material1580);
{ .Fd.Add }
MFNode3509.Add(Material1595);
{ .Fd.Add }
MFNode3509.Add(Material1610);
{ .Fd.Add }
MFNode3509.Add(Material1625);
{ .Fd.Add }
MFNode3509.Add(Material1640);
end;

procedure InitHAnimGimbalJointController22Part259;
begin

{ .Fd.Add }
MFNode3509.Add(Material1655);
{ .Fd.Add }
MFNode3509.Add(Material1670);
{ .Fd.Add }
MFNode3509.Add(Material1685);
{ .Fd.Add }
MFNode3509.Add(Material1700);
{ .Fd.Add }
MFNode3509.Add(Material1715);
{ .Fd.Add }
MFNode3509.Add(Material1730);
{ .Fd.Add }
MFNode3509.Add(Material1745);
{ .Fd.Add }
MFNode3509.Add(Material1764);
{ .Fd.Add }
MFNode3509.Add(Material1779);
{ .Fd.Add }
MFNode3509.Add(Material1794);
{ .Fd.Add }
MFNode3509.Add(Material1809);
{ .Fd.Add }
MFNode3509.Add(Material1824);
{ .Fd.Add }
MFNode3509.Add(Material1839);
{ .Fd.Add }
MFNode3509.Add(Material1854);
{ .Fd.Add }
MFNode3509.Add(Material1869);
{ .Fd.Add }
MFNode3509.Add(Material1884);
{ .Fd.Add }
MFNode3509.Add(Material1899);
{ .Fd.Add }
MFNode3509.Add(Material1914);
{ .Fd.Add }
MFNode3509.Add(Material1929);
{ .Fd.Add }
MFNode3509.Add(Material1944);
{ .Fd.Add }
MFNode3509.Add(Material1971);
{ .Fd.Add }
MFNode3509.Add(Material1986);
{ .Fd.Add }
MFNode3509.Add(Material2001);
{ .Fd.Add }
MFNode3509.Add(Material2016);
{ .Fd.Add }
MFNode3509.Add(Material2031);
{ .Fd.Add }
MFNode3509.Add(Material2046);
{ .Fd.Add }
MFNode3509.Add(Material2061);
{ .Fd.Add }
MFNode3509.Add(Material2076);
{ .Fd.Add }
MFNode3509.Add(Material2091);
{ .Fd.Add }
MFNode3509.Add(Material2106);
{ .Fd.Add }
MFNode3509.Add(Material2121);
{ .Fd.Add }
MFNode3509.Add(Material2136);
{ .Fd.Add }
MFNode3509.Add(Material2151);
{ .Fd.Add }
MFNode3509.Add(Material2166);
{ .Fd.Add }
MFNode3509.Add(Material2181);
{ .Fd.Add }
MFNode3509.Add(Material2200);
{ .Fd.Add }
MFNode3509.Add(Material2215);
{ .Fd.Add }
MFNode3509.Add(Material2230);
{ .Fd.Add }
MFNode3509.Add(Material2245);
{ .Fd.Add }
MFNode3509.Add(Material2260);
end;

procedure InitHAnimGimbalJointController22Part260;
begin

{ .Fd.Add }
MFNode3509.Add(Material2275);
{ .Fd.Add }
MFNode3509.Add(Material2290);
{ .Fd.Add }
MFNode3509.Add(Material2305);
{ .Fd.AddCustomField }
Script3214.AddCustomField(MFNode3509);
MFNode3656 := TMFNode.CreateUndefined(Script3214, false, 'sensors');
{ .Fd.Add }
MFNode3656.Add(CylinderSensor2609);
{ .Fd.Add }
MFNode3656.Add(CylinderSensor2617);
{ .Fd.Add }
MFNode3656.Add(CylinderSensor2625);
{ .Fd.AddCustomField }
Script3214.AddCustomField(MFNode3656);
MFNode3660 := TMFNode.CreateUndefined(Script3214, false, 'ringXf');
{ .Fd.Add }
MFNode3660.Add(Transform2610);
{ .Fd.Add }
MFNode3660.Add(Transform2618);
{ .Fd.Add }
MFNode3660.Add(Transform2626);
{ .Fd.AddCustomField }
Script3214.AddCustomField(MFNode3660);
MFNode3664 := TMFNode.CreateUndefined(Script3214, false, 'ringMat');
{ .Fd.Add }
MFNode3664.Add(Material2614);
{ .Fd.Add }
MFNode3664.Add(Material2622);
{ .Fd.Add }
MFNode3664.Add(Material2630);
{ .Fd.AddCustomField }
Script3214.AddCustomField(MFNode3664);
SFNode3668 := TSFNode.CreateUndefined(Script3214, false, 'label');
{ .Fd.Value }
SFNode3668.Value := Text2655;
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFNode3668);
SFNode3670 := TSFNode.CreateUndefined(Script3214, false, 'humanoid');
{ .Fd.Value }
SFNode3670.Value := HAnimHumanoid18;
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFNode3670);
SFNode3672 := TSFNode.CreateUndefined(Script3214, false, 'ioText');
{ .Fd.Value }
SFNode3672.Value := Text2792;
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFNode3672);
MFNode3674 := TMFNode.CreateUndefined(Script3214, false, 'jxf');
{ .Fd.Add }
MFNode3674.Add(Transform22);
{ .Fd.Add }
MFNode3674.Add(Transform41);
{ .Fd.Add }
MFNode3674.Add(Transform60);
{ .Fd.Add }
MFNode3674.Add(Transform75);
{ .Fd.Add }
MFNode3674.Add(Transform90);
{ .Fd.Add }
MFNode3674.Add(Transform109);
{ .Fd.Add }
MFNode3674.Add(Transform132);
{ .Fd.Add }
MFNode3674.Add(Transform147);
{ .Fd.Add }
MFNode3674.Add(Transform162);
{ .Fd.Add }
MFNode3674.Add(Transform178);
{ .Fd.Add }
MFNode3674.Add(Transform192);
end;

procedure InitHAnimGimbalJointController22Part261;
begin

{ .Fd.Add }
MFNode3674.Add(Transform207);
{ .Fd.Add }
MFNode3674.Add(Transform222);
{ .Fd.Add }
MFNode3674.Add(Transform237);
{ .Fd.Add }
MFNode3674.Add(Transform253);
{ .Fd.Add }
MFNode3674.Add(Transform267);
{ .Fd.Add }
MFNode3674.Add(Transform282);
{ .Fd.Add }
MFNode3674.Add(Transform297);
{ .Fd.Add }
MFNode3674.Add(Transform312);
{ .Fd.Add }
MFNode3674.Add(Transform328);
{ .Fd.Add }
MFNode3674.Add(Transform342);
{ .Fd.Add }
MFNode3674.Add(Transform357);
{ .Fd.Add }
MFNode3674.Add(Transform376);
{ .Fd.Add }
MFNode3674.Add(Transform391);
{ .Fd.Add }
MFNode3674.Add(Transform406);
{ .Fd.Add }
MFNode3674.Add(Transform422);
{ .Fd.Add }
MFNode3674.Add(Transform436);
{ .Fd.Add }
MFNode3674.Add(Transform451);
{ .Fd.Add }
MFNode3674.Add(Transform466);
{ .Fd.Add }
MFNode3674.Add(Transform482);
{ .Fd.Add }
MFNode3674.Add(Transform496);
{ .Fd.Add }
MFNode3674.Add(Transform511);
{ .Fd.Add }
MFNode3674.Add(Transform526);
{ .Fd.Add }
MFNode3674.Add(Transform545);
{ .Fd.Add }
MFNode3674.Add(Transform568);
{ .Fd.Add }
MFNode3674.Add(Transform583);
{ .Fd.Add }
MFNode3674.Add(Transform598);
{ .Fd.Add }
MFNode3674.Add(Transform614);
{ .Fd.Add }
MFNode3674.Add(Transform628);
{ .Fd.Add }
MFNode3674.Add(Transform643);
{ .Fd.Add }
MFNode3674.Add(Transform658);
{ .Fd.Add }
MFNode3674.Add(Transform673);
{ .Fd.Add }
MFNode3674.Add(Transform689);
{ .Fd.Add }
MFNode3674.Add(Transform703);
{ .Fd.Add }
MFNode3674.Add(Transform718);
{ .Fd.Add }
MFNode3674.Add(Transform733);
{ .Fd.Add }
MFNode3674.Add(Transform748);
{ .Fd.Add }
MFNode3674.Add(Transform764);
{ .Fd.Add }
MFNode3674.Add(Transform778);
{ .Fd.Add }
MFNode3674.Add(Transform793);
{ .Fd.Add }
MFNode3674.Add(Transform812);
end;

procedure InitHAnimGimbalJointController22Part262;
begin

{ .Fd.Add }
MFNode3674.Add(Transform827);
{ .Fd.Add }
MFNode3674.Add(Transform842);
{ .Fd.Add }
MFNode3674.Add(Transform858);
{ .Fd.Add }
MFNode3674.Add(Transform872);
{ .Fd.Add }
MFNode3674.Add(Transform887);
{ .Fd.Add }
MFNode3674.Add(Transform902);
{ .Fd.Add }
MFNode3674.Add(Transform918);
{ .Fd.Add }
MFNode3674.Add(Transform932);
{ .Fd.Add }
MFNode3674.Add(Transform947);
{ .Fd.Add }
MFNode3674.Add(Transform962);
{ .Fd.Add }
MFNode3674.Add(Transform977);
{ .Fd.Add }
MFNode3674.Add(Transform992);
{ .Fd.Add }
MFNode3674.Add(Transform1007);
{ .Fd.Add }
MFNode3674.Add(Transform1022);
{ .Fd.Add }
MFNode3674.Add(Transform1037);
{ .Fd.Add }
MFNode3674.Add(Transform1052);
{ .Fd.Add }
MFNode3674.Add(Transform1067);
{ .Fd.Add }
MFNode3674.Add(Transform1082);
{ .Fd.Add }
MFNode3674.Add(Transform1097);
{ .Fd.Add }
MFNode3674.Add(Transform1112);
{ .Fd.Add }
MFNode3674.Add(Transform1127);
{ .Fd.Add }
MFNode3674.Add(Transform1142);
{ .Fd.Add }
MFNode3674.Add(Transform1157);
{ .Fd.Add }
MFNode3674.Add(Transform1172);
{ .Fd.Add }
MFNode3674.Add(Transform1195);
{ .Fd.Add }
MFNode3674.Add(Transform1210);
{ .Fd.Add }
MFNode3674.Add(Transform1225);
{ .Fd.Add }
MFNode3674.Add(Transform1240);
{ .Fd.Add }
MFNode3674.Add(Transform1255);
{ .Fd.Add }
MFNode3674.Add(Transform1270);
{ .Fd.Add }
MFNode3674.Add(Transform1285);
{ .Fd.Add }
MFNode3674.Add(Transform1300);
{ .Fd.Add }
MFNode3674.Add(Transform1340);
{ .Fd.Add }
MFNode3674.Add(Transform1355);
{ .Fd.Add }
MFNode3674.Add(Transform1370);
{ .Fd.Add }
MFNode3674.Add(Transform1385);
{ .Fd.Add }
MFNode3674.Add(Transform1400);
{ .Fd.Add }
MFNode3674.Add(Transform1415);
{ .Fd.Add }
MFNode3674.Add(Transform1430);
{ .Fd.Add }
MFNode3674.Add(Transform1444);
end;

procedure InitHAnimGimbalJointController22Part263;
begin

{ .Fd.Add }
MFNode3674.Add(Transform1459);
{ .Fd.Add }
MFNode3674.Add(Transform1474);
{ .Fd.Add }
MFNode3674.Add(Transform1489);
{ .Fd.Add }
MFNode3674.Add(Transform1504);
{ .Fd.Add }
MFNode3674.Add(Transform1531);
{ .Fd.Add }
MFNode3674.Add(Transform1546);
{ .Fd.Add }
MFNode3674.Add(Transform1561);
{ .Fd.Add }
MFNode3674.Add(Transform1577);
{ .Fd.Add }
MFNode3674.Add(Transform1591);
{ .Fd.Add }
MFNode3674.Add(Transform1606);
{ .Fd.Add }
MFNode3674.Add(Transform1621);
{ .Fd.Add }
MFNode3674.Add(Transform1636);
{ .Fd.Add }
MFNode3674.Add(Transform1652);
{ .Fd.Add }
MFNode3674.Add(Transform1666);
{ .Fd.Add }
MFNode3674.Add(Transform1681);
{ .Fd.Add }
MFNode3674.Add(Transform1696);
{ .Fd.Add }
MFNode3674.Add(Transform1711);
{ .Fd.Add }
MFNode3674.Add(Transform1727);
{ .Fd.Add }
MFNode3674.Add(Transform1741);
{ .Fd.Add }
MFNode3674.Add(Transform1760);
{ .Fd.Add }
MFNode3674.Add(Transform1775);
{ .Fd.Add }
MFNode3674.Add(Transform1790);
{ .Fd.Add }
MFNode3674.Add(Transform1806);
{ .Fd.Add }
MFNode3674.Add(Transform1820);
{ .Fd.Add }
MFNode3674.Add(Transform1835);
{ .Fd.Add }
MFNode3674.Add(Transform1850);
{ .Fd.Add }
MFNode3674.Add(Transform1866);
{ .Fd.Add }
MFNode3674.Add(Transform1880);
{ .Fd.Add }
MFNode3674.Add(Transform1895);
{ .Fd.Add }
MFNode3674.Add(Transform1910);
{ .Fd.Add }
MFNode3674.Add(Transform1925);
{ .Fd.Add }
MFNode3674.Add(Transform1940);
{ .Fd.Add }
MFNode3674.Add(Transform1967);
{ .Fd.Add }
MFNode3674.Add(Transform1982);
{ .Fd.Add }
MFNode3674.Add(Transform1997);
{ .Fd.Add }
MFNode3674.Add(Transform2013);
{ .Fd.Add }
MFNode3674.Add(Transform2027);
{ .Fd.Add }
MFNode3674.Add(Transform2042);
{ .Fd.Add }
MFNode3674.Add(Transform2057);
{ .Fd.Add }
MFNode3674.Add(Transform2072);
end;

procedure InitHAnimGimbalJointController22Part264;
begin

{ .Fd.Add }
MFNode3674.Add(Transform2088);
{ .Fd.Add }
MFNode3674.Add(Transform2102);
{ .Fd.Add }
MFNode3674.Add(Transform2117);
{ .Fd.Add }
MFNode3674.Add(Transform2132);
{ .Fd.Add }
MFNode3674.Add(Transform2147);
{ .Fd.Add }
MFNode3674.Add(Transform2163);
{ .Fd.Add }
MFNode3674.Add(Transform2177);
{ .Fd.Add }
MFNode3674.Add(Transform2196);
{ .Fd.Add }
MFNode3674.Add(Transform2211);
{ .Fd.Add }
MFNode3674.Add(Transform2226);
{ .Fd.Add }
MFNode3674.Add(Transform2242);
{ .Fd.Add }
MFNode3674.Add(Transform2256);
{ .Fd.Add }
MFNode3674.Add(Transform2271);
{ .Fd.Add }
MFNode3674.Add(Transform2286);
{ .Fd.Add }
MFNode3674.Add(Transform2302);
{ .Fd.AddCustomField }
Script3214.AddCustomField(MFNode3674);
MFNode3821 := TMFNode.CreateUndefined(Script3214, false, 'lcoords');
{ .Fd.Add }
MFNode3821.Add(Coordinate33);
{ .Fd.Add }
MFNode3821.Add(Coordinate37);
{ .Fd.Add }
MFNode3821.Add(Coordinate52);
{ .Fd.Add }
MFNode3821.Add(Coordinate56);
{ .Fd.Add }
MFNode3821.Add(Coordinate71);
{ .Fd.Add }
MFNode3821.Add(Coordinate86);
{ .Fd.Add }
MFNode3821.Add(Coordinate101);
{ .Fd.Add }
MFNode3821.Add(Coordinate105);
{ .Fd.Add }
MFNode3821.Add(Coordinate120);
{ .Fd.Add }
MFNode3821.Add(Coordinate124);
{ .Fd.Add }
MFNode3821.Add(Coordinate128);
{ .Fd.Add }
MFNode3821.Add(Coordinate143);
{ .Fd.Add }
MFNode3821.Add(Coordinate158);
{ .Fd.Add }
MFNode3821.Add(Coordinate173);
{ .Fd.Add }
MFNode3821.Add(Coordinate188);
{ .Fd.Add }
MFNode3821.Add(Coordinate203);
{ .Fd.Add }
MFNode3821.Add(Coordinate218);
{ .Fd.Add }
MFNode3821.Add(Coordinate233);
{ .Fd.Add }
MFNode3821.Add(Coordinate248);
{ .Fd.Add }
MFNode3821.Add(Coordinate263);
{ .Fd.Add }
MFNode3821.Add(Coordinate278);
{ .Fd.Add }
MFNode3821.Add(Coordinate293);
{ .Fd.Add }
MFNode3821.Add(Coordinate308);
end;

procedure InitHAnimGimbalJointController22Part265;
begin

{ .Fd.Add }
MFNode3821.Add(Coordinate323);
{ .Fd.Add }
MFNode3821.Add(Coordinate338);
{ .Fd.Add }
MFNode3821.Add(Coordinate353);
{ .Fd.Add }
MFNode3821.Add(Coordinate368);
{ .Fd.Add }
MFNode3821.Add(Coordinate372);
{ .Fd.Add }
MFNode3821.Add(Coordinate387);
{ .Fd.Add }
MFNode3821.Add(Coordinate402);
{ .Fd.Add }
MFNode3821.Add(Coordinate417);
{ .Fd.Add }
MFNode3821.Add(Coordinate432);
{ .Fd.Add }
MFNode3821.Add(Coordinate447);
{ .Fd.Add }
MFNode3821.Add(Coordinate462);
{ .Fd.Add }
MFNode3821.Add(Coordinate477);
{ .Fd.Add }
MFNode3821.Add(Coordinate492);
{ .Fd.Add }
MFNode3821.Add(Coordinate507);
{ .Fd.Add }
MFNode3821.Add(Coordinate522);
{ .Fd.Add }
MFNode3821.Add(Coordinate537);
{ .Fd.Add }
MFNode3821.Add(Coordinate541);
{ .Fd.Add }
MFNode3821.Add(Coordinate556);
{ .Fd.Add }
MFNode3821.Add(Coordinate560);
{ .Fd.Add }
MFNode3821.Add(Coordinate564);
{ .Fd.Add }
MFNode3821.Add(Coordinate579);
{ .Fd.Add }
MFNode3821.Add(Coordinate594);
{ .Fd.Add }
MFNode3821.Add(Coordinate609);
{ .Fd.Add }
MFNode3821.Add(Coordinate624);
{ .Fd.Add }
MFNode3821.Add(Coordinate639);
{ .Fd.Add }
MFNode3821.Add(Coordinate654);
{ .Fd.Add }
MFNode3821.Add(Coordinate669);
{ .Fd.Add }
MFNode3821.Add(Coordinate684);
{ .Fd.Add }
MFNode3821.Add(Coordinate699);
{ .Fd.Add }
MFNode3821.Add(Coordinate714);
{ .Fd.Add }
MFNode3821.Add(Coordinate729);
{ .Fd.Add }
MFNode3821.Add(Coordinate744);
{ .Fd.Add }
MFNode3821.Add(Coordinate759);
{ .Fd.Add }
MFNode3821.Add(Coordinate774);
{ .Fd.Add }
MFNode3821.Add(Coordinate789);
{ .Fd.Add }
MFNode3821.Add(Coordinate804);
{ .Fd.Add }
MFNode3821.Add(Coordinate808);
{ .Fd.Add }
MFNode3821.Add(Coordinate823);
{ .Fd.Add }
MFNode3821.Add(Coordinate838);
{ .Fd.Add }
MFNode3821.Add(Coordinate853);
end;

procedure InitHAnimGimbalJointController22Part266;
begin

{ .Fd.Add }
MFNode3821.Add(Coordinate868);
{ .Fd.Add }
MFNode3821.Add(Coordinate883);
{ .Fd.Add }
MFNode3821.Add(Coordinate898);
{ .Fd.Add }
MFNode3821.Add(Coordinate913);
{ .Fd.Add }
MFNode3821.Add(Coordinate928);
{ .Fd.Add }
MFNode3821.Add(Coordinate943);
{ .Fd.Add }
MFNode3821.Add(Coordinate958);
{ .Fd.Add }
MFNode3821.Add(Coordinate973);
{ .Fd.Add }
MFNode3821.Add(Coordinate988);
{ .Fd.Add }
MFNode3821.Add(Coordinate1003);
{ .Fd.Add }
MFNode3821.Add(Coordinate1018);
{ .Fd.Add }
MFNode3821.Add(Coordinate1033);
{ .Fd.Add }
MFNode3821.Add(Coordinate1048);
{ .Fd.Add }
MFNode3821.Add(Coordinate1063);
{ .Fd.Add }
MFNode3821.Add(Coordinate1078);
{ .Fd.Add }
MFNode3821.Add(Coordinate1093);
{ .Fd.Add }
MFNode3821.Add(Coordinate1108);
{ .Fd.Add }
MFNode3821.Add(Coordinate1123);
{ .Fd.Add }
MFNode3821.Add(Coordinate1138);
{ .Fd.Add }
MFNode3821.Add(Coordinate1153);
{ .Fd.Add }
MFNode3821.Add(Coordinate1168);
{ .Fd.Add }
MFNode3821.Add(Coordinate1183);
{ .Fd.Add }
MFNode3821.Add(Coordinate1187);
{ .Fd.Add }
MFNode3821.Add(Coordinate1191);
{ .Fd.Add }
MFNode3821.Add(Coordinate1206);
{ .Fd.Add }
MFNode3821.Add(Coordinate1221);
{ .Fd.Add }
MFNode3821.Add(Coordinate1236);
{ .Fd.Add }
MFNode3821.Add(Coordinate1251);
{ .Fd.Add }
MFNode3821.Add(Coordinate1266);
{ .Fd.Add }
MFNode3821.Add(Coordinate1281);
{ .Fd.Add }
MFNode3821.Add(Coordinate1296);
{ .Fd.Add }
MFNode3821.Add(Coordinate1311);
{ .Fd.Add }
MFNode3821.Add(Coordinate1315);
{ .Fd.Add }
MFNode3821.Add(Coordinate1319);
{ .Fd.Add }
MFNode3821.Add(Coordinate1323);
{ .Fd.Add }
MFNode3821.Add(Coordinate1327);
{ .Fd.Add }
MFNode3821.Add(Coordinate1331);
{ .Fd.Add }
MFNode3821.Add(Coordinate1335);
{ .Fd.Add }
MFNode3821.Add(Coordinate1350);
{ .Fd.Add }
MFNode3821.Add(Coordinate1365);
end;

procedure InitHAnimGimbalJointController22Part267;
begin

{ .Fd.Add }
MFNode3821.Add(Coordinate1380);
{ .Fd.Add }
MFNode3821.Add(Coordinate1395);
{ .Fd.Add }
MFNode3821.Add(Coordinate1410);
{ .Fd.Add }
MFNode3821.Add(Coordinate1425);
{ .Fd.Add }
MFNode3821.Add(Coordinate1440);
{ .Fd.Add }
MFNode3821.Add(Coordinate1455);
{ .Fd.Add }
MFNode3821.Add(Coordinate1470);
{ .Fd.Add }
MFNode3821.Add(Coordinate1485);
{ .Fd.Add }
MFNode3821.Add(Coordinate1500);
{ .Fd.Add }
MFNode3821.Add(Coordinate1515);
{ .Fd.Add }
MFNode3821.Add(Coordinate1519);
{ .Fd.Add }
MFNode3821.Add(Coordinate1523);
{ .Fd.Add }
MFNode3821.Add(Coordinate1527);
{ .Fd.Add }
MFNode3821.Add(Coordinate1542);
{ .Fd.Add }
MFNode3821.Add(Coordinate1557);
{ .Fd.Add }
MFNode3821.Add(Coordinate1572);
{ .Fd.Add }
MFNode3821.Add(Coordinate1587);
{ .Fd.Add }
MFNode3821.Add(Coordinate1602);
{ .Fd.Add }
MFNode3821.Add(Coordinate1617);
{ .Fd.Add }
MFNode3821.Add(Coordinate1632);
{ .Fd.Add }
MFNode3821.Add(Coordinate1647);
{ .Fd.Add }
MFNode3821.Add(Coordinate1662);
{ .Fd.Add }
MFNode3821.Add(Coordinate1677);
{ .Fd.Add }
MFNode3821.Add(Coordinate1692);
{ .Fd.Add }
MFNode3821.Add(Coordinate1707);
{ .Fd.Add }
MFNode3821.Add(Coordinate1722);
{ .Fd.Add }
MFNode3821.Add(Coordinate1737);
{ .Fd.Add }
MFNode3821.Add(Coordinate1752);
{ .Fd.Add }
MFNode3821.Add(Coordinate1756);
{ .Fd.Add }
MFNode3821.Add(Coordinate1771);
{ .Fd.Add }
MFNode3821.Add(Coordinate1786);
{ .Fd.Add }
MFNode3821.Add(Coordinate1801);
{ .Fd.Add }
MFNode3821.Add(Coordinate1816);
{ .Fd.Add }
MFNode3821.Add(Coordinate1831);
{ .Fd.Add }
MFNode3821.Add(Coordinate1846);
{ .Fd.Add }
MFNode3821.Add(Coordinate1861);
{ .Fd.Add }
MFNode3821.Add(Coordinate1876);
{ .Fd.Add }
MFNode3821.Add(Coordinate1891);
{ .Fd.Add }
MFNode3821.Add(Coordinate1906);
{ .Fd.Add }
MFNode3821.Add(Coordinate1921);
end;

procedure InitHAnimGimbalJointController22Part268;
begin

{ .Fd.Add }
MFNode3821.Add(Coordinate1936);
{ .Fd.Add }
MFNode3821.Add(Coordinate1951);
{ .Fd.Add }
MFNode3821.Add(Coordinate1955);
{ .Fd.Add }
MFNode3821.Add(Coordinate1959);
{ .Fd.Add }
MFNode3821.Add(Coordinate1963);
{ .Fd.Add }
MFNode3821.Add(Coordinate1978);
{ .Fd.Add }
MFNode3821.Add(Coordinate1993);
{ .Fd.Add }
MFNode3821.Add(Coordinate2008);
{ .Fd.Add }
MFNode3821.Add(Coordinate2023);
{ .Fd.Add }
MFNode3821.Add(Coordinate2038);
{ .Fd.Add }
MFNode3821.Add(Coordinate2053);
{ .Fd.Add }
MFNode3821.Add(Coordinate2068);
{ .Fd.Add }
MFNode3821.Add(Coordinate2083);
{ .Fd.Add }
MFNode3821.Add(Coordinate2098);
{ .Fd.Add }
MFNode3821.Add(Coordinate2113);
{ .Fd.Add }
MFNode3821.Add(Coordinate2128);
{ .Fd.Add }
MFNode3821.Add(Coordinate2143);
{ .Fd.Add }
MFNode3821.Add(Coordinate2158);
{ .Fd.Add }
MFNode3821.Add(Coordinate2173);
{ .Fd.Add }
MFNode3821.Add(Coordinate2188);
{ .Fd.Add }
MFNode3821.Add(Coordinate2192);
{ .Fd.Add }
MFNode3821.Add(Coordinate2207);
{ .Fd.Add }
MFNode3821.Add(Coordinate2222);
{ .Fd.Add }
MFNode3821.Add(Coordinate2237);
{ .Fd.Add }
MFNode3821.Add(Coordinate2252);
{ .Fd.Add }
MFNode3821.Add(Coordinate2267);
{ .Fd.Add }
MFNode3821.Add(Coordinate2282);
{ .Fd.Add }
MFNode3821.Add(Coordinate2297);
{ .Fd.Add }
MFNode3821.Add(Coordinate2312);
{ .Fd.AddCustomField }
Script3214.AddCustomField(MFNode3821);
SFTime3994 := TSFTime.CreateUndefined(Script3214, false, 'exportHumanoid');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime3994);
SFTime3995 := TSFTime.CreateUndefined(Script3214, false, 'importHumanoid');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime3995);
SFRotation3996 := TSFRotation.CreateUndefined(Script3214, false, 'rotX');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFRotation3996);
SFRotation3997 := TSFRotation.CreateUndefined(Script3214, false, 'rotY');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFRotation3997);
SFRotation3998 := TSFRotation.CreateUndefined(Script3214, false, 'rotZ');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFRotation3998);
end;

procedure InitHAnimGimbalJointController22Part269;
begin

SFTime3999 := TSFTime.CreateUndefined(Script3214, false, 'next');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime3999);
SFTime4000 := TSFTime.CreateUndefined(Script3214, false, 'prev');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4000);
SFTime4001 := TSFTime.CreateUndefined(Script3214, false, 'up');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4001);
SFTime4002 := TSFTime.CreateUndefined(Script3214, false, 'down');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4002);
SFTime4003 := TSFTime.CreateUndefined(Script3214, false, 'sibPrev');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4003);
SFTime4004 := TSFTime.CreateUndefined(Script3214, false, 'sibNext');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4004);
SFTime4005 := TSFTime.CreateUndefined(Script3214, false, 'reset');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4005);
SFTime4006 := TSFTime.CreateUndefined(Script3214, false, 'deselect');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4006);
SFTime4007 := TSFTime.CreateUndefined(Script3214, false, 'pick_humanoid_root');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4007);
SFTime4008 := TSFTime.CreateUndefined(Script3214, false, 'pick_sacroiliac');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4008);
SFTime4009 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_hip');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4009);
SFTime4010 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_knee');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4010);
SFTime4011 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_talocrural');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4011);
SFTime4012 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_talocalcaneonavicular');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4012);
SFTime4013 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_cuneonavicular_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4013);
SFTime4014 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_tarsometatarsal_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4014);
SFTime4015 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_metatarsophalangeal_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4015);
SFTime4016 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_tarsal_interphalangeal_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4016);
SFTime4017 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_cuneonavicular_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4017);
SFTime4018 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_tarsometatarsal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4018);
end;

procedure InitHAnimGimbalJointController22Part270;
begin

SFTime4019 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_metatarsophalangeal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4019);
SFTime4020 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_tarsal_proximal_interphalangeal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4020);
SFTime4021 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_tarsal_distal_interphalangeal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4021);
SFTime4022 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_cuneonavicular_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4022);
SFTime4023 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_tarsometatarsal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4023);
SFTime4024 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_metatarsophalangeal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4024);
SFTime4025 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_tarsal_proximal_interphalangeal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4025);
SFTime4026 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_tarsal_distal_interphalangeal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4026);
SFTime4027 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_calcaneocuboid');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4027);
SFTime4028 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_transversetarsal');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4028);
SFTime4029 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_tarsometatarsal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4029);
SFTime4030 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_metatarsophalangeal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4030);
SFTime4031 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_tarsal_proximal_interphalangeal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4031);
SFTime4032 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_tarsal_distal_interphalangeal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4032);
SFTime4033 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_tarsometatarsal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4033);
SFTime4034 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_metatarsophalangeal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4034);
SFTime4035 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_tarsal_proximal_interphalangeal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4035);
SFTime4036 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_tarsal_distal_interphalangeal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4036);
SFTime4037 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_hip');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4037);
SFTime4038 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_knee');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4038);
end;

procedure InitHAnimGimbalJointController22Part271;
begin

SFTime4039 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_talocrural');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4039);
SFTime4040 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_talocalcaneonavicular');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4040);
SFTime4041 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_cuneonavicular_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4041);
SFTime4042 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_tarsometatarsal_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4042);
SFTime4043 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_metatarsophalangeal_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4043);
SFTime4044 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_tarsal_interphalangeal_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4044);
SFTime4045 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_cuneonavicular_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4045);
SFTime4046 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_tarsometatarsal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4046);
SFTime4047 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_metatarsophalangeal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4047);
SFTime4048 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_tarsal_proximal_interphalangeal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4048);
SFTime4049 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_tarsal_distal_interphalangeal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4049);
SFTime4050 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_cuneonavicular_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4050);
SFTime4051 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_tarsometatarsal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4051);
SFTime4052 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_metatarsophalangeal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4052);
SFTime4053 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_tarsal_proximal_interphalangeal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4053);
SFTime4054 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_tarsal_distal_interphalangeal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4054);
SFTime4055 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_calcaneocuboid');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4055);
SFTime4056 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_transversetarsal');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4056);
SFTime4057 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_tarsometatarsal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4057);
SFTime4058 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_metatarsophalangeal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4058);
end;

procedure InitHAnimGimbalJointController22Part272;
begin

SFTime4059 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_tarsal_proximal_interphalangeal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4059);
SFTime4060 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_tarsal_distal_interphalangeal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4060);
SFTime4061 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_tarsometatarsal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4061);
SFTime4062 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_metatarsophalangeal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4062);
SFTime4063 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_tarsal_proximal_interphalangeal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4063);
SFTime4064 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_tarsal_distal_interphalangeal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4064);
SFTime4065 := TSFTime.CreateUndefined(Script3214, false, 'pick_vl5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4065);
SFTime4066 := TSFTime.CreateUndefined(Script3214, false, 'pick_vl4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4066);
SFTime4067 := TSFTime.CreateUndefined(Script3214, false, 'pick_vl3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4067);
SFTime4068 := TSFTime.CreateUndefined(Script3214, false, 'pick_vl2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4068);
SFTime4069 := TSFTime.CreateUndefined(Script3214, false, 'pick_vl1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4069);
SFTime4070 := TSFTime.CreateUndefined(Script3214, false, 'pick_vt12');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4070);
SFTime4071 := TSFTime.CreateUndefined(Script3214, false, 'pick_vt11');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4071);
SFTime4072 := TSFTime.CreateUndefined(Script3214, false, 'pick_vt10');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4072);
SFTime4073 := TSFTime.CreateUndefined(Script3214, false, 'pick_vt9');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4073);
SFTime4074 := TSFTime.CreateUndefined(Script3214, false, 'pick_vt8');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4074);
SFTime4075 := TSFTime.CreateUndefined(Script3214, false, 'pick_vt7');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4075);
SFTime4076 := TSFTime.CreateUndefined(Script3214, false, 'pick_vt6');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4076);
SFTime4077 := TSFTime.CreateUndefined(Script3214, false, 'pick_vt5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4077);
SFTime4078 := TSFTime.CreateUndefined(Script3214, false, 'pick_vt4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4078);
end;

procedure InitHAnimGimbalJointController22Part273;
begin

SFTime4079 := TSFTime.CreateUndefined(Script3214, false, 'pick_vt3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4079);
SFTime4080 := TSFTime.CreateUndefined(Script3214, false, 'pick_vt2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4080);
SFTime4081 := TSFTime.CreateUndefined(Script3214, false, 'pick_vt1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4081);
SFTime4082 := TSFTime.CreateUndefined(Script3214, false, 'pick_vc7');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4082);
SFTime4083 := TSFTime.CreateUndefined(Script3214, false, 'pick_vc6');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4083);
SFTime4084 := TSFTime.CreateUndefined(Script3214, false, 'pick_vc5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4084);
SFTime4085 := TSFTime.CreateUndefined(Script3214, false, 'pick_vc4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4085);
SFTime4086 := TSFTime.CreateUndefined(Script3214, false, 'pick_vc3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4086);
SFTime4087 := TSFTime.CreateUndefined(Script3214, false, 'pick_vc2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4087);
SFTime4088 := TSFTime.CreateUndefined(Script3214, false, 'pick_vc1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4088);
SFTime4089 := TSFTime.CreateUndefined(Script3214, false, 'pick_skullbase');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4089);
SFTime4090 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_eyelid_joint');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4090);
SFTime4091 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_eyelid_joint');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4091);
SFTime4092 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_eyeball_joint');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4092);
SFTime4093 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_eyeball_joint');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4093);
SFTime4094 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_eyebrow_joint');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4094);
SFTime4095 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_eyebrow_joint');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4095);
SFTime4096 := TSFTime.CreateUndefined(Script3214, false, 'pick_temporomandibular');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4096);
SFTime4097 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_sternoclavicular');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4097);
SFTime4098 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_acromioclavicular');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4098);
end;

procedure InitHAnimGimbalJointController22Part274;
begin

SFTime4099 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_shoulder');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4099);
SFTime4100 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_elbow');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4100);
SFTime4101 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_radiocarpal');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4101);
SFTime4102 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_midcarpal_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4102);
SFTime4103 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_carpometacarpal_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4103);
SFTime4104 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_metacarpophalangeal_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4104);
SFTime4105 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_carpal_interphalangeal_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4105);
SFTime4106 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_midcarpal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4106);
SFTime4107 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_carpometacarpal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4107);
SFTime4108 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_metacarpophalangeal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4108);
SFTime4109 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_carpal_proximal_interphalangeal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4109);
SFTime4110 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_carpal_distal_interphalangeal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4110);
SFTime4111 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_midcarpal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4111);
SFTime4112 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_carpometacarpal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4112);
SFTime4113 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_metacarpophalangeal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4113);
SFTime4114 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_carpal_proximal_interphalangeal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4114);
SFTime4115 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_carpal_distal_interphalangeal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4115);
SFTime4116 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_midcarpal_4_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4116);
SFTime4117 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_carpometacarpal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4117);
SFTime4118 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_metacarpophalangeal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4118);
end;

procedure InitHAnimGimbalJointController22Part275;
begin

SFTime4119 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_carpal_proximal_interphalangeal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4119);
SFTime4120 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_carpal_distal_interphalangeal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4120);
SFTime4121 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_carpometacarpal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4121);
SFTime4122 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_metacarpophalangeal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4122);
SFTime4123 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_carpal_proximal_interphalangeal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4123);
SFTime4124 := TSFTime.CreateUndefined(Script3214, false, 'pick_l_carpal_distal_interphalangeal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4124);
SFTime4125 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_sternoclavicular');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4125);
SFTime4126 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_acromioclavicular');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4126);
SFTime4127 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_shoulder');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4127);
SFTime4128 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_elbow');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4128);
SFTime4129 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_radiocarpal');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4129);
SFTime4130 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_midcarpal_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4130);
SFTime4131 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_carpometacarpal_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4131);
SFTime4132 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_metacarpophalangeal_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4132);
SFTime4133 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_carpal_interphalangeal_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4133);
SFTime4134 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_midcarpal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4134);
SFTime4135 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_carpometacarpal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4135);
SFTime4136 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_metacarpophalangeal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4136);
SFTime4137 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_carpal_proximal_interphalangeal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4137);
SFTime4138 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_carpal_distal_interphalangeal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4138);
end;

procedure InitHAnimGimbalJointController22Part276;
begin

SFTime4139 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_midcarpal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4139);
SFTime4140 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_carpometacarpal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4140);
SFTime4141 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_metacarpophalangeal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4141);
SFTime4142 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_carpal_proximal_interphalangeal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4142);
SFTime4143 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_carpal_distal_interphalangeal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4143);
SFTime4144 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_midcarpal_4_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4144);
SFTime4145 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_carpometacarpal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4145);
SFTime4146 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_metacarpophalangeal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4146);
SFTime4147 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_carpal_proximal_interphalangeal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4147);
SFTime4148 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_carpal_distal_interphalangeal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4148);
SFTime4149 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_carpometacarpal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4149);
SFTime4150 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_metacarpophalangeal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4150);
SFTime4151 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_carpal_proximal_interphalangeal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4151);
SFTime4152 := TSFTime.CreateUndefined(Script3214, false, 'pick_r_carpal_distal_interphalangeal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4152);
MFNode4153 := TMFNode.CreateUndefined(Script3214, false, 'knobXf');
{ .Fd.Add }
MFNode4153.Add(Transform2830);
{ .Fd.Add }
MFNode4153.Add(Transform2884);
{ .Fd.Add }
MFNode4153.Add(Transform2938);
{ .Fd.AddCustomField }
Script3214.AddCustomField(MFNode4153);
MFNode4157 := TMFNode.CreateUndefined(Script3214, false, 'planeSens');
{ .Fd.Add }
MFNode4157.Add(PlaneSensor2829);
{ .Fd.Add }
MFNode4157.Add(PlaneSensor2883);
{ .Fd.Add }
MFNode4157.Add(PlaneSensor2937);
{ .Fd.AddCustomField }
Script3214.AddCustomField(MFNode4157);
MFNode4161 := TMFNode.CreateUndefined(Script3214, false, 'inMat');
{ .Fd.Add }
MFNode4161.Add(Material2852);
end;

procedure InitHAnimGimbalJointController22Part277;
begin

{ .Fd.Add }
MFNode4161.Add(Material2906);
{ .Fd.Add }
MFNode4161.Add(Material2960);
{ .Fd.AddCustomField }
Script3214.AddCustomField(MFNode4161);
MFNode4165 := TMFNode.CreateUndefined(Script3214, false, 'inTxt');
{ .Fd.Add }
MFNode4165.Add(Text2858);
{ .Fd.Add }
MFNode4165.Add(Text2912);
{ .Fd.Add }
MFNode4165.Add(Text2966);
{ .Fd.AddCustomField }
Script3214.AddCustomField(MFNode4165);
MFNode4169 := TMFNode.CreateUndefined(Script3214, false, 'minTxt');
{ .Fd.Add }
MFNode4169.Add(Text2839);
{ .Fd.Add }
MFNode4169.Add(Text2893);
{ .Fd.Add }
MFNode4169.Add(Text2947);
{ .Fd.AddCustomField }
Script3214.AddCustomField(MFNode4169);
MFNode4173 := TMFNode.CreateUndefined(Script3214, false, 'maxTxt');
{ .Fd.Add }
MFNode4173.Add(Text2845);
{ .Fd.Add }
MFNode4173.Add(Text2899);
{ .Fd.Add }
MFNode4173.Add(Text2953);
{ .Fd.AddCustomField }
Script3214.AddCustomField(MFNode4173);
SFNode4177 := TSFNode.CreateUndefined(Script3214, false, 'outTxt');
{ .Fd.Value }
SFNode4177.Value := Text2983;
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFNode4177);
SFVec3f4179 := TSFVec3f.CreateUndefined(Script3214, false, 'slideX');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFVec3f4179);
SFTime4180 := TSFTime.CreateUndefined(Script3214, false, 'pickInX');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4180);
SFVec3f4181 := TSFVec3f.CreateUndefined(Script3214, false, 'slideY');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFVec3f4181);
SFTime4182 := TSFTime.CreateUndefined(Script3214, false, 'pickInY');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4182);
SFVec3f4183 := TSFVec3f.CreateUndefined(Script3214, false, 'slideZ');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFVec3f4183);
SFTime4184 := TSFTime.CreateUndefined(Script3214, false, 'pickInZ');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4184);
SFString4185 := TSFString.CreateUndefined(Script3214, false, 'typed');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFString4185);
SFString4186 := TSFString.CreateUndefined(Script3214, false, 'typedFinal');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFString4186);
MFNode4187 := TMFNode.CreateUndefined(Script3214, false, 'tknobXf');
{ .Fd.Add }
MFNode4187.Add(Transform3026);
{ .Fd.Add }
MFNode4187.Add(Transform3085);
end;

procedure InitHAnimGimbalJointController22Part278;
begin

{ .Fd.Add }
MFNode4187.Add(Transform3144);
{ .Fd.AddCustomField }
Script3214.AddCustomField(MFNode4187);
MFNode4191 := TMFNode.CreateUndefined(Script3214, false, 'tplaneSens');
{ .Fd.Add }
MFNode4191.Add(PlaneSensor3025);
{ .Fd.Add }
MFNode4191.Add(PlaneSensor3084);
{ .Fd.Add }
MFNode4191.Add(PlaneSensor3143);
{ .Fd.AddCustomField }
Script3214.AddCustomField(MFNode4191);
MFNode4195 := TMFNode.CreateUndefined(Script3214, false, 'tinMat');
{ .Fd.Add }
MFNode4195.Add(Material3048);
{ .Fd.Add }
MFNode4195.Add(Material3107);
{ .Fd.Add }
MFNode4195.Add(Material3166);
{ .Fd.AddCustomField }
Script3214.AddCustomField(MFNode4195);
MFNode4199 := TMFNode.CreateUndefined(Script3214, false, 'tinTxt');
{ .Fd.Add }
MFNode4199.Add(Text3054);
{ .Fd.Add }
MFNode4199.Add(Text3113);
{ .Fd.Add }
MFNode4199.Add(Text3172);
{ .Fd.AddCustomField }
Script3214.AddCustomField(MFNode4199);
SFVec3f4203 := TSFVec3f.CreateUndefined(Script3214, false, 'slideTX');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFVec3f4203);
SFVec3f4204 := TSFVec3f.CreateUndefined(Script3214, false, 'slideTY');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFVec3f4204);
SFVec3f4205 := TSFVec3f.CreateUndefined(Script3214, false, 'slideTZ');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFVec3f4205);
SFTime4206 := TSFTime.CreateUndefined(Script3214, false, 'pickTInX');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4206);
SFTime4207 := TSFTime.CreateUndefined(Script3214, false, 'pickTInY');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4207);
SFTime4208 := TSFTime.CreateUndefined(Script3214, false, 'pickTInZ');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4208);
SFString4209 := TSFString.CreateUndefined(Script3214, false, 'typedT');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFString4209);
SFString4210 := TSFString.CreateUndefined(Script3214, false, 'typedFinalT');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFString4210);
SFTime4211 := TSFTime.CreateUndefined(Script3214, false, 'resetT');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFTime4211);
SFNode4212 := TSFNode.CreateUndefined(Script3214, false, 'strSens');
{ .Fd.Value }
SFNode4212.Value := StringSensor3212;
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFNode4212);
SFNode4214 := TSFNode.CreateUndefined(Script3214, false, 'strSensT');
{ .Fd.Value }
SFNode4214.Value := StringSensor3213;
end;

procedure InitHAnimGimbalJointController22Part279;
begin

{ .Fd.AddCustomField }
Script3214.AddCustomField(SFNode4214);
SFNode4216 := TSFNode.CreateUndefined(Script3214, false, 'statusText');
{ .Fd.Value }
SFNode4216.Value := Text3197;
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFNode4216);
SFNode4218 := TSFNode.CreateUndefined(Script3214, false, 'helpSwitch');
{ .Fd.Value }
SFNode4218.Value := Switch3199;
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFNode4218);
MFNode4220 := TMFNode.CreateUndefined(Script3214, false, 'btnMats');
{ .Fd.Add }
MFNode4220.Add(Material2662);
{ .Fd.Add }
MFNode4220.Add(Material2675);
{ .Fd.Add }
MFNode4220.Add(Material2688);
{ .Fd.Add }
MFNode4220.Add(Material2701);
{ .Fd.Add }
MFNode4220.Add(Material2714);
{ .Fd.Add }
MFNode4220.Add(Material2727);
{ .Fd.Add }
MFNode4220.Add(Material2740);
{ .Fd.Add }
MFNode4220.Add(Material2753);
{ .Fd.Add }
MFNode4220.Add(Material2767);
{ .Fd.Add }
MFNode4220.Add(Material2780);
{ .Fd.Add }
MFNode4220.Add(Material3179);
{ .Fd.AddCustomField }
Script3214.AddCustomField(MFNode4220);
MFNode4232 := TMFNode.CreateUndefined(Script3214, false, 'knobMats');
{ .Fd.Add }
MFNode4232.Add(Material2833);
{ .Fd.Add }
MFNode4232.Add(Material2887);
{ .Fd.Add }
MFNode4232.Add(Material2941);
{ .Fd.Add }
MFNode4232.Add(Material3029);
{ .Fd.Add }
MFNode4232.Add(Material3088);
{ .Fd.Add }
MFNode4232.Add(Material3147);
{ .Fd.AddCustomField }
Script3214.AddCustomField(MFNode4232);
SFBool4239 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_humanoid_root');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4239);
SFBool4240 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_sacroiliac');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4240);
SFBool4241 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_hip');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4241);
SFBool4242 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_knee');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4242);
SFBool4243 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_talocrural');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4243);
SFBool4244 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_talocalcaneonavicular');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4244);
end;

procedure InitHAnimGimbalJointController22Part280;
begin

SFBool4245 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_cuneonavicular_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4245);
SFBool4246 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_tarsometatarsal_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4246);
SFBool4247 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_metatarsophalangeal_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4247);
SFBool4248 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_tarsal_interphalangeal_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4248);
SFBool4249 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_cuneonavicular_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4249);
SFBool4250 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_tarsometatarsal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4250);
SFBool4251 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_metatarsophalangeal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4251);
SFBool4252 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_tarsal_proximal_interphalangeal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4252);
SFBool4253 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_tarsal_distal_interphalangeal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4253);
SFBool4254 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_cuneonavicular_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4254);
SFBool4255 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_tarsometatarsal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4255);
SFBool4256 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_metatarsophalangeal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4256);
SFBool4257 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_tarsal_proximal_interphalangeal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4257);
SFBool4258 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_tarsal_distal_interphalangeal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4258);
SFBool4259 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_calcaneocuboid');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4259);
SFBool4260 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_transversetarsal');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4260);
SFBool4261 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_tarsometatarsal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4261);
SFBool4262 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_metatarsophalangeal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4262);
SFBool4263 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_tarsal_proximal_interphalangeal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4263);
SFBool4264 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_tarsal_distal_interphalangeal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4264);
end;

procedure InitHAnimGimbalJointController22Part281;
begin

SFBool4265 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_tarsometatarsal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4265);
SFBool4266 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_metatarsophalangeal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4266);
SFBool4267 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_tarsal_proximal_interphalangeal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4267);
SFBool4268 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_tarsal_distal_interphalangeal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4268);
SFBool4269 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_hip');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4269);
SFBool4270 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_knee');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4270);
SFBool4271 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_talocrural');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4271);
SFBool4272 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_talocalcaneonavicular');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4272);
SFBool4273 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_cuneonavicular_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4273);
SFBool4274 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_tarsometatarsal_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4274);
SFBool4275 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_metatarsophalangeal_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4275);
SFBool4276 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_tarsal_interphalangeal_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4276);
SFBool4277 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_cuneonavicular_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4277);
SFBool4278 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_tarsometatarsal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4278);
SFBool4279 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_metatarsophalangeal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4279);
SFBool4280 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_tarsal_proximal_interphalangeal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4280);
SFBool4281 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_tarsal_distal_interphalangeal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4281);
SFBool4282 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_cuneonavicular_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4282);
SFBool4283 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_tarsometatarsal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4283);
SFBool4284 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_metatarsophalangeal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4284);
end;

procedure InitHAnimGimbalJointController22Part282;
begin

SFBool4285 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_tarsal_proximal_interphalangeal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4285);
SFBool4286 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_tarsal_distal_interphalangeal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4286);
SFBool4287 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_calcaneocuboid');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4287);
SFBool4288 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_transversetarsal');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4288);
SFBool4289 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_tarsometatarsal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4289);
SFBool4290 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_metatarsophalangeal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4290);
SFBool4291 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_tarsal_proximal_interphalangeal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4291);
SFBool4292 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_tarsal_distal_interphalangeal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4292);
SFBool4293 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_tarsometatarsal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4293);
SFBool4294 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_metatarsophalangeal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4294);
SFBool4295 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_tarsal_proximal_interphalangeal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4295);
SFBool4296 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_tarsal_distal_interphalangeal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4296);
SFBool4297 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_vl5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4297);
SFBool4298 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_vl4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4298);
SFBool4299 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_vl3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4299);
SFBool4300 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_vl2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4300);
SFBool4301 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_vl1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4301);
SFBool4302 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_vt12');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4302);
SFBool4303 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_vt11');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4303);
SFBool4304 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_vt10');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4304);
end;

procedure InitHAnimGimbalJointController22Part283;
begin

SFBool4305 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_vt9');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4305);
SFBool4306 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_vt8');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4306);
SFBool4307 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_vt7');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4307);
SFBool4308 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_vt6');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4308);
SFBool4309 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_vt5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4309);
SFBool4310 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_vt4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4310);
SFBool4311 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_vt3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4311);
SFBool4312 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_vt2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4312);
SFBool4313 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_vt1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4313);
SFBool4314 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_vc7');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4314);
SFBool4315 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_vc6');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4315);
SFBool4316 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_vc5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4316);
SFBool4317 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_vc4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4317);
SFBool4318 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_vc3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4318);
SFBool4319 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_vc2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4319);
SFBool4320 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_vc1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4320);
SFBool4321 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_skullbase');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4321);
SFBool4322 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_eyelid_joint');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4322);
SFBool4323 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_eyelid_joint');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4323);
SFBool4324 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_eyeball_joint');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4324);
end;

procedure InitHAnimGimbalJointController22Part284;
begin

SFBool4325 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_eyeball_joint');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4325);
SFBool4326 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_eyebrow_joint');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4326);
SFBool4327 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_eyebrow_joint');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4327);
SFBool4328 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_temporomandibular');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4328);
SFBool4329 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_sternoclavicular');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4329);
SFBool4330 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_acromioclavicular');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4330);
SFBool4331 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_shoulder');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4331);
SFBool4332 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_elbow');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4332);
SFBool4333 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_radiocarpal');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4333);
SFBool4334 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_midcarpal_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4334);
SFBool4335 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_carpometacarpal_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4335);
SFBool4336 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_metacarpophalangeal_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4336);
SFBool4337 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_carpal_interphalangeal_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4337);
SFBool4338 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_midcarpal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4338);
SFBool4339 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_carpometacarpal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4339);
SFBool4340 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_metacarpophalangeal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4340);
SFBool4341 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_carpal_proximal_interphalangeal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4341);
SFBool4342 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_carpal_distal_interphalangeal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4342);
SFBool4343 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_midcarpal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4343);
SFBool4344 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_carpometacarpal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4344);
end;

procedure InitHAnimGimbalJointController22Part285;
begin

SFBool4345 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_metacarpophalangeal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4345);
SFBool4346 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_carpal_proximal_interphalangeal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4346);
SFBool4347 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_carpal_distal_interphalangeal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4347);
SFBool4348 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_midcarpal_4_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4348);
SFBool4349 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_carpometacarpal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4349);
SFBool4350 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_metacarpophalangeal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4350);
SFBool4351 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_carpal_proximal_interphalangeal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4351);
SFBool4352 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_carpal_distal_interphalangeal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4352);
SFBool4353 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_carpometacarpal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4353);
SFBool4354 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_metacarpophalangeal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4354);
SFBool4355 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_carpal_proximal_interphalangeal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4355);
SFBool4356 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_l_carpal_distal_interphalangeal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4356);
SFBool4357 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_sternoclavicular');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4357);
SFBool4358 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_acromioclavicular');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4358);
SFBool4359 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_shoulder');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4359);
SFBool4360 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_elbow');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4360);
SFBool4361 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_radiocarpal');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4361);
SFBool4362 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_midcarpal_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4362);
SFBool4363 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_carpometacarpal_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4363);
SFBool4364 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_metacarpophalangeal_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4364);
end;

procedure InitHAnimGimbalJointController22Part286;
begin

SFBool4365 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_carpal_interphalangeal_1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4365);
SFBool4366 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_midcarpal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4366);
SFBool4367 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_carpometacarpal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4367);
SFBool4368 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_metacarpophalangeal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4368);
SFBool4369 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_carpal_proximal_interphalangeal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4369);
SFBool4370 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_carpal_distal_interphalangeal_2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4370);
SFBool4371 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_midcarpal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4371);
SFBool4372 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_carpometacarpal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4372);
SFBool4373 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_metacarpophalangeal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4373);
SFBool4374 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_carpal_proximal_interphalangeal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4374);
SFBool4375 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_carpal_distal_interphalangeal_3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4375);
SFBool4376 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_midcarpal_4_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4376);
SFBool4377 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_carpometacarpal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4377);
SFBool4378 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_metacarpophalangeal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4378);
SFBool4379 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_carpal_proximal_interphalangeal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4379);
SFBool4380 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_carpal_distal_interphalangeal_4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4380);
SFBool4381 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_carpometacarpal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4381);
SFBool4382 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_metacarpophalangeal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4382);
SFBool4383 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_carpal_proximal_interphalangeal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4383);
SFBool4384 := TSFBool.CreateUndefined(Script3214, false, 'ovJ_r_carpal_distal_interphalangeal_5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4384);
end;

procedure InitHAnimGimbalJointController22Part287;
begin

SFBool4385 := TSFBool.CreateUndefined(Script3214, false, 'ovB0');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4385);
SFBool4386 := TSFBool.CreateUndefined(Script3214, false, 'ovB1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4386);
SFBool4387 := TSFBool.CreateUndefined(Script3214, false, 'ovB2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4387);
SFBool4388 := TSFBool.CreateUndefined(Script3214, false, 'ovB3');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4388);
SFBool4389 := TSFBool.CreateUndefined(Script3214, false, 'ovB4');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4389);
SFBool4390 := TSFBool.CreateUndefined(Script3214, false, 'ovB5');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4390);
SFBool4391 := TSFBool.CreateUndefined(Script3214, false, 'ovB6');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4391);
SFBool4392 := TSFBool.CreateUndefined(Script3214, false, 'ovB7');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4392);
SFBool4393 := TSFBool.CreateUndefined(Script3214, false, 'ovB8');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4393);
SFBool4394 := TSFBool.CreateUndefined(Script3214, false, 'ovB9');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4394);
SFBool4395 := TSFBool.CreateUndefined(Script3214, false, 'ovB10');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4395);
SFBool4396 := TSFBool.CreateUndefined(Script3214, false, 'ovSl0');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4396);
SFBool4397 := TSFBool.CreateUndefined(Script3214, false, 'ovTSl0');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4397);
SFBool4398 := TSFBool.CreateUndefined(Script3214, false, 'ovRg0');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4398);
SFBool4399 := TSFBool.CreateUndefined(Script3214, false, 'ovIn0');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4399);
SFBool4400 := TSFBool.CreateUndefined(Script3214, false, 'ovTIn0');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4400);
SFBool4401 := TSFBool.CreateUndefined(Script3214, false, 'acSl0');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4401);
SFBool4402 := TSFBool.CreateUndefined(Script3214, false, 'acTSl0');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4402);
SFBool4403 := TSFBool.CreateUndefined(Script3214, false, 'acRg0');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4403);
SFBool4404 := TSFBool.CreateUndefined(Script3214, false, 'ovSl1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4404);
end;

procedure InitHAnimGimbalJointController22Part288;
begin

SFBool4405 := TSFBool.CreateUndefined(Script3214, false, 'ovTSl1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4405);
SFBool4406 := TSFBool.CreateUndefined(Script3214, false, 'ovRg1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4406);
SFBool4407 := TSFBool.CreateUndefined(Script3214, false, 'ovIn1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4407);
SFBool4408 := TSFBool.CreateUndefined(Script3214, false, 'ovTIn1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4408);
SFBool4409 := TSFBool.CreateUndefined(Script3214, false, 'acSl1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4409);
SFBool4410 := TSFBool.CreateUndefined(Script3214, false, 'acTSl1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4410);
SFBool4411 := TSFBool.CreateUndefined(Script3214, false, 'acRg1');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4411);
SFBool4412 := TSFBool.CreateUndefined(Script3214, false, 'ovSl2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4412);
SFBool4413 := TSFBool.CreateUndefined(Script3214, false, 'ovTSl2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4413);
SFBool4414 := TSFBool.CreateUndefined(Script3214, false, 'ovRg2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4414);
SFBool4415 := TSFBool.CreateUndefined(Script3214, false, 'ovIn2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4415);
SFBool4416 := TSFBool.CreateUndefined(Script3214, false, 'ovTIn2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4416);
SFBool4417 := TSFBool.CreateUndefined(Script3214, false, 'acSl2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4417);
SFBool4418 := TSFBool.CreateUndefined(Script3214, false, 'acTSl2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4418);
SFBool4419 := TSFBool.CreateUndefined(Script3214, false, 'acRg2');
{ .Fd.AddCustomField }
Script3214.AddCustomField(SFBool4419);
{ .FdChildren.Add }
Layer2605.FdChildren.Add(Script3214);
{ .FdLayers.Add }
LayerSet14.FdLayers.Add(Layer2605);
{ .AddChildren }
X3D0.FdChildren.Add(LayerSet14);
{ ==================== GIMBAL SENSOR & BUTTON ROUTES ==================== }
{ Original "'csGX'.EventRotation_changed TO 'controller'.rotX }
{ Replaced csGX.EventRotation_changed TO controller.rotX }
{ Sample csGX.EventRotation_changed TO controller.rotX}
Group12.AddRoute(CylinderSensor2609.EventRotation_changed, SFRotation3996);
{ .AddX3DRoute }
{ Original "'csGY'.EventRotation_changed TO 'controller'.rotY }
{ Replaced csGY.EventRotation_changed TO controller.rotY }
{ Sample csGY.EventRotation_changed TO controller.rotY}
Group12.AddRoute(CylinderSensor2617.EventRotation_changed, SFRotation3997);
{ .AddX3DRoute }
{ Original "'csGZ'.EventRotation_changed TO 'controller'.rotZ }
{ Replaced csGZ.EventRotation_changed TO controller.rotZ }
{ Sample csGZ.EventRotation_changed TO controller.rotZ}
Group12.AddRoute(CylinderSensor2625.EventRotation_changed, SFRotation3998);
{ .AddX3DRoute }
{ Original "'tsNext'.EventTouchtime TO 'controller'.next }
{ Replaced tsNext.EventTouchtime TO controller.next }
{ Sample tsNext.EventTouchtime TO controller.next}
Group12.AddRoute(TouchSensor2671.EventTouchtime, SFTime3999);
{ .AddX3DRoute }
{ Original "'tsPrev'.EventTouchtime TO 'controller'.prev }
{ Replaced tsPrev.EventTouchtime TO controller.prev }
{ Sample tsPrev.EventTouchtime TO controller.prev}
Group12.AddRoute(TouchSensor2658.EventTouchtime, SFTime4000);
{ .AddX3DRoute }
{ Original "'tsUp'.EventTouchtime TO 'controller'.up }
{ Replaced tsUp.EventTouchtime TO controller.up }
{ Sample tsUp.EventTouchtime TO controller.up}
Group12.AddRoute(TouchSensor2684.EventTouchtime, SFTime4001);
{ .AddX3DRoute }
{ Original "'tsDown'.EventTouchtime TO 'controller'.down }
{ Replaced tsDown.EventTouchtime TO controller.down }
{ Sample tsDown.EventTouchtime TO controller.down}
Group12.AddRoute(TouchSensor2697.EventTouchtime, SFTime4002);
end;

procedure InitHAnimGimbalJointController22Part289;
begin

{ .AddX3DRoute }
{ Original "'tsSibPrev'.EventTouchtime TO 'controller'.sibPrev }
{ Replaced tsSibPrev.EventTouchtime TO controller.sibPrev }
{ Sample tsSibPrev.EventTouchtime TO controller.sibPrev}
Group12.AddRoute(TouchSensor2710.EventTouchtime, SFTime4003);
{ .AddX3DRoute }
{ Original "'tsSibNext'.EventTouchtime TO 'controller'.sibNext }
{ Replaced tsSibNext.EventTouchtime TO controller.sibNext }
{ Sample tsSibNext.EventTouchtime TO controller.sibNext}
Group12.AddRoute(TouchSensor2723.EventTouchtime, SFTime4004);
{ .AddX3DRoute }
{ Original "'tsReset'.EventTouchtime TO 'controller'.reset }
{ Replaced tsReset.EventTouchtime TO controller.reset }
{ Sample tsReset.EventTouchtime TO controller.reset}
Group12.AddRoute(TouchSensor2736.EventTouchtime, SFTime4005);
{ .AddX3DRoute }
{ Original "'tsDeselect'.EventTouchtime TO 'controller'.deselect }
{ Replaced tsDeselect.EventTouchtime TO controller.deselect }
{ Sample tsDeselect.EventTouchtime TO controller.deselect}
Group12.AddRoute(TouchSensor2749.EventTouchtime, SFTime4006);
{ .AddX3DRoute }
{ Original "'tsExport'.EventTouchtime TO 'controller'.exportHumanoid }
{ Replaced tsExport.EventTouchtime TO controller.exportHumanoid }
{ Sample tsExport.EventTouchtime TO controller.exportHumanoid}
Group12.AddRoute(TouchSensor2763.EventTouchtime, SFTime3994);
{ .AddX3DRoute }
{ Original "'tsImport'.EventTouchtime TO 'controller'.importHumanoid }
{ Replaced tsImport.EventTouchtime TO controller.importHumanoid }
{ Sample tsImport.EventTouchtime TO controller.importHumanoid}
Group12.AddRoute(TouchSensor2776.EventTouchtime, SFTime3995);
{ .AddX3DRoute }
{ ==================== JOINT PICK ROUTES ==================== }
{ Original "'ts_humanoid_root'.EventTouchtime TO 'controller'.pick_humanoid_root }
{ Replaced ts_humanoid_root.EventTouchtime TO controller.pick_humanoid_root }
{ Sample ts_humanoid_root.EventTouchtime TO controller.pick_humanoid_root}
Group12.AddRoute(TouchSensor21.EventTouchtime, SFTime4007);
{ .AddX3DRoute }
{ Original "'ts_sacroiliac'.EventTouchtime TO 'controller'.pick_sacroiliac }
{ Replaced ts_sacroiliac.EventTouchtime TO controller.pick_sacroiliac }
{ Sample ts_sacroiliac.EventTouchtime TO controller.pick_sacroiliac}
Group12.AddRoute(TouchSensor40.EventTouchtime, SFTime4008);
{ .AddX3DRoute }
{ Original "'ts_l_hip'.EventTouchtime TO 'controller'.pick_l_hip }
{ Replaced ts_l_hip.EventTouchtime TO controller.pick_l_hip }
{ Sample ts_l_hip.EventTouchtime TO controller.pick_l_hip}
Group12.AddRoute(TouchSensor59.EventTouchtime, SFTime4009);
{ .AddX3DRoute }
{ Original "'ts_l_knee'.EventTouchtime TO 'controller'.pick_l_knee }
{ Replaced ts_l_knee.EventTouchtime TO controller.pick_l_knee }
{ Sample ts_l_knee.EventTouchtime TO controller.pick_l_knee}
Group12.AddRoute(TouchSensor74.EventTouchtime, SFTime4010);
{ .AddX3DRoute }
{ Original "'ts_l_talocrural'.EventTouchtime TO 'controller'.pick_l_talocrural }
{ Replaced ts_l_talocrural.EventTouchtime TO controller.pick_l_talocrural }
{ Sample ts_l_talocrural.EventTouchtime TO controller.pick_l_talocrural}
Group12.AddRoute(TouchSensor89.EventTouchtime, SFTime4011);
{ .AddX3DRoute }
{ Original "'ts_l_talocalcaneonavicular'.EventTouchtime TO 'controller'.pick_l_talocalcaneonavicular }
{ Replaced ts_l_talocalcaneonavicular.EventTouchtime TO controller.pick_l_talocalcaneonavicular }
{ Sample ts_l_talocalcaneonavicular.EventTouchtime TO controller.pick_l_talocalcaneonavicular}
Group12.AddRoute(TouchSensor108.EventTouchtime, SFTime4012);
{ .AddX3DRoute }
{ Original "'ts_l_cuneonavicular_1'.EventTouchtime TO 'controller'.pick_l_cuneonavicular_1 }
{ Replaced ts_l_cuneonavicular_1.EventTouchtime TO controller.pick_l_cuneonavicular_1 }
{ Sample ts_l_cuneonavicular_1.EventTouchtime TO controller.pick_l_cuneonavicular_1}
Group12.AddRoute(TouchSensor131.EventTouchtime, SFTime4013);
{ .AddX3DRoute }
{ Original "'ts_l_tarsometatarsal_1'.EventTouchtime TO 'controller'.pick_l_tarsometatarsal_1 }
{ Replaced ts_l_tarsometatarsal_1.EventTouchtime TO controller.pick_l_tarsometatarsal_1 }
{ Sample ts_l_tarsometatarsal_1.EventTouchtime TO controller.pick_l_tarsometatarsal_1}
Group12.AddRoute(TouchSensor146.EventTouchtime, SFTime4014);
{ .AddX3DRoute }
{ Original "'ts_l_metatarsophalangeal_1'.EventTouchtime TO 'controller'.pick_l_metatarsophalangeal_1 }
{ Replaced ts_l_metatarsophalangeal_1.EventTouchtime TO controller.pick_l_metatarsophalangeal_1 }
{ Sample ts_l_metatarsophalangeal_1.EventTouchtime TO controller.pick_l_metatarsophalangeal_1}
Group12.AddRoute(TouchSensor161.EventTouchtime, SFTime4015);
{ .AddX3DRoute }
{ Original "'ts_l_tarsal_interphalangeal_1'.EventTouchtime TO 'controller'.pick_l_tarsal_interphalangeal_1 }
{ Replaced ts_l_tarsal_interphalangeal_1.EventTouchtime TO controller.pick_l_tarsal_interphalangeal_1 }
{ Sample ts_l_tarsal_interphalangeal_1.EventTouchtime TO controller.pick_l_tarsal_interphalangeal_1}
Group12.AddRoute(TouchSensor177.EventTouchtime, SFTime4016);
{ .AddX3DRoute }
{ Original "'ts_l_cuneonavicular_2'.EventTouchtime TO 'controller'.pick_l_cuneonavicular_2 }
{ Replaced ts_l_cuneonavicular_2.EventTouchtime TO controller.pick_l_cuneonavicular_2 }
{ Sample ts_l_cuneonavicular_2.EventTouchtime TO controller.pick_l_cuneonavicular_2}
Group12.AddRoute(TouchSensor191.EventTouchtime, SFTime4017);
{ .AddX3DRoute }
{ Original "'ts_l_tarsometatarsal_2'.EventTouchtime TO 'controller'.pick_l_tarsometatarsal_2 }
{ Replaced ts_l_tarsometatarsal_2.EventTouchtime TO controller.pick_l_tarsometatarsal_2 }
{ Sample ts_l_tarsometatarsal_2.EventTouchtime TO controller.pick_l_tarsometatarsal_2}
Group12.AddRoute(TouchSensor206.EventTouchtime, SFTime4018);
{ .AddX3DRoute }
{ Original "'ts_l_metatarsophalangeal_2'.EventTouchtime TO 'controller'.pick_l_metatarsophalangeal_2 }
{ Replaced ts_l_metatarsophalangeal_2.EventTouchtime TO controller.pick_l_metatarsophalangeal_2 }
{ Sample ts_l_metatarsophalangeal_2.EventTouchtime TO controller.pick_l_metatarsophalangeal_2}
Group12.AddRoute(TouchSensor221.EventTouchtime, SFTime4019);
{ .AddX3DRoute }
{ Original "'ts_l_tarsal_proximal_interphalangeal_2'.EventTouchtime TO 'controller'.pick_l_tarsal_proximal_interphalangeal_2 }
{ Replaced ts_l_tarsal_proximal_interphalangeal_2.EventTouchtime TO controller.pick_l_tarsal_proximal_interphalangeal_2 }
{ Sample ts_l_tarsal_proximal_interphalangeal_2.EventTouchtime TO controller.pick_l_tarsal_proximal_interphalangeal_2}
Group12.AddRoute(TouchSensor236.EventTouchtime, SFTime4020);
{ .AddX3DRoute }
{ Original "'ts_l_tarsal_distal_interphalangeal_2'.EventTouchtime TO 'controller'.pick_l_tarsal_distal_interphalangeal_2 }
{ Replaced ts_l_tarsal_distal_interphalangeal_2.EventTouchtime TO controller.pick_l_tarsal_distal_interphalangeal_2 }
{ Sample ts_l_tarsal_distal_interphalangeal_2.EventTouchtime TO controller.pick_l_tarsal_distal_interphalangeal_2}
Group12.AddRoute(TouchSensor252.EventTouchtime, SFTime4021);
{ .AddX3DRoute }
{ Original "'ts_l_cuneonavicular_3'.EventTouchtime TO 'controller'.pick_l_cuneonavicular_3 }
{ Replaced ts_l_cuneonavicular_3.EventTouchtime TO controller.pick_l_cuneonavicular_3 }
{ Sample ts_l_cuneonavicular_3.EventTouchtime TO controller.pick_l_cuneonavicular_3}
Group12.AddRoute(TouchSensor266.EventTouchtime, SFTime4022);
{ .AddX3DRoute }
{ Original "'ts_l_tarsometatarsal_3'.EventTouchtime TO 'controller'.pick_l_tarsometatarsal_3 }
{ Replaced ts_l_tarsometatarsal_3.EventTouchtime TO controller.pick_l_tarsometatarsal_3 }
{ Sample ts_l_tarsometatarsal_3.EventTouchtime TO controller.pick_l_tarsometatarsal_3}
Group12.AddRoute(TouchSensor281.EventTouchtime, SFTime4023);
{ .AddX3DRoute }
{ Original "'ts_l_metatarsophalangeal_3'.EventTouchtime TO 'controller'.pick_l_metatarsophalangeal_3 }
{ Replaced ts_l_metatarsophalangeal_3.EventTouchtime TO controller.pick_l_metatarsophalangeal_3 }
{ Sample ts_l_metatarsophalangeal_3.EventTouchtime TO controller.pick_l_metatarsophalangeal_3}
Group12.AddRoute(TouchSensor296.EventTouchtime, SFTime4024);
{ .AddX3DRoute }
{ Original "'ts_l_tarsal_proximal_interphalangeal_3'.EventTouchtime TO 'controller'.pick_l_tarsal_proximal_interphalangeal_3 }
{ Replaced ts_l_tarsal_proximal_interphalangeal_3.EventTouchtime TO controller.pick_l_tarsal_proximal_interphalangeal_3 }
{ Sample ts_l_tarsal_proximal_interphalangeal_3.EventTouchtime TO controller.pick_l_tarsal_proximal_interphalangeal_3}
Group12.AddRoute(TouchSensor311.EventTouchtime, SFTime4025);
{ .AddX3DRoute }
{ Original "'ts_l_tarsal_distal_interphalangeal_3'.EventTouchtime TO 'controller'.pick_l_tarsal_distal_interphalangeal_3 }
{ Replaced ts_l_tarsal_distal_interphalangeal_3.EventTouchtime TO controller.pick_l_tarsal_distal_interphalangeal_3 }
{ Sample ts_l_tarsal_distal_interphalangeal_3.EventTouchtime TO controller.pick_l_tarsal_distal_interphalangeal_3}
Group12.AddRoute(TouchSensor327.EventTouchtime, SFTime4026);
{ .AddX3DRoute }
{ Original "'ts_l_calcaneocuboid'.EventTouchtime TO 'controller'.pick_l_calcaneocuboid }
{ Replaced ts_l_calcaneocuboid.EventTouchtime TO controller.pick_l_calcaneocuboid }
{ Sample ts_l_calcaneocuboid.EventTouchtime TO controller.pick_l_calcaneocuboid}
Group12.AddRoute(TouchSensor341.EventTouchtime, SFTime4027);
{ .AddX3DRoute }
{ Original "'ts_l_transversetarsal'.EventTouchtime TO 'controller'.pick_l_transversetarsal }
{ Replaced ts_l_transversetarsal.EventTouchtime TO controller.pick_l_transversetarsal }
{ Sample ts_l_transversetarsal.EventTouchtime TO controller.pick_l_transversetarsal}
Group12.AddRoute(TouchSensor356.EventTouchtime, SFTime4028);
{ .AddX3DRoute }
{ Original "'ts_l_tarsometatarsal_4'.EventTouchtime TO 'controller'.pick_l_tarsometatarsal_4 }
{ Replaced ts_l_tarsometatarsal_4.EventTouchtime TO controller.pick_l_tarsometatarsal_4 }
{ Sample ts_l_tarsometatarsal_4.EventTouchtime TO controller.pick_l_tarsometatarsal_4}
Group12.AddRoute(TouchSensor375.EventTouchtime, SFTime4029);
{ .AddX3DRoute }
{ Original "'ts_l_metatarsophalangeal_4'.EventTouchtime TO 'controller'.pick_l_metatarsophalangeal_4 }
{ Replaced ts_l_metatarsophalangeal_4.EventTouchtime TO controller.pick_l_metatarsophalangeal_4 }
{ Sample ts_l_metatarsophalangeal_4.EventTouchtime TO controller.pick_l_metatarsophalangeal_4}
Group12.AddRoute(TouchSensor390.EventTouchtime, SFTime4030);
{ .AddX3DRoute }
{ Original "'ts_l_tarsal_proximal_interphalangeal_4'.EventTouchtime TO 'controller'.pick_l_tarsal_proximal_interphalangeal_4 }
{ Replaced ts_l_tarsal_proximal_interphalangeal_4.EventTouchtime TO controller.pick_l_tarsal_proximal_interphalangeal_4 }
{ Sample ts_l_tarsal_proximal_interphalangeal_4.EventTouchtime TO controller.pick_l_tarsal_proximal_interphalangeal_4}
Group12.AddRoute(TouchSensor405.EventTouchtime, SFTime4031);
{ .AddX3DRoute }
{ Original "'ts_l_tarsal_distal_interphalangeal_4'.EventTouchtime TO 'controller'.pick_l_tarsal_distal_interphalangeal_4 }
{ Replaced ts_l_tarsal_distal_interphalangeal_4.EventTouchtime TO controller.pick_l_tarsal_distal_interphalangeal_4 }
{ Sample ts_l_tarsal_distal_interphalangeal_4.EventTouchtime TO controller.pick_l_tarsal_distal_interphalangeal_4}
Group12.AddRoute(TouchSensor421.EventTouchtime, SFTime4032);
{ .AddX3DRoute }
{ Original "'ts_l_tarsometatarsal_5'.EventTouchtime TO 'controller'.pick_l_tarsometatarsal_5 }
{ Replaced ts_l_tarsometatarsal_5.EventTouchtime TO controller.pick_l_tarsometatarsal_5 }
{ Sample ts_l_tarsometatarsal_5.EventTouchtime TO controller.pick_l_tarsometatarsal_5}
Group12.AddRoute(TouchSensor435.EventTouchtime, SFTime4033);
{ .AddX3DRoute }
{ Original "'ts_l_metatarsophalangeal_5'.EventTouchtime TO 'controller'.pick_l_metatarsophalangeal_5 }
{ Replaced ts_l_metatarsophalangeal_5.EventTouchtime TO controller.pick_l_metatarsophalangeal_5 }
{ Sample ts_l_metatarsophalangeal_5.EventTouchtime TO controller.pick_l_metatarsophalangeal_5}
Group12.AddRoute(TouchSensor450.EventTouchtime, SFTime4034);
{ .AddX3DRoute }
{ Original "'ts_l_tarsal_proximal_interphalangeal_5'.EventTouchtime TO 'controller'.pick_l_tarsal_proximal_interphalangeal_5 }
{ Replaced ts_l_tarsal_proximal_interphalangeal_5.EventTouchtime TO controller.pick_l_tarsal_proximal_interphalangeal_5 }
{ Sample ts_l_tarsal_proximal_interphalangeal_5.EventTouchtime TO controller.pick_l_tarsal_proximal_interphalangeal_5}
Group12.AddRoute(TouchSensor465.EventTouchtime, SFTime4035);
end;

procedure InitHAnimGimbalJointController22Part290;
begin

{ .AddX3DRoute }
{ Original "'ts_l_tarsal_distal_interphalangeal_5'.EventTouchtime TO 'controller'.pick_l_tarsal_distal_interphalangeal_5 }
{ Replaced ts_l_tarsal_distal_interphalangeal_5.EventTouchtime TO controller.pick_l_tarsal_distal_interphalangeal_5 }
{ Sample ts_l_tarsal_distal_interphalangeal_5.EventTouchtime TO controller.pick_l_tarsal_distal_interphalangeal_5}
Group12.AddRoute(TouchSensor481.EventTouchtime, SFTime4036);
{ .AddX3DRoute }
{ Original "'ts_r_hip'.EventTouchtime TO 'controller'.pick_r_hip }
{ Replaced ts_r_hip.EventTouchtime TO controller.pick_r_hip }
{ Sample ts_r_hip.EventTouchtime TO controller.pick_r_hip}
Group12.AddRoute(TouchSensor495.EventTouchtime, SFTime4037);
{ .AddX3DRoute }
{ Original "'ts_r_knee'.EventTouchtime TO 'controller'.pick_r_knee }
{ Replaced ts_r_knee.EventTouchtime TO controller.pick_r_knee }
{ Sample ts_r_knee.EventTouchtime TO controller.pick_r_knee}
Group12.AddRoute(TouchSensor510.EventTouchtime, SFTime4038);
{ .AddX3DRoute }
{ Original "'ts_r_talocrural'.EventTouchtime TO 'controller'.pick_r_talocrural }
{ Replaced ts_r_talocrural.EventTouchtime TO controller.pick_r_talocrural }
{ Sample ts_r_talocrural.EventTouchtime TO controller.pick_r_talocrural}
Group12.AddRoute(TouchSensor525.EventTouchtime, SFTime4039);
{ .AddX3DRoute }
{ Original "'ts_r_talocalcaneonavicular'.EventTouchtime TO 'controller'.pick_r_talocalcaneonavicular }
{ Replaced ts_r_talocalcaneonavicular.EventTouchtime TO controller.pick_r_talocalcaneonavicular }
{ Sample ts_r_talocalcaneonavicular.EventTouchtime TO controller.pick_r_talocalcaneonavicular}
Group12.AddRoute(TouchSensor544.EventTouchtime, SFTime4040);
{ .AddX3DRoute }
{ Original "'ts_r_cuneonavicular_1'.EventTouchtime TO 'controller'.pick_r_cuneonavicular_1 }
{ Replaced ts_r_cuneonavicular_1.EventTouchtime TO controller.pick_r_cuneonavicular_1 }
{ Sample ts_r_cuneonavicular_1.EventTouchtime TO controller.pick_r_cuneonavicular_1}
Group12.AddRoute(TouchSensor567.EventTouchtime, SFTime4041);
{ .AddX3DRoute }
{ Original "'ts_r_tarsometatarsal_1'.EventTouchtime TO 'controller'.pick_r_tarsometatarsal_1 }
{ Replaced ts_r_tarsometatarsal_1.EventTouchtime TO controller.pick_r_tarsometatarsal_1 }
{ Sample ts_r_tarsometatarsal_1.EventTouchtime TO controller.pick_r_tarsometatarsal_1}
Group12.AddRoute(TouchSensor582.EventTouchtime, SFTime4042);
{ .AddX3DRoute }
{ Original "'ts_r_metatarsophalangeal_1'.EventTouchtime TO 'controller'.pick_r_metatarsophalangeal_1 }
{ Replaced ts_r_metatarsophalangeal_1.EventTouchtime TO controller.pick_r_metatarsophalangeal_1 }
{ Sample ts_r_metatarsophalangeal_1.EventTouchtime TO controller.pick_r_metatarsophalangeal_1}
Group12.AddRoute(TouchSensor597.EventTouchtime, SFTime4043);
{ .AddX3DRoute }
{ Original "'ts_r_tarsal_interphalangeal_1'.EventTouchtime TO 'controller'.pick_r_tarsal_interphalangeal_1 }
{ Replaced ts_r_tarsal_interphalangeal_1.EventTouchtime TO controller.pick_r_tarsal_interphalangeal_1 }
{ Sample ts_r_tarsal_interphalangeal_1.EventTouchtime TO controller.pick_r_tarsal_interphalangeal_1}
Group12.AddRoute(TouchSensor613.EventTouchtime, SFTime4044);
{ .AddX3DRoute }
{ Original "'ts_r_cuneonavicular_2'.EventTouchtime TO 'controller'.pick_r_cuneonavicular_2 }
{ Replaced ts_r_cuneonavicular_2.EventTouchtime TO controller.pick_r_cuneonavicular_2 }
{ Sample ts_r_cuneonavicular_2.EventTouchtime TO controller.pick_r_cuneonavicular_2}
Group12.AddRoute(TouchSensor627.EventTouchtime, SFTime4045);
{ .AddX3DRoute }
{ Original "'ts_r_tarsometatarsal_2'.EventTouchtime TO 'controller'.pick_r_tarsometatarsal_2 }
{ Replaced ts_r_tarsometatarsal_2.EventTouchtime TO controller.pick_r_tarsometatarsal_2 }
{ Sample ts_r_tarsometatarsal_2.EventTouchtime TO controller.pick_r_tarsometatarsal_2}
Group12.AddRoute(TouchSensor642.EventTouchtime, SFTime4046);
{ .AddX3DRoute }
{ Original "'ts_r_metatarsophalangeal_2'.EventTouchtime TO 'controller'.pick_r_metatarsophalangeal_2 }
{ Replaced ts_r_metatarsophalangeal_2.EventTouchtime TO controller.pick_r_metatarsophalangeal_2 }
{ Sample ts_r_metatarsophalangeal_2.EventTouchtime TO controller.pick_r_metatarsophalangeal_2}
Group12.AddRoute(TouchSensor657.EventTouchtime, SFTime4047);
{ .AddX3DRoute }
{ Original "'ts_r_tarsal_proximal_interphalangeal_2'.EventTouchtime TO 'controller'.pick_r_tarsal_proximal_interphalangeal_2 }
{ Replaced ts_r_tarsal_proximal_interphalangeal_2.EventTouchtime TO controller.pick_r_tarsal_proximal_interphalangeal_2 }
{ Sample ts_r_tarsal_proximal_interphalangeal_2.EventTouchtime TO controller.pick_r_tarsal_proximal_interphalangeal_2}
Group12.AddRoute(TouchSensor672.EventTouchtime, SFTime4048);
{ .AddX3DRoute }
{ Original "'ts_r_tarsal_distal_interphalangeal_2'.EventTouchtime TO 'controller'.pick_r_tarsal_distal_interphalangeal_2 }
{ Replaced ts_r_tarsal_distal_interphalangeal_2.EventTouchtime TO controller.pick_r_tarsal_distal_interphalangeal_2 }
{ Sample ts_r_tarsal_distal_interphalangeal_2.EventTouchtime TO controller.pick_r_tarsal_distal_interphalangeal_2}
Group12.AddRoute(TouchSensor688.EventTouchtime, SFTime4049);
{ .AddX3DRoute }
{ Original "'ts_r_cuneonavicular_3'.EventTouchtime TO 'controller'.pick_r_cuneonavicular_3 }
{ Replaced ts_r_cuneonavicular_3.EventTouchtime TO controller.pick_r_cuneonavicular_3 }
{ Sample ts_r_cuneonavicular_3.EventTouchtime TO controller.pick_r_cuneonavicular_3}
Group12.AddRoute(TouchSensor702.EventTouchtime, SFTime4050);
{ .AddX3DRoute }
{ Original "'ts_r_tarsometatarsal_3'.EventTouchtime TO 'controller'.pick_r_tarsometatarsal_3 }
{ Replaced ts_r_tarsometatarsal_3.EventTouchtime TO controller.pick_r_tarsometatarsal_3 }
{ Sample ts_r_tarsometatarsal_3.EventTouchtime TO controller.pick_r_tarsometatarsal_3}
Group12.AddRoute(TouchSensor717.EventTouchtime, SFTime4051);
{ .AddX3DRoute }
{ Original "'ts_r_metatarsophalangeal_3'.EventTouchtime TO 'controller'.pick_r_metatarsophalangeal_3 }
{ Replaced ts_r_metatarsophalangeal_3.EventTouchtime TO controller.pick_r_metatarsophalangeal_3 }
{ Sample ts_r_metatarsophalangeal_3.EventTouchtime TO controller.pick_r_metatarsophalangeal_3}
Group12.AddRoute(TouchSensor732.EventTouchtime, SFTime4052);
{ .AddX3DRoute }
{ Original "'ts_r_tarsal_proximal_interphalangeal_3'.EventTouchtime TO 'controller'.pick_r_tarsal_proximal_interphalangeal_3 }
{ Replaced ts_r_tarsal_proximal_interphalangeal_3.EventTouchtime TO controller.pick_r_tarsal_proximal_interphalangeal_3 }
{ Sample ts_r_tarsal_proximal_interphalangeal_3.EventTouchtime TO controller.pick_r_tarsal_proximal_interphalangeal_3}
Group12.AddRoute(TouchSensor747.EventTouchtime, SFTime4053);
{ .AddX3DRoute }
{ Original "'ts_r_tarsal_distal_interphalangeal_3'.EventTouchtime TO 'controller'.pick_r_tarsal_distal_interphalangeal_3 }
{ Replaced ts_r_tarsal_distal_interphalangeal_3.EventTouchtime TO controller.pick_r_tarsal_distal_interphalangeal_3 }
{ Sample ts_r_tarsal_distal_interphalangeal_3.EventTouchtime TO controller.pick_r_tarsal_distal_interphalangeal_3}
Group12.AddRoute(TouchSensor763.EventTouchtime, SFTime4054);
{ .AddX3DRoute }
{ Original "'ts_r_calcaneocuboid'.EventTouchtime TO 'controller'.pick_r_calcaneocuboid }
{ Replaced ts_r_calcaneocuboid.EventTouchtime TO controller.pick_r_calcaneocuboid }
{ Sample ts_r_calcaneocuboid.EventTouchtime TO controller.pick_r_calcaneocuboid}
Group12.AddRoute(TouchSensor777.EventTouchtime, SFTime4055);
{ .AddX3DRoute }
{ Original "'ts_r_transversetarsal'.EventTouchtime TO 'controller'.pick_r_transversetarsal }
{ Replaced ts_r_transversetarsal.EventTouchtime TO controller.pick_r_transversetarsal }
{ Sample ts_r_transversetarsal.EventTouchtime TO controller.pick_r_transversetarsal}
Group12.AddRoute(TouchSensor792.EventTouchtime, SFTime4056);
{ .AddX3DRoute }
{ Original "'ts_r_tarsometatarsal_4'.EventTouchtime TO 'controller'.pick_r_tarsometatarsal_4 }
{ Replaced ts_r_tarsometatarsal_4.EventTouchtime TO controller.pick_r_tarsometatarsal_4 }
{ Sample ts_r_tarsometatarsal_4.EventTouchtime TO controller.pick_r_tarsometatarsal_4}
Group12.AddRoute(TouchSensor811.EventTouchtime, SFTime4057);
{ .AddX3DRoute }
{ Original "'ts_r_metatarsophalangeal_4'.EventTouchtime TO 'controller'.pick_r_metatarsophalangeal_4 }
{ Replaced ts_r_metatarsophalangeal_4.EventTouchtime TO controller.pick_r_metatarsophalangeal_4 }
{ Sample ts_r_metatarsophalangeal_4.EventTouchtime TO controller.pick_r_metatarsophalangeal_4}
Group12.AddRoute(TouchSensor826.EventTouchtime, SFTime4058);
{ .AddX3DRoute }
{ Original "'ts_r_tarsal_proximal_interphalangeal_4'.EventTouchtime TO 'controller'.pick_r_tarsal_proximal_interphalangeal_4 }
{ Replaced ts_r_tarsal_proximal_interphalangeal_4.EventTouchtime TO controller.pick_r_tarsal_proximal_interphalangeal_4 }
{ Sample ts_r_tarsal_proximal_interphalangeal_4.EventTouchtime TO controller.pick_r_tarsal_proximal_interphalangeal_4}
Group12.AddRoute(TouchSensor841.EventTouchtime, SFTime4059);
{ .AddX3DRoute }
{ Original "'ts_r_tarsal_distal_interphalangeal_4'.EventTouchtime TO 'controller'.pick_r_tarsal_distal_interphalangeal_4 }
{ Replaced ts_r_tarsal_distal_interphalangeal_4.EventTouchtime TO controller.pick_r_tarsal_distal_interphalangeal_4 }
{ Sample ts_r_tarsal_distal_interphalangeal_4.EventTouchtime TO controller.pick_r_tarsal_distal_interphalangeal_4}
Group12.AddRoute(TouchSensor857.EventTouchtime, SFTime4060);
{ .AddX3DRoute }
{ Original "'ts_r_tarsometatarsal_5'.EventTouchtime TO 'controller'.pick_r_tarsometatarsal_5 }
{ Replaced ts_r_tarsometatarsal_5.EventTouchtime TO controller.pick_r_tarsometatarsal_5 }
{ Sample ts_r_tarsometatarsal_5.EventTouchtime TO controller.pick_r_tarsometatarsal_5}
Group12.AddRoute(TouchSensor871.EventTouchtime, SFTime4061);
{ .AddX3DRoute }
{ Original "'ts_r_metatarsophalangeal_5'.EventTouchtime TO 'controller'.pick_r_metatarsophalangeal_5 }
{ Replaced ts_r_metatarsophalangeal_5.EventTouchtime TO controller.pick_r_metatarsophalangeal_5 }
{ Sample ts_r_metatarsophalangeal_5.EventTouchtime TO controller.pick_r_metatarsophalangeal_5}
Group12.AddRoute(TouchSensor886.EventTouchtime, SFTime4062);
{ .AddX3DRoute }
{ Original "'ts_r_tarsal_proximal_interphalangeal_5'.EventTouchtime TO 'controller'.pick_r_tarsal_proximal_interphalangeal_5 }
{ Replaced ts_r_tarsal_proximal_interphalangeal_5.EventTouchtime TO controller.pick_r_tarsal_proximal_interphalangeal_5 }
{ Sample ts_r_tarsal_proximal_interphalangeal_5.EventTouchtime TO controller.pick_r_tarsal_proximal_interphalangeal_5}
Group12.AddRoute(TouchSensor901.EventTouchtime, SFTime4063);
{ .AddX3DRoute }
{ Original "'ts_r_tarsal_distal_interphalangeal_5'.EventTouchtime TO 'controller'.pick_r_tarsal_distal_interphalangeal_5 }
{ Replaced ts_r_tarsal_distal_interphalangeal_5.EventTouchtime TO controller.pick_r_tarsal_distal_interphalangeal_5 }
{ Sample ts_r_tarsal_distal_interphalangeal_5.EventTouchtime TO controller.pick_r_tarsal_distal_interphalangeal_5}
Group12.AddRoute(TouchSensor917.EventTouchtime, SFTime4064);
{ .AddX3DRoute }
{ Original "'ts_vl5'.EventTouchtime TO 'controller'.pick_vl5 }
{ Replaced ts_vl5.EventTouchtime TO controller.pick_vl5 }
{ Sample ts_vl5.EventTouchtime TO controller.pick_vl5}
Group12.AddRoute(TouchSensor931.EventTouchtime, SFTime4065);
{ .AddX3DRoute }
{ Original "'ts_vl4'.EventTouchtime TO 'controller'.pick_vl4 }
{ Replaced ts_vl4.EventTouchtime TO controller.pick_vl4 }
{ Sample ts_vl4.EventTouchtime TO controller.pick_vl4}
Group12.AddRoute(TouchSensor946.EventTouchtime, SFTime4066);
{ .AddX3DRoute }
{ Original "'ts_vl3'.EventTouchtime TO 'controller'.pick_vl3 }
{ Replaced ts_vl3.EventTouchtime TO controller.pick_vl3 }
{ Sample ts_vl3.EventTouchtime TO controller.pick_vl3}
Group12.AddRoute(TouchSensor961.EventTouchtime, SFTime4067);
{ .AddX3DRoute }
{ Original "'ts_vl2'.EventTouchtime TO 'controller'.pick_vl2 }
{ Replaced ts_vl2.EventTouchtime TO controller.pick_vl2 }
{ Sample ts_vl2.EventTouchtime TO controller.pick_vl2}
Group12.AddRoute(TouchSensor976.EventTouchtime, SFTime4068);
{ .AddX3DRoute }
{ Original "'ts_vl1'.EventTouchtime TO 'controller'.pick_vl1 }
{ Replaced ts_vl1.EventTouchtime TO controller.pick_vl1 }
{ Sample ts_vl1.EventTouchtime TO controller.pick_vl1}
Group12.AddRoute(TouchSensor991.EventTouchtime, SFTime4069);
end;

procedure InitHAnimGimbalJointController22Part291;
begin

{ .AddX3DRoute }
{ Original "'ts_vt12'.EventTouchtime TO 'controller'.pick_vt12 }
{ Replaced ts_vt12.EventTouchtime TO controller.pick_vt12 }
{ Sample ts_vt12.EventTouchtime TO controller.pick_vt12}
Group12.AddRoute(TouchSensor1006.EventTouchtime, SFTime4070);
{ .AddX3DRoute }
{ Original "'ts_vt11'.EventTouchtime TO 'controller'.pick_vt11 }
{ Replaced ts_vt11.EventTouchtime TO controller.pick_vt11 }
{ Sample ts_vt11.EventTouchtime TO controller.pick_vt11}
Group12.AddRoute(TouchSensor1021.EventTouchtime, SFTime4071);
{ .AddX3DRoute }
{ Original "'ts_vt10'.EventTouchtime TO 'controller'.pick_vt10 }
{ Replaced ts_vt10.EventTouchtime TO controller.pick_vt10 }
{ Sample ts_vt10.EventTouchtime TO controller.pick_vt10}
Group12.AddRoute(TouchSensor1036.EventTouchtime, SFTime4072);
{ .AddX3DRoute }
{ Original "'ts_vt9'.EventTouchtime TO 'controller'.pick_vt9 }
{ Replaced ts_vt9.EventTouchtime TO controller.pick_vt9 }
{ Sample ts_vt9.EventTouchtime TO controller.pick_vt9}
Group12.AddRoute(TouchSensor1051.EventTouchtime, SFTime4073);
{ .AddX3DRoute }
{ Original "'ts_vt8'.EventTouchtime TO 'controller'.pick_vt8 }
{ Replaced ts_vt8.EventTouchtime TO controller.pick_vt8 }
{ Sample ts_vt8.EventTouchtime TO controller.pick_vt8}
Group12.AddRoute(TouchSensor1066.EventTouchtime, SFTime4074);
{ .AddX3DRoute }
{ Original "'ts_vt7'.EventTouchtime TO 'controller'.pick_vt7 }
{ Replaced ts_vt7.EventTouchtime TO controller.pick_vt7 }
{ Sample ts_vt7.EventTouchtime TO controller.pick_vt7}
Group12.AddRoute(TouchSensor1081.EventTouchtime, SFTime4075);
{ .AddX3DRoute }
{ Original "'ts_vt6'.EventTouchtime TO 'controller'.pick_vt6 }
{ Replaced ts_vt6.EventTouchtime TO controller.pick_vt6 }
{ Sample ts_vt6.EventTouchtime TO controller.pick_vt6}
Group12.AddRoute(TouchSensor1096.EventTouchtime, SFTime4076);
{ .AddX3DRoute }
{ Original "'ts_vt5'.EventTouchtime TO 'controller'.pick_vt5 }
{ Replaced ts_vt5.EventTouchtime TO controller.pick_vt5 }
{ Sample ts_vt5.EventTouchtime TO controller.pick_vt5}
Group12.AddRoute(TouchSensor1111.EventTouchtime, SFTime4077);
{ .AddX3DRoute }
{ Original "'ts_vt4'.EventTouchtime TO 'controller'.pick_vt4 }
{ Replaced ts_vt4.EventTouchtime TO controller.pick_vt4 }
{ Sample ts_vt4.EventTouchtime TO controller.pick_vt4}
Group12.AddRoute(TouchSensor1126.EventTouchtime, SFTime4078);
{ .AddX3DRoute }
{ Original "'ts_vt3'.EventTouchtime TO 'controller'.pick_vt3 }
{ Replaced ts_vt3.EventTouchtime TO controller.pick_vt3 }
{ Sample ts_vt3.EventTouchtime TO controller.pick_vt3}
Group12.AddRoute(TouchSensor1141.EventTouchtime, SFTime4079);
{ .AddX3DRoute }
{ Original "'ts_vt2'.EventTouchtime TO 'controller'.pick_vt2 }
{ Replaced ts_vt2.EventTouchtime TO controller.pick_vt2 }
{ Sample ts_vt2.EventTouchtime TO controller.pick_vt2}
Group12.AddRoute(TouchSensor1156.EventTouchtime, SFTime4080);
{ .AddX3DRoute }
{ Original "'ts_vt1'.EventTouchtime TO 'controller'.pick_vt1 }
{ Replaced ts_vt1.EventTouchtime TO controller.pick_vt1 }
{ Sample ts_vt1.EventTouchtime TO controller.pick_vt1}
Group12.AddRoute(TouchSensor1171.EventTouchtime, SFTime4081);
{ .AddX3DRoute }
{ Original "'ts_vc7'.EventTouchtime TO 'controller'.pick_vc7 }
{ Replaced ts_vc7.EventTouchtime TO controller.pick_vc7 }
{ Sample ts_vc7.EventTouchtime TO controller.pick_vc7}
Group12.AddRoute(TouchSensor1194.EventTouchtime, SFTime4082);
{ .AddX3DRoute }
{ Original "'ts_vc6'.EventTouchtime TO 'controller'.pick_vc6 }
{ Replaced ts_vc6.EventTouchtime TO controller.pick_vc6 }
{ Sample ts_vc6.EventTouchtime TO controller.pick_vc6}
Group12.AddRoute(TouchSensor1209.EventTouchtime, SFTime4083);
{ .AddX3DRoute }
{ Original "'ts_vc5'.EventTouchtime TO 'controller'.pick_vc5 }
{ Replaced ts_vc5.EventTouchtime TO controller.pick_vc5 }
{ Sample ts_vc5.EventTouchtime TO controller.pick_vc5}
Group12.AddRoute(TouchSensor1224.EventTouchtime, SFTime4084);
{ .AddX3DRoute }
{ Original "'ts_vc4'.EventTouchtime TO 'controller'.pick_vc4 }
{ Replaced ts_vc4.EventTouchtime TO controller.pick_vc4 }
{ Sample ts_vc4.EventTouchtime TO controller.pick_vc4}
Group12.AddRoute(TouchSensor1239.EventTouchtime, SFTime4085);
{ .AddX3DRoute }
{ Original "'ts_vc3'.EventTouchtime TO 'controller'.pick_vc3 }
{ Replaced ts_vc3.EventTouchtime TO controller.pick_vc3 }
{ Sample ts_vc3.EventTouchtime TO controller.pick_vc3}
Group12.AddRoute(TouchSensor1254.EventTouchtime, SFTime4086);
{ .AddX3DRoute }
{ Original "'ts_vc2'.EventTouchtime TO 'controller'.pick_vc2 }
{ Replaced ts_vc2.EventTouchtime TO controller.pick_vc2 }
{ Sample ts_vc2.EventTouchtime TO controller.pick_vc2}
Group12.AddRoute(TouchSensor1269.EventTouchtime, SFTime4087);
{ .AddX3DRoute }
{ Original "'ts_vc1'.EventTouchtime TO 'controller'.pick_vc1 }
{ Replaced ts_vc1.EventTouchtime TO controller.pick_vc1 }
{ Sample ts_vc1.EventTouchtime TO controller.pick_vc1}
Group12.AddRoute(TouchSensor1284.EventTouchtime, SFTime4088);
{ .AddX3DRoute }
{ Original "'ts_skullbase'.EventTouchtime TO 'controller'.pick_skullbase }
{ Replaced ts_skullbase.EventTouchtime TO controller.pick_skullbase }
{ Sample ts_skullbase.EventTouchtime TO controller.pick_skullbase}
Group12.AddRoute(TouchSensor1299.EventTouchtime, SFTime4089);
{ .AddX3DRoute }
{ Original "'ts_l_eyelid_joint'.EventTouchtime TO 'controller'.pick_l_eyelid_joint }
{ Replaced ts_l_eyelid_joint.EventTouchtime TO controller.pick_l_eyelid_joint }
{ Sample ts_l_eyelid_joint.EventTouchtime TO controller.pick_l_eyelid_joint}
Group12.AddRoute(TouchSensor1339.EventTouchtime, SFTime4090);
{ .AddX3DRoute }
{ Original "'ts_r_eyelid_joint'.EventTouchtime TO 'controller'.pick_r_eyelid_joint }
{ Replaced ts_r_eyelid_joint.EventTouchtime TO controller.pick_r_eyelid_joint }
{ Sample ts_r_eyelid_joint.EventTouchtime TO controller.pick_r_eyelid_joint}
Group12.AddRoute(TouchSensor1354.EventTouchtime, SFTime4091);
{ .AddX3DRoute }
{ Original "'ts_l_eyeball_joint'.EventTouchtime TO 'controller'.pick_l_eyeball_joint }
{ Replaced ts_l_eyeball_joint.EventTouchtime TO controller.pick_l_eyeball_joint }
{ Sample ts_l_eyeball_joint.EventTouchtime TO controller.pick_l_eyeball_joint}
Group12.AddRoute(TouchSensor1369.EventTouchtime, SFTime4092);
{ .AddX3DRoute }
{ Original "'ts_r_eyeball_joint'.EventTouchtime TO 'controller'.pick_r_eyeball_joint }
{ Replaced ts_r_eyeball_joint.EventTouchtime TO controller.pick_r_eyeball_joint }
{ Sample ts_r_eyeball_joint.EventTouchtime TO controller.pick_r_eyeball_joint}
Group12.AddRoute(TouchSensor1384.EventTouchtime, SFTime4093);
{ .AddX3DRoute }
{ Original "'ts_l_eyebrow_joint'.EventTouchtime TO 'controller'.pick_l_eyebrow_joint }
{ Replaced ts_l_eyebrow_joint.EventTouchtime TO controller.pick_l_eyebrow_joint }
{ Sample ts_l_eyebrow_joint.EventTouchtime TO controller.pick_l_eyebrow_joint}
Group12.AddRoute(TouchSensor1399.EventTouchtime, SFTime4094);
{ .AddX3DRoute }
{ Original "'ts_r_eyebrow_joint'.EventTouchtime TO 'controller'.pick_r_eyebrow_joint }
{ Replaced ts_r_eyebrow_joint.EventTouchtime TO controller.pick_r_eyebrow_joint }
{ Sample ts_r_eyebrow_joint.EventTouchtime TO controller.pick_r_eyebrow_joint}
Group12.AddRoute(TouchSensor1414.EventTouchtime, SFTime4095);
{ .AddX3DRoute }
{ Original "'ts_temporomandibular'.EventTouchtime TO 'controller'.pick_temporomandibular }
{ Replaced ts_temporomandibular.EventTouchtime TO controller.pick_temporomandibular }
{ Sample ts_temporomandibular.EventTouchtime TO controller.pick_temporomandibular}
Group12.AddRoute(TouchSensor1429.EventTouchtime, SFTime4096);
{ .AddX3DRoute }
{ Original "'ts_l_sternoclavicular'.EventTouchtime TO 'controller'.pick_l_sternoclavicular }
{ Replaced ts_l_sternoclavicular.EventTouchtime TO controller.pick_l_sternoclavicular }
{ Sample ts_l_sternoclavicular.EventTouchtime TO controller.pick_l_sternoclavicular}
Group12.AddRoute(TouchSensor1443.EventTouchtime, SFTime4097);
{ .AddX3DRoute }
{ Original "'ts_l_acromioclavicular'.EventTouchtime TO 'controller'.pick_l_acromioclavicular }
{ Replaced ts_l_acromioclavicular.EventTouchtime TO controller.pick_l_acromioclavicular }
{ Sample ts_l_acromioclavicular.EventTouchtime TO controller.pick_l_acromioclavicular}
Group12.AddRoute(TouchSensor1458.EventTouchtime, SFTime4098);
{ .AddX3DRoute }
{ Original "'ts_l_shoulder'.EventTouchtime TO 'controller'.pick_l_shoulder }
{ Replaced ts_l_shoulder.EventTouchtime TO controller.pick_l_shoulder }
{ Sample ts_l_shoulder.EventTouchtime TO controller.pick_l_shoulder}
Group12.AddRoute(TouchSensor1473.EventTouchtime, SFTime4099);
{ .AddX3DRoute }
{ Original "'ts_l_elbow'.EventTouchtime TO 'controller'.pick_l_elbow }
{ Replaced ts_l_elbow.EventTouchtime TO controller.pick_l_elbow }
{ Sample ts_l_elbow.EventTouchtime TO controller.pick_l_elbow}
Group12.AddRoute(TouchSensor1488.EventTouchtime, SFTime4100);
{ .AddX3DRoute }
{ Original "'ts_l_radiocarpal'.EventTouchtime TO 'controller'.pick_l_radiocarpal }
{ Replaced ts_l_radiocarpal.EventTouchtime TO controller.pick_l_radiocarpal }
{ Sample ts_l_radiocarpal.EventTouchtime TO controller.pick_l_radiocarpal}
Group12.AddRoute(TouchSensor1503.EventTouchtime, SFTime4101);
{ .AddX3DRoute }
{ Original "'ts_l_midcarpal_1'.EventTouchtime TO 'controller'.pick_l_midcarpal_1 }
{ Replaced ts_l_midcarpal_1.EventTouchtime TO controller.pick_l_midcarpal_1 }
{ Sample ts_l_midcarpal_1.EventTouchtime TO controller.pick_l_midcarpal_1}
Group12.AddRoute(TouchSensor1530.EventTouchtime, SFTime4102);
{ .AddX3DRoute }
{ Original "'ts_l_carpometacarpal_1'.EventTouchtime TO 'controller'.pick_l_carpometacarpal_1 }
{ Replaced ts_l_carpometacarpal_1.EventTouchtime TO controller.pick_l_carpometacarpal_1 }
{ Sample ts_l_carpometacarpal_1.EventTouchtime TO controller.pick_l_carpometacarpal_1}
Group12.AddRoute(TouchSensor1545.EventTouchtime, SFTime4103);
{ .AddX3DRoute }
{ Original "'ts_l_metacarpophalangeal_1'.EventTouchtime TO 'controller'.pick_l_metacarpophalangeal_1 }
{ Replaced ts_l_metacarpophalangeal_1.EventTouchtime TO controller.pick_l_metacarpophalangeal_1 }
{ Sample ts_l_metacarpophalangeal_1.EventTouchtime TO controller.pick_l_metacarpophalangeal_1}
Group12.AddRoute(TouchSensor1560.EventTouchtime, SFTime4104);
{ .AddX3DRoute }
{ Original "'ts_l_carpal_interphalangeal_1'.EventTouchtime TO 'controller'.pick_l_carpal_interphalangeal_1 }
{ Replaced ts_l_carpal_interphalangeal_1.EventTouchtime TO controller.pick_l_carpal_interphalangeal_1 }
{ Sample ts_l_carpal_interphalangeal_1.EventTouchtime TO controller.pick_l_carpal_interphalangeal_1}
Group12.AddRoute(TouchSensor1576.EventTouchtime, SFTime4105);
{ .AddX3DRoute }
{ Original "'ts_l_midcarpal_2'.EventTouchtime TO 'controller'.pick_l_midcarpal_2 }
{ Replaced ts_l_midcarpal_2.EventTouchtime TO controller.pick_l_midcarpal_2 }
{ Sample ts_l_midcarpal_2.EventTouchtime TO controller.pick_l_midcarpal_2}
Group12.AddRoute(TouchSensor1590.EventTouchtime, SFTime4106);
{ .AddX3DRoute }
{ Original "'ts_l_carpometacarpal_2'.EventTouchtime TO 'controller'.pick_l_carpometacarpal_2 }
{ Replaced ts_l_carpometacarpal_2.EventTouchtime TO controller.pick_l_carpometacarpal_2 }
{ Sample ts_l_carpometacarpal_2.EventTouchtime TO controller.pick_l_carpometacarpal_2}
Group12.AddRoute(TouchSensor1605.EventTouchtime, SFTime4107);
{ .AddX3DRoute }
{ Original "'ts_l_metacarpophalangeal_2'.EventTouchtime TO 'controller'.pick_l_metacarpophalangeal_2 }
{ Replaced ts_l_metacarpophalangeal_2.EventTouchtime TO controller.pick_l_metacarpophalangeal_2 }
{ Sample ts_l_metacarpophalangeal_2.EventTouchtime TO controller.pick_l_metacarpophalangeal_2}
Group12.AddRoute(TouchSensor1620.EventTouchtime, SFTime4108);
{ .AddX3DRoute }
{ Original "'ts_l_carpal_proximal_interphalangeal_2'.EventTouchtime TO 'controller'.pick_l_carpal_proximal_interphalangeal_2 }
{ Replaced ts_l_carpal_proximal_interphalangeal_2.EventTouchtime TO controller.pick_l_carpal_proximal_interphalangeal_2 }
{ Sample ts_l_carpal_proximal_interphalangeal_2.EventTouchtime TO controller.pick_l_carpal_proximal_interphalangeal_2}
Group12.AddRoute(TouchSensor1635.EventTouchtime, SFTime4109);
end;

procedure InitHAnimGimbalJointController22Part292;
begin

{ .AddX3DRoute }
{ Original "'ts_l_carpal_distal_interphalangeal_2'.EventTouchtime TO 'controller'.pick_l_carpal_distal_interphalangeal_2 }
{ Replaced ts_l_carpal_distal_interphalangeal_2.EventTouchtime TO controller.pick_l_carpal_distal_interphalangeal_2 }
{ Sample ts_l_carpal_distal_interphalangeal_2.EventTouchtime TO controller.pick_l_carpal_distal_interphalangeal_2}
Group12.AddRoute(TouchSensor1651.EventTouchtime, SFTime4110);
{ .AddX3DRoute }
{ Original "'ts_l_midcarpal_3'.EventTouchtime TO 'controller'.pick_l_midcarpal_3 }
{ Replaced ts_l_midcarpal_3.EventTouchtime TO controller.pick_l_midcarpal_3 }
{ Sample ts_l_midcarpal_3.EventTouchtime TO controller.pick_l_midcarpal_3}
Group12.AddRoute(TouchSensor1665.EventTouchtime, SFTime4111);
{ .AddX3DRoute }
{ Original "'ts_l_carpometacarpal_3'.EventTouchtime TO 'controller'.pick_l_carpometacarpal_3 }
{ Replaced ts_l_carpometacarpal_3.EventTouchtime TO controller.pick_l_carpometacarpal_3 }
{ Sample ts_l_carpometacarpal_3.EventTouchtime TO controller.pick_l_carpometacarpal_3}
Group12.AddRoute(TouchSensor1680.EventTouchtime, SFTime4112);
{ .AddX3DRoute }
{ Original "'ts_l_metacarpophalangeal_3'.EventTouchtime TO 'controller'.pick_l_metacarpophalangeal_3 }
{ Replaced ts_l_metacarpophalangeal_3.EventTouchtime TO controller.pick_l_metacarpophalangeal_3 }
{ Sample ts_l_metacarpophalangeal_3.EventTouchtime TO controller.pick_l_metacarpophalangeal_3}
Group12.AddRoute(TouchSensor1695.EventTouchtime, SFTime4113);
{ .AddX3DRoute }
{ Original "'ts_l_carpal_proximal_interphalangeal_3'.EventTouchtime TO 'controller'.pick_l_carpal_proximal_interphalangeal_3 }
{ Replaced ts_l_carpal_proximal_interphalangeal_3.EventTouchtime TO controller.pick_l_carpal_proximal_interphalangeal_3 }
{ Sample ts_l_carpal_proximal_interphalangeal_3.EventTouchtime TO controller.pick_l_carpal_proximal_interphalangeal_3}
Group12.AddRoute(TouchSensor1710.EventTouchtime, SFTime4114);
{ .AddX3DRoute }
{ Original "'ts_l_carpal_distal_interphalangeal_3'.EventTouchtime TO 'controller'.pick_l_carpal_distal_interphalangeal_3 }
{ Replaced ts_l_carpal_distal_interphalangeal_3.EventTouchtime TO controller.pick_l_carpal_distal_interphalangeal_3 }
{ Sample ts_l_carpal_distal_interphalangeal_3.EventTouchtime TO controller.pick_l_carpal_distal_interphalangeal_3}
Group12.AddRoute(TouchSensor1726.EventTouchtime, SFTime4115);
{ .AddX3DRoute }
{ Original "'ts_l_midcarpal_4_5'.EventTouchtime TO 'controller'.pick_l_midcarpal_4_5 }
{ Replaced ts_l_midcarpal_4_5.EventTouchtime TO controller.pick_l_midcarpal_4_5 }
{ Sample ts_l_midcarpal_4_5.EventTouchtime TO controller.pick_l_midcarpal_4_5}
Group12.AddRoute(TouchSensor1740.EventTouchtime, SFTime4116);
{ .AddX3DRoute }
{ Original "'ts_l_carpometacarpal_4'.EventTouchtime TO 'controller'.pick_l_carpometacarpal_4 }
{ Replaced ts_l_carpometacarpal_4.EventTouchtime TO controller.pick_l_carpometacarpal_4 }
{ Sample ts_l_carpometacarpal_4.EventTouchtime TO controller.pick_l_carpometacarpal_4}
Group12.AddRoute(TouchSensor1759.EventTouchtime, SFTime4117);
{ .AddX3DRoute }
{ Original "'ts_l_metacarpophalangeal_4'.EventTouchtime TO 'controller'.pick_l_metacarpophalangeal_4 }
{ Replaced ts_l_metacarpophalangeal_4.EventTouchtime TO controller.pick_l_metacarpophalangeal_4 }
{ Sample ts_l_metacarpophalangeal_4.EventTouchtime TO controller.pick_l_metacarpophalangeal_4}
Group12.AddRoute(TouchSensor1774.EventTouchtime, SFTime4118);
{ .AddX3DRoute }
{ Original "'ts_l_carpal_proximal_interphalangeal_4'.EventTouchtime TO 'controller'.pick_l_carpal_proximal_interphalangeal_4 }
{ Replaced ts_l_carpal_proximal_interphalangeal_4.EventTouchtime TO controller.pick_l_carpal_proximal_interphalangeal_4 }
{ Sample ts_l_carpal_proximal_interphalangeal_4.EventTouchtime TO controller.pick_l_carpal_proximal_interphalangeal_4}
Group12.AddRoute(TouchSensor1789.EventTouchtime, SFTime4119);
{ .AddX3DRoute }
{ Original "'ts_l_carpal_distal_interphalangeal_4'.EventTouchtime TO 'controller'.pick_l_carpal_distal_interphalangeal_4 }
{ Replaced ts_l_carpal_distal_interphalangeal_4.EventTouchtime TO controller.pick_l_carpal_distal_interphalangeal_4 }
{ Sample ts_l_carpal_distal_interphalangeal_4.EventTouchtime TO controller.pick_l_carpal_distal_interphalangeal_4}
Group12.AddRoute(TouchSensor1805.EventTouchtime, SFTime4120);
{ .AddX3DRoute }
{ Original "'ts_l_carpometacarpal_5'.EventTouchtime TO 'controller'.pick_l_carpometacarpal_5 }
{ Replaced ts_l_carpometacarpal_5.EventTouchtime TO controller.pick_l_carpometacarpal_5 }
{ Sample ts_l_carpometacarpal_5.EventTouchtime TO controller.pick_l_carpometacarpal_5}
Group12.AddRoute(TouchSensor1819.EventTouchtime, SFTime4121);
{ .AddX3DRoute }
{ Original "'ts_l_metacarpophalangeal_5'.EventTouchtime TO 'controller'.pick_l_metacarpophalangeal_5 }
{ Replaced ts_l_metacarpophalangeal_5.EventTouchtime TO controller.pick_l_metacarpophalangeal_5 }
{ Sample ts_l_metacarpophalangeal_5.EventTouchtime TO controller.pick_l_metacarpophalangeal_5}
Group12.AddRoute(TouchSensor1834.EventTouchtime, SFTime4122);
{ .AddX3DRoute }
{ Original "'ts_l_carpal_proximal_interphalangeal_5'.EventTouchtime TO 'controller'.pick_l_carpal_proximal_interphalangeal_5 }
{ Replaced ts_l_carpal_proximal_interphalangeal_5.EventTouchtime TO controller.pick_l_carpal_proximal_interphalangeal_5 }
{ Sample ts_l_carpal_proximal_interphalangeal_5.EventTouchtime TO controller.pick_l_carpal_proximal_interphalangeal_5}
Group12.AddRoute(TouchSensor1849.EventTouchtime, SFTime4123);
{ .AddX3DRoute }
{ Original "'ts_l_carpal_distal_interphalangeal_5'.EventTouchtime TO 'controller'.pick_l_carpal_distal_interphalangeal_5 }
{ Replaced ts_l_carpal_distal_interphalangeal_5.EventTouchtime TO controller.pick_l_carpal_distal_interphalangeal_5 }
{ Sample ts_l_carpal_distal_interphalangeal_5.EventTouchtime TO controller.pick_l_carpal_distal_interphalangeal_5}
Group12.AddRoute(TouchSensor1865.EventTouchtime, SFTime4124);
{ .AddX3DRoute }
{ Original "'ts_r_sternoclavicular'.EventTouchtime TO 'controller'.pick_r_sternoclavicular }
{ Replaced ts_r_sternoclavicular.EventTouchtime TO controller.pick_r_sternoclavicular }
{ Sample ts_r_sternoclavicular.EventTouchtime TO controller.pick_r_sternoclavicular}
Group12.AddRoute(TouchSensor1879.EventTouchtime, SFTime4125);
{ .AddX3DRoute }
{ Original "'ts_r_acromioclavicular'.EventTouchtime TO 'controller'.pick_r_acromioclavicular }
{ Replaced ts_r_acromioclavicular.EventTouchtime TO controller.pick_r_acromioclavicular }
{ Sample ts_r_acromioclavicular.EventTouchtime TO controller.pick_r_acromioclavicular}
Group12.AddRoute(TouchSensor1894.EventTouchtime, SFTime4126);
{ .AddX3DRoute }
{ Original "'ts_r_shoulder'.EventTouchtime TO 'controller'.pick_r_shoulder }
{ Replaced ts_r_shoulder.EventTouchtime TO controller.pick_r_shoulder }
{ Sample ts_r_shoulder.EventTouchtime TO controller.pick_r_shoulder}
Group12.AddRoute(TouchSensor1909.EventTouchtime, SFTime4127);
{ .AddX3DRoute }
{ Original "'ts_r_elbow'.EventTouchtime TO 'controller'.pick_r_elbow }
{ Replaced ts_r_elbow.EventTouchtime TO controller.pick_r_elbow }
{ Sample ts_r_elbow.EventTouchtime TO controller.pick_r_elbow}
Group12.AddRoute(TouchSensor1924.EventTouchtime, SFTime4128);
{ .AddX3DRoute }
{ Original "'ts_r_radiocarpal'.EventTouchtime TO 'controller'.pick_r_radiocarpal }
{ Replaced ts_r_radiocarpal.EventTouchtime TO controller.pick_r_radiocarpal }
{ Sample ts_r_radiocarpal.EventTouchtime TO controller.pick_r_radiocarpal}
Group12.AddRoute(TouchSensor1939.EventTouchtime, SFTime4129);
{ .AddX3DRoute }
{ Original "'ts_r_midcarpal_1'.EventTouchtime TO 'controller'.pick_r_midcarpal_1 }
{ Replaced ts_r_midcarpal_1.EventTouchtime TO controller.pick_r_midcarpal_1 }
{ Sample ts_r_midcarpal_1.EventTouchtime TO controller.pick_r_midcarpal_1}
Group12.AddRoute(TouchSensor1966.EventTouchtime, SFTime4130);
{ .AddX3DRoute }
{ Original "'ts_r_carpometacarpal_1'.EventTouchtime TO 'controller'.pick_r_carpometacarpal_1 }
{ Replaced ts_r_carpometacarpal_1.EventTouchtime TO controller.pick_r_carpometacarpal_1 }
{ Sample ts_r_carpometacarpal_1.EventTouchtime TO controller.pick_r_carpometacarpal_1}
Group12.AddRoute(TouchSensor1981.EventTouchtime, SFTime4131);
{ .AddX3DRoute }
{ Original "'ts_r_metacarpophalangeal_1'.EventTouchtime TO 'controller'.pick_r_metacarpophalangeal_1 }
{ Replaced ts_r_metacarpophalangeal_1.EventTouchtime TO controller.pick_r_metacarpophalangeal_1 }
{ Sample ts_r_metacarpophalangeal_1.EventTouchtime TO controller.pick_r_metacarpophalangeal_1}
Group12.AddRoute(TouchSensor1996.EventTouchtime, SFTime4132);
{ .AddX3DRoute }
{ Original "'ts_r_carpal_interphalangeal_1'.EventTouchtime TO 'controller'.pick_r_carpal_interphalangeal_1 }
{ Replaced ts_r_carpal_interphalangeal_1.EventTouchtime TO controller.pick_r_carpal_interphalangeal_1 }
{ Sample ts_r_carpal_interphalangeal_1.EventTouchtime TO controller.pick_r_carpal_interphalangeal_1}
Group12.AddRoute(TouchSensor2012.EventTouchtime, SFTime4133);
{ .AddX3DRoute }
{ Original "'ts_r_midcarpal_2'.EventTouchtime TO 'controller'.pick_r_midcarpal_2 }
{ Replaced ts_r_midcarpal_2.EventTouchtime TO controller.pick_r_midcarpal_2 }
{ Sample ts_r_midcarpal_2.EventTouchtime TO controller.pick_r_midcarpal_2}
Group12.AddRoute(TouchSensor2026.EventTouchtime, SFTime4134);
{ .AddX3DRoute }
{ Original "'ts_r_carpometacarpal_2'.EventTouchtime TO 'controller'.pick_r_carpometacarpal_2 }
{ Replaced ts_r_carpometacarpal_2.EventTouchtime TO controller.pick_r_carpometacarpal_2 }
{ Sample ts_r_carpometacarpal_2.EventTouchtime TO controller.pick_r_carpometacarpal_2}
Group12.AddRoute(TouchSensor2041.EventTouchtime, SFTime4135);
{ .AddX3DRoute }
{ Original "'ts_r_metacarpophalangeal_2'.EventTouchtime TO 'controller'.pick_r_metacarpophalangeal_2 }
{ Replaced ts_r_metacarpophalangeal_2.EventTouchtime TO controller.pick_r_metacarpophalangeal_2 }
{ Sample ts_r_metacarpophalangeal_2.EventTouchtime TO controller.pick_r_metacarpophalangeal_2}
Group12.AddRoute(TouchSensor2056.EventTouchtime, SFTime4136);
{ .AddX3DRoute }
{ Original "'ts_r_carpal_proximal_interphalangeal_2'.EventTouchtime TO 'controller'.pick_r_carpal_proximal_interphalangeal_2 }
{ Replaced ts_r_carpal_proximal_interphalangeal_2.EventTouchtime TO controller.pick_r_carpal_proximal_interphalangeal_2 }
{ Sample ts_r_carpal_proximal_interphalangeal_2.EventTouchtime TO controller.pick_r_carpal_proximal_interphalangeal_2}
Group12.AddRoute(TouchSensor2071.EventTouchtime, SFTime4137);
{ .AddX3DRoute }
{ Original "'ts_r_carpal_distal_interphalangeal_2'.EventTouchtime TO 'controller'.pick_r_carpal_distal_interphalangeal_2 }
{ Replaced ts_r_carpal_distal_interphalangeal_2.EventTouchtime TO controller.pick_r_carpal_distal_interphalangeal_2 }
{ Sample ts_r_carpal_distal_interphalangeal_2.EventTouchtime TO controller.pick_r_carpal_distal_interphalangeal_2}
Group12.AddRoute(TouchSensor2087.EventTouchtime, SFTime4138);
{ .AddX3DRoute }
{ Original "'ts_r_midcarpal_3'.EventTouchtime TO 'controller'.pick_r_midcarpal_3 }
{ Replaced ts_r_midcarpal_3.EventTouchtime TO controller.pick_r_midcarpal_3 }
{ Sample ts_r_midcarpal_3.EventTouchtime TO controller.pick_r_midcarpal_3}
Group12.AddRoute(TouchSensor2101.EventTouchtime, SFTime4139);
{ .AddX3DRoute }
{ Original "'ts_r_carpometacarpal_3'.EventTouchtime TO 'controller'.pick_r_carpometacarpal_3 }
{ Replaced ts_r_carpometacarpal_3.EventTouchtime TO controller.pick_r_carpometacarpal_3 }
{ Sample ts_r_carpometacarpal_3.EventTouchtime TO controller.pick_r_carpometacarpal_3}
Group12.AddRoute(TouchSensor2116.EventTouchtime, SFTime4140);
{ .AddX3DRoute }
{ Original "'ts_r_metacarpophalangeal_3'.EventTouchtime TO 'controller'.pick_r_metacarpophalangeal_3 }
{ Replaced ts_r_metacarpophalangeal_3.EventTouchtime TO controller.pick_r_metacarpophalangeal_3 }
{ Sample ts_r_metacarpophalangeal_3.EventTouchtime TO controller.pick_r_metacarpophalangeal_3}
Group12.AddRoute(TouchSensor2131.EventTouchtime, SFTime4141);
{ .AddX3DRoute }
{ Original "'ts_r_carpal_proximal_interphalangeal_3'.EventTouchtime TO 'controller'.pick_r_carpal_proximal_interphalangeal_3 }
{ Replaced ts_r_carpal_proximal_interphalangeal_3.EventTouchtime TO controller.pick_r_carpal_proximal_interphalangeal_3 }
{ Sample ts_r_carpal_proximal_interphalangeal_3.EventTouchtime TO controller.pick_r_carpal_proximal_interphalangeal_3}
Group12.AddRoute(TouchSensor2146.EventTouchtime, SFTime4142);
end;

procedure InitHAnimGimbalJointController22Part293;
begin

{ .AddX3DRoute }
{ Original "'ts_r_carpal_distal_interphalangeal_3'.EventTouchtime TO 'controller'.pick_r_carpal_distal_interphalangeal_3 }
{ Replaced ts_r_carpal_distal_interphalangeal_3.EventTouchtime TO controller.pick_r_carpal_distal_interphalangeal_3 }
{ Sample ts_r_carpal_distal_interphalangeal_3.EventTouchtime TO controller.pick_r_carpal_distal_interphalangeal_3}
Group12.AddRoute(TouchSensor2162.EventTouchtime, SFTime4143);
{ .AddX3DRoute }
{ Original "'ts_r_midcarpal_4_5'.EventTouchtime TO 'controller'.pick_r_midcarpal_4_5 }
{ Replaced ts_r_midcarpal_4_5.EventTouchtime TO controller.pick_r_midcarpal_4_5 }
{ Sample ts_r_midcarpal_4_5.EventTouchtime TO controller.pick_r_midcarpal_4_5}
Group12.AddRoute(TouchSensor2176.EventTouchtime, SFTime4144);
{ .AddX3DRoute }
{ Original "'ts_r_carpometacarpal_4'.EventTouchtime TO 'controller'.pick_r_carpometacarpal_4 }
{ Replaced ts_r_carpometacarpal_4.EventTouchtime TO controller.pick_r_carpometacarpal_4 }
{ Sample ts_r_carpometacarpal_4.EventTouchtime TO controller.pick_r_carpometacarpal_4}
Group12.AddRoute(TouchSensor2195.EventTouchtime, SFTime4145);
{ .AddX3DRoute }
{ Original "'ts_r_metacarpophalangeal_4'.EventTouchtime TO 'controller'.pick_r_metacarpophalangeal_4 }
{ Replaced ts_r_metacarpophalangeal_4.EventTouchtime TO controller.pick_r_metacarpophalangeal_4 }
{ Sample ts_r_metacarpophalangeal_4.EventTouchtime TO controller.pick_r_metacarpophalangeal_4}
Group12.AddRoute(TouchSensor2210.EventTouchtime, SFTime4146);
{ .AddX3DRoute }
{ Original "'ts_r_carpal_proximal_interphalangeal_4'.EventTouchtime TO 'controller'.pick_r_carpal_proximal_interphalangeal_4 }
{ Replaced ts_r_carpal_proximal_interphalangeal_4.EventTouchtime TO controller.pick_r_carpal_proximal_interphalangeal_4 }
{ Sample ts_r_carpal_proximal_interphalangeal_4.EventTouchtime TO controller.pick_r_carpal_proximal_interphalangeal_4}
Group12.AddRoute(TouchSensor2225.EventTouchtime, SFTime4147);
{ .AddX3DRoute }
{ Original "'ts_r_carpal_distal_interphalangeal_4'.EventTouchtime TO 'controller'.pick_r_carpal_distal_interphalangeal_4 }
{ Replaced ts_r_carpal_distal_interphalangeal_4.EventTouchtime TO controller.pick_r_carpal_distal_interphalangeal_4 }
{ Sample ts_r_carpal_distal_interphalangeal_4.EventTouchtime TO controller.pick_r_carpal_distal_interphalangeal_4}
Group12.AddRoute(TouchSensor2241.EventTouchtime, SFTime4148);
{ .AddX3DRoute }
{ Original "'ts_r_carpometacarpal_5'.EventTouchtime TO 'controller'.pick_r_carpometacarpal_5 }
{ Replaced ts_r_carpometacarpal_5.EventTouchtime TO controller.pick_r_carpometacarpal_5 }
{ Sample ts_r_carpometacarpal_5.EventTouchtime TO controller.pick_r_carpometacarpal_5}
Group12.AddRoute(TouchSensor2255.EventTouchtime, SFTime4149);
{ .AddX3DRoute }
{ Original "'ts_r_metacarpophalangeal_5'.EventTouchtime TO 'controller'.pick_r_metacarpophalangeal_5 }
{ Replaced ts_r_metacarpophalangeal_5.EventTouchtime TO controller.pick_r_metacarpophalangeal_5 }
{ Sample ts_r_metacarpophalangeal_5.EventTouchtime TO controller.pick_r_metacarpophalangeal_5}
Group12.AddRoute(TouchSensor2270.EventTouchtime, SFTime4150);
{ .AddX3DRoute }
{ Original "'ts_r_carpal_proximal_interphalangeal_5'.EventTouchtime TO 'controller'.pick_r_carpal_proximal_interphalangeal_5 }
{ Replaced ts_r_carpal_proximal_interphalangeal_5.EventTouchtime TO controller.pick_r_carpal_proximal_interphalangeal_5 }
{ Sample ts_r_carpal_proximal_interphalangeal_5.EventTouchtime TO controller.pick_r_carpal_proximal_interphalangeal_5}
Group12.AddRoute(TouchSensor2285.EventTouchtime, SFTime4151);
{ .AddX3DRoute }
{ Original "'ts_r_carpal_distal_interphalangeal_5'.EventTouchtime TO 'controller'.pick_r_carpal_distal_interphalangeal_5 }
{ Replaced ts_r_carpal_distal_interphalangeal_5.EventTouchtime TO controller.pick_r_carpal_distal_interphalangeal_5 }
{ Sample ts_r_carpal_distal_interphalangeal_5.EventTouchtime TO controller.pick_r_carpal_distal_interphalangeal_5}
Group12.AddRoute(TouchSensor2301.EventTouchtime, SFTime4152);
{ .AddX3DRoute }
{ ==================== SLIDER / INPUT ROUTES ==================== }
{ Original "'psX'.EventTranslation_changed TO 'controller'.slideX }
{ Replaced psX.EventTranslation_changed TO controller.slideX }
{ Sample psX.EventTranslation_changed TO controller.slideX}
Group12.AddRoute(PlaneSensor2829.EventTranslation_changed, SFVec3f4179);
{ .AddX3DRoute }
{ Original "'tsInX'.EventTouchtime TO 'controller'.pickInX }
{ Replaced tsInX.EventTouchtime TO controller.pickInX }
{ Sample tsInX.EventTouchtime TO controller.pickInX}
Group12.AddRoute(TouchSensor2849.EventTouchtime, SFTime4180);
{ .AddX3DRoute }
{ Original "'psY'.EventTranslation_changed TO 'controller'.slideY }
{ Replaced psY.EventTranslation_changed TO controller.slideY }
{ Sample psY.EventTranslation_changed TO controller.slideY}
Group12.AddRoute(PlaneSensor2883.EventTranslation_changed, SFVec3f4181);
{ .AddX3DRoute }
{ Original "'tsInY'.EventTouchtime TO 'controller'.pickInY }
{ Replaced tsInY.EventTouchtime TO controller.pickInY }
{ Sample tsInY.EventTouchtime TO controller.pickInY}
Group12.AddRoute(TouchSensor2903.EventTouchtime, SFTime4182);
{ .AddX3DRoute }
{ Original "'psZ'.EventTranslation_changed TO 'controller'.slideZ }
{ Replaced psZ.EventTranslation_changed TO controller.slideZ }
{ Sample psZ.EventTranslation_changed TO controller.slideZ}
Group12.AddRoute(PlaneSensor2937.EventTranslation_changed, SFVec3f4183);
{ .AddX3DRoute }
{ Original "'tsInZ'.EventTouchtime TO 'controller'.pickInZ }
{ Replaced tsInZ.EventTouchtime TO controller.pickInZ }
{ Sample tsInZ.EventTouchtime TO controller.pickInZ}
Group12.AddRoute(TouchSensor2957.EventTouchtime, SFTime4184);
{ .AddX3DRoute }
{ Original "'strSens'.EventEnteredtext TO 'controller'.typed }
{ Replaced strSens.EventEnteredtext TO controller.typed }
{ Sample strSens.EventEnteredtext TO controller.typed}
Group12.AddRoute(StringSensor3212.EventEnteredtext, SFString4185);
{ .AddX3DRoute }
{ Original "'strSens'.EventFinaltext TO 'controller'.typedFinal }
{ Replaced strSens.EventFinaltext TO controller.typedFinal }
{ Sample strSens.EventFinaltext TO controller.typedFinal}
Group12.AddRoute(StringSensor3212.EventFinaltext, SFString4186);
{ .AddX3DRoute }
{ ==================== ROOT TRANSLATION ROUTES ==================== }
{ Original "'psTX'.EventTranslation_changed TO 'controller'.slideTX }
{ Replaced psTX.EventTranslation_changed TO controller.slideTX }
{ Sample psTX.EventTranslation_changed TO controller.slideTX}
Group12.AddRoute(PlaneSensor3025.EventTranslation_changed, SFVec3f4203);
{ .AddX3DRoute }
{ Original "'psTY'.EventTranslation_changed TO 'controller'.slideTY }
{ Replaced psTY.EventTranslation_changed TO controller.slideTY }
{ Sample psTY.EventTranslation_changed TO controller.slideTY}
Group12.AddRoute(PlaneSensor3084.EventTranslation_changed, SFVec3f4204);
{ .AddX3DRoute }
{ Original "'psTZ'.EventTranslation_changed TO 'controller'.slideTZ }
{ Replaced psTZ.EventTranslation_changed TO controller.slideTZ }
{ Sample psTZ.EventTranslation_changed TO controller.slideTZ}
Group12.AddRoute(PlaneSensor3143.EventTranslation_changed, SFVec3f4205);
{ .AddX3DRoute }
{ Original "'tsTInX'.EventTouchtime TO 'controller'.pickTInX }
{ Replaced tsTInX.EventTouchtime TO controller.pickTInX }
{ Sample tsTInX.EventTouchtime TO controller.pickTInX}
Group12.AddRoute(TouchSensor3045.EventTouchtime, SFTime4206);
{ .AddX3DRoute }
{ Original "'tsTInY'.EventTouchtime TO 'controller'.pickTInY }
{ Replaced tsTInY.EventTouchtime TO controller.pickTInY }
{ Sample tsTInY.EventTouchtime TO controller.pickTInY}
Group12.AddRoute(TouchSensor3104.EventTouchtime, SFTime4207);
{ .AddX3DRoute }
{ Original "'tsTInZ'.EventTouchtime TO 'controller'.pickTInZ }
{ Replaced tsTInZ.EventTouchtime TO controller.pickTInZ }
{ Sample tsTInZ.EventTouchtime TO controller.pickTInZ}
Group12.AddRoute(TouchSensor3163.EventTouchtime, SFTime4208);
{ .AddX3DRoute }
{ Original "'strSensT'.EventEnteredtext TO 'controller'.typedT }
{ Replaced strSensT.EventEnteredtext TO controller.typedT }
{ Sample strSensT.EventEnteredtext TO controller.typedT}
Group12.AddRoute(StringSensor3213.EventEnteredtext, SFString4209);
{ .AddX3DRoute }
{ Original "'strSensT'.EventFinaltext TO 'controller'.typedFinalT }
{ Replaced strSensT.EventFinaltext TO controller.typedFinalT }
{ Sample strSensT.EventFinaltext TO controller.typedFinalT}
Group12.AddRoute(StringSensor3213.EventFinaltext, SFString4210);
{ .AddX3DRoute }
{ Original "'tsTReset'.EventTouchtime TO 'controller'.resetT }
{ Replaced tsTReset.EventTouchtime TO controller.resetT }
{ Sample tsTReset.EventTouchtime TO controller.resetT}
Group12.AddRoute(TouchSensor3175.EventTouchtime, SFTime4211);
{ .AddX3DRoute }
{ ==================== ACCESSIBILITY ROUTES (isOver / isActive -> sounds, speech, highlights) ==================== }
{ Original "'ts_humanoid_root'.EventIsover TO 'controller'.ovJ_humanoid_root }
{ Replaced ts_humanoid_root.EventIsover TO controller.ovJ_humanoid_root }
{ Sample ts_humanoid_root.EventIsover TO controller.ovJ_humanoid_root}
Group12.AddRoute(TouchSensor21.EventIsover, SFBool4239);
{ .AddX3DRoute }
{ Original "'ts_sacroiliac'.EventIsover TO 'controller'.ovJ_sacroiliac }
{ Replaced ts_sacroiliac.EventIsover TO controller.ovJ_sacroiliac }
{ Sample ts_sacroiliac.EventIsover TO controller.ovJ_sacroiliac}
Group12.AddRoute(TouchSensor40.EventIsover, SFBool4240);
{ .AddX3DRoute }
{ Original "'ts_l_hip'.EventIsover TO 'controller'.ovJ_l_hip }
{ Replaced ts_l_hip.EventIsover TO controller.ovJ_l_hip }
{ Sample ts_l_hip.EventIsover TO controller.ovJ_l_hip}
Group12.AddRoute(TouchSensor59.EventIsover, SFBool4241);
{ .AddX3DRoute }
{ Original "'ts_l_knee'.EventIsover TO 'controller'.ovJ_l_knee }
{ Replaced ts_l_knee.EventIsover TO controller.ovJ_l_knee }
{ Sample ts_l_knee.EventIsover TO controller.ovJ_l_knee}
Group12.AddRoute(TouchSensor74.EventIsover, SFBool4242);
{ .AddX3DRoute }
{ Original "'ts_l_talocrural'.EventIsover TO 'controller'.ovJ_l_talocrural }
{ Replaced ts_l_talocrural.EventIsover TO controller.ovJ_l_talocrural }
{ Sample ts_l_talocrural.EventIsover TO controller.ovJ_l_talocrural}
Group12.AddRoute(TouchSensor89.EventIsover, SFBool4243);
{ .AddX3DRoute }
{ Original "'ts_l_talocalcaneonavicular'.EventIsover TO 'controller'.ovJ_l_talocalcaneonavicular }
{ Replaced ts_l_talocalcaneonavicular.EventIsover TO controller.ovJ_l_talocalcaneonavicular }
{ Sample ts_l_talocalcaneonavicular.EventIsover TO controller.ovJ_l_talocalcaneonavicular}
Group12.AddRoute(TouchSensor108.EventIsover, SFBool4244);
{ .AddX3DRoute }
{ Original "'ts_l_cuneonavicular_1'.EventIsover TO 'controller'.ovJ_l_cuneonavicular_1 }
{ Replaced ts_l_cuneonavicular_1.EventIsover TO controller.ovJ_l_cuneonavicular_1 }
{ Sample ts_l_cuneonavicular_1.EventIsover TO controller.ovJ_l_cuneonavicular_1}
Group12.AddRoute(TouchSensor131.EventIsover, SFBool4245);
{ .AddX3DRoute }
{ Original "'ts_l_tarsometatarsal_1'.EventIsover TO 'controller'.ovJ_l_tarsometatarsal_1 }
{ Replaced ts_l_tarsometatarsal_1.EventIsover TO controller.ovJ_l_tarsometatarsal_1 }
{ Sample ts_l_tarsometatarsal_1.EventIsover TO controller.ovJ_l_tarsometatarsal_1}
Group12.AddRoute(TouchSensor146.EventIsover, SFBool4246);
{ .AddX3DRoute }
{ Original "'ts_l_metatarsophalangeal_1'.EventIsover TO 'controller'.ovJ_l_metatarsophalangeal_1 }
{ Replaced ts_l_metatarsophalangeal_1.EventIsover TO controller.ovJ_l_metatarsophalangeal_1 }
{ Sample ts_l_metatarsophalangeal_1.EventIsover TO controller.ovJ_l_metatarsophalangeal_1}
Group12.AddRoute(TouchSensor161.EventIsover, SFBool4247);
{ .AddX3DRoute }
{ Original "'ts_l_tarsal_interphalangeal_1'.EventIsover TO 'controller'.ovJ_l_tarsal_interphalangeal_1 }
{ Replaced ts_l_tarsal_interphalangeal_1.EventIsover TO controller.ovJ_l_tarsal_interphalangeal_1 }
{ Sample ts_l_tarsal_interphalangeal_1.EventIsover TO controller.ovJ_l_tarsal_interphalangeal_1}
Group12.AddRoute(TouchSensor177.EventIsover, SFBool4248);
{ .AddX3DRoute }
{ Original "'ts_l_cuneonavicular_2'.EventIsover TO 'controller'.ovJ_l_cuneonavicular_2 }
{ Replaced ts_l_cuneonavicular_2.EventIsover TO controller.ovJ_l_cuneonavicular_2 }
{ Sample ts_l_cuneonavicular_2.EventIsover TO controller.ovJ_l_cuneonavicular_2}
Group12.AddRoute(TouchSensor191.EventIsover, SFBool4249);
end;

procedure InitHAnimGimbalJointController22Part294;
begin

{ .AddX3DRoute }
{ Original "'ts_l_tarsometatarsal_2'.EventIsover TO 'controller'.ovJ_l_tarsometatarsal_2 }
{ Replaced ts_l_tarsometatarsal_2.EventIsover TO controller.ovJ_l_tarsometatarsal_2 }
{ Sample ts_l_tarsometatarsal_2.EventIsover TO controller.ovJ_l_tarsometatarsal_2}
Group12.AddRoute(TouchSensor206.EventIsover, SFBool4250);
{ .AddX3DRoute }
{ Original "'ts_l_metatarsophalangeal_2'.EventIsover TO 'controller'.ovJ_l_metatarsophalangeal_2 }
{ Replaced ts_l_metatarsophalangeal_2.EventIsover TO controller.ovJ_l_metatarsophalangeal_2 }
{ Sample ts_l_metatarsophalangeal_2.EventIsover TO controller.ovJ_l_metatarsophalangeal_2}
Group12.AddRoute(TouchSensor221.EventIsover, SFBool4251);
{ .AddX3DRoute }
{ Original "'ts_l_tarsal_proximal_interphalangeal_2'.EventIsover TO 'controller'.ovJ_l_tarsal_proximal_interphalangeal_2 }
{ Replaced ts_l_tarsal_proximal_interphalangeal_2.EventIsover TO controller.ovJ_l_tarsal_proximal_interphalangeal_2 }
{ Sample ts_l_tarsal_proximal_interphalangeal_2.EventIsover TO controller.ovJ_l_tarsal_proximal_interphalangeal_2}
Group12.AddRoute(TouchSensor236.EventIsover, SFBool4252);
{ .AddX3DRoute }
{ Original "'ts_l_tarsal_distal_interphalangeal_2'.EventIsover TO 'controller'.ovJ_l_tarsal_distal_interphalangeal_2 }
{ Replaced ts_l_tarsal_distal_interphalangeal_2.EventIsover TO controller.ovJ_l_tarsal_distal_interphalangeal_2 }
{ Sample ts_l_tarsal_distal_interphalangeal_2.EventIsover TO controller.ovJ_l_tarsal_distal_interphalangeal_2}
Group12.AddRoute(TouchSensor252.EventIsover, SFBool4253);
{ .AddX3DRoute }
{ Original "'ts_l_cuneonavicular_3'.EventIsover TO 'controller'.ovJ_l_cuneonavicular_3 }
{ Replaced ts_l_cuneonavicular_3.EventIsover TO controller.ovJ_l_cuneonavicular_3 }
{ Sample ts_l_cuneonavicular_3.EventIsover TO controller.ovJ_l_cuneonavicular_3}
Group12.AddRoute(TouchSensor266.EventIsover, SFBool4254);
{ .AddX3DRoute }
{ Original "'ts_l_tarsometatarsal_3'.EventIsover TO 'controller'.ovJ_l_tarsometatarsal_3 }
{ Replaced ts_l_tarsometatarsal_3.EventIsover TO controller.ovJ_l_tarsometatarsal_3 }
{ Sample ts_l_tarsometatarsal_3.EventIsover TO controller.ovJ_l_tarsometatarsal_3}
Group12.AddRoute(TouchSensor281.EventIsover, SFBool4255);
{ .AddX3DRoute }
{ Original "'ts_l_metatarsophalangeal_3'.EventIsover TO 'controller'.ovJ_l_metatarsophalangeal_3 }
{ Replaced ts_l_metatarsophalangeal_3.EventIsover TO controller.ovJ_l_metatarsophalangeal_3 }
{ Sample ts_l_metatarsophalangeal_3.EventIsover TO controller.ovJ_l_metatarsophalangeal_3}
Group12.AddRoute(TouchSensor296.EventIsover, SFBool4256);
{ .AddX3DRoute }
{ Original "'ts_l_tarsal_proximal_interphalangeal_3'.EventIsover TO 'controller'.ovJ_l_tarsal_proximal_interphalangeal_3 }
{ Replaced ts_l_tarsal_proximal_interphalangeal_3.EventIsover TO controller.ovJ_l_tarsal_proximal_interphalangeal_3 }
{ Sample ts_l_tarsal_proximal_interphalangeal_3.EventIsover TO controller.ovJ_l_tarsal_proximal_interphalangeal_3}
Group12.AddRoute(TouchSensor311.EventIsover, SFBool4257);
{ .AddX3DRoute }
{ Original "'ts_l_tarsal_distal_interphalangeal_3'.EventIsover TO 'controller'.ovJ_l_tarsal_distal_interphalangeal_3 }
{ Replaced ts_l_tarsal_distal_interphalangeal_3.EventIsover TO controller.ovJ_l_tarsal_distal_interphalangeal_3 }
{ Sample ts_l_tarsal_distal_interphalangeal_3.EventIsover TO controller.ovJ_l_tarsal_distal_interphalangeal_3}
Group12.AddRoute(TouchSensor327.EventIsover, SFBool4258);
{ .AddX3DRoute }
{ Original "'ts_l_calcaneocuboid'.EventIsover TO 'controller'.ovJ_l_calcaneocuboid }
{ Replaced ts_l_calcaneocuboid.EventIsover TO controller.ovJ_l_calcaneocuboid }
{ Sample ts_l_calcaneocuboid.EventIsover TO controller.ovJ_l_calcaneocuboid}
Group12.AddRoute(TouchSensor341.EventIsover, SFBool4259);
{ .AddX3DRoute }
{ Original "'ts_l_transversetarsal'.EventIsover TO 'controller'.ovJ_l_transversetarsal }
{ Replaced ts_l_transversetarsal.EventIsover TO controller.ovJ_l_transversetarsal }
{ Sample ts_l_transversetarsal.EventIsover TO controller.ovJ_l_transversetarsal}
Group12.AddRoute(TouchSensor356.EventIsover, SFBool4260);
{ .AddX3DRoute }
{ Original "'ts_l_tarsometatarsal_4'.EventIsover TO 'controller'.ovJ_l_tarsometatarsal_4 }
{ Replaced ts_l_tarsometatarsal_4.EventIsover TO controller.ovJ_l_tarsometatarsal_4 }
{ Sample ts_l_tarsometatarsal_4.EventIsover TO controller.ovJ_l_tarsometatarsal_4}
Group12.AddRoute(TouchSensor375.EventIsover, SFBool4261);
{ .AddX3DRoute }
{ Original "'ts_l_metatarsophalangeal_4'.EventIsover TO 'controller'.ovJ_l_metatarsophalangeal_4 }
{ Replaced ts_l_metatarsophalangeal_4.EventIsover TO controller.ovJ_l_metatarsophalangeal_4 }
{ Sample ts_l_metatarsophalangeal_4.EventIsover TO controller.ovJ_l_metatarsophalangeal_4}
Group12.AddRoute(TouchSensor390.EventIsover, SFBool4262);
{ .AddX3DRoute }
{ Original "'ts_l_tarsal_proximal_interphalangeal_4'.EventIsover TO 'controller'.ovJ_l_tarsal_proximal_interphalangeal_4 }
{ Replaced ts_l_tarsal_proximal_interphalangeal_4.EventIsover TO controller.ovJ_l_tarsal_proximal_interphalangeal_4 }
{ Sample ts_l_tarsal_proximal_interphalangeal_4.EventIsover TO controller.ovJ_l_tarsal_proximal_interphalangeal_4}
Group12.AddRoute(TouchSensor405.EventIsover, SFBool4263);
{ .AddX3DRoute }
{ Original "'ts_l_tarsal_distal_interphalangeal_4'.EventIsover TO 'controller'.ovJ_l_tarsal_distal_interphalangeal_4 }
{ Replaced ts_l_tarsal_distal_interphalangeal_4.EventIsover TO controller.ovJ_l_tarsal_distal_interphalangeal_4 }
{ Sample ts_l_tarsal_distal_interphalangeal_4.EventIsover TO controller.ovJ_l_tarsal_distal_interphalangeal_4}
Group12.AddRoute(TouchSensor421.EventIsover, SFBool4264);
{ .AddX3DRoute }
{ Original "'ts_l_tarsometatarsal_5'.EventIsover TO 'controller'.ovJ_l_tarsometatarsal_5 }
{ Replaced ts_l_tarsometatarsal_5.EventIsover TO controller.ovJ_l_tarsometatarsal_5 }
{ Sample ts_l_tarsometatarsal_5.EventIsover TO controller.ovJ_l_tarsometatarsal_5}
Group12.AddRoute(TouchSensor435.EventIsover, SFBool4265);
{ .AddX3DRoute }
{ Original "'ts_l_metatarsophalangeal_5'.EventIsover TO 'controller'.ovJ_l_metatarsophalangeal_5 }
{ Replaced ts_l_metatarsophalangeal_5.EventIsover TO controller.ovJ_l_metatarsophalangeal_5 }
{ Sample ts_l_metatarsophalangeal_5.EventIsover TO controller.ovJ_l_metatarsophalangeal_5}
Group12.AddRoute(TouchSensor450.EventIsover, SFBool4266);
{ .AddX3DRoute }
{ Original "'ts_l_tarsal_proximal_interphalangeal_5'.EventIsover TO 'controller'.ovJ_l_tarsal_proximal_interphalangeal_5 }
{ Replaced ts_l_tarsal_proximal_interphalangeal_5.EventIsover TO controller.ovJ_l_tarsal_proximal_interphalangeal_5 }
{ Sample ts_l_tarsal_proximal_interphalangeal_5.EventIsover TO controller.ovJ_l_tarsal_proximal_interphalangeal_5}
Group12.AddRoute(TouchSensor465.EventIsover, SFBool4267);
{ .AddX3DRoute }
{ Original "'ts_l_tarsal_distal_interphalangeal_5'.EventIsover TO 'controller'.ovJ_l_tarsal_distal_interphalangeal_5 }
{ Replaced ts_l_tarsal_distal_interphalangeal_5.EventIsover TO controller.ovJ_l_tarsal_distal_interphalangeal_5 }
{ Sample ts_l_tarsal_distal_interphalangeal_5.EventIsover TO controller.ovJ_l_tarsal_distal_interphalangeal_5}
Group12.AddRoute(TouchSensor481.EventIsover, SFBool4268);
{ .AddX3DRoute }
{ Original "'ts_r_hip'.EventIsover TO 'controller'.ovJ_r_hip }
{ Replaced ts_r_hip.EventIsover TO controller.ovJ_r_hip }
{ Sample ts_r_hip.EventIsover TO controller.ovJ_r_hip}
Group12.AddRoute(TouchSensor495.EventIsover, SFBool4269);
{ .AddX3DRoute }
{ Original "'ts_r_knee'.EventIsover TO 'controller'.ovJ_r_knee }
{ Replaced ts_r_knee.EventIsover TO controller.ovJ_r_knee }
{ Sample ts_r_knee.EventIsover TO controller.ovJ_r_knee}
Group12.AddRoute(TouchSensor510.EventIsover, SFBool4270);
{ .AddX3DRoute }
{ Original "'ts_r_talocrural'.EventIsover TO 'controller'.ovJ_r_talocrural }
{ Replaced ts_r_talocrural.EventIsover TO controller.ovJ_r_talocrural }
{ Sample ts_r_talocrural.EventIsover TO controller.ovJ_r_talocrural}
Group12.AddRoute(TouchSensor525.EventIsover, SFBool4271);
{ .AddX3DRoute }
{ Original "'ts_r_talocalcaneonavicular'.EventIsover TO 'controller'.ovJ_r_talocalcaneonavicular }
{ Replaced ts_r_talocalcaneonavicular.EventIsover TO controller.ovJ_r_talocalcaneonavicular }
{ Sample ts_r_talocalcaneonavicular.EventIsover TO controller.ovJ_r_talocalcaneonavicular}
Group12.AddRoute(TouchSensor544.EventIsover, SFBool4272);
{ .AddX3DRoute }
{ Original "'ts_r_cuneonavicular_1'.EventIsover TO 'controller'.ovJ_r_cuneonavicular_1 }
{ Replaced ts_r_cuneonavicular_1.EventIsover TO controller.ovJ_r_cuneonavicular_1 }
{ Sample ts_r_cuneonavicular_1.EventIsover TO controller.ovJ_r_cuneonavicular_1}
Group12.AddRoute(TouchSensor567.EventIsover, SFBool4273);
{ .AddX3DRoute }
{ Original "'ts_r_tarsometatarsal_1'.EventIsover TO 'controller'.ovJ_r_tarsometatarsal_1 }
{ Replaced ts_r_tarsometatarsal_1.EventIsover TO controller.ovJ_r_tarsometatarsal_1 }
{ Sample ts_r_tarsometatarsal_1.EventIsover TO controller.ovJ_r_tarsometatarsal_1}
Group12.AddRoute(TouchSensor582.EventIsover, SFBool4274);
{ .AddX3DRoute }
{ Original "'ts_r_metatarsophalangeal_1'.EventIsover TO 'controller'.ovJ_r_metatarsophalangeal_1 }
{ Replaced ts_r_metatarsophalangeal_1.EventIsover TO controller.ovJ_r_metatarsophalangeal_1 }
{ Sample ts_r_metatarsophalangeal_1.EventIsover TO controller.ovJ_r_metatarsophalangeal_1}
Group12.AddRoute(TouchSensor597.EventIsover, SFBool4275);
{ .AddX3DRoute }
{ Original "'ts_r_tarsal_interphalangeal_1'.EventIsover TO 'controller'.ovJ_r_tarsal_interphalangeal_1 }
{ Replaced ts_r_tarsal_interphalangeal_1.EventIsover TO controller.ovJ_r_tarsal_interphalangeal_1 }
{ Sample ts_r_tarsal_interphalangeal_1.EventIsover TO controller.ovJ_r_tarsal_interphalangeal_1}
Group12.AddRoute(TouchSensor613.EventIsover, SFBool4276);
{ .AddX3DRoute }
{ Original "'ts_r_cuneonavicular_2'.EventIsover TO 'controller'.ovJ_r_cuneonavicular_2 }
{ Replaced ts_r_cuneonavicular_2.EventIsover TO controller.ovJ_r_cuneonavicular_2 }
{ Sample ts_r_cuneonavicular_2.EventIsover TO controller.ovJ_r_cuneonavicular_2}
Group12.AddRoute(TouchSensor627.EventIsover, SFBool4277);
{ .AddX3DRoute }
{ Original "'ts_r_tarsometatarsal_2'.EventIsover TO 'controller'.ovJ_r_tarsometatarsal_2 }
{ Replaced ts_r_tarsometatarsal_2.EventIsover TO controller.ovJ_r_tarsometatarsal_2 }
{ Sample ts_r_tarsometatarsal_2.EventIsover TO controller.ovJ_r_tarsometatarsal_2}
Group12.AddRoute(TouchSensor642.EventIsover, SFBool4278);
{ .AddX3DRoute }
{ Original "'ts_r_metatarsophalangeal_2'.EventIsover TO 'controller'.ovJ_r_metatarsophalangeal_2 }
{ Replaced ts_r_metatarsophalangeal_2.EventIsover TO controller.ovJ_r_metatarsophalangeal_2 }
{ Sample ts_r_metatarsophalangeal_2.EventIsover TO controller.ovJ_r_metatarsophalangeal_2}
Group12.AddRoute(TouchSensor657.EventIsover, SFBool4279);
{ .AddX3DRoute }
{ Original "'ts_r_tarsal_proximal_interphalangeal_2'.EventIsover TO 'controller'.ovJ_r_tarsal_proximal_interphalangeal_2 }
{ Replaced ts_r_tarsal_proximal_interphalangeal_2.EventIsover TO controller.ovJ_r_tarsal_proximal_interphalangeal_2 }
{ Sample ts_r_tarsal_proximal_interphalangeal_2.EventIsover TO controller.ovJ_r_tarsal_proximal_interphalangeal_2}
Group12.AddRoute(TouchSensor672.EventIsover, SFBool4280);
{ .AddX3DRoute }
{ Original "'ts_r_tarsal_distal_interphalangeal_2'.EventIsover TO 'controller'.ovJ_r_tarsal_distal_interphalangeal_2 }
{ Replaced ts_r_tarsal_distal_interphalangeal_2.EventIsover TO controller.ovJ_r_tarsal_distal_interphalangeal_2 }
{ Sample ts_r_tarsal_distal_interphalangeal_2.EventIsover TO controller.ovJ_r_tarsal_distal_interphalangeal_2}
Group12.AddRoute(TouchSensor688.EventIsover, SFBool4281);
{ .AddX3DRoute }
{ Original "'ts_r_cuneonavicular_3'.EventIsover TO 'controller'.ovJ_r_cuneonavicular_3 }
{ Replaced ts_r_cuneonavicular_3.EventIsover TO controller.ovJ_r_cuneonavicular_3 }
{ Sample ts_r_cuneonavicular_3.EventIsover TO controller.ovJ_r_cuneonavicular_3}
Group12.AddRoute(TouchSensor702.EventIsover, SFBool4282);
{ .AddX3DRoute }
{ Original "'ts_r_tarsometatarsal_3'.EventIsover TO 'controller'.ovJ_r_tarsometatarsal_3 }
{ Replaced ts_r_tarsometatarsal_3.EventIsover TO controller.ovJ_r_tarsometatarsal_3 }
{ Sample ts_r_tarsometatarsal_3.EventIsover TO controller.ovJ_r_tarsometatarsal_3}
Group12.AddRoute(TouchSensor717.EventIsover, SFBool4283);
end;

procedure InitHAnimGimbalJointController22Part295;
begin

{ .AddX3DRoute }
{ Original "'ts_r_metatarsophalangeal_3'.EventIsover TO 'controller'.ovJ_r_metatarsophalangeal_3 }
{ Replaced ts_r_metatarsophalangeal_3.EventIsover TO controller.ovJ_r_metatarsophalangeal_3 }
{ Sample ts_r_metatarsophalangeal_3.EventIsover TO controller.ovJ_r_metatarsophalangeal_3}
Group12.AddRoute(TouchSensor732.EventIsover, SFBool4284);
{ .AddX3DRoute }
{ Original "'ts_r_tarsal_proximal_interphalangeal_3'.EventIsover TO 'controller'.ovJ_r_tarsal_proximal_interphalangeal_3 }
{ Replaced ts_r_tarsal_proximal_interphalangeal_3.EventIsover TO controller.ovJ_r_tarsal_proximal_interphalangeal_3 }
{ Sample ts_r_tarsal_proximal_interphalangeal_3.EventIsover TO controller.ovJ_r_tarsal_proximal_interphalangeal_3}
Group12.AddRoute(TouchSensor747.EventIsover, SFBool4285);
{ .AddX3DRoute }
{ Original "'ts_r_tarsal_distal_interphalangeal_3'.EventIsover TO 'controller'.ovJ_r_tarsal_distal_interphalangeal_3 }
{ Replaced ts_r_tarsal_distal_interphalangeal_3.EventIsover TO controller.ovJ_r_tarsal_distal_interphalangeal_3 }
{ Sample ts_r_tarsal_distal_interphalangeal_3.EventIsover TO controller.ovJ_r_tarsal_distal_interphalangeal_3}
Group12.AddRoute(TouchSensor763.EventIsover, SFBool4286);
{ .AddX3DRoute }
{ Original "'ts_r_calcaneocuboid'.EventIsover TO 'controller'.ovJ_r_calcaneocuboid }
{ Replaced ts_r_calcaneocuboid.EventIsover TO controller.ovJ_r_calcaneocuboid }
{ Sample ts_r_calcaneocuboid.EventIsover TO controller.ovJ_r_calcaneocuboid}
Group12.AddRoute(TouchSensor777.EventIsover, SFBool4287);
{ .AddX3DRoute }
{ Original "'ts_r_transversetarsal'.EventIsover TO 'controller'.ovJ_r_transversetarsal }
{ Replaced ts_r_transversetarsal.EventIsover TO controller.ovJ_r_transversetarsal }
{ Sample ts_r_transversetarsal.EventIsover TO controller.ovJ_r_transversetarsal}
Group12.AddRoute(TouchSensor792.EventIsover, SFBool4288);
{ .AddX3DRoute }
{ Original "'ts_r_tarsometatarsal_4'.EventIsover TO 'controller'.ovJ_r_tarsometatarsal_4 }
{ Replaced ts_r_tarsometatarsal_4.EventIsover TO controller.ovJ_r_tarsometatarsal_4 }
{ Sample ts_r_tarsometatarsal_4.EventIsover TO controller.ovJ_r_tarsometatarsal_4}
Group12.AddRoute(TouchSensor811.EventIsover, SFBool4289);
{ .AddX3DRoute }
{ Original "'ts_r_metatarsophalangeal_4'.EventIsover TO 'controller'.ovJ_r_metatarsophalangeal_4 }
{ Replaced ts_r_metatarsophalangeal_4.EventIsover TO controller.ovJ_r_metatarsophalangeal_4 }
{ Sample ts_r_metatarsophalangeal_4.EventIsover TO controller.ovJ_r_metatarsophalangeal_4}
Group12.AddRoute(TouchSensor826.EventIsover, SFBool4290);
{ .AddX3DRoute }
{ Original "'ts_r_tarsal_proximal_interphalangeal_4'.EventIsover TO 'controller'.ovJ_r_tarsal_proximal_interphalangeal_4 }
{ Replaced ts_r_tarsal_proximal_interphalangeal_4.EventIsover TO controller.ovJ_r_tarsal_proximal_interphalangeal_4 }
{ Sample ts_r_tarsal_proximal_interphalangeal_4.EventIsover TO controller.ovJ_r_tarsal_proximal_interphalangeal_4}
Group12.AddRoute(TouchSensor841.EventIsover, SFBool4291);
{ .AddX3DRoute }
{ Original "'ts_r_tarsal_distal_interphalangeal_4'.EventIsover TO 'controller'.ovJ_r_tarsal_distal_interphalangeal_4 }
{ Replaced ts_r_tarsal_distal_interphalangeal_4.EventIsover TO controller.ovJ_r_tarsal_distal_interphalangeal_4 }
{ Sample ts_r_tarsal_distal_interphalangeal_4.EventIsover TO controller.ovJ_r_tarsal_distal_interphalangeal_4}
Group12.AddRoute(TouchSensor857.EventIsover, SFBool4292);
{ .AddX3DRoute }
{ Original "'ts_r_tarsometatarsal_5'.EventIsover TO 'controller'.ovJ_r_tarsometatarsal_5 }
{ Replaced ts_r_tarsometatarsal_5.EventIsover TO controller.ovJ_r_tarsometatarsal_5 }
{ Sample ts_r_tarsometatarsal_5.EventIsover TO controller.ovJ_r_tarsometatarsal_5}
Group12.AddRoute(TouchSensor871.EventIsover, SFBool4293);
{ .AddX3DRoute }
{ Original "'ts_r_metatarsophalangeal_5'.EventIsover TO 'controller'.ovJ_r_metatarsophalangeal_5 }
{ Replaced ts_r_metatarsophalangeal_5.EventIsover TO controller.ovJ_r_metatarsophalangeal_5 }
{ Sample ts_r_metatarsophalangeal_5.EventIsover TO controller.ovJ_r_metatarsophalangeal_5}
Group12.AddRoute(TouchSensor886.EventIsover, SFBool4294);
{ .AddX3DRoute }
{ Original "'ts_r_tarsal_proximal_interphalangeal_5'.EventIsover TO 'controller'.ovJ_r_tarsal_proximal_interphalangeal_5 }
{ Replaced ts_r_tarsal_proximal_interphalangeal_5.EventIsover TO controller.ovJ_r_tarsal_proximal_interphalangeal_5 }
{ Sample ts_r_tarsal_proximal_interphalangeal_5.EventIsover TO controller.ovJ_r_tarsal_proximal_interphalangeal_5}
Group12.AddRoute(TouchSensor901.EventIsover, SFBool4295);
{ .AddX3DRoute }
{ Original "'ts_r_tarsal_distal_interphalangeal_5'.EventIsover TO 'controller'.ovJ_r_tarsal_distal_interphalangeal_5 }
{ Replaced ts_r_tarsal_distal_interphalangeal_5.EventIsover TO controller.ovJ_r_tarsal_distal_interphalangeal_5 }
{ Sample ts_r_tarsal_distal_interphalangeal_5.EventIsover TO controller.ovJ_r_tarsal_distal_interphalangeal_5}
Group12.AddRoute(TouchSensor917.EventIsover, SFBool4296);
{ .AddX3DRoute }
{ Original "'ts_vl5'.EventIsover TO 'controller'.ovJ_vl5 }
{ Replaced ts_vl5.EventIsover TO controller.ovJ_vl5 }
{ Sample ts_vl5.EventIsover TO controller.ovJ_vl5}
Group12.AddRoute(TouchSensor931.EventIsover, SFBool4297);
{ .AddX3DRoute }
{ Original "'ts_vl4'.EventIsover TO 'controller'.ovJ_vl4 }
{ Replaced ts_vl4.EventIsover TO controller.ovJ_vl4 }
{ Sample ts_vl4.EventIsover TO controller.ovJ_vl4}
Group12.AddRoute(TouchSensor946.EventIsover, SFBool4298);
{ .AddX3DRoute }
{ Original "'ts_vl3'.EventIsover TO 'controller'.ovJ_vl3 }
{ Replaced ts_vl3.EventIsover TO controller.ovJ_vl3 }
{ Sample ts_vl3.EventIsover TO controller.ovJ_vl3}
Group12.AddRoute(TouchSensor961.EventIsover, SFBool4299);
{ .AddX3DRoute }
{ Original "'ts_vl2'.EventIsover TO 'controller'.ovJ_vl2 }
{ Replaced ts_vl2.EventIsover TO controller.ovJ_vl2 }
{ Sample ts_vl2.EventIsover TO controller.ovJ_vl2}
Group12.AddRoute(TouchSensor976.EventIsover, SFBool4300);
{ .AddX3DRoute }
{ Original "'ts_vl1'.EventIsover TO 'controller'.ovJ_vl1 }
{ Replaced ts_vl1.EventIsover TO controller.ovJ_vl1 }
{ Sample ts_vl1.EventIsover TO controller.ovJ_vl1}
Group12.AddRoute(TouchSensor991.EventIsover, SFBool4301);
{ .AddX3DRoute }
{ Original "'ts_vt12'.EventIsover TO 'controller'.ovJ_vt12 }
{ Replaced ts_vt12.EventIsover TO controller.ovJ_vt12 }
{ Sample ts_vt12.EventIsover TO controller.ovJ_vt12}
Group12.AddRoute(TouchSensor1006.EventIsover, SFBool4302);
{ .AddX3DRoute }
{ Original "'ts_vt11'.EventIsover TO 'controller'.ovJ_vt11 }
{ Replaced ts_vt11.EventIsover TO controller.ovJ_vt11 }
{ Sample ts_vt11.EventIsover TO controller.ovJ_vt11}
Group12.AddRoute(TouchSensor1021.EventIsover, SFBool4303);
{ .AddX3DRoute }
{ Original "'ts_vt10'.EventIsover TO 'controller'.ovJ_vt10 }
{ Replaced ts_vt10.EventIsover TO controller.ovJ_vt10 }
{ Sample ts_vt10.EventIsover TO controller.ovJ_vt10}
Group12.AddRoute(TouchSensor1036.EventIsover, SFBool4304);
{ .AddX3DRoute }
{ Original "'ts_vt9'.EventIsover TO 'controller'.ovJ_vt9 }
{ Replaced ts_vt9.EventIsover TO controller.ovJ_vt9 }
{ Sample ts_vt9.EventIsover TO controller.ovJ_vt9}
Group12.AddRoute(TouchSensor1051.EventIsover, SFBool4305);
{ .AddX3DRoute }
{ Original "'ts_vt8'.EventIsover TO 'controller'.ovJ_vt8 }
{ Replaced ts_vt8.EventIsover TO controller.ovJ_vt8 }
{ Sample ts_vt8.EventIsover TO controller.ovJ_vt8}
Group12.AddRoute(TouchSensor1066.EventIsover, SFBool4306);
{ .AddX3DRoute }
{ Original "'ts_vt7'.EventIsover TO 'controller'.ovJ_vt7 }
{ Replaced ts_vt7.EventIsover TO controller.ovJ_vt7 }
{ Sample ts_vt7.EventIsover TO controller.ovJ_vt7}
Group12.AddRoute(TouchSensor1081.EventIsover, SFBool4307);
{ .AddX3DRoute }
{ Original "'ts_vt6'.EventIsover TO 'controller'.ovJ_vt6 }
{ Replaced ts_vt6.EventIsover TO controller.ovJ_vt6 }
{ Sample ts_vt6.EventIsover TO controller.ovJ_vt6}
Group12.AddRoute(TouchSensor1096.EventIsover, SFBool4308);
{ .AddX3DRoute }
{ Original "'ts_vt5'.EventIsover TO 'controller'.ovJ_vt5 }
{ Replaced ts_vt5.EventIsover TO controller.ovJ_vt5 }
{ Sample ts_vt5.EventIsover TO controller.ovJ_vt5}
Group12.AddRoute(TouchSensor1111.EventIsover, SFBool4309);
{ .AddX3DRoute }
{ Original "'ts_vt4'.EventIsover TO 'controller'.ovJ_vt4 }
{ Replaced ts_vt4.EventIsover TO controller.ovJ_vt4 }
{ Sample ts_vt4.EventIsover TO controller.ovJ_vt4}
Group12.AddRoute(TouchSensor1126.EventIsover, SFBool4310);
{ .AddX3DRoute }
{ Original "'ts_vt3'.EventIsover TO 'controller'.ovJ_vt3 }
{ Replaced ts_vt3.EventIsover TO controller.ovJ_vt3 }
{ Sample ts_vt3.EventIsover TO controller.ovJ_vt3}
Group12.AddRoute(TouchSensor1141.EventIsover, SFBool4311);
{ .AddX3DRoute }
{ Original "'ts_vt2'.EventIsover TO 'controller'.ovJ_vt2 }
{ Replaced ts_vt2.EventIsover TO controller.ovJ_vt2 }
{ Sample ts_vt2.EventIsover TO controller.ovJ_vt2}
Group12.AddRoute(TouchSensor1156.EventIsover, SFBool4312);
{ .AddX3DRoute }
{ Original "'ts_vt1'.EventIsover TO 'controller'.ovJ_vt1 }
{ Replaced ts_vt1.EventIsover TO controller.ovJ_vt1 }
{ Sample ts_vt1.EventIsover TO controller.ovJ_vt1}
Group12.AddRoute(TouchSensor1171.EventIsover, SFBool4313);
{ .AddX3DRoute }
{ Original "'ts_vc7'.EventIsover TO 'controller'.ovJ_vc7 }
{ Replaced ts_vc7.EventIsover TO controller.ovJ_vc7 }
{ Sample ts_vc7.EventIsover TO controller.ovJ_vc7}
Group12.AddRoute(TouchSensor1194.EventIsover, SFBool4314);
{ .AddX3DRoute }
{ Original "'ts_vc6'.EventIsover TO 'controller'.ovJ_vc6 }
{ Replaced ts_vc6.EventIsover TO controller.ovJ_vc6 }
{ Sample ts_vc6.EventIsover TO controller.ovJ_vc6}
Group12.AddRoute(TouchSensor1209.EventIsover, SFBool4315);
{ .AddX3DRoute }
{ Original "'ts_vc5'.EventIsover TO 'controller'.ovJ_vc5 }
{ Replaced ts_vc5.EventIsover TO controller.ovJ_vc5 }
{ Sample ts_vc5.EventIsover TO controller.ovJ_vc5}
Group12.AddRoute(TouchSensor1224.EventIsover, SFBool4316);
{ .AddX3DRoute }
{ Original "'ts_vc4'.EventIsover TO 'controller'.ovJ_vc4 }
{ Replaced ts_vc4.EventIsover TO controller.ovJ_vc4 }
{ Sample ts_vc4.EventIsover TO controller.ovJ_vc4}
Group12.AddRoute(TouchSensor1239.EventIsover, SFBool4317);
{ .AddX3DRoute }
{ Original "'ts_vc3'.EventIsover TO 'controller'.ovJ_vc3 }
{ Replaced ts_vc3.EventIsover TO controller.ovJ_vc3 }
{ Sample ts_vc3.EventIsover TO controller.ovJ_vc3}
Group12.AddRoute(TouchSensor1254.EventIsover, SFBool4318);
{ .AddX3DRoute }
{ Original "'ts_vc2'.EventIsover TO 'controller'.ovJ_vc2 }
{ Replaced ts_vc2.EventIsover TO controller.ovJ_vc2 }
{ Sample ts_vc2.EventIsover TO controller.ovJ_vc2}
Group12.AddRoute(TouchSensor1269.EventIsover, SFBool4319);
{ .AddX3DRoute }
{ Original "'ts_vc1'.EventIsover TO 'controller'.ovJ_vc1 }
{ Replaced ts_vc1.EventIsover TO controller.ovJ_vc1 }
{ Sample ts_vc1.EventIsover TO controller.ovJ_vc1}
Group12.AddRoute(TouchSensor1284.EventIsover, SFBool4320);
{ .AddX3DRoute }
{ Original "'ts_skullbase'.EventIsover TO 'controller'.ovJ_skullbase }
{ Replaced ts_skullbase.EventIsover TO controller.ovJ_skullbase }
{ Sample ts_skullbase.EventIsover TO controller.ovJ_skullbase}
Group12.AddRoute(TouchSensor1299.EventIsover, SFBool4321);
{ .AddX3DRoute }
{ Original "'ts_l_eyelid_joint'.EventIsover TO 'controller'.ovJ_l_eyelid_joint }
{ Replaced ts_l_eyelid_joint.EventIsover TO controller.ovJ_l_eyelid_joint }
{ Sample ts_l_eyelid_joint.EventIsover TO controller.ovJ_l_eyelid_joint}
Group12.AddRoute(TouchSensor1339.EventIsover, SFBool4322);
{ .AddX3DRoute }
{ Original "'ts_r_eyelid_joint'.EventIsover TO 'controller'.ovJ_r_eyelid_joint }
{ Replaced ts_r_eyelid_joint.EventIsover TO controller.ovJ_r_eyelid_joint }
{ Sample ts_r_eyelid_joint.EventIsover TO controller.ovJ_r_eyelid_joint}
Group12.AddRoute(TouchSensor1354.EventIsover, SFBool4323);
end;

procedure InitHAnimGimbalJointController22Part296;
begin

{ .AddX3DRoute }
{ Original "'ts_l_eyeball_joint'.EventIsover TO 'controller'.ovJ_l_eyeball_joint }
{ Replaced ts_l_eyeball_joint.EventIsover TO controller.ovJ_l_eyeball_joint }
{ Sample ts_l_eyeball_joint.EventIsover TO controller.ovJ_l_eyeball_joint}
Group12.AddRoute(TouchSensor1369.EventIsover, SFBool4324);
{ .AddX3DRoute }
{ Original "'ts_r_eyeball_joint'.EventIsover TO 'controller'.ovJ_r_eyeball_joint }
{ Replaced ts_r_eyeball_joint.EventIsover TO controller.ovJ_r_eyeball_joint }
{ Sample ts_r_eyeball_joint.EventIsover TO controller.ovJ_r_eyeball_joint}
Group12.AddRoute(TouchSensor1384.EventIsover, SFBool4325);
{ .AddX3DRoute }
{ Original "'ts_l_eyebrow_joint'.EventIsover TO 'controller'.ovJ_l_eyebrow_joint }
{ Replaced ts_l_eyebrow_joint.EventIsover TO controller.ovJ_l_eyebrow_joint }
{ Sample ts_l_eyebrow_joint.EventIsover TO controller.ovJ_l_eyebrow_joint}
Group12.AddRoute(TouchSensor1399.EventIsover, SFBool4326);
{ .AddX3DRoute }
{ Original "'ts_r_eyebrow_joint'.EventIsover TO 'controller'.ovJ_r_eyebrow_joint }
{ Replaced ts_r_eyebrow_joint.EventIsover TO controller.ovJ_r_eyebrow_joint }
{ Sample ts_r_eyebrow_joint.EventIsover TO controller.ovJ_r_eyebrow_joint}
Group12.AddRoute(TouchSensor1414.EventIsover, SFBool4327);
{ .AddX3DRoute }
{ Original "'ts_temporomandibular'.EventIsover TO 'controller'.ovJ_temporomandibular }
{ Replaced ts_temporomandibular.EventIsover TO controller.ovJ_temporomandibular }
{ Sample ts_temporomandibular.EventIsover TO controller.ovJ_temporomandibular}
Group12.AddRoute(TouchSensor1429.EventIsover, SFBool4328);
{ .AddX3DRoute }
{ Original "'ts_l_sternoclavicular'.EventIsover TO 'controller'.ovJ_l_sternoclavicular }
{ Replaced ts_l_sternoclavicular.EventIsover TO controller.ovJ_l_sternoclavicular }
{ Sample ts_l_sternoclavicular.EventIsover TO controller.ovJ_l_sternoclavicular}
Group12.AddRoute(TouchSensor1443.EventIsover, SFBool4329);
{ .AddX3DRoute }
{ Original "'ts_l_acromioclavicular'.EventIsover TO 'controller'.ovJ_l_acromioclavicular }
{ Replaced ts_l_acromioclavicular.EventIsover TO controller.ovJ_l_acromioclavicular }
{ Sample ts_l_acromioclavicular.EventIsover TO controller.ovJ_l_acromioclavicular}
Group12.AddRoute(TouchSensor1458.EventIsover, SFBool4330);
{ .AddX3DRoute }
{ Original "'ts_l_shoulder'.EventIsover TO 'controller'.ovJ_l_shoulder }
{ Replaced ts_l_shoulder.EventIsover TO controller.ovJ_l_shoulder }
{ Sample ts_l_shoulder.EventIsover TO controller.ovJ_l_shoulder}
Group12.AddRoute(TouchSensor1473.EventIsover, SFBool4331);
{ .AddX3DRoute }
{ Original "'ts_l_elbow'.EventIsover TO 'controller'.ovJ_l_elbow }
{ Replaced ts_l_elbow.EventIsover TO controller.ovJ_l_elbow }
{ Sample ts_l_elbow.EventIsover TO controller.ovJ_l_elbow}
Group12.AddRoute(TouchSensor1488.EventIsover, SFBool4332);
{ .AddX3DRoute }
{ Original "'ts_l_radiocarpal'.EventIsover TO 'controller'.ovJ_l_radiocarpal }
{ Replaced ts_l_radiocarpal.EventIsover TO controller.ovJ_l_radiocarpal }
{ Sample ts_l_radiocarpal.EventIsover TO controller.ovJ_l_radiocarpal}
Group12.AddRoute(TouchSensor1503.EventIsover, SFBool4333);
{ .AddX3DRoute }
{ Original "'ts_l_midcarpal_1'.EventIsover TO 'controller'.ovJ_l_midcarpal_1 }
{ Replaced ts_l_midcarpal_1.EventIsover TO controller.ovJ_l_midcarpal_1 }
{ Sample ts_l_midcarpal_1.EventIsover TO controller.ovJ_l_midcarpal_1}
Group12.AddRoute(TouchSensor1530.EventIsover, SFBool4334);
{ .AddX3DRoute }
{ Original "'ts_l_carpometacarpal_1'.EventIsover TO 'controller'.ovJ_l_carpometacarpal_1 }
{ Replaced ts_l_carpometacarpal_1.EventIsover TO controller.ovJ_l_carpometacarpal_1 }
{ Sample ts_l_carpometacarpal_1.EventIsover TO controller.ovJ_l_carpometacarpal_1}
Group12.AddRoute(TouchSensor1545.EventIsover, SFBool4335);
{ .AddX3DRoute }
{ Original "'ts_l_metacarpophalangeal_1'.EventIsover TO 'controller'.ovJ_l_metacarpophalangeal_1 }
{ Replaced ts_l_metacarpophalangeal_1.EventIsover TO controller.ovJ_l_metacarpophalangeal_1 }
{ Sample ts_l_metacarpophalangeal_1.EventIsover TO controller.ovJ_l_metacarpophalangeal_1}
Group12.AddRoute(TouchSensor1560.EventIsover, SFBool4336);
{ .AddX3DRoute }
{ Original "'ts_l_carpal_interphalangeal_1'.EventIsover TO 'controller'.ovJ_l_carpal_interphalangeal_1 }
{ Replaced ts_l_carpal_interphalangeal_1.EventIsover TO controller.ovJ_l_carpal_interphalangeal_1 }
{ Sample ts_l_carpal_interphalangeal_1.EventIsover TO controller.ovJ_l_carpal_interphalangeal_1}
Group12.AddRoute(TouchSensor1576.EventIsover, SFBool4337);
{ .AddX3DRoute }
{ Original "'ts_l_midcarpal_2'.EventIsover TO 'controller'.ovJ_l_midcarpal_2 }
{ Replaced ts_l_midcarpal_2.EventIsover TO controller.ovJ_l_midcarpal_2 }
{ Sample ts_l_midcarpal_2.EventIsover TO controller.ovJ_l_midcarpal_2}
Group12.AddRoute(TouchSensor1590.EventIsover, SFBool4338);
{ .AddX3DRoute }
{ Original "'ts_l_carpometacarpal_2'.EventIsover TO 'controller'.ovJ_l_carpometacarpal_2 }
{ Replaced ts_l_carpometacarpal_2.EventIsover TO controller.ovJ_l_carpometacarpal_2 }
{ Sample ts_l_carpometacarpal_2.EventIsover TO controller.ovJ_l_carpometacarpal_2}
Group12.AddRoute(TouchSensor1605.EventIsover, SFBool4339);
{ .AddX3DRoute }
{ Original "'ts_l_metacarpophalangeal_2'.EventIsover TO 'controller'.ovJ_l_metacarpophalangeal_2 }
{ Replaced ts_l_metacarpophalangeal_2.EventIsover TO controller.ovJ_l_metacarpophalangeal_2 }
{ Sample ts_l_metacarpophalangeal_2.EventIsover TO controller.ovJ_l_metacarpophalangeal_2}
Group12.AddRoute(TouchSensor1620.EventIsover, SFBool4340);
{ .AddX3DRoute }
{ Original "'ts_l_carpal_proximal_interphalangeal_2'.EventIsover TO 'controller'.ovJ_l_carpal_proximal_interphalangeal_2 }
{ Replaced ts_l_carpal_proximal_interphalangeal_2.EventIsover TO controller.ovJ_l_carpal_proximal_interphalangeal_2 }
{ Sample ts_l_carpal_proximal_interphalangeal_2.EventIsover TO controller.ovJ_l_carpal_proximal_interphalangeal_2}
Group12.AddRoute(TouchSensor1635.EventIsover, SFBool4341);
{ .AddX3DRoute }
{ Original "'ts_l_carpal_distal_interphalangeal_2'.EventIsover TO 'controller'.ovJ_l_carpal_distal_interphalangeal_2 }
{ Replaced ts_l_carpal_distal_interphalangeal_2.EventIsover TO controller.ovJ_l_carpal_distal_interphalangeal_2 }
{ Sample ts_l_carpal_distal_interphalangeal_2.EventIsover TO controller.ovJ_l_carpal_distal_interphalangeal_2}
Group12.AddRoute(TouchSensor1651.EventIsover, SFBool4342);
{ .AddX3DRoute }
{ Original "'ts_l_midcarpal_3'.EventIsover TO 'controller'.ovJ_l_midcarpal_3 }
{ Replaced ts_l_midcarpal_3.EventIsover TO controller.ovJ_l_midcarpal_3 }
{ Sample ts_l_midcarpal_3.EventIsover TO controller.ovJ_l_midcarpal_3}
Group12.AddRoute(TouchSensor1665.EventIsover, SFBool4343);
{ .AddX3DRoute }
{ Original "'ts_l_carpometacarpal_3'.EventIsover TO 'controller'.ovJ_l_carpometacarpal_3 }
{ Replaced ts_l_carpometacarpal_3.EventIsover TO controller.ovJ_l_carpometacarpal_3 }
{ Sample ts_l_carpometacarpal_3.EventIsover TO controller.ovJ_l_carpometacarpal_3}
Group12.AddRoute(TouchSensor1680.EventIsover, SFBool4344);
{ .AddX3DRoute }
{ Original "'ts_l_metacarpophalangeal_3'.EventIsover TO 'controller'.ovJ_l_metacarpophalangeal_3 }
{ Replaced ts_l_metacarpophalangeal_3.EventIsover TO controller.ovJ_l_metacarpophalangeal_3 }
{ Sample ts_l_metacarpophalangeal_3.EventIsover TO controller.ovJ_l_metacarpophalangeal_3}
Group12.AddRoute(TouchSensor1695.EventIsover, SFBool4345);
{ .AddX3DRoute }
{ Original "'ts_l_carpal_proximal_interphalangeal_3'.EventIsover TO 'controller'.ovJ_l_carpal_proximal_interphalangeal_3 }
{ Replaced ts_l_carpal_proximal_interphalangeal_3.EventIsover TO controller.ovJ_l_carpal_proximal_interphalangeal_3 }
{ Sample ts_l_carpal_proximal_interphalangeal_3.EventIsover TO controller.ovJ_l_carpal_proximal_interphalangeal_3}
Group12.AddRoute(TouchSensor1710.EventIsover, SFBool4346);
{ .AddX3DRoute }
{ Original "'ts_l_carpal_distal_interphalangeal_3'.EventIsover TO 'controller'.ovJ_l_carpal_distal_interphalangeal_3 }
{ Replaced ts_l_carpal_distal_interphalangeal_3.EventIsover TO controller.ovJ_l_carpal_distal_interphalangeal_3 }
{ Sample ts_l_carpal_distal_interphalangeal_3.EventIsover TO controller.ovJ_l_carpal_distal_interphalangeal_3}
Group12.AddRoute(TouchSensor1726.EventIsover, SFBool4347);
{ .AddX3DRoute }
{ Original "'ts_l_midcarpal_4_5'.EventIsover TO 'controller'.ovJ_l_midcarpal_4_5 }
{ Replaced ts_l_midcarpal_4_5.EventIsover TO controller.ovJ_l_midcarpal_4_5 }
{ Sample ts_l_midcarpal_4_5.EventIsover TO controller.ovJ_l_midcarpal_4_5}
Group12.AddRoute(TouchSensor1740.EventIsover, SFBool4348);
{ .AddX3DRoute }
{ Original "'ts_l_carpometacarpal_4'.EventIsover TO 'controller'.ovJ_l_carpometacarpal_4 }
{ Replaced ts_l_carpometacarpal_4.EventIsover TO controller.ovJ_l_carpometacarpal_4 }
{ Sample ts_l_carpometacarpal_4.EventIsover TO controller.ovJ_l_carpometacarpal_4}
Group12.AddRoute(TouchSensor1759.EventIsover, SFBool4349);
{ .AddX3DRoute }
{ Original "'ts_l_metacarpophalangeal_4'.EventIsover TO 'controller'.ovJ_l_metacarpophalangeal_4 }
{ Replaced ts_l_metacarpophalangeal_4.EventIsover TO controller.ovJ_l_metacarpophalangeal_4 }
{ Sample ts_l_metacarpophalangeal_4.EventIsover TO controller.ovJ_l_metacarpophalangeal_4}
Group12.AddRoute(TouchSensor1774.EventIsover, SFBool4350);
{ .AddX3DRoute }
{ Original "'ts_l_carpal_proximal_interphalangeal_4'.EventIsover TO 'controller'.ovJ_l_carpal_proximal_interphalangeal_4 }
{ Replaced ts_l_carpal_proximal_interphalangeal_4.EventIsover TO controller.ovJ_l_carpal_proximal_interphalangeal_4 }
{ Sample ts_l_carpal_proximal_interphalangeal_4.EventIsover TO controller.ovJ_l_carpal_proximal_interphalangeal_4}
Group12.AddRoute(TouchSensor1789.EventIsover, SFBool4351);
{ .AddX3DRoute }
{ Original "'ts_l_carpal_distal_interphalangeal_4'.EventIsover TO 'controller'.ovJ_l_carpal_distal_interphalangeal_4 }
{ Replaced ts_l_carpal_distal_interphalangeal_4.EventIsover TO controller.ovJ_l_carpal_distal_interphalangeal_4 }
{ Sample ts_l_carpal_distal_interphalangeal_4.EventIsover TO controller.ovJ_l_carpal_distal_interphalangeal_4}
Group12.AddRoute(TouchSensor1805.EventIsover, SFBool4352);
{ .AddX3DRoute }
{ Original "'ts_l_carpometacarpal_5'.EventIsover TO 'controller'.ovJ_l_carpometacarpal_5 }
{ Replaced ts_l_carpometacarpal_5.EventIsover TO controller.ovJ_l_carpometacarpal_5 }
{ Sample ts_l_carpometacarpal_5.EventIsover TO controller.ovJ_l_carpometacarpal_5}
Group12.AddRoute(TouchSensor1819.EventIsover, SFBool4353);
{ .AddX3DRoute }
{ Original "'ts_l_metacarpophalangeal_5'.EventIsover TO 'controller'.ovJ_l_metacarpophalangeal_5 }
{ Replaced ts_l_metacarpophalangeal_5.EventIsover TO controller.ovJ_l_metacarpophalangeal_5 }
{ Sample ts_l_metacarpophalangeal_5.EventIsover TO controller.ovJ_l_metacarpophalangeal_5}
Group12.AddRoute(TouchSensor1834.EventIsover, SFBool4354);
{ .AddX3DRoute }
{ Original "'ts_l_carpal_proximal_interphalangeal_5'.EventIsover TO 'controller'.ovJ_l_carpal_proximal_interphalangeal_5 }
{ Replaced ts_l_carpal_proximal_interphalangeal_5.EventIsover TO controller.ovJ_l_carpal_proximal_interphalangeal_5 }
{ Sample ts_l_carpal_proximal_interphalangeal_5.EventIsover TO controller.ovJ_l_carpal_proximal_interphalangeal_5}
Group12.AddRoute(TouchSensor1849.EventIsover, SFBool4355);
{ .AddX3DRoute }
{ Original "'ts_l_carpal_distal_interphalangeal_5'.EventIsover TO 'controller'.ovJ_l_carpal_distal_interphalangeal_5 }
{ Replaced ts_l_carpal_distal_interphalangeal_5.EventIsover TO controller.ovJ_l_carpal_distal_interphalangeal_5 }
{ Sample ts_l_carpal_distal_interphalangeal_5.EventIsover TO controller.ovJ_l_carpal_distal_interphalangeal_5}
Group12.AddRoute(TouchSensor1865.EventIsover, SFBool4356);
{ .AddX3DRoute }
{ Original "'ts_r_sternoclavicular'.EventIsover TO 'controller'.ovJ_r_sternoclavicular }
{ Replaced ts_r_sternoclavicular.EventIsover TO controller.ovJ_r_sternoclavicular }
{ Sample ts_r_sternoclavicular.EventIsover TO controller.ovJ_r_sternoclavicular}
Group12.AddRoute(TouchSensor1879.EventIsover, SFBool4357);
{ .AddX3DRoute }
{ Original "'ts_r_acromioclavicular'.EventIsover TO 'controller'.ovJ_r_acromioclavicular }
{ Replaced ts_r_acromioclavicular.EventIsover TO controller.ovJ_r_acromioclavicular }
{ Sample ts_r_acromioclavicular.EventIsover TO controller.ovJ_r_acromioclavicular}
Group12.AddRoute(TouchSensor1894.EventIsover, SFBool4358);
end;

procedure InitHAnimGimbalJointController22Part297;
begin

{ .AddX3DRoute }
{ Original "'ts_r_shoulder'.EventIsover TO 'controller'.ovJ_r_shoulder }
{ Replaced ts_r_shoulder.EventIsover TO controller.ovJ_r_shoulder }
{ Sample ts_r_shoulder.EventIsover TO controller.ovJ_r_shoulder}
Group12.AddRoute(TouchSensor1909.EventIsover, SFBool4359);
{ .AddX3DRoute }
{ Original "'ts_r_elbow'.EventIsover TO 'controller'.ovJ_r_elbow }
{ Replaced ts_r_elbow.EventIsover TO controller.ovJ_r_elbow }
{ Sample ts_r_elbow.EventIsover TO controller.ovJ_r_elbow}
Group12.AddRoute(TouchSensor1924.EventIsover, SFBool4360);
{ .AddX3DRoute }
{ Original "'ts_r_radiocarpal'.EventIsover TO 'controller'.ovJ_r_radiocarpal }
{ Replaced ts_r_radiocarpal.EventIsover TO controller.ovJ_r_radiocarpal }
{ Sample ts_r_radiocarpal.EventIsover TO controller.ovJ_r_radiocarpal}
Group12.AddRoute(TouchSensor1939.EventIsover, SFBool4361);
{ .AddX3DRoute }
{ Original "'ts_r_midcarpal_1'.EventIsover TO 'controller'.ovJ_r_midcarpal_1 }
{ Replaced ts_r_midcarpal_1.EventIsover TO controller.ovJ_r_midcarpal_1 }
{ Sample ts_r_midcarpal_1.EventIsover TO controller.ovJ_r_midcarpal_1}
Group12.AddRoute(TouchSensor1966.EventIsover, SFBool4362);
{ .AddX3DRoute }
{ Original "'ts_r_carpometacarpal_1'.EventIsover TO 'controller'.ovJ_r_carpometacarpal_1 }
{ Replaced ts_r_carpometacarpal_1.EventIsover TO controller.ovJ_r_carpometacarpal_1 }
{ Sample ts_r_carpometacarpal_1.EventIsover TO controller.ovJ_r_carpometacarpal_1}
Group12.AddRoute(TouchSensor1981.EventIsover, SFBool4363);
{ .AddX3DRoute }
{ Original "'ts_r_metacarpophalangeal_1'.EventIsover TO 'controller'.ovJ_r_metacarpophalangeal_1 }
{ Replaced ts_r_metacarpophalangeal_1.EventIsover TO controller.ovJ_r_metacarpophalangeal_1 }
{ Sample ts_r_metacarpophalangeal_1.EventIsover TO controller.ovJ_r_metacarpophalangeal_1}
Group12.AddRoute(TouchSensor1996.EventIsover, SFBool4364);
{ .AddX3DRoute }
{ Original "'ts_r_carpal_interphalangeal_1'.EventIsover TO 'controller'.ovJ_r_carpal_interphalangeal_1 }
{ Replaced ts_r_carpal_interphalangeal_1.EventIsover TO controller.ovJ_r_carpal_interphalangeal_1 }
{ Sample ts_r_carpal_interphalangeal_1.EventIsover TO controller.ovJ_r_carpal_interphalangeal_1}
Group12.AddRoute(TouchSensor2012.EventIsover, SFBool4365);
{ .AddX3DRoute }
{ Original "'ts_r_midcarpal_2'.EventIsover TO 'controller'.ovJ_r_midcarpal_2 }
{ Replaced ts_r_midcarpal_2.EventIsover TO controller.ovJ_r_midcarpal_2 }
{ Sample ts_r_midcarpal_2.EventIsover TO controller.ovJ_r_midcarpal_2}
Group12.AddRoute(TouchSensor2026.EventIsover, SFBool4366);
{ .AddX3DRoute }
{ Original "'ts_r_carpometacarpal_2'.EventIsover TO 'controller'.ovJ_r_carpometacarpal_2 }
{ Replaced ts_r_carpometacarpal_2.EventIsover TO controller.ovJ_r_carpometacarpal_2 }
{ Sample ts_r_carpometacarpal_2.EventIsover TO controller.ovJ_r_carpometacarpal_2}
Group12.AddRoute(TouchSensor2041.EventIsover, SFBool4367);
{ .AddX3DRoute }
{ Original "'ts_r_metacarpophalangeal_2'.EventIsover TO 'controller'.ovJ_r_metacarpophalangeal_2 }
{ Replaced ts_r_metacarpophalangeal_2.EventIsover TO controller.ovJ_r_metacarpophalangeal_2 }
{ Sample ts_r_metacarpophalangeal_2.EventIsover TO controller.ovJ_r_metacarpophalangeal_2}
Group12.AddRoute(TouchSensor2056.EventIsover, SFBool4368);
{ .AddX3DRoute }
{ Original "'ts_r_carpal_proximal_interphalangeal_2'.EventIsover TO 'controller'.ovJ_r_carpal_proximal_interphalangeal_2 }
{ Replaced ts_r_carpal_proximal_interphalangeal_2.EventIsover TO controller.ovJ_r_carpal_proximal_interphalangeal_2 }
{ Sample ts_r_carpal_proximal_interphalangeal_2.EventIsover TO controller.ovJ_r_carpal_proximal_interphalangeal_2}
Group12.AddRoute(TouchSensor2071.EventIsover, SFBool4369);
{ .AddX3DRoute }
{ Original "'ts_r_carpal_distal_interphalangeal_2'.EventIsover TO 'controller'.ovJ_r_carpal_distal_interphalangeal_2 }
{ Replaced ts_r_carpal_distal_interphalangeal_2.EventIsover TO controller.ovJ_r_carpal_distal_interphalangeal_2 }
{ Sample ts_r_carpal_distal_interphalangeal_2.EventIsover TO controller.ovJ_r_carpal_distal_interphalangeal_2}
Group12.AddRoute(TouchSensor2087.EventIsover, SFBool4370);
{ .AddX3DRoute }
{ Original "'ts_r_midcarpal_3'.EventIsover TO 'controller'.ovJ_r_midcarpal_3 }
{ Replaced ts_r_midcarpal_3.EventIsover TO controller.ovJ_r_midcarpal_3 }
{ Sample ts_r_midcarpal_3.EventIsover TO controller.ovJ_r_midcarpal_3}
Group12.AddRoute(TouchSensor2101.EventIsover, SFBool4371);
{ .AddX3DRoute }
{ Original "'ts_r_carpometacarpal_3'.EventIsover TO 'controller'.ovJ_r_carpometacarpal_3 }
{ Replaced ts_r_carpometacarpal_3.EventIsover TO controller.ovJ_r_carpometacarpal_3 }
{ Sample ts_r_carpometacarpal_3.EventIsover TO controller.ovJ_r_carpometacarpal_3}
Group12.AddRoute(TouchSensor2116.EventIsover, SFBool4372);
{ .AddX3DRoute }
{ Original "'ts_r_metacarpophalangeal_3'.EventIsover TO 'controller'.ovJ_r_metacarpophalangeal_3 }
{ Replaced ts_r_metacarpophalangeal_3.EventIsover TO controller.ovJ_r_metacarpophalangeal_3 }
{ Sample ts_r_metacarpophalangeal_3.EventIsover TO controller.ovJ_r_metacarpophalangeal_3}
Group12.AddRoute(TouchSensor2131.EventIsover, SFBool4373);
{ .AddX3DRoute }
{ Original "'ts_r_carpal_proximal_interphalangeal_3'.EventIsover TO 'controller'.ovJ_r_carpal_proximal_interphalangeal_3 }
{ Replaced ts_r_carpal_proximal_interphalangeal_3.EventIsover TO controller.ovJ_r_carpal_proximal_interphalangeal_3 }
{ Sample ts_r_carpal_proximal_interphalangeal_3.EventIsover TO controller.ovJ_r_carpal_proximal_interphalangeal_3}
Group12.AddRoute(TouchSensor2146.EventIsover, SFBool4374);
{ .AddX3DRoute }
{ Original "'ts_r_carpal_distal_interphalangeal_3'.EventIsover TO 'controller'.ovJ_r_carpal_distal_interphalangeal_3 }
{ Replaced ts_r_carpal_distal_interphalangeal_3.EventIsover TO controller.ovJ_r_carpal_distal_interphalangeal_3 }
{ Sample ts_r_carpal_distal_interphalangeal_3.EventIsover TO controller.ovJ_r_carpal_distal_interphalangeal_3}
Group12.AddRoute(TouchSensor2162.EventIsover, SFBool4375);
{ .AddX3DRoute }
{ Original "'ts_r_midcarpal_4_5'.EventIsover TO 'controller'.ovJ_r_midcarpal_4_5 }
{ Replaced ts_r_midcarpal_4_5.EventIsover TO controller.ovJ_r_midcarpal_4_5 }
{ Sample ts_r_midcarpal_4_5.EventIsover TO controller.ovJ_r_midcarpal_4_5}
Group12.AddRoute(TouchSensor2176.EventIsover, SFBool4376);
{ .AddX3DRoute }
{ Original "'ts_r_carpometacarpal_4'.EventIsover TO 'controller'.ovJ_r_carpometacarpal_4 }
{ Replaced ts_r_carpometacarpal_4.EventIsover TO controller.ovJ_r_carpometacarpal_4 }
{ Sample ts_r_carpometacarpal_4.EventIsover TO controller.ovJ_r_carpometacarpal_4}
Group12.AddRoute(TouchSensor2195.EventIsover, SFBool4377);
{ .AddX3DRoute }
{ Original "'ts_r_metacarpophalangeal_4'.EventIsover TO 'controller'.ovJ_r_metacarpophalangeal_4 }
{ Replaced ts_r_metacarpophalangeal_4.EventIsover TO controller.ovJ_r_metacarpophalangeal_4 }
{ Sample ts_r_metacarpophalangeal_4.EventIsover TO controller.ovJ_r_metacarpophalangeal_4}
Group12.AddRoute(TouchSensor2210.EventIsover, SFBool4378);
{ .AddX3DRoute }
{ Original "'ts_r_carpal_proximal_interphalangeal_4'.EventIsover TO 'controller'.ovJ_r_carpal_proximal_interphalangeal_4 }
{ Replaced ts_r_carpal_proximal_interphalangeal_4.EventIsover TO controller.ovJ_r_carpal_proximal_interphalangeal_4 }
{ Sample ts_r_carpal_proximal_interphalangeal_4.EventIsover TO controller.ovJ_r_carpal_proximal_interphalangeal_4}
Group12.AddRoute(TouchSensor2225.EventIsover, SFBool4379);
{ .AddX3DRoute }
{ Original "'ts_r_carpal_distal_interphalangeal_4'.EventIsover TO 'controller'.ovJ_r_carpal_distal_interphalangeal_4 }
{ Replaced ts_r_carpal_distal_interphalangeal_4.EventIsover TO controller.ovJ_r_carpal_distal_interphalangeal_4 }
{ Sample ts_r_carpal_distal_interphalangeal_4.EventIsover TO controller.ovJ_r_carpal_distal_interphalangeal_4}
Group12.AddRoute(TouchSensor2241.EventIsover, SFBool4380);
{ .AddX3DRoute }
{ Original "'ts_r_carpometacarpal_5'.EventIsover TO 'controller'.ovJ_r_carpometacarpal_5 }
{ Replaced ts_r_carpometacarpal_5.EventIsover TO controller.ovJ_r_carpometacarpal_5 }
{ Sample ts_r_carpometacarpal_5.EventIsover TO controller.ovJ_r_carpometacarpal_5}
Group12.AddRoute(TouchSensor2255.EventIsover, SFBool4381);
{ .AddX3DRoute }
{ Original "'ts_r_metacarpophalangeal_5'.EventIsover TO 'controller'.ovJ_r_metacarpophalangeal_5 }
{ Replaced ts_r_metacarpophalangeal_5.EventIsover TO controller.ovJ_r_metacarpophalangeal_5 }
{ Sample ts_r_metacarpophalangeal_5.EventIsover TO controller.ovJ_r_metacarpophalangeal_5}
Group12.AddRoute(TouchSensor2270.EventIsover, SFBool4382);
{ .AddX3DRoute }
{ Original "'ts_r_carpal_proximal_interphalangeal_5'.EventIsover TO 'controller'.ovJ_r_carpal_proximal_interphalangeal_5 }
{ Replaced ts_r_carpal_proximal_interphalangeal_5.EventIsover TO controller.ovJ_r_carpal_proximal_interphalangeal_5 }
{ Sample ts_r_carpal_proximal_interphalangeal_5.EventIsover TO controller.ovJ_r_carpal_proximal_interphalangeal_5}
Group12.AddRoute(TouchSensor2285.EventIsover, SFBool4383);
{ .AddX3DRoute }
{ Original "'ts_r_carpal_distal_interphalangeal_5'.EventIsover TO 'controller'.ovJ_r_carpal_distal_interphalangeal_5 }
{ Replaced ts_r_carpal_distal_interphalangeal_5.EventIsover TO controller.ovJ_r_carpal_distal_interphalangeal_5 }
{ Sample ts_r_carpal_distal_interphalangeal_5.EventIsover TO controller.ovJ_r_carpal_distal_interphalangeal_5}
Group12.AddRoute(TouchSensor2301.EventIsover, SFBool4384);
{ .AddX3DRoute }
{ Original "'tsPrev'.EventIsover TO 'controller'.ovB0 }
{ Replaced tsPrev.EventIsover TO controller.ovB0 }
{ Sample tsPrev.EventIsover TO controller.ovB0}
Group12.AddRoute(TouchSensor2658.EventIsover, SFBool4385);
{ .AddX3DRoute }
{ Original "'tsNext'.EventIsover TO 'controller'.ovB1 }
{ Replaced tsNext.EventIsover TO controller.ovB1 }
{ Sample tsNext.EventIsover TO controller.ovB1}
Group12.AddRoute(TouchSensor2671.EventIsover, SFBool4386);
{ .AddX3DRoute }
{ Original "'tsUp'.EventIsover TO 'controller'.ovB2 }
{ Replaced tsUp.EventIsover TO controller.ovB2 }
{ Sample tsUp.EventIsover TO controller.ovB2}
Group12.AddRoute(TouchSensor2684.EventIsover, SFBool4387);
{ .AddX3DRoute }
{ Original "'tsDown'.EventIsover TO 'controller'.ovB3 }
{ Replaced tsDown.EventIsover TO controller.ovB3 }
{ Sample tsDown.EventIsover TO controller.ovB3}
Group12.AddRoute(TouchSensor2697.EventIsover, SFBool4388);
{ .AddX3DRoute }
{ Original "'tsSibPrev'.EventIsover TO 'controller'.ovB4 }
{ Replaced tsSibPrev.EventIsover TO controller.ovB4 }
{ Sample tsSibPrev.EventIsover TO controller.ovB4}
Group12.AddRoute(TouchSensor2710.EventIsover, SFBool4389);
{ .AddX3DRoute }
{ Original "'tsSibNext'.EventIsover TO 'controller'.ovB5 }
{ Replaced tsSibNext.EventIsover TO controller.ovB5 }
{ Sample tsSibNext.EventIsover TO controller.ovB5}
Group12.AddRoute(TouchSensor2723.EventIsover, SFBool4390);
{ .AddX3DRoute }
{ Original "'tsReset'.EventIsover TO 'controller'.ovB6 }
{ Replaced tsReset.EventIsover TO controller.ovB6 }
{ Sample tsReset.EventIsover TO controller.ovB6}
Group12.AddRoute(TouchSensor2736.EventIsover, SFBool4391);
{ .AddX3DRoute }
{ Original "'tsDeselect'.EventIsover TO 'controller'.ovB7 }
{ Replaced tsDeselect.EventIsover TO controller.ovB7 }
{ Sample tsDeselect.EventIsover TO controller.ovB7}
Group12.AddRoute(TouchSensor2749.EventIsover, SFBool4392);
{ .AddX3DRoute }
{ Original "'tsExport'.EventIsover TO 'controller'.ovB8 }
{ Replaced tsExport.EventIsover TO controller.ovB8 }
{ Sample tsExport.EventIsover TO controller.ovB8}
Group12.AddRoute(TouchSensor2763.EventIsover, SFBool4393);
{ .AddX3DRoute }
{ Original "'tsImport'.EventIsover TO 'controller'.ovB9 }
{ Replaced tsImport.EventIsover TO controller.ovB9 }
{ Sample tsImport.EventIsover TO controller.ovB9}
Group12.AddRoute(TouchSensor2776.EventIsover, SFBool4394);
{ .AddX3DRoute }
{ Original "'tsTReset'.EventIsover TO 'controller'.ovB10 }
{ Replaced tsTReset.EventIsover TO controller.ovB10 }
{ Sample tsTReset.EventIsover TO controller.ovB10}
Group12.AddRoute(TouchSensor3175.EventIsover, SFBool4395);
{ .AddX3DRoute }
{ Original "'psX'.EventIsover TO 'controller'.ovSl0 }
{ Replaced psX.EventIsover TO controller.ovSl0 }
{ Sample psX.EventIsover TO controller.ovSl0}
Group12.AddRoute(PlaneSensor2829.EventIsover, SFBool4396);
end;

procedure InitHAnimGimbalJointController22Part298;
begin

{ .AddX3DRoute }
{ Original "'psX'.EventIsactive TO 'controller'.acSl0 }
{ Replaced psX.EventIsactive TO controller.acSl0 }
{ Sample psX.EventIsactive TO controller.acSl0}
Group12.AddRoute(PlaneSensor2829.EventIsactive, SFBool4401);
{ .AddX3DRoute }
{ Original "'psTX'.EventIsover TO 'controller'.ovTSl0 }
{ Replaced psTX.EventIsover TO controller.ovTSl0 }
{ Sample psTX.EventIsover TO controller.ovTSl0}
Group12.AddRoute(PlaneSensor3025.EventIsover, SFBool4397);
{ .AddX3DRoute }
{ Original "'psTX'.EventIsactive TO 'controller'.acTSl0 }
{ Replaced psTX.EventIsactive TO controller.acTSl0 }
{ Sample psTX.EventIsactive TO controller.acTSl0}
Group12.AddRoute(PlaneSensor3025.EventIsactive, SFBool4402);
{ .AddX3DRoute }
{ Original "'csGX'.EventIsover TO 'controller'.ovRg0 }
{ Replaced csGX.EventIsover TO controller.ovRg0 }
{ Sample csGX.EventIsover TO controller.ovRg0}
Group12.AddRoute(CylinderSensor2609.EventIsover, SFBool4398);
{ .AddX3DRoute }
{ Original "'csGX'.EventIsactive TO 'controller'.acRg0 }
{ Replaced csGX.EventIsactive TO controller.acRg0 }
{ Sample csGX.EventIsactive TO controller.acRg0}
Group12.AddRoute(CylinderSensor2609.EventIsactive, SFBool4403);
{ .AddX3DRoute }
{ Original "'tsInX'.EventIsover TO 'controller'.ovIn0 }
{ Replaced tsInX.EventIsover TO controller.ovIn0 }
{ Sample tsInX.EventIsover TO controller.ovIn0}
Group12.AddRoute(TouchSensor2849.EventIsover, SFBool4399);
{ .AddX3DRoute }
{ Original "'tsTInX'.EventIsover TO 'controller'.ovTIn0 }
{ Replaced tsTInX.EventIsover TO controller.ovTIn0 }
{ Sample tsTInX.EventIsover TO controller.ovTIn0}
Group12.AddRoute(TouchSensor3045.EventIsover, SFBool4400);
{ .AddX3DRoute }
{ Original "'psY'.EventIsover TO 'controller'.ovSl1 }
{ Replaced psY.EventIsover TO controller.ovSl1 }
{ Sample psY.EventIsover TO controller.ovSl1}
Group12.AddRoute(PlaneSensor2883.EventIsover, SFBool4404);
{ .AddX3DRoute }
{ Original "'psY'.EventIsactive TO 'controller'.acSl1 }
{ Replaced psY.EventIsactive TO controller.acSl1 }
{ Sample psY.EventIsactive TO controller.acSl1}
Group12.AddRoute(PlaneSensor2883.EventIsactive, SFBool4409);
{ .AddX3DRoute }
{ Original "'psTY'.EventIsover TO 'controller'.ovTSl1 }
{ Replaced psTY.EventIsover TO controller.ovTSl1 }
{ Sample psTY.EventIsover TO controller.ovTSl1}
Group12.AddRoute(PlaneSensor3084.EventIsover, SFBool4405);
{ .AddX3DRoute }
{ Original "'psTY'.EventIsactive TO 'controller'.acTSl1 }
{ Replaced psTY.EventIsactive TO controller.acTSl1 }
{ Sample psTY.EventIsactive TO controller.acTSl1}
Group12.AddRoute(PlaneSensor3084.EventIsactive, SFBool4410);
{ .AddX3DRoute }
{ Original "'csGY'.EventIsover TO 'controller'.ovRg1 }
{ Replaced csGY.EventIsover TO controller.ovRg1 }
{ Sample csGY.EventIsover TO controller.ovRg1}
Group12.AddRoute(CylinderSensor2617.EventIsover, SFBool4406);
{ .AddX3DRoute }
{ Original "'csGY'.EventIsactive TO 'controller'.acRg1 }
{ Replaced csGY.EventIsactive TO controller.acRg1 }
{ Sample csGY.EventIsactive TO controller.acRg1}
Group12.AddRoute(CylinderSensor2617.EventIsactive, SFBool4411);
{ .AddX3DRoute }
{ Original "'tsInY'.EventIsover TO 'controller'.ovIn1 }
{ Replaced tsInY.EventIsover TO controller.ovIn1 }
{ Sample tsInY.EventIsover TO controller.ovIn1}
Group12.AddRoute(TouchSensor2903.EventIsover, SFBool4407);
{ .AddX3DRoute }
{ Original "'tsTInY'.EventIsover TO 'controller'.ovTIn1 }
{ Replaced tsTInY.EventIsover TO controller.ovTIn1 }
{ Sample tsTInY.EventIsover TO controller.ovTIn1}
Group12.AddRoute(TouchSensor3104.EventIsover, SFBool4408);
{ .AddX3DRoute }
{ Original "'psZ'.EventIsover TO 'controller'.ovSl2 }
{ Replaced psZ.EventIsover TO controller.ovSl2 }
{ Sample psZ.EventIsover TO controller.ovSl2}
Group12.AddRoute(PlaneSensor2937.EventIsover, SFBool4412);
{ .AddX3DRoute }
{ Original "'psZ'.EventIsactive TO 'controller'.acSl2 }
{ Replaced psZ.EventIsactive TO controller.acSl2 }
{ Sample psZ.EventIsactive TO controller.acSl2}
Group12.AddRoute(PlaneSensor2937.EventIsactive, SFBool4417);
{ .AddX3DRoute }
{ Original "'psTZ'.EventIsover TO 'controller'.ovTSl2 }
{ Replaced psTZ.EventIsover TO controller.ovTSl2 }
{ Sample psTZ.EventIsover TO controller.ovTSl2}
Group12.AddRoute(PlaneSensor3143.EventIsover, SFBool4413);
{ .AddX3DRoute }
{ Original "'psTZ'.EventIsactive TO 'controller'.acTSl2 }
{ Replaced psTZ.EventIsactive TO controller.acTSl2 }
{ Sample psTZ.EventIsactive TO controller.acTSl2}
Group12.AddRoute(PlaneSensor3143.EventIsactive, SFBool4418);
{ .AddX3DRoute }
{ Original "'csGZ'.EventIsover TO 'controller'.ovRg2 }
{ Replaced csGZ.EventIsover TO controller.ovRg2 }
{ Sample csGZ.EventIsover TO controller.ovRg2}
Group12.AddRoute(CylinderSensor2625.EventIsover, SFBool4414);
{ .AddX3DRoute }
{ Original "'csGZ'.EventIsactive TO 'controller'.acRg2 }
{ Replaced csGZ.EventIsactive TO controller.acRg2 }
{ Sample csGZ.EventIsactive TO controller.acRg2}
Group12.AddRoute(CylinderSensor2625.EventIsactive, SFBool4419);
{ .AddX3DRoute }
{ Original "'tsInZ'.EventIsover TO 'controller'.ovIn2 }
{ Replaced tsInZ.EventIsover TO controller.ovIn2 }
{ Sample tsInZ.EventIsover TO controller.ovIn2}
Group12.AddRoute(TouchSensor2957.EventIsover, SFBool4415);
{ .AddX3DRoute }
{ Original "'tsTInZ'.EventIsover TO 'controller'.ovTIn2 }
{ Replaced tsTInZ.EventIsover TO controller.ovTIn2 }
{ Sample tsTInZ.EventIsover TO controller.ovTIn2}
Group12.AddRoute(TouchSensor3163.EventIsover, SFBool4416);
{ .AddX3DRoute }
{ .AddGroup }
X3D0.AddChildren([Group12]);
end;

function CreateHAnimGimbalJointController22: TX3DRootNode;
begin
InitHAnimGimbalJointController22Part0;
InitHAnimGimbalJointController22Part1;
InitHAnimGimbalJointController22Part2;
InitHAnimGimbalJointController22Part3;
InitHAnimGimbalJointController22Part4;
InitHAnimGimbalJointController22Part5;
InitHAnimGimbalJointController22Part6;
InitHAnimGimbalJointController22Part7;
InitHAnimGimbalJointController22Part8;
InitHAnimGimbalJointController22Part9;
InitHAnimGimbalJointController22Part10;
InitHAnimGimbalJointController22Part11;
InitHAnimGimbalJointController22Part12;
InitHAnimGimbalJointController22Part13;
InitHAnimGimbalJointController22Part14;
InitHAnimGimbalJointController22Part15;
InitHAnimGimbalJointController22Part16;
InitHAnimGimbalJointController22Part17;
InitHAnimGimbalJointController22Part18;
InitHAnimGimbalJointController22Part19;
InitHAnimGimbalJointController22Part20;
InitHAnimGimbalJointController22Part21;
InitHAnimGimbalJointController22Part22;
InitHAnimGimbalJointController22Part23;
InitHAnimGimbalJointController22Part24;
InitHAnimGimbalJointController22Part25;
InitHAnimGimbalJointController22Part26;
InitHAnimGimbalJointController22Part27;
InitHAnimGimbalJointController22Part28;
InitHAnimGimbalJointController22Part29;
InitHAnimGimbalJointController22Part30;
InitHAnimGimbalJointController22Part31;
InitHAnimGimbalJointController22Part32;
InitHAnimGimbalJointController22Part33;
InitHAnimGimbalJointController22Part34;
InitHAnimGimbalJointController22Part35;
InitHAnimGimbalJointController22Part36;
InitHAnimGimbalJointController22Part37;
InitHAnimGimbalJointController22Part38;
InitHAnimGimbalJointController22Part39;
InitHAnimGimbalJointController22Part40;
InitHAnimGimbalJointController22Part41;
InitHAnimGimbalJointController22Part42;
InitHAnimGimbalJointController22Part43;
InitHAnimGimbalJointController22Part44;
InitHAnimGimbalJointController22Part45;
InitHAnimGimbalJointController22Part46;
InitHAnimGimbalJointController22Part47;
InitHAnimGimbalJointController22Part48;
InitHAnimGimbalJointController22Part49;
InitHAnimGimbalJointController22Part50;
InitHAnimGimbalJointController22Part51;
InitHAnimGimbalJointController22Part52;
InitHAnimGimbalJointController22Part53;
InitHAnimGimbalJointController22Part54;
InitHAnimGimbalJointController22Part55;
InitHAnimGimbalJointController22Part56;
InitHAnimGimbalJointController22Part57;
InitHAnimGimbalJointController22Part58;
InitHAnimGimbalJointController22Part59;
InitHAnimGimbalJointController22Part60;
InitHAnimGimbalJointController22Part61;
InitHAnimGimbalJointController22Part62;
InitHAnimGimbalJointController22Part63;
InitHAnimGimbalJointController22Part64;
InitHAnimGimbalJointController22Part65;
InitHAnimGimbalJointController22Part66;
InitHAnimGimbalJointController22Part67;
InitHAnimGimbalJointController22Part68;
InitHAnimGimbalJointController22Part69;
InitHAnimGimbalJointController22Part70;
InitHAnimGimbalJointController22Part71;
InitHAnimGimbalJointController22Part72;
InitHAnimGimbalJointController22Part73;
InitHAnimGimbalJointController22Part74;
InitHAnimGimbalJointController22Part75;
InitHAnimGimbalJointController22Part76;
InitHAnimGimbalJointController22Part77;
InitHAnimGimbalJointController22Part78;
InitHAnimGimbalJointController22Part79;
InitHAnimGimbalJointController22Part80;
InitHAnimGimbalJointController22Part81;
InitHAnimGimbalJointController22Part82;
InitHAnimGimbalJointController22Part83;
InitHAnimGimbalJointController22Part84;
InitHAnimGimbalJointController22Part85;
InitHAnimGimbalJointController22Part86;
InitHAnimGimbalJointController22Part87;
InitHAnimGimbalJointController22Part88;
InitHAnimGimbalJointController22Part89;
InitHAnimGimbalJointController22Part90;
InitHAnimGimbalJointController22Part91;
InitHAnimGimbalJointController22Part92;
InitHAnimGimbalJointController22Part93;
InitHAnimGimbalJointController22Part94;
InitHAnimGimbalJointController22Part95;
InitHAnimGimbalJointController22Part96;
InitHAnimGimbalJointController22Part97;
InitHAnimGimbalJointController22Part98;
InitHAnimGimbalJointController22Part99;
InitHAnimGimbalJointController22Part100;
InitHAnimGimbalJointController22Part101;
InitHAnimGimbalJointController22Part102;
InitHAnimGimbalJointController22Part103;
InitHAnimGimbalJointController22Part104;
InitHAnimGimbalJointController22Part105;
InitHAnimGimbalJointController22Part106;
InitHAnimGimbalJointController22Part107;
InitHAnimGimbalJointController22Part108;
InitHAnimGimbalJointController22Part109;
InitHAnimGimbalJointController22Part110;
InitHAnimGimbalJointController22Part111;
InitHAnimGimbalJointController22Part112;
InitHAnimGimbalJointController22Part113;
InitHAnimGimbalJointController22Part114;
InitHAnimGimbalJointController22Part115;
InitHAnimGimbalJointController22Part116;
InitHAnimGimbalJointController22Part117;
InitHAnimGimbalJointController22Part118;
InitHAnimGimbalJointController22Part119;
InitHAnimGimbalJointController22Part120;
InitHAnimGimbalJointController22Part121;
InitHAnimGimbalJointController22Part122;
InitHAnimGimbalJointController22Part123;
InitHAnimGimbalJointController22Part124;
InitHAnimGimbalJointController22Part125;
InitHAnimGimbalJointController22Part126;
InitHAnimGimbalJointController22Part127;
InitHAnimGimbalJointController22Part128;
InitHAnimGimbalJointController22Part129;
InitHAnimGimbalJointController22Part130;
InitHAnimGimbalJointController22Part131;
InitHAnimGimbalJointController22Part132;
InitHAnimGimbalJointController22Part133;
InitHAnimGimbalJointController22Part134;
InitHAnimGimbalJointController22Part135;
InitHAnimGimbalJointController22Part136;
InitHAnimGimbalJointController22Part137;
InitHAnimGimbalJointController22Part138;
InitHAnimGimbalJointController22Part139;
InitHAnimGimbalJointController22Part140;
InitHAnimGimbalJointController22Part141;
InitHAnimGimbalJointController22Part142;
InitHAnimGimbalJointController22Part143;
InitHAnimGimbalJointController22Part144;
InitHAnimGimbalJointController22Part145;
InitHAnimGimbalJointController22Part146;
InitHAnimGimbalJointController22Part147;
InitHAnimGimbalJointController22Part148;
InitHAnimGimbalJointController22Part149;
InitHAnimGimbalJointController22Part150;
InitHAnimGimbalJointController22Part151;
InitHAnimGimbalJointController22Part152;
InitHAnimGimbalJointController22Part153;
InitHAnimGimbalJointController22Part154;
InitHAnimGimbalJointController22Part155;
InitHAnimGimbalJointController22Part156;
InitHAnimGimbalJointController22Part157;
InitHAnimGimbalJointController22Part158;
InitHAnimGimbalJointController22Part159;
InitHAnimGimbalJointController22Part160;
InitHAnimGimbalJointController22Part161;
InitHAnimGimbalJointController22Part162;
InitHAnimGimbalJointController22Part163;
InitHAnimGimbalJointController22Part164;
InitHAnimGimbalJointController22Part165;
InitHAnimGimbalJointController22Part166;
InitHAnimGimbalJointController22Part167;
InitHAnimGimbalJointController22Part168;
InitHAnimGimbalJointController22Part169;
InitHAnimGimbalJointController22Part170;
InitHAnimGimbalJointController22Part171;
InitHAnimGimbalJointController22Part172;
InitHAnimGimbalJointController22Part173;
InitHAnimGimbalJointController22Part174;
InitHAnimGimbalJointController22Part175;
InitHAnimGimbalJointController22Part176;
InitHAnimGimbalJointController22Part177;
InitHAnimGimbalJointController22Part178;
InitHAnimGimbalJointController22Part179;
InitHAnimGimbalJointController22Part180;
InitHAnimGimbalJointController22Part181;
InitHAnimGimbalJointController22Part182;
InitHAnimGimbalJointController22Part183;
InitHAnimGimbalJointController22Part184;
InitHAnimGimbalJointController22Part185;
InitHAnimGimbalJointController22Part186;
InitHAnimGimbalJointController22Part187;
InitHAnimGimbalJointController22Part188;
InitHAnimGimbalJointController22Part189;
InitHAnimGimbalJointController22Part190;
InitHAnimGimbalJointController22Part191;
InitHAnimGimbalJointController22Part192;
InitHAnimGimbalJointController22Part193;
InitHAnimGimbalJointController22Part194;
InitHAnimGimbalJointController22Part195;
InitHAnimGimbalJointController22Part196;
InitHAnimGimbalJointController22Part197;
InitHAnimGimbalJointController22Part198;
InitHAnimGimbalJointController22Part199;
InitHAnimGimbalJointController22Part200;
InitHAnimGimbalJointController22Part201;
InitHAnimGimbalJointController22Part202;
InitHAnimGimbalJointController22Part203;
InitHAnimGimbalJointController22Part204;
InitHAnimGimbalJointController22Part205;
InitHAnimGimbalJointController22Part206;
InitHAnimGimbalJointController22Part207;
InitHAnimGimbalJointController22Part208;
InitHAnimGimbalJointController22Part209;
InitHAnimGimbalJointController22Part210;
InitHAnimGimbalJointController22Part211;
InitHAnimGimbalJointController22Part212;
InitHAnimGimbalJointController22Part213;
InitHAnimGimbalJointController22Part214;
InitHAnimGimbalJointController22Part215;
InitHAnimGimbalJointController22Part216;
InitHAnimGimbalJointController22Part217;
InitHAnimGimbalJointController22Part218;
InitHAnimGimbalJointController22Part219;
InitHAnimGimbalJointController22Part220;
InitHAnimGimbalJointController22Part221;
InitHAnimGimbalJointController22Part222;
InitHAnimGimbalJointController22Part223;
InitHAnimGimbalJointController22Part224;
InitHAnimGimbalJointController22Part225;
InitHAnimGimbalJointController22Part226;
InitHAnimGimbalJointController22Part227;
InitHAnimGimbalJointController22Part228;
InitHAnimGimbalJointController22Part229;
InitHAnimGimbalJointController22Part230;
InitHAnimGimbalJointController22Part231;
InitHAnimGimbalJointController22Part232;
InitHAnimGimbalJointController22Part233;
InitHAnimGimbalJointController22Part234;
InitHAnimGimbalJointController22Part235;
InitHAnimGimbalJointController22Part236;
InitHAnimGimbalJointController22Part237;
InitHAnimGimbalJointController22Part238;
InitHAnimGimbalJointController22Part239;
InitHAnimGimbalJointController22Part240;
InitHAnimGimbalJointController22Part241;
InitHAnimGimbalJointController22Part242;
InitHAnimGimbalJointController22Part243;
InitHAnimGimbalJointController22Part244;
InitHAnimGimbalJointController22Part245;
InitHAnimGimbalJointController22Part246;
InitHAnimGimbalJointController22Part247;
InitHAnimGimbalJointController22Part248;
InitHAnimGimbalJointController22Part249;
InitHAnimGimbalJointController22Part250;
InitHAnimGimbalJointController22Part251;
InitHAnimGimbalJointController22Part252;
InitHAnimGimbalJointController22Part253;
InitHAnimGimbalJointController22Part254;
InitHAnimGimbalJointController22Part255;
InitHAnimGimbalJointController22Part256;
InitHAnimGimbalJointController22Part257;
InitHAnimGimbalJointController22Part258;
InitHAnimGimbalJointController22Part259;
InitHAnimGimbalJointController22Part260;
InitHAnimGimbalJointController22Part261;
InitHAnimGimbalJointController22Part262;
InitHAnimGimbalJointController22Part263;
InitHAnimGimbalJointController22Part264;
InitHAnimGimbalJointController22Part265;
InitHAnimGimbalJointController22Part266;
InitHAnimGimbalJointController22Part267;
InitHAnimGimbalJointController22Part268;
InitHAnimGimbalJointController22Part269;
InitHAnimGimbalJointController22Part270;
InitHAnimGimbalJointController22Part271;
InitHAnimGimbalJointController22Part272;
InitHAnimGimbalJointController22Part273;
InitHAnimGimbalJointController22Part274;
InitHAnimGimbalJointController22Part275;
InitHAnimGimbalJointController22Part276;
InitHAnimGimbalJointController22Part277;
InitHAnimGimbalJointController22Part278;
InitHAnimGimbalJointController22Part279;
InitHAnimGimbalJointController22Part280;
InitHAnimGimbalJointController22Part281;
InitHAnimGimbalJointController22Part282;
InitHAnimGimbalJointController22Part283;
InitHAnimGimbalJointController22Part284;
InitHAnimGimbalJointController22Part285;
InitHAnimGimbalJointController22Part286;
InitHAnimGimbalJointController22Part287;
InitHAnimGimbalJointController22Part288;
InitHAnimGimbalJointController22Part289;
InitHAnimGimbalJointController22Part290;
InitHAnimGimbalJointController22Part291;
InitHAnimGimbalJointController22Part292;
InitHAnimGimbalJointController22Part293;
InitHAnimGimbalJointController22Part294;
InitHAnimGimbalJointController22Part295;
InitHAnimGimbalJointController22Part296;
InitHAnimGimbalJointController22Part297;
InitHAnimGimbalJointController22Part298;
Result := X3D0;
end;

begin
end.
