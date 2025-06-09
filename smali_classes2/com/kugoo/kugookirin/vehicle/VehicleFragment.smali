.class public Lcom/kugoo/kugookirin/vehicle/VehicleFragment;
.super Landroidx/fragment/app/Fragment;
.source "VehicleFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/kugoo/kugookirin/utils/RouteUtils$onRouteAnalysisListener;
.implements Lcom/kugoo/kugookirin/utils/RouteUtils$onNearbyPlaceListener;
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;
.implements Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$OnShowNoneVehicleView;
.implements Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$OnShowVehicleDetailView;


# static fields
.field private static final TAG:Ljava/lang/String; = "VehicleFragment"

.field private static isConnect:Z = false

.field public static vehicleType:Ljava/lang/String; = ""


# instance fields
.field private final CAPTURING_AND_SHOW:I

.field private final CONNECTION_TIMING:I

.field private final COUNTING:I

.field private final FINISH_TRACKING:I

.field private final MILEAGE_TYPE_ODO:I

.field private final MILEAGE_TYPE_TRIP:I

.field private final TRACK_SIGN:I

.field private final UPLOAD_RECORD:I

.field private address:Ljava/lang/String;

.field afterDis:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a005a
    .end annotation
.end field

.field avatarUrl:Ljava/lang/String;

.field private bgHeight:I

.field private bgWidth:I

.field private bitmapDst:Landroid/graphics/Rect;

.field private bitmapSrc:Landroid/graphics/Rect;

.field private bleMac:Ljava/lang/String;

.field private bleName:Ljava/lang/String;

.field btnSetting:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00c1
    .end annotation
.end field

.field private canSaveTrackData:Z

.field captureBottom:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00d5
    .end annotation
.end field

.field private carouselUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private connectTime:J

.field continueFinishLinear:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a014c
    .end annotation
.end field

.field curPos:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a015f
    .end annotation
.end field

.field private currentItem:I

.field detailBattery:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0183
    .end annotation
.end field

.field detailBatteryUnit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0184
    .end annotation
.end field

.field detailBlueIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0185
    .end annotation
.end field

.field detailBlueName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0186
    .end annotation
.end field

.field detailBlueStatus:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0187
    .end annotation
.end field

.field detailDriveLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a018c
    .end annotation
.end field

.field detailFadeIn:Landroid/animation/ObjectAnimator;

.field detailFadeOut:Landroid/animation/ObjectAnimator;

.field detailGear:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a018f
    .end annotation
.end field

.field detailGearBg:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0190
    .end annotation
.end field

.field detailGoBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0191
    .end annotation
.end field

.field detailLightImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0196
    .end annotation
.end field

.field detailLightLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0197
    .end annotation
.end field

.field detailLightStatus:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0198
    .end annotation
.end field

.field detailLightSwitch:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0199
    .end annotation
.end field

.field detailLockImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a019f
    .end annotation
.end field

.field detailLockLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01a0
    .end annotation
.end field

.field detailLockStatus:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01a1
    .end annotation
.end field

.field detailLockSwitch:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01a2
    .end annotation
.end field

.field detailMapEntrance:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01a3
    .end annotation
.end field

.field detailOdo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01a6
    .end annotation
.end field

.field detailOdoUnit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01a7
    .end annotation
.end field

.field detailRidingStatusLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01aa
    .end annotation
.end field

.field detailSingleLightImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01ae
    .end annotation
.end field

.field detailSingleLightLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01af
    .end annotation
.end field

.field detailSingleLightStatus:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01b0
    .end annotation
.end field

.field detailSingleLightSwitch:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01b1
    .end annotation
.end field

.field detailSingleLockImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01b2
    .end annotation
.end field

.field detailSingleLockLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01b3
    .end annotation
.end field

.field detailSingleLockStatus:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01b4
    .end annotation
.end field

.field detailSingleLockSwitch:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01b5
    .end annotation
.end field

.field detailSpeed:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01b7
    .end annotation
.end field

.field detailSpeedUnit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01b9
    .end annotation
.end field

.field detailTrip:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01be
    .end annotation
.end field

.field detailTripUnit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01c1
    .end annotation
.end field

.field detailVehicleImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01c4
    .end annotation
.end field

.field public distanceDes:Ljava/lang/Double;

.field dotLayout:Landroid/widget/LinearLayout;

.field private dotViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field driveD:Landroidx/appcompat/widget/AppCompatButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01ec
    .end annotation
.end field

.field driveS:Landroidx/appcompat/widget/AppCompatButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01ed
    .end annotation
.end field

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private endLatLng:Lcom/google/android/gms/maps/model/LatLng;

.field endLocTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a018e
    .end annotation
.end field

.field private endPlaceId:Ljava/lang/String;

.field public endTrackDis:F

.field exitNavigationBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a020c
    .end annotation
.end field

.field gaodeMapLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0283
    .end annotation
.end field

.field gearMinusIv:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0287
    .end annotation
.end field

.field private gearNum:I

.field gearPlusIv:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a028b
    .end annotation
.end field

.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field googleMapLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a029a
    .end annotation
.end field

.field private inflateView:Landroid/view/View;

.field private infoDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;",
            ">;"
        }
    .end annotation
.end field

.field isAutoPlay:Z

.field private isClick:Z

.field private isKMH:Z

.field private isLightOn:Z

.field private isLocked:Z

.field private isLogin:Z

.field private isMaxGear:Z

.field private isNavigate:Z

.field private isRecordTrack:Z

.field private isRequestRouteData:Z

.field private isShow:Z

.field itemAvgSpeed:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0182
    .end annotation
.end field

.field itemMaxSpeed:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01a4
    .end annotation
.end field

.field itemTripDis:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01bf
    .end annotation
.end field

.field itemTripTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01c0
    .end annotation
.end field

.field kgkrn05GearValue:[Ljava/lang/String;

.field private languageType:I

.field layoutMainMap:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0308
    .end annotation
.end field

.field layoutVehicleDetail:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0306
    .end annotation
.end field

.field layoutVehicleMain:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0307
    .end annotation
.end field

.field private lightValue:Ljava/lang/String;

.field private lineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

.field locChange:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0343
    .end annotation
.end field

.field private locationChangeTime:I

.field private loginUserId:Ljava/lang/String;

.field longJing:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0356
    .end annotation
.end field

.field longWei:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0357
    .end annotation
.end field

.field private mConText:Landroid/content/Context;

.field private mInnerAdapter:Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;

.field private mLocation:Landroid/location/Location;

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRunnable:Ljava/lang/Runnable;

.field mainGoBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a035d
    .end annotation
.end field

.field mapBackBtn:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0364
    .end annotation
.end field

.field mapBattery:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0365
    .end annotation
.end field

.field mapBottomField:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0366
    .end annotation
.end field

.field private mapDistance:I

.field private mapDuration:I

.field mapFadeIn:Landroid/animation/ObjectAnimator;

.field mapFadeOut:Landroid/animation/ObjectAnimator;

.field mapOdo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0367
    .end annotation
.end field

.field mapOdoUnit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0368
    .end annotation
.end field

.field private mapSearchResultItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/bean/MapSearchResultItem;",
            ">;"
        }
    .end annotation
.end field

.field mapTripTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a036e
    .end annotation
.end field

.field mapTripTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a036f
    .end annotation
.end field

.field mapTripUnit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0370
    .end annotation
.end field

.field mapUsingView:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0371
    .end annotation
.end field

.field private maxSpeed:F

.field private msgHandler:Landroid/os/Handler;

.field private naviEndName:Ljava/lang/String;

.field private naviLocArray:Lorg/json/JSONArray;

.field private naviStartName:Ljava/lang/String;

.field navigationBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03e0
    .end annotation
.end field

.field navigationSpeed:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03e3
    .end annotation
.end field

.field navigationSpeedUnit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03e4
    .end annotation
.end field

.field navigationTipsLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03e5
    .end annotation
.end field

.field private newIcon:Landroid/graphics/Bitmap;

.field nextDirection:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03f3
    .end annotation
.end field

.field noneVehicleLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a040a
    .end annotation
.end field

.field public nowLatitude:Ljava/lang/Double;

.field private nowLatlng:Lcom/google/android/gms/maps/model/LatLng;

.field public nowLongitude:Ljava/lang/Double;

.field private odoDis:F

.field private oldChangeTime:J

.field private oldLatLng:Lcom/google/android/gms/maps/model/LatLng;

.field private oldMarker:Lcom/google/android/gms/maps/model/Marker;

.field other_data:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0424
    .end annotation
.end field

.field private pagerItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/PagerItem;",
            ">;"
        }
    .end annotation
.end field

.field private parentActivity:Landroid/app/Activity;

.field private pauseLocArray:Lorg/json/JSONArray;

.field private pauseNum:I

.field private photoBg:Landroid/graphics/Bitmap;

.field private pointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private polyline:Lcom/google/android/gms/maps/model/Polyline;

.field private preferences:Landroid/content/SharedPreferences;

.field progress_Linear:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a045f
    .end annotation
.end field

.field private ratioNum:D

.field private receiveData:Z

.field private recordTime:J

.field private rectOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

.field riding_time:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04a2
    .end annotation
.end field

.field routeEt:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04ae
    .end annotation
.end field

.field private scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field screenCap:Lcom/kugoo/kugookirin/view/CornerImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04bb
    .end annotation
.end field

.field searchResult:Landroid/widget/ListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04cf
    .end annotation
.end field

.field private searchResultAddress01:Ljava/lang/String;

.field private searchResultId01:Ljava/lang/String;

.field private searchedAdapter:Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter;

.field private shareImgFile:Ljava/io/File;

.field shareLinear:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04f7
    .end annotation
.end field

.field shareNameTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01c3
    .end annotation
.end field

.field sharePhotoIv:Lcom/kugoo/kugookirin/view/CircleImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01c2
    .end annotation
.end field

.field private speedValue:F

.field startLocTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01ba
    .end annotation
.end field

.field startTrackBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a036d
    .end annotation
.end field

.field public startTrackDis:F

.field start_riding_layout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0546
    .end annotation
.end field

.field test_flag:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a056d
    .end annotation
.end field

.field test_imoo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a056e
    .end annotation
.end field

.field test_input:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a056f
    .end annotation
.end field

.field test_receive:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0575
    .end annotation
.end field

.field test_receive_1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0576
    .end annotation
.end field

.field test_receive_2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0577
    .end annotation
.end field

.field test_receive_3:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0578
    .end annotation
.end field

.field test_send:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a057a
    .end annotation
.end field

.field test_type:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a057b
    .end annotation
.end field

.field private textPaint:Landroid/graphics/Paint;

.field private trackDis:F

.field private trackEndName:Ljava/lang/String;

.field trackFunctionLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05af
    .end annotation
.end field

.field private trackLocArray:Lorg/json/JSONArray;

.field trackRecordBtn:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05b1
    .end annotation
.end field

.field private trackStartName:Ljava/lang/String;

.field trackingSign:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05b3
    .end annotation
.end field

.field trackingSpeed:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05b4
    .end annotation
.end field

.field trackingSpeedLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05b5
    .end annotation
.end field

.field trackingSpeedUnit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05b6
    .end annotation
.end field

.field private tripDis:I

.field private typeface:Landroid/graphics/Typeface;

.field unbinder:Lbutterknife/Unbinder;

.field private userName:Ljava/lang/String;

.field private userToken:Ljava/lang/String;

.field private vehicleListAdapter:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

.field vehicleListRv:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05fb
    .end annotation
.end field

.field vehicleMainSlPager:Lcom/kugoo/kugookirin/view/SobLooperPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05fd
    .end annotation
.end field

.field private vehicleOdo:F

.field vehicle_riding_status:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05fe
    .end annotation
.end field

.field vehicle_riding_time:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05ff
    .end annotation
.end field

.field vehicle_user_avatar:Lcom/kugoo/kugookirin/view/CircleImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0603
    .end annotation
.end field

.field vehicle_user_profile:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0604
    .end annotation
.end field

.field vehicle_username:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0605
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 501
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 366
    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->currentItem:I

    const/4 v1, 0x1

    .line 367
    iput-boolean v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isAutoPlay:Z

    .line 374
    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->pauseNum:I

    const-wide/16 v2, 0x0

    .line 407
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nowLatitude:Ljava/lang/Double;

    .line 408
    iput-object v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nowLongitude:Ljava/lang/Double;

    const-wide/16 v2, 0x0

    .line 414
    iput-wide v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->recordTime:J

    const-string v4, ""

    .line 417
    iput-object v4, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackStartName:Ljava/lang/String;

    iput-object v4, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackEndName:Ljava/lang/String;

    iput-object v4, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->naviStartName:Ljava/lang/String;

    iput-object v4, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->naviEndName:Ljava/lang/String;

    .line 425
    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapDistance:I

    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapDuration:I

    .line 426
    iput-object v4, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->userName:Ljava/lang/String;

    .line 427
    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->tripDis:I

    .line 428
    iput-wide v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->connectTime:J

    const/4 v2, 0x0

    .line 439
    iput v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->speedValue:F

    .line 441
    iput v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->MILEAGE_TYPE_TRIP:I

    const/4 v3, 0x2

    .line 442
    iput v3, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->MILEAGE_TYPE_ODO:I

    const/16 v3, 0xa

    .line 444
    iput v3, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->COUNTING:I

    const/16 v3, 0xb

    .line 445
    iput v3, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->TRACK_SIGN:I

    const/16 v3, 0xc

    .line 446
    iput v3, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->UPLOAD_RECORD:I

    const/16 v3, 0xd

    .line 447
    iput v3, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->CAPTURING_AND_SHOW:I

    const/16 v3, 0xe

    .line 448
    iput v3, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->FINISH_TRACKING:I

    const/16 v3, 0x65

    .line 449
    iput v3, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->CONNECTION_TIMING:I

    .line 451
    iput v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->maxSpeed:F

    .line 453
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->receiveData:Z

    const/high16 v3, -0x40800000    # -1.0f

    .line 454
    iput v3, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleOdo:F

    .line 455
    iput-object v4, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->bleMac:Ljava/lang/String;

    iput-object v4, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->bleName:Ljava/lang/String;

    .line 464
    iput v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->startTrackDis:F

    .line 465
    iput v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->endTrackDis:F

    .line 466
    iput v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackDis:F

    .line 468
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->canSaveTrackData:Z

    .line 489
    iput v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->locationChangeTime:I

    .line 767
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$7;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$7;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mInnerAdapter:Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;

    .line 1051
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1754
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isShow:Z

    const-string v0, "AA03040188020026BB"

    const-string v1, "AA03040188030027BB"

    const-string v2, "AA03040188010025BB"

    .line 2068
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->kgkrn05GearValue:[Ljava/lang/String;

    .line 2463
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    .line 3507
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocationListener:Landroid/location/LocationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/util/List;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->pagerItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/util/List;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->dotViewList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)F
    .locals 0

    .line 143
    iget p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleOdo:F

    return p0
.end method

.method static synthetic access$1100(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->saveVehicleInfo(Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isRecordTrack:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isRecordTrack:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->endTracking(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Ljava/lang/String;)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->parseStrData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->receiveData:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isShow:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isShow:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Ljava/lang/String;)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showConfirmDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;I)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showBatteryView(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;F)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showSpeedView(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mInnerAdapter:Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;IF)V
    .locals 0

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showMileageView(IF)V

    return-void
.end method

.method static synthetic access$2100(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLocked:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLocked:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showLockView(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLightOn:Z

    return p0
.end method

.method static synthetic access$2302(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLightOn:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showLightView(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isKMH:Z

    return p0
.end method

.method static synthetic access$2502(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isKMH:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showUnitView(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)I
    .locals 0

    .line 143
    iget p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearNum:I

    return p0
.end method

.method static synthetic access$2702(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;I)I
    .locals 0

    .line 143
    iput p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearNum:I

    return p1
.end method

.method static synthetic access$2800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;I)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showGear(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)J
    .locals 2

    .line 143
    iget-wide v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->recordTime:J

    return-wide v0
.end method

.method static synthetic access$2908(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)J
    .locals 4

    .line 143
    iget-wide v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->recordTime:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->recordTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->carouselUrls:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lorg/json/JSONArray;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->pauseLocArray:Lorg/json/JSONArray;

    return-object p0
.end method

.method static synthetic access$302(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->carouselUrls:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)I
    .locals 0

    .line 143
    iget p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->pauseNum:I

    return p0
.end method

.method static synthetic access$3112(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;I)I
    .locals 1

    .line 143
    iget v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->pauseNum:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->pauseNum:I

    return v0
.end method

.method static synthetic access$3200(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Ljava/lang/String;)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->drawTrackSign(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nowLatlng:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method static synthetic access$3302(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nowLatlng:Lcom/google/android/gms/maps/model/LatLng;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/graphics/Bitmap;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->newIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Lcom/google/android/gms/maps/model/LatLng;ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->drawMarkerJ(Lcom/google/android/gms/maps/model/LatLng;ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLogin:Z

    return p0
.end method

.method static synthetic access$3700(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)F
    .locals 0

    .line 143
    iget p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackDis:F

    return p0
.end method

.method static synthetic access$3702(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;F)F
    .locals 0

    .line 143
    iput p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackDis:F

    return p1
.end method

.method static synthetic access$3800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->canSaveTrackData:Z

    return p0
.end method

.method static synthetic access$3802(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->canSaveTrackData:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lorg/json/JSONArray;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackLocArray:Lorg/json/JSONArray;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->initDotLayout()V

    return-void
.end method

.method static synthetic access$4000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)F
    .locals 0

    .line 143
    iget p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->maxSpeed:F

    return p0
.end method

.method static synthetic access$4100(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/lang/String;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->userToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/lang/String;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackStartName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/lang/String;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackEndName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 143
    invoke-direct/range {p0 .. p10}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->uploadTrackRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showCapturingView()V

    return-void
.end method

.method static synthetic access$4600(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->loadingTrackData()V

    return-void
.end method

.method static synthetic access$4700(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showShareImg()V

    return-void
.end method

.method static synthetic access$4800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->searchedAdapter:Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lorg/json/JSONArray;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->naviLocArray:Lorg/json/JSONArray;

    return-object p0
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 143
    sget-boolean v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isConnect:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/lang/String;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->naviStartName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    .line 143
    sput-boolean p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isConnect:Z

    return p0
.end method

.method static synthetic access$5100(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/lang/String;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->naviEndName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->lineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->endLatLng:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->hideInput()V

    return-void
.end method

.method static synthetic access$5602(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isClick:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showInitialView()V

    return-void
.end method

.method static synthetic access$5800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)F
    .locals 0

    .line 143
    iget p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->odoDis:F

    return p0
.end method

.method static synthetic access$5900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getLocName(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/lang/String;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->bleMac:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isNavigate:Z

    return p0
.end method

.method static synthetic access$6002(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isNavigate:Z

    return p1
.end method

.method static synthetic access$602(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->bleMac:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/Marker;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->oldMarker:Lcom/google/android/gms/maps/model/Marker;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showSaveTrackDialog()V

    return-void
.end method

.method static synthetic access$6300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showNoSaveDialog()V

    return-void
.end method

.method static synthetic access$6400(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/app/Activity;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->parentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->hideOtherView(Z)V

    return-void
.end method

.method static synthetic access$6600(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/location/Location;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocation:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic access$6702(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$6800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->oldLatLng:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method static synthetic access$6802(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->oldLatLng:Lcom/google/android/gms/maps/model/LatLng;

    return-object p1
.end method

.method static synthetic access$6900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)J
    .locals 2

    .line 143
    iget-wide v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->oldChangeTime:J

    return-wide v0
.end method

.method static synthetic access$6902(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;J)J
    .locals 0

    .line 143
    iput-wide p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->oldChangeTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/lang/String;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->bleName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->editor:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method static synthetic access$702(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->bleName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)F
    .locals 0

    .line 143
    iget p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->speedValue:F

    return p0
.end method

.method static synthetic access$7200(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->rectOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    return-object p0
.end method

.method static synthetic access$7202(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->rectOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    return-object p1
.end method

.method static synthetic access$7300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/Polyline;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    return-object p0
.end method

.method static synthetic access$7302(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Lcom/google/android/gms/maps/model/Polyline;)Lcom/google/android/gms/maps/model/Polyline;
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    return-object p1
.end method

.method static synthetic access$7400(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/util/List;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->pointList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$7500(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->end_Navigation()V

    return-void
.end method

.method static synthetic access$7600(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isRequestRouteData:Z

    return p0
.end method

.method static synthetic access$7602(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isRequestRouteData:Z

    return p1
.end method

.method static synthetic access$7700(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->continueGetNavRouteData()V

    return-void
.end method

.method static synthetic access$7800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->infoDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$7900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleListAdapter:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/os/Handler;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)J
    .locals 2

    .line 143
    iget-wide v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->connectTime:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;J)J
    .locals 0

    .line 143
    iput-wide p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->connectTime:J

    return-wide p1
.end method

.method static synthetic access$914(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;J)J
    .locals 2

    .line 143
    iget-wide v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->connectTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->connectTime:J

    return-wide v0
.end method

.method private askVehicle()V
    .locals 8

    .line 855
    sget-boolean v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isConnect:Z

    if-eqz v0, :cond_b

    .line 856
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$8;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$8;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 862
    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "MERCURY3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "kug12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "fmi02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "fmi01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_4
    const-string v1, "s3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_5
    const-string v1, "s2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "s1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_7
    const-string v1, "h6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_8
    const-string v1, "c2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_9
    const-string v1, "kgkrn23"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_a
    const-string v1, "kgkrn10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x0

    :goto_0
    const-wide/16 v0, 0x1c2

    const-wide/16 v3, 0x12c

    const-wide/16 v5, 0x96

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 900
    :pswitch_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$14;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$14;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 906
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$15;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$15;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 939
    :pswitch_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$19;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$19;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 946
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$20;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$20;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 886
    :pswitch_2
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$12;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$12;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 892
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$13;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$13;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 916
    :goto_1
    :pswitch_3
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$16;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$16;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 923
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$17;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$17;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 929
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$18;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$18;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 954
    :pswitch_4
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    new-instance v7, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$21;

    invoke-direct {v7, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$21;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v2, v7, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 961
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    new-instance v5, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$22;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$22;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 967
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    new-instance v3, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$23;

    invoke-direct {v3, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$23;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 864
    :pswitch_5
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    new-instance v7, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$9;

    invoke-direct {v7, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$9;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v2, v7, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 871
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    new-instance v5, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$10;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$10;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 878
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    new-instance v3, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$11;

    invoke-direct {v3, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$11;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2de8cb96 -> :sswitch_a
        -0x2de8cb74 -> :sswitch_9
        0xc2f -> :sswitch_8
        0xcce -> :sswitch_7
        0xe1e -> :sswitch_6
        0xe1f -> :sswitch_5
        0xe20 -> :sswitch_4
        0x5d07a03 -> :sswitch_3
        0x5d07a04 -> :sswitch_2
        0x61a8b1e -> :sswitch_1
        0x108de3a0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private connectOrNotView(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 2437
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSpeedUnit:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2438
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailTripUnit:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2439
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailOdoUnit:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2440
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailBatteryUnit:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2441
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailBlueIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2442
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailBlueStatus:Landroid/widget/TextView;

    const v1, 0x7f120099

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2443
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailMapEntrance:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 2445
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSpeedUnit:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2446
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailTripUnit:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2447
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailOdoUnit:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2448
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailBatteryUnit:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2449
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailBlueIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2450
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailBlueStatus:Landroid/widget/TextView;

    const v1, 0x7f1200ae

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2451
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailMapEntrance:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2453
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSpeed:Landroid/widget/TextView;

    const-string v0, "- -"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2454
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailTrip:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2455
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailBattery:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2456
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailOdo:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2457
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailBlueName:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private continueGetNavRouteData()V
    .locals 5

    .line 3911
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->endPlaceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3912
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 3913
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->endPlaceId:Ljava/lang/String;

    iget v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->languageType:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Lcom/kugoo/kugookirin/utils/RouteUtils;->getDirectionsUrl(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3915
    invoke-static {v0}, Lcom/kugoo/kugookirin/utils/RouteUtils;->getRouteDataAndAnalysis(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    .line 3381
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 3382
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 3383
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->parentActivity:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    const/high16 v1, 0x42700000    # 60.0f

    .line 3385
    iget-object v4, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->parentActivity:Landroid/app/Activity;

    invoke-static {v1, v4}, Lcom/kugoo/kugookirin/utils/toolUtil;->sp2px(FLandroid/content/Context;)I

    move-result v1

    const/4 v4, 0x0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    add-int/lit8 v5, v0, -0x5a

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move v1, v4

    move v4, v5

    move-object v5, v6

    move v6, v7

    .line 3388
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private dialogModeOfWalk()V
    .locals 3

    .line 2969
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f13046d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d0089

    .line 2970
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f0a0592

    .line 2971
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1203b5

    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a01ce

    .line 2972
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$44;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$44;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 2978
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2979
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private drawMarkerJ(Lcom/google/android/gms/maps/model/LatLng;ILandroid/graphics/Bitmap;)V
    .locals 3

    .line 3804
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 3805
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    const/high16 v1, 0x41880000    # 17.0f

    if-eqz p3, :cond_0

    const-string p2, "recordRoute"

    const-string v2, "draw pause_icon"

    .line 3808
    invoke-static {p2, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3809
    invoke-static {p3}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p2

    const p3, 0x7f12038f

    .line 3810
    invoke-virtual {p0, p3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 3811
    iget-object p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 3812
    iget-object p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {p1, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_0

    :cond_0
    const p3, 0x7f0f0122

    if-ne p3, p2, :cond_2

    .line 3815
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isAdded()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 3816
    invoke-static {p2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p2

    const p3, 0x7f120389

    .line 3817
    invoke-virtual {p0, p3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 3818
    :cond_1
    iget-object p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->oldMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 3819
    iget-object p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {p1, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_0

    .line 3821
    :cond_2
    invoke-static {p2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    const p2, 0x7f12036c

    .line 3822
    invoke-virtual {p0, p2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 3823
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    :cond_3
    :goto_0
    return-void
.end method

.method private drawTrackSign(Ljava/lang/String;)V
    .locals 6

    .line 3077
    iget v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->bgWidth:I

    iget v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->bgHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->newIcon:Landroid/graphics/Bitmap;

    .line 3078
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->newIcon:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3079
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 3080
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->photoBg:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->bitmapSrc:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->bitmapDst:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3081
    iget v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->bgWidth:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    iget v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->bgHeight:I

    div-int/lit8 v3, v1, 0x5

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private enableGPS()V
    .locals 3

    .line 991
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->parentActivity:Landroid/app/Activity;

    const-string v1, "location"

    .line 992
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    .line 994
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 995
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1201bf

    .line 996
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 997
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$24;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$24;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    const v2, 0x7f1201ba

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1005
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$25;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$25;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    const v2, 0x7f12004e

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1011
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private endTracking(Z)V
    .locals 7

    .line 3109
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->parentActivity:Landroid/app/Activity;

    const v2, 0x7f13046d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d00d3

    .line 3110
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f0a036c

    .line 3111
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a020e

    .line 3112
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a020d

    .line 3113
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a00e6

    .line 3114
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    const p1, 0x7f1203af

    .line 3117
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3118
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 p1, 0x8

    .line 3119
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3120
    invoke-virtual {v5, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f1201e9

    .line 3122
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3123
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3124
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3125
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3129
    :goto_0
    new-instance p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$45;

    invoke-direct {p1, p0, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$45;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Landroid/app/Dialog;)V

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3136
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$46;

    invoke-direct {v1, p0, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$46;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Landroid/app/Dialog;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3166
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3167
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private end_Navigation()V
    .locals 3

    .line 3173
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->parentActivity:Landroid/app/Activity;

    const v2, 0x7f13046d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d00d3

    .line 3174
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f0a020d

    .line 3176
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$47;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$47;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a020e

    .line 3183
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 3231
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3232
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private gearDown()V
    .locals 9

    .line 2076
    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move v0, v5

    goto :goto_1

    :sswitch_0
    const-string v1, "kgkrn25"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "kgkrn23"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v1, "kgkrn10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1

    :sswitch_3
    const-string v1, "kgkrn07"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_1
    packed-switch v0, :pswitch_data_0

    move v0, v4

    goto :goto_2

    :pswitch_0
    move v0, v3

    .line 2087
    :goto_2
    iget v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearNum:I

    const-string v6, "kgkrn04"

    const-string v7, "kgkrn03"

    const-string v8, "kgkrn05"

    if-le v1, v0, :cond_7

    .line 2088
    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    :goto_3
    move v2, v5

    goto :goto_4

    :pswitch_1
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :pswitch_2
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move v2, v4

    goto :goto_4

    :pswitch_3
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :cond_6
    :goto_4
    packed-switch v2, :pswitch_data_2

    .line 2106
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+MODE="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearNum:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    goto :goto_6

    .line 2091
    :pswitch_4
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->kgkrn05GearValue:[Ljava/lang/String;

    iget v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearNum:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearNum:I

    sub-int/2addr v2, v4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendHexString(Ljava/lang/String;)V

    goto :goto_6

    .line 2094
    :pswitch_5
    iget v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearNum:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearNum:I

    :goto_5
    const/4 v1, 0x5

    if-ge v3, v1, :cond_7

    .line 2096
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$30;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$30;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;I)V

    mul-int/lit16 v4, v3, 0x96

    int-to-long v4, v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2113
    :cond_7
    :goto_6
    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2114
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailGear:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MODE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2de8cbae -> :sswitch_3
        -0x2de8cb96 -> :sswitch_2
        -0x2de8cb74 -> :sswitch_1
        -0x2de8cb72 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2de8cbb2
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private gearUp()V
    .locals 10

    .line 2022
    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move v0, v5

    goto :goto_1

    :sswitch_0
    const-string v1, "kgkrn25"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v1, "kgkrn23"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :sswitch_2
    const-string v1, "kgkrn07"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_1
    const/4 v1, 0x3

    const/4 v6, 0x5

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 2028
    :pswitch_0
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isMaxGear:Z

    if-eqz v0, :cond_3

    :pswitch_1
    move v1, v6

    .line 2038
    :cond_3
    :goto_2
    iget v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearNum:I

    const-string v7, "kgkrn04"

    const-string v8, "kgkrn03"

    const-string v9, "kgkrn05"

    if-ge v0, v1, :cond_7

    .line 2039
    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    :goto_3
    move v2, v5

    goto :goto_4

    :pswitch_2
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :pswitch_3
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move v2, v4

    goto :goto_4

    :pswitch_4
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :cond_6
    :goto_4
    packed-switch v2, :pswitch_data_2

    .line 2057
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+MODE="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearNum:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    goto :goto_6

    .line 2042
    :pswitch_5
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->kgkrn05GearValue:[Ljava/lang/String;

    iget v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearNum:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearNum:I

    sub-int/2addr v2, v4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendHexString(Ljava/lang/String;)V

    goto :goto_6

    .line 2045
    :pswitch_6
    iget v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearNum:I

    :goto_5
    if-ge v3, v6, :cond_7

    .line 2048
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$29;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$29;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;I)V

    mul-int/lit16 v4, v3, 0x96

    int-to-long v4, v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2063
    :cond_7
    :goto_6
    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2064
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailGear:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MODE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2de8cbae -> :sswitch_2
        -0x2de8cb74 -> :sswitch_1
        -0x2de8cb72 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2de8cbb2
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private getCurrentLocation()V
    .locals 17

    move-object/from16 v0, p0

    .line 3843
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 3844
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocationManager:Landroid/location/LocationManager;

    const-string v4, "network"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v1, :cond_0

    if-eqz v3, :cond_5

    .line 3846
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isGPSEnabled="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  isNetworkEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "recordRoute"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "mLocation=="

    const-string v6, "--gps--"

    const-string v7, "VehicleFragment"

    const-string v8, "mLocation==null"

    const-string v9, "VehicleFragmentgetCurrentLocation"

    if-eqz v1, :cond_3

    .line 3852
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->parentActivity:Landroid/app/Activity;

    const-string v10, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v1, v10}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->parentActivity:Landroid/app/Activity;

    const-string v10, "android.permission.ACCESS_COARSE_LOCATION"

    .line 3854
    invoke-static {v1, v10}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 3865
    :cond_1
    iget-object v10, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocationManager:Landroid/location/LocationManager;

    const-string v11, "gps"

    const-wide/16 v12, 0x5dc

    const/high16 v14, 0x41700000    # 15.0f

    iget-object v15, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocationListener:Landroid/location/LocationListener;

    .line 3866
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v16

    .line 3865
    invoke-virtual/range {v10 .. v16}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 3867
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocation:Landroid/location/Location;

    if-eqz v1, :cond_2

    .line 3869
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3870
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nowLongitude:Ljava/lang/Double;

    .line 3871
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nowLatitude:Ljava/lang/Double;

    .line 3872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3874
    :cond_2
    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    if-eqz v3, :cond_5

    .line 3883
    iget-object v10, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocationManager:Landroid/location/LocationManager;

    const-string v11, "network"

    const-wide/16 v12, 0x5dc

    const/high16 v14, 0x41700000    # 15.0f

    iget-object v15, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocationListener:Landroid/location/LocationListener;

    .line 3884
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v16

    .line 3883
    invoke-virtual/range {v10 .. v16}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 3885
    invoke-virtual/range {p0 .. p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->checkLocationPermission()V

    .line 3886
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocation:Landroid/location/Location;

    if-eqz v1, :cond_4

    .line 3889
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3891
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nowLongitude:Ljava/lang/Double;

    .line 3892
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nowLatitude:Ljava/lang/Double;

    .line 3893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getCurrentLocation"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3895
    :cond_4
    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

.method private getLanguageType()V
    .locals 3

    .line 979
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "zh"

    .line 980
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 981
    iput v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->languageType:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 983
    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->languageType:I

    :goto_0
    return-void
.end method

.method private getLocName(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 3066
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 3067
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    .line 3066
    invoke-direct {p0, v0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getNetData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getNetData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3952
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "longitudeStr=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  latitudeStr=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VehicleFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3954
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3955
    iget v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->languageType:I

    const-string v1, "%2C"

    const-string v2, "https://maps.googleapis.com/maps/api/place/nearbysearch/json?&location="

    if-nez v0, :cond_0

    .line 3957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "&radius=500&type=establishment&key=AIzaSyBQTyKTsKrZ4AamGOtID4qHsmdgOohMbas&language=zh-CN"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3962
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "&radius=500&type=establishment&key=AIzaSyBQTyKTsKrZ4AamGOtID4qHsmdgOohMbas&language=en-US"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3966
    :goto_0
    iget p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->languageType:I

    invoke-static {p1, p2}, Lcom/kugoo/kugookirin/utils/RouteUtils;->getNearbyPlace(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 3394
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "status_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 3396
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getVehicleData()V
    .locals 4

    const-string v0, "VehicleFragmentuploadTTest"

    const-string v1, "\u83b7\u53d6\u8fde\u8f66\u4fe1\u606f"

    .line 4080
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4081
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    .line 4082
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->userToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->loginUserId:Ljava/lang/String;

    const-string v3, "getinfo"

    invoke-interface {v0, v1, v2, v3}, Lcom/kugoo/kugookirin/utils/NetLink;->getPageInfoData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 4083
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$63;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$63;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private getVehicleType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1842
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "imoogoo-kg01"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x2e

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "imoogoo-kugst04"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x2d

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "imoogoo-kugst03"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x2c

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "imoogoo-kugst02"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x2b

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "imoogoo-kugst01"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x2a

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "imoogoo-kgkrn34"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x29

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "imoogoo-kgkrn30"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x28

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "imoogoo-kgkrn29"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x27

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "imoogoo-kgkrn25"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x26

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "imoogoo-kgkrn23"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x25

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "imoogoo-kgkrn21"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x24

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "imoogoo-kgkrn20"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x23

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "imoogoo-kgkrn19"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x22

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "imoogoo-kgkrn18"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x21

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "imoogoo-kgkrn17"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x20

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "imoogoo-kgkrn16"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x1f

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "imoogoo-kgkrn15"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x1e

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "imoogoo-kgkrn14"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "imoogoo-kgkrn12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "imoogoo-kgkrn11"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "imoogoo-kgkrn10"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "imoogoo-kgkrn08"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "imoogoo-kgkrn07"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "imoogoo-kgkrn06"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "imoogoo-kgkrn05"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "imoogoo-kgkrn04"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "imoogoo-kgkrn03"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "imoogoo-kgkrn02"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "imoogoo-vyg01"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "imoogoo-kug20"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "imoogoo-kug19"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "imoogoo-kug18"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "imoogoo-kug17"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "imoogoo-kug13"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "imoogoo-kug12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "imoogoo-kug11"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "imoogoo-kug10"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "imoogoo-kug09"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "imoogoo-kug08"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "imoogoo-kug07"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_0

    :cond_27
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_28
    const-string v0, "imoogoo-kug05"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_0

    :cond_28
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_29
    const-string v0, "imoogoo-kug04"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_0

    :cond_29
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_2a
    const-string v0, "imoogoo-kug03"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_0

    :cond_2a
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2b
    const-string v0, "imoogoo-kug02"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_0

    :cond_2b
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2c
    const-string v0, "imoogoo-kug01"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_0

    :cond_2c
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2d
    const-string v0, "imoogoo-fmi02"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_0

    :cond_2d
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2e
    const-string v0, "imoogoo-fmi01"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_0

    :cond_2e
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string p1, "h6"

    goto/16 :goto_1

    :pswitch_1
    const-string p1, "b2"

    goto/16 :goto_1

    :pswitch_2
    const-string p1, "kgkrn29"

    goto/16 :goto_1

    :pswitch_3
    const-string p1, "kgkrn25"

    goto/16 :goto_1

    :pswitch_4
    const-string p1, "kgkrn23"

    goto/16 :goto_1

    :pswitch_5
    const-string p1, "kgkrn16"

    goto :goto_1

    :pswitch_6
    const-string p1, "kgkrn15"

    goto :goto_1

    :pswitch_7
    const-string p1, "kgkrn14"

    goto :goto_1

    :pswitch_8
    const-string p1, "kgkrn10"

    goto :goto_1

    :pswitch_9
    const-string p1, "kgkrn07"

    goto :goto_1

    :pswitch_a
    const-string p1, "kgkrn05"

    goto :goto_1

    :pswitch_b
    const-string p1, "kgkrn04"

    goto :goto_1

    :pswitch_c
    const-string p1, "kgkrn03"

    goto :goto_1

    :pswitch_d
    const-string p1, "kgkrn02"

    goto :goto_1

    :pswitch_e
    const-string p1, "voyager"

    goto :goto_1

    :pswitch_f
    const-string p1, "kug20"

    goto :goto_1

    :pswitch_10
    const-string p1, "kug19"

    goto :goto_1

    :pswitch_11
    const-string p1, "s3"

    goto :goto_1

    :pswitch_12
    const-string p1, "b17"

    goto :goto_1

    :pswitch_13
    const-string p1, "b11"

    goto :goto_1

    :pswitch_14
    const-string p1, "kug12"

    goto :goto_1

    :pswitch_15
    const-string p1, "kug11"

    goto :goto_1

    :pswitch_16
    const-string p1, "s2"

    goto :goto_1

    :pswitch_17
    const-string p1, "c2"

    goto :goto_1

    :pswitch_18
    const-string p1, "b205"

    goto :goto_1

    :pswitch_19
    const-string p1, "b1"

    goto :goto_1

    :pswitch_1a
    const-string p1, "kug03"

    goto :goto_1

    :pswitch_1b
    const-string p1, "s1"

    goto :goto_1

    :pswitch_1c
    const-string p1, "MERCURY3"

    goto :goto_1

    :pswitch_1d
    const-string p1, "fmi02"

    goto :goto_1

    :pswitch_1e
    const-string p1, "fmi01"

    :goto_1
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76040047 -> :sswitch_2e
        -0x76040046 -> :sswitch_2d
        -0x75b9ef4c -> :sswitch_2c
        -0x75b9ef4b -> :sswitch_2b
        -0x75b9ef4a -> :sswitch_2a
        -0x75b9ef49 -> :sswitch_29
        -0x75b9ef48 -> :sswitch_28
        -0x75b9ef46 -> :sswitch_27
        -0x75b9ef45 -> :sswitch_26
        -0x75b9ef44 -> :sswitch_25
        -0x75b9ef2e -> :sswitch_24
        -0x75b9ef2d -> :sswitch_23
        -0x75b9ef2c -> :sswitch_22
        -0x75b9ef2b -> :sswitch_21
        -0x75b9ef27 -> :sswitch_20
        -0x75b9ef26 -> :sswitch_1f
        -0x75b9ef25 -> :sswitch_1e
        -0x75b9ef0f -> :sswitch_1d
        -0x751d1b45 -> :sswitch_1c
        -0x687db7d -> :sswitch_1b
        -0x687db7c -> :sswitch_1a
        -0x687db7b -> :sswitch_19
        -0x687db7a -> :sswitch_18
        -0x687db79 -> :sswitch_17
        -0x687db78 -> :sswitch_16
        -0x687db77 -> :sswitch_15
        -0x687db60 -> :sswitch_14
        -0x687db5f -> :sswitch_13
        -0x687db5e -> :sswitch_12
        -0x687db5c -> :sswitch_11
        -0x687db5b -> :sswitch_10
        -0x687db5a -> :sswitch_f
        -0x687db59 -> :sswitch_e
        -0x687db58 -> :sswitch_d
        -0x687db57 -> :sswitch_c
        -0x687db41 -> :sswitch_b
        -0x687db40 -> :sswitch_a
        -0x687db3e -> :sswitch_9
        -0x687db3c -> :sswitch_8
        -0x687db38 -> :sswitch_7
        -0x687db22 -> :sswitch_6
        -0x687db1e -> :sswitch_5
        0x11242a15 -> :sswitch_4
        0x11242a16 -> :sswitch_3
        0x11242a17 -> :sswitch_2
        0x11242a18 -> :sswitch_1
        0x3e4417e7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_1b
        :pswitch_1b
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_9
        :pswitch_9
        :pswitch_1
        :pswitch_1b
        :pswitch_1b
        :pswitch_13
        :pswitch_0
    .end packed-switch
.end method

.method private hideInput()V
    .locals 3

    .line 2989
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->parentActivity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2990
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->routeEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private hideOtherView(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 3348
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->continueFinishLinear:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3349
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapBottomField:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3350
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->startTrackBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3351
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->curPos:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3353
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->captureBottom:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3355
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapBackBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3356
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackingSpeedLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 3360
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->shareLinear:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3362
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapBottomField:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3363
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->startTrackBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3364
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->curPos:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3366
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapBackBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3367
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackingSpeedLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3368
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_1

    .line 3369
    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    :cond_1
    :goto_0
    return-void
.end method

.method private initDetailUi(ZLcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;)V
    .locals 19

    move-object/from16 v0, p0

    .line 2212
    invoke-virtual/range {p2 .. p2}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "b1"

    const-string v7, "kgkrn23"

    const-string v8, "kgkrn16"

    const-string v10, "kgkrn15"

    const-string v12, "kgkrn14"

    const/4 v14, 0x4

    const/4 v15, 0x3

    const-string v4, "kgkrn05"

    const/16 v16, 0x2

    const-string v5, "kgkrn04"

    const/16 v17, 0x1

    const-string v6, "kgkrn03"

    const-string v9, "kgkrn02"

    const/4 v11, 0x0

    const/16 v13, 0x8

    const/16 v18, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move/from16 v1, v18

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "voyager"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "MERCURY3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "kug19"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x1b

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "kug12"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x1a

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "kug11"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0x19

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "kug03"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/16 v1, 0x18

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "fmi02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/16 v1, 0x17

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "fmi01"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/16 v1, 0x16

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "b205"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/16 v1, 0x15

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "b17"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x14

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "b11"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x13

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "s3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "s2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_d
    const-string v2, "s1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_e
    const-string v2, "h6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "c2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_10
    const-string v2, "b2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_11
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_12
    const-string v2, "kgkrn29"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_13
    const-string v2, "kgkrn25"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_14
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_15
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_0

    :cond_15
    move v1, v13

    goto :goto_1

    :sswitch_16
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_0

    :cond_16
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_17
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_0

    :cond_17
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_18
    const-string v2, "kgkrn10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_0

    :cond_18
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_19
    const-string v2, "kgkrn07"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_0

    :cond_19
    move v1, v14

    goto :goto_1

    :sswitch_1a
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_0

    :cond_1a
    move v1, v15

    goto :goto_1

    :sswitch_1b
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto/16 :goto_0

    :cond_1b
    move/from16 v1, v16

    goto :goto_1

    :sswitch_1c
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto/16 :goto_0

    :cond_1c
    move/from16 v1, v17

    goto :goto_1

    :sswitch_1d
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto/16 :goto_0

    :cond_1d
    move v1, v11

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 2218
    :pswitch_0
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2219
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2220
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2221
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 2231
    :pswitch_1
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2232
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2233
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2234
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 2265
    :pswitch_2
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2266
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 2274
    :pswitch_3
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2275
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2276
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2277
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 2288
    :pswitch_4
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailGearBg:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2289
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearMinusIv:Landroid/widget/Button;

    invoke-virtual {v1, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 2290
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearPlusIv:Landroid/widget/Button;

    invoke-virtual {v1, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 2291
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2292
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2293
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2294
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 2241
    :pswitch_5
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailGearBg:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2242
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearMinusIv:Landroid/widget/Button;

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 2243
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearPlusIv:Landroid/widget/Button;

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 2244
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2245
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2246
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2247
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 2311
    :pswitch_6
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailGearBg:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2312
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearMinusIv:Landroid/widget/Button;

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 2313
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearPlusIv:Landroid/widget/Button;

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 2314
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2315
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2316
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2317
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2318
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailDriveLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 2253
    :pswitch_7
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailGearBg:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2254
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearMinusIv:Landroid/widget/Button;

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 2255
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearPlusIv:Landroid/widget/Button;

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 2256
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2257
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2258
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2259
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 2299
    :pswitch_8
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailGearBg:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2300
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearMinusIv:Landroid/widget/Button;

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 2301
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearPlusIv:Landroid/widget/Button;

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 2302
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2303
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2304
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2305
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2333
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    :goto_3
    move/from16 v4, v18

    goto/16 :goto_4

    :sswitch_1e
    const-string v2, "kug12"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_3

    :cond_1e
    const/16 v4, 0xb

    goto/16 :goto_4

    :sswitch_1f
    const-string v2, "kug03"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_3

    :cond_1f
    const/16 v4, 0xa

    goto/16 :goto_4

    :sswitch_20
    const-string v2, "fmi01"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_3

    :cond_20
    const/16 v4, 0x9

    goto/16 :goto_4

    :sswitch_21
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_3

    :cond_21
    move v4, v13

    goto :goto_4

    :sswitch_22
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_3

    :cond_22
    const/4 v4, 0x7

    goto :goto_4

    :sswitch_23
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_3

    :cond_23
    const/4 v4, 0x6

    goto :goto_4

    :sswitch_24
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto :goto_3

    :cond_24
    const/4 v4, 0x5

    goto :goto_4

    :sswitch_25
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_3

    :cond_25
    move v4, v14

    goto :goto_4

    :sswitch_26
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_3

    :cond_26
    move v4, v15

    goto :goto_4

    :sswitch_27
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_3

    :cond_27
    move/from16 v4, v16

    goto :goto_4

    :sswitch_28
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_3

    :cond_28
    move/from16 v4, v17

    goto :goto_4

    :sswitch_29
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    goto :goto_3

    :cond_29
    move v4, v11

    :goto_4
    packed-switch v4, :pswitch_data_1

    .line 2356
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailVehicleImg:Landroid/widget/ImageView;

    const v2, 0x7f0f000f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 2352
    :pswitch_9
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailVehicleImg:Landroid/widget/ImageView;

    const v2, 0x7f0f015a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 2349
    :pswitch_a
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailVehicleImg:Landroid/widget/ImageView;

    const v2, 0x7f0f0159

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 2346
    :pswitch_b
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailVehicleImg:Landroid/widget/ImageView;

    const v2, 0x7f0f0158

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 2343
    :pswitch_c
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailVehicleImg:Landroid/widget/ImageView;

    const v2, 0x7f0f00d0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_5
    if-eqz p1, :cond_2a

    .line 2361
    invoke-direct/range {p0 .. p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showConnected()V

    goto :goto_6

    :cond_2a
    move-object/from16 v1, p2

    .line 2363
    invoke-direct {v0, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showDisconnect(Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;)V

    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2de8cbb3 -> :sswitch_1d
        -0x2de8cbb2 -> :sswitch_1c
        -0x2de8cbb1 -> :sswitch_1b
        -0x2de8cbb0 -> :sswitch_1a
        -0x2de8cbae -> :sswitch_19
        -0x2de8cb96 -> :sswitch_18
        -0x2de8cb92 -> :sswitch_17
        -0x2de8cb91 -> :sswitch_16
        -0x2de8cb90 -> :sswitch_15
        -0x2de8cb74 -> :sswitch_14
        -0x2de8cb72 -> :sswitch_13
        -0x2de8cb6e -> :sswitch_12
        0xc0f -> :sswitch_11
        0xc10 -> :sswitch_10
        0xc2f -> :sswitch_f
        0xcce -> :sswitch_e
        0xe1e -> :sswitch_d
        0xe1f -> :sswitch_c
        0xe20 -> :sswitch_b
        0x17602 -> :sswitch_a
        0x17608 -> :sswitch_9
        0x2d4e15 -> :sswitch_8
        0x5d07a03 -> :sswitch_7
        0x5d07a04 -> :sswitch_6
        0x61a8b00 -> :sswitch_5
        0x61a8b1d -> :sswitch_4
        0x61a8b1e -> :sswitch_3
        0x61a8b25 -> :sswitch_2
        0x108de3a0 -> :sswitch_1
        0x26600033 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x2de8cbb3 -> :sswitch_29
        -0x2de8cbb2 -> :sswitch_28
        -0x2de8cbb1 -> :sswitch_27
        -0x2de8cbb0 -> :sswitch_26
        -0x2de8cb92 -> :sswitch_25
        -0x2de8cb91 -> :sswitch_24
        -0x2de8cb90 -> :sswitch_23
        -0x2de8cb74 -> :sswitch_22
        0xc0f -> :sswitch_21
        0x5d07a03 -> :sswitch_20
        0x61a8b00 -> :sswitch_1f
        0x61a8b1e -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method private initDotLayout()V
    .locals 5

    .line 558
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->inflateView:Landroid/view/View;

    const v1, 0x7f0a05fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->dotLayout:Landroid/widget/LinearLayout;

    .line 559
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 560
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->dotViewList:Ljava/util/List;

    const/4 v0, 0x0

    .line 561
    :goto_0
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->pagerItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 562
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mConText:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 563
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 565
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07029c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 566
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    if-nez v0, :cond_0

    const v3, 0x7f0f013e

    .line 570
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_0
    const v3, 0x7f0f013d

    .line 572
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 574
    :goto_1
    iget-object v3, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->dotLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 575
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->dotViewList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initEvent()V
    .locals 2

    .line 580
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->parentActivity:Landroid/app/Activity;

    .line 581
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 582
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->preferences:Landroid/content/SharedPreferences;

    .line 583
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->editor:Landroid/content/SharedPreferences$Editor;

    .line 584
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mConText:Landroid/content/Context;

    .line 585
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getLanguageType()V

    .line 586
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->registerMyBroadcast()V

    return-void
.end method

.method private initGoogleMap()V
    .locals 2

    .line 816
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->parentActivity:Landroid/app/Activity;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocationManager:Landroid/location/LocationManager;

    .line 817
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a0299

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    .line 818
    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    return-void
.end method

.method private initLooperImg()V
    .locals 5

    .line 724
    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->CAROUSEL_MAIN:Ljava/lang/String;

    invoke-static {v0}, Lcom/orhanobut/hawk/Hawk;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->carouselUrls:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 726
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 727
    new-instance v2, Lcom/kugoo/kugookirin/bean/PagerItem;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7b2c"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->carouselUrls:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u4e2a\u56fe\u7247"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/kugoo/kugookirin/bean/PagerItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->pagerItems:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 730
    :cond_0
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->initDotLayout()V

    .line 733
    :cond_1
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    const-string v1, "getCarousel"

    const-string v2, "3"

    .line 734
    invoke-interface {v0, v1, v2}, Lcom/kugoo/kugookirin/utils/NetLink;->getCarousel(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 735
    invoke-static {}, Lrx/schedulers/Schedulers;->newThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 736
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$6;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$6;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    .line 737
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method private initPausePoint()V
    .locals 4

    .line 3089
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0124

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->photoBg:Landroid/graphics/Bitmap;

    .line 3090
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->bgWidth:I

    .line 3091
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->photoBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->bgHeight:I

    .line 3093
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->textPaint:Landroid/graphics/Paint;

    .line 3094
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3095
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3096
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 3098
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 3099
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06020f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3101
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->photoBg:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->photoBg:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->bitmapSrc:Landroid/graphics/Rect;

    .line 3103
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->bgWidth:I

    iget v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->bgHeight:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->bitmapDst:Landroid/graphics/Rect;

    return-void
.end method

.method private initView()V
    .locals 2

    .line 591
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->setSlideshow()V

    .line 592
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->initLooperImg()V

    .line 593
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Antonio-Bold-unhinted.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->typeface:Landroid/graphics/Typeface;

    .line 594
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mainGoBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 595
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailGoBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 597
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->initViewAnimator()V

    return-void
.end method

.method private initViewAnimator()V
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->layoutMainMap:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->setFadeInAnimator(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapFadeIn:Landroid/animation/ObjectAnimator;

    .line 602
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->layoutMainMap:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->setFadeOutAnimator(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapFadeOut:Landroid/animation/ObjectAnimator;

    .line 603
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->layoutVehicleDetail:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->setFadeInAnimator(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailFadeIn:Landroid/animation/ObjectAnimator;

    .line 604
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->layoutVehicleDetail:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->setFadeOutAnimator(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailFadeOut:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private loadingTrackData()V
    .locals 7

    .line 3315
    iget v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->endTrackDis:F

    iget v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->startTrackDis:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackDis:F

    const/high16 v1, 0x45610000    # 3600.0f

    mul-float/2addr v1, v0

    .line 3316
    iget-wide v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->recordTime:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    .line 3318
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->itemTripDis:Landroid/widget/TextView;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-string v0, "%.1f"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3319
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->itemMaxSpeed:Landroid/widget/TextView;

    new-array v4, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->maxSpeed:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3320
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->itemAvgSpeed:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3321
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->itemTripTime:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->recordTime:J

    invoke-static {v1, v2}, Lcom/kugoo/kugookirin/utils/ChangeToHour;->SecondToMin(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3323
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->startLocTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackStartName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3324
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->endLocTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackEndName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3325
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->shareNameTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private loginDialog()V
    .locals 3

    .line 2887
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f13046d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d00c3

    .line 2888
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const/4 v1, 0x0

    .line 2889
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2890
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const v1, 0x7f0a0348

    .line 2891
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$40;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$40;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0349

    .line 2897
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$41;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$41;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance()Lcom/kugoo/kugookirin/vehicle/VehicleFragment;
    .locals 1

    .line 506
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-direct {v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;-><init>()V

    return-object v0
.end method

.method private parseStrData(Ljava/lang/String;)V
    .locals 6

    const-string v0, "parseStrData:====== "

    const-string v1, "vehicleType=="

    const-string v2, "code_ok=="

    .line 1766
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const-string v4, "gbk"

    invoke-direct {v3, p1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string p1, "VehicleFragmentparseStrData(String code_ok)"

    .line 1767
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "imoogoo"

    .line 1769
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "VehicleFragment"

    if-nez p1, :cond_0

    :try_start_1
    const-string p1, "imoog"

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "moogoo"

    .line 1770
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "testst"

    .line 1771
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->test_imoo:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1773
    invoke-direct {p0, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getVehicleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    .line 1774
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->updateVehicleData()V

    .line 1775
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->askVehicle()V

    .line 1776
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    :cond_1
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->receiveData:Z

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string p1, "MODE"

    .line 1781
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    const/4 p1, 0x6

    const/4 v5, 0x7

    .line 1782
    invoke-virtual {v3, p1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1783
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearNum:I

    .line 1784
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearNum:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    iget p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearNum:I

    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showGear(I)V

    goto/16 :goto_3

    :cond_3
    const-string p1, "UNIT"

    .line 1787
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "+UNIT=0"

    .line 1788
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1789
    iput-boolean v4, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isKMH:Z

    goto :goto_0

    :cond_4
    const-string p1, "+UNIT=1"

    .line 1790
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1791
    iput-boolean v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isKMH:Z

    .line 1793
    :cond_5
    :goto_0
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isKMH:Z

    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showUnitView(Z)V

    goto :goto_3

    :cond_6
    const-string p1, "HLGT"

    .line 1794
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "HLGT=0"

    .line 1795
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1796
    iput-boolean v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLightOn:Z

    goto :goto_1

    :cond_7
    const-string p1, "HLGT=1"

    .line 1797
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1798
    iput-boolean v4, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLightOn:Z

    .line 1800
    :cond_8
    :goto_1
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLightOn:Z

    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showLightView(Z)V

    goto :goto_3

    :cond_9
    const-string p1, "LOCK"

    .line 1801
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "+LOCK=0"

    .line 1802
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1803
    iput-boolean v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLocked:Z

    goto :goto_2

    :cond_a
    const-string p1, "+LOCK=1"

    .line 1804
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1805
    iput-boolean v4, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLocked:Z

    .line 1807
    :cond_b
    :goto_2
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLocked:Z

    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showLockView(Z)V

    goto :goto_3

    :cond_c
    const-string p1, "SPLT"

    .line 1808
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "+SPLT=0"

    .line 1809
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_3

    :cond_d
    const-string p1, "+SPLT=1"

    .line 1813
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_e
    :goto_3
    const-string p1, "+DRIVMD"

    .line 1819
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    const-string p1, "+DRIVMD=0"

    .line 1820
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, ""

    if-eqz p1, :cond_f

    .line 1821
    :try_start_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->driveS:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->driveD:Landroidx/appcompat/widget/AppCompatButton;

    invoke-direct {p0, p1, v1, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showDriveUi(Landroid/widget/Button;Landroid/widget/Button;Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    const-string p1, "+DRIVMD=1"

    .line 1822
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1823
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->driveD:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->driveS:Landroidx/appcompat/widget/AppCompatButton;

    invoke-direct {p0, p1, v1, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showDriveUi(Landroid/widget/Button;Landroid/widget/Button;Ljava/lang/String;)V

    goto :goto_4

    :cond_10
    const-string p1, "MDMX"

    .line 1827
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, "+MDMX=3"

    .line 1828
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1829
    iput-boolean v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isMaxGear:Z

    goto :goto_4

    :cond_11
    const-string p1, "+MDMX=5"

    .line 1830
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1831
    iput-boolean v4, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isMaxGear:Z
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 1836
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_12
    :goto_4
    return-void
.end method

.method private postConnectInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 3407
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "token"

    .line 3408
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "time"

    .line 3409
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "distance"

    .line 3410
    invoke-virtual {v6, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "method"

    const-string p2, "odoTime"

    .line 3411
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 3412
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 p1, 0x0

    .line 3413
    iput-wide p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->connectTime:J

    .line 3415
    new-instance p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$54;

    const/4 v2, 0x1

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->USER_URL:Ljava/lang/String;

    new-instance v4, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$52;

    invoke-direct {v4, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$52;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    new-instance v5, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$53;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$53;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$54;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 3440
    iget-object p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->parentActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private registerMyBroadcast()V
    .locals 4

    .line 800
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 801
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 802
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 803
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 804
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 805
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_REQUEST_PASSWORD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 806
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 807
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_REQUEST_PASSWORD_AGAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 808
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_CODE_OK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 809
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->parentActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private saveVehicleInfo(Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;)V
    .locals 13

    .line 4116
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->infoDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;

    .line 4117
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4121
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->infoDataList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4122
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleListAdapter:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->notifyDataSetChanged()V

    .line 4123
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->infoDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showNoneVehicleView(Z)V

    .line 4124
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v2

    .line 4125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "// mac=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4126
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " // Version=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4127
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " // Bluetooth=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4128
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getBluetooth()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " // Model=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4129
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " // Mileage=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4130
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getMileage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " // Bleuuid=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4131
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getBleuuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " // Timelog=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4132
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getTimelog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VehicleFragmentuploadTTest"

    .line 4125
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "saveconnected"

    .line 4134
    iget-object v4, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->userToken:Ljava/lang/String;

    .line 4136
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getModel()Ljava/lang/String;

    move-result-object v5

    .line 4137
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getBluetooth()Ljava/lang/String;

    move-result-object v6

    .line 4138
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getMileage()Ljava/lang/String;

    move-result-object v7

    .line 4139
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getTimelog()Ljava/lang/String;

    move-result-object v8

    .line 4140
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getVersion()Ljava/lang/String;

    move-result-object v9

    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->deviceService_kugoo:Ljava/util/UUID;

    .line 4141
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 4142
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getMac()Ljava/lang/String;

    move-result-object v11

    iget p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->maxSpeed:F

    .line 4143
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v12

    .line 4134
    invoke-interface/range {v2 .. v12}, Lcom/kugoo/kugookirin/utils/NetLink;->saveVehicleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    .line 4143
    invoke-static {}, Lrx/schedulers/Schedulers;->newThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 4144
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$64;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$64;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    .line 4145
    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method private screenshotSystem()Landroid/graphics/Bitmap;
    .locals 4

    .line 3329
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->inflateView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x64

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->inflateView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3330
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 3331
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$51;

    invoke-direct {v2, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$51;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-static {v1, v0, v2, v3}, Landroid/view/PixelCopy;->request(Landroid/view/Window;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    :cond_0
    return-object v0
.end method

.method private setAdapter()V
    .locals 4

    .line 636
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->infoDataList:Ljava/util/ArrayList;

    .line 640
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->infoDataList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleListAdapter:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

    .line 641
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleListRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 642
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleListAdapter:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

    invoke-virtual {v0, p0}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->setOnShowNoneVehicleView(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$OnShowNoneVehicleView;)V

    .line 643
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleListAdapter:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

    invoke-virtual {v0, p0}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->setOnShowVehicleDetailView(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$OnShowVehicleDetailView;)V

    .line 644
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mConText:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 645
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 646
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleListRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private setFadeInAnimator(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 623
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 624
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 625
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$2;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setFadeOutAnimator(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 609
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 610
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 612
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$1;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setSlideshow()V
    .locals 3

    .line 694
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleMainSlPager:Lcom/kugoo/kugookirin/view/SobLooperPager;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mInnerAdapter:Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$3;

    invoke-direct {v2, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$3;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/kugoo/kugookirin/view/SobLooperPager;->setData(Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;Lcom/kugoo/kugookirin/view/SobLooperPager$BindTitleListener;)V

    .line 700
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleMainSlPager:Lcom/kugoo/kugookirin/view/SobLooperPager;

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$4;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$4;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/SobLooperPager;->setOnItemClickListener(Lcom/kugoo/kugookirin/view/SobLooperPager$OnItemClickListener;)V

    .line 706
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleMainSlPager:Lcom/kugoo/kugookirin/view/SobLooperPager;

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$5;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$5;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/SobLooperPager;->setOnPageChangeListener(Lcom/kugoo/kugookirin/view/SobLooperPager$OnPageChangeListener;)V

    return-void
.end method

.method private showBatteryView(I)V
    .locals 1

    .line 2161
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 2162
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailBattery:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2163
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapBattery:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showCapturingView()V
    .locals 4

    .line 4233
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->progress_Linear:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4234
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->shareLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4235
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->captureBottom:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4236
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapUsingView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4238
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->avatarUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4239
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->ABSOLUTE_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->sharePhotoIv:Lcom/kugoo/kugookirin/view/CircleImageView;

    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getPortraitImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    :cond_0
    return-void
.end method

.method private showConfirmDialog(Ljava/lang/String;)V
    .locals 6

    .line 1727
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isShow:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1730
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isShow:Z

    .line 1731
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f13046f

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0d0082

    .line 1732
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(I)V

    const v2, 0x7f0a05e1

    .line 1733
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120151

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a009e

    .line 1735
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a009f

    .line 1736
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$27;

    invoke-direct {v3, p0, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$27;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1743
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$28;

    invoke-direct {v2, p0, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$28;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Landroid/app/Dialog;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1750
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1751
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showConnected()V
    .locals 4

    .line 2402
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->driveD:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    .line 2403
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->driveS:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    .line 2404
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSpeedUnit:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2405
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailTripUnit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2406
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailOdoUnit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2407
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailBatteryUnit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2408
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailBlueIcon:Landroid/widget/ImageView;

    const v3, 0x7f0f0034

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2409
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailBlueStatus:Landroid/widget/TextView;

    const v3, 0x7f120099

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2410
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailMapEntrance:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2411
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailBlueName:Landroid/widget/TextView;

    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2412
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearMinusIv:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2413
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearPlusIv:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2414
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailGearBg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2415
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2416
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2417
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2418
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2419
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLightImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2420
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLockImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2421
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLockImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2422
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLightImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2423
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLightSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2424
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLockSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2425
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLightSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2426
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLightSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2427
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->askVehicle()V

    return-void
.end method

.method private showDisconnect(Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;)V
    .locals 5

    .line 2368
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->driveD:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    .line 2369
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->driveS:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    .line 2370
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSpeedUnit:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2371
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailTripUnit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2372
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailOdoUnit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2373
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailBatteryUnit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2374
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailBlueIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2375
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailBlueStatus:Landroid/widget/TextView;

    const v3, 0x7f1200ae

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2376
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailMapEntrance:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2378
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSpeed:Landroid/widget/TextView;

    const-string v2, "- -"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2379
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailTrip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2380
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailBattery:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2381
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailOdo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2382
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailBlueName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getBluetooth()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2383
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearMinusIv:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2384
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearPlusIv:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2385
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailGearBg:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2386
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2387
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2388
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2389
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2390
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2391
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLockImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2392
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLockImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2393
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2394
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLightSwitch:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2395
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLockSwitch:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2396
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLightSwitch:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2397
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLightSwitch:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method private showDriveUi(Landroid/widget/Button;Landroid/widget/Button;Ljava/lang/String;)V
    .locals 1

    const-string v0, "#FFFFFF"

    .line 1965
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    const v0, 0x7f080198

    .line 1966
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/4 v0, 0x0

    .line 1967
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setClickable(Z)V

    const/4 p1, 0x1

    .line 1968
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setClickable(Z)V

    const-string p1, "#A5A6A7"

    .line 1969
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1970
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1971
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1972
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showGear(I)V
    .locals 2

    .line 2013
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailGear:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "MODE"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showInitialView()V
    .locals 3

    .line 4192
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->progress_Linear:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4193
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->shareLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4194
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->captureBottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4195
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapUsingView:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4197
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapBackBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4199
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackRecordBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4200
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackingSpeedLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4201
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapBottomField:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4202
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->exitNavigationBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4203
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackFunctionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4204
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->startTrackBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4205
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->continueFinishLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4206
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->navigationTipsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private showInput()V
    .locals 3

    .line 2984
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->parentActivity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2985
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->routeEt:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method private showLightView(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2124
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLightStatus:Landroid/widget/TextView;

    const v1, 0x7f1201bd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2125
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLightStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2127
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLightStatus:Landroid/widget/TextView;

    const v1, 0x7f1201b9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2128
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLightStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2130
    :goto_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLightSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2131
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLightImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2132
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLightSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2133
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLightImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method private showLockPwdDialog()V
    .locals 4

    .line 2910
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f13046f

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d00ac

    .line 2911
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 2912
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v1, 0x0

    .line 2914
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const v1, 0x7f0a04ec

    .line 2916
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f0a04ed

    .line 2918
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$42;

    invoke-direct {v3, p0, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$42;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a04ee

    .line 2924
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$43;

    invoke-direct {v3, p0, v1, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$43;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showLockView(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2143
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLockStatus:Landroid/widget/TextView;

    const v1, 0x7f120136

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2144
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLockStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2146
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLockStatus:Landroid/widget/TextView;

    const v1, 0x7f1203aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2147
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLockStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2149
    :goto_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLockSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2150
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLockImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2151
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLockSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2152
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLockImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method private showMapResult()V
    .locals 5

    .line 3674
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "011=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->searchResultAddress01:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "012=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->searchResultId01:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "searchResultId"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3675
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->searchResultId01:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->searchResultId01:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showMapResult=="

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3679
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->searchResultId01:Ljava/lang/String;

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->endPlaceId:Ljava/lang/String;

    .line 3682
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->startNaviRide()V

    const-string v0, ""

    .line 3684
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->searchResultId01:Ljava/lang/String;

    .line 3685
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 3686
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->endPlaceId:Ljava/lang/String;

    iget v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->languageType:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Lcom/kugoo/kugookirin/utils/RouteUtils;->getDirectionsUrl(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3688
    invoke-static {v0}, Lcom/kugoo/kugookirin/utils/RouteUtils;->getRouteDataAndAnalysis(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showMileageView(IF)V
    .locals 6

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p2, v0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    float-to-double v2, p2

    .line 2194
    iget-wide v4, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->ratioNum:D

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%.1f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-ne p1, v0, :cond_0

    .line 2196
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailTrip:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2197
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapTripTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2199
    iput p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->odoDis:F

    .line 2200
    iput p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleOdo:F

    .line 2201
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailOdo:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2202
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapOdo:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showNavigatingView()V
    .locals 3

    .line 4213
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->progress_Linear:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4214
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->shareLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4215
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->captureBottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4216
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapUsingView:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4218
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapBackBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4219
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->navigationBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4220
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackRecordBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4221
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackingSpeedLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4222
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapBottomField:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4223
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->exitNavigationBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4224
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackFunctionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4225
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->navigationTipsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private showNoSaveDialog()V
    .locals 4

    .line 3972
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$58;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$58;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showSaveTrackDialog()V
    .locals 4

    .line 3993
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$59;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$59;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showShareBar(Ljava/io/File;)V
    .locals 4

    .line 3267
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->parentActivity:Landroid/app/Activity;

    const v2, 0x7f13046e

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d00c7

    .line 3268
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3270
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 3271
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v3, 0x51

    .line 3272
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v3, -0x1

    .line 3273
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x2

    .line 3274
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3275
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v1, 0x7f0a04f9

    .line 3278
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$49;

    invoke-direct {v2, p0, p1, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$49;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Ljava/io/File;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a04f5

    .line 3293
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$50;

    invoke-direct {v1, p0, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$50;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Landroid/app/Dialog;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 3308
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3309
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showShareImg()V
    .locals 7

    .line 3240
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->screenshotSystem()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3242
    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3244
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->screenCap:Lcom/kugoo/kugookirin/view/CornerImageView;

    invoke-virtual {v1, v0}, Lcom/kugoo/kugookirin/view/CornerImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3247
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->shareLinear:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    const-string v3, "alpha"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v5, 0x0

    .line 3248
    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3249
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 3250
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->shareLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3251
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->parentActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/utils/ScreenShot;->SaveBitmapToCache(Landroid/graphics/Bitmap;Landroid/app/Activity;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->shareImgFile:Ljava/io/File;

    .line 3254
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->shareLinear:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x320

    .line 3255
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3256
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3258
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->captureBottom:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private showSpeedView(F)V
    .locals 5

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    .line 2172
    iput p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->speedValue:F

    .line 2173
    iget v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->maxSpeed:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->maxSpeed:F

    .line 2175
    sget-object p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    const-string v0, "kgkrn02"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    .line 2176
    iget v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->speedValue:F

    float-to-double v1, v1

    iget-wide v3, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->ratioNum:D

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "%.0f"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    .line 2178
    iget v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->speedValue:F

    float-to-double v1, v1

    iget-wide v3, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->ratioNum:D

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "%.1f"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2180
    :goto_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSpeed:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2181
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->navigationSpeed:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2182
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackingSpeed:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showTrackingView()V
    .locals 3

    .line 4171
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->progress_Linear:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4172
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->shareLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4173
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->captureBottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4174
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapUsingView:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4176
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapBackBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4177
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->navigationBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4178
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackRecordBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4179
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackingSpeedLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4180
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapBottomField:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4181
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->exitNavigationBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4182
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackFunctionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4183
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->startTrackBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4184
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->continueFinishLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4185
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->navigationTipsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private showUnitView(Z)V
    .locals 4

    .line 1981
    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    const-string v1, "kgkrn02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    if-eqz p1, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 1984
    iput-wide v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->ratioNum:D

    .line 1985
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSpeedUnit:Landroid/widget/TextView;

    const v1, 0x7f12037b

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1986
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailTripUnit:Landroid/widget/TextView;

    const v2, 0x7f12037a

    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1987
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailOdoUnit:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1988
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->navigationSpeedUnit:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1989
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapTripUnit:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1990
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapOdoUnit:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1991
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackingSpeedUnit:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-wide v0, 0x3fe3e2435696e58aL    # 0.62137

    .line 1994
    iput-wide v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->ratioNum:D

    .line 1995
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSpeedUnit:Landroid/widget/TextView;

    const v1, 0x7f120381

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1996
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailTripUnit:Landroid/widget/TextView;

    const v2, 0x7f12037e

    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1997
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailOdoUnit:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1998
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->navigationSpeedUnit:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1999
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapTripUnit:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2000
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapOdoUnit:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2001
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackingSpeedUnit:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2003
    :goto_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_KMH:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private startNaviRide()V
    .locals 9

    const/4 v0, 0x1

    .line 3923
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isNavigate:Z

    .line 3924
    iget v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->odoDis:F

    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->startTrackDis:F

    const/4 v0, 0x0

    .line 3925
    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->maxSpeed:F

    const-wide/16 v1, 0x0

    .line 3926
    iput-wide v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->recordTime:J

    .line 3927
    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackDis:F

    .line 3930
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x0

    .line 3931
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nowLongitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nowLatitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static/range {v3 .. v8}, Lcom/kugoo/kugookirin/utils/toolUtil;->changeDataToJson(DDD)Lorg/json/JSONObject;

    move-result-object v0

    .line 3932
    iget-object v3, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->naviLocArray:Lorg/json/JSONArray;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 3936
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3937
    iput-wide v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->recordTime:J

    .line 3938
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3939
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nowLatlng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getLocName(Lcom/google/android/gms/maps/model/LatLng;)V

    const-string v0, "recordRoute"

    const-string v1, "startRide"

    .line 3940
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startTrackRide()V
    .locals 7

    const-string v0, "VehicleFragmenttracking_operation"

    const-string v1, "startTrackRide()"

    .line 3014
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->lineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    if-eqz v1, :cond_0

    .line 3016
    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 3018
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackLocArray:Lorg/json/JSONArray;

    .line 3019
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->pauseLocArray:Lorg/json/JSONArray;

    const/4 v0, 0x0

    .line 3021
    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackDis:F

    .line 3022
    iget v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->odoDis:F

    iput v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->startTrackDis:F

    .line 3023
    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->maxSpeed:F

    const-wide/16 v0, 0x0

    .line 3024
    iput-wide v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->recordTime:J

    const/4 v0, 0x0

    .line 3025
    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->pauseNum:I

    .line 3026
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->canSaveTrackData:Z

    .line 3028
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    .line 3029
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nowLongitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nowLatitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Lcom/kugoo/kugookirin/utils/toolUtil;->changeDataToJson(DDD)Lorg/json/JSONObject;

    move-result-object v0

    .line 3030
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackLocArray:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 3033
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3036
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nowLatlng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getLocName(Lcom/google/android/gms/maps/model/LatLng;)V

    const/4 v0, 0x1

    .line 3037
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isRecordTrack:Z

    return-void
.end method

.method private testData()V
    .locals 8

    const/high16 v0, 0x41200000    # 10.0f

    .line 3041
    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackDis:F

    const/high16 v0, 0x42100000    # 36.0f

    .line 3042
    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->maxSpeed:F

    const-wide/16 v1, 0x0

    const-wide v3, 0x405c799a828f5c28L    # 113.90005554199217

    const-wide v5, 0x4036947a419ad4cdL    # 22.579990482616996

    .line 3043
    invoke-static/range {v1 .. v6}, Lcom/kugoo/kugookirin/utils/toolUtil;->changeDataToJson(DDD)Lorg/json/JSONObject;

    move-result-object v0

    const-wide v3, 0x405c799c25fd8ad9L    # 113.90015554199216

    const-wide v5, 0x403694730c1c6dbfL    # 22.579880482616996

    .line 3044
    invoke-static/range {v1 .. v6}, Lcom/kugoo/kugookirin/utils/toolUtil;->changeDataToJson(DDD)Lorg/json/JSONObject;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide v4, 0x405c799dc96bb98bL    # 113.90025554199217

    const-wide v6, 0x4036946bd69e06b1L    # 22.579770482616997

    .line 3045
    invoke-static/range {v2 .. v7}, Lcom/kugoo/kugookirin/utils/toolUtil;->changeDataToJson(DDD)Lorg/json/JSONObject;

    move-result-object v2

    .line 3047
    iget-boolean v3, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isRecordTrack:Z

    if-eqz v3, :cond_0

    .line 3048
    iget-object v3, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackLocArray:Lorg/json/JSONArray;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 3049
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->pauseLocArray:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 3050
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackLocArray:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 3051
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackLocArray:Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 3053
    :cond_0
    iget-object v3, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->naviLocArray:Lorg/json/JSONArray;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 3054
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->naviLocArray:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 3055
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->naviLocArray:Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_0
    return-void
.end method

.method private updateVehicleData()V
    .locals 4

    const-string v0, "VehicleFragmentuploadTTest"

    const-string v1, "\u88c5\u8f7d\u6570\u636e"

    .line 1020
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    new-instance v0, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;

    invoke-direct {v0}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;-><init>()V

    .line 1022
    sget-object v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "kug12"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "kug11"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "kug03"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "b17"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_4
    const-string v2, "b11"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v1, "kug19"

    .line 1024
    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setModel(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    const-string v1, "\u5927\u9c7cB1"

    .line 1027
    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setModel(Ljava/lang/String;)V

    :pswitch_2
    const-string v1, "\u5927\u9c7cB2"

    .line 1029
    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setModel(Ljava/lang/String;)V

    :pswitch_3
    const-string v1, "\u5927\u9c7cB3"

    .line 1031
    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setModel(Ljava/lang/String;)V

    :pswitch_4
    const-string v1, "\u98de\u7c73Jupiter 1"

    .line 1033
    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setModel(Ljava/lang/String;)V

    .line 1035
    :goto_1
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setModel(Ljava/lang/String;)V

    .line 1037
    :goto_2
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setBluetooth(Ljava/lang/String;)V

    .line 1038
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setMac(Ljava/lang/String;)V

    .line 1039
    sget-object v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setVersion(Ljava/lang/String;)V

    .line 1048
    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->saveVehicleInfo(Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x17602 -> :sswitch_4
        0x17608 -> :sswitch_3
        0x61a8b00 -> :sswitch_2
        0x61a8b1d -> :sswitch_1
        0x61a8b1e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private uploadTrackRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 4023
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "token"

    .line 4024
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "time"

    .line 4025
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "distance"

    .line 4026
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "timeLong"

    .line 4027
    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "topSpeed"

    .line 4028
    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rideType"

    .line 4029
    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "start"

    .line 4030
    invoke-virtual {v0, v1, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "end"

    .line 4031
    invoke-virtual {v0, v1, p9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "location"

    .line 4032
    invoke-virtual {v0, v1, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "suspendArr"

    .line 4033
    invoke-virtual {v0, v1, p10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "method"

    const-string v2, "save"

    .line 4034
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key"

    .line 4035
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4037
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "  time="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  distance="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  timeLong="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  topSpeed="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  rideType="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  start=="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  end="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  location="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " suspendArr="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  method=save"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "recordRoute02"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4042
    new-instance p8, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$62;

    const/4 p3, 0x1

    sget-object p4, Lcom/kugoo/kugookirin/utils/Constants;->UPDATE_ACTIVITY_ROUTE:Ljava/lang/String;

    new-instance p5, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$60;

    invoke-direct {p5, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$60;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    new-instance p6, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$61;

    invoke-direct {p6, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$61;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    move-object p1, p8

    move-object p2, p0

    move-object p7, v0

    invoke-direct/range {p1 .. p7}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$62;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 4068
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p1

    invoke-virtual {p1, p8}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 3637
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->address:Ljava/lang/String;

    .line 3638
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "matches=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "matches001"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3639
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->address:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3640
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "https://maps.googleapis.com/maps/api/place/autocomplete/json?input="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "&key=AIzaSyBQTyKTsKrZ4AamGOtID4qHsmdgOohMbas"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "testHttp"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3643
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->address:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/utils/RouteUtils;->getSearchResultAndAnalysis(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public analysisRouteResult(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .line 3712
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 3714
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isRequestRouteData:Z

    .line 3715
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->endLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 3716
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "endLat=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->endLatLng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/LatLng;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ridedata=endloc="

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3719
    new-instance v0, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->lineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 3720
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 3721
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->lineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 3722
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->lineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 3724
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    const/16 v0, 0x898

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public checkLocationPermission()V
    .locals 2

    .line 3832
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->parentActivity:Landroid/app/Activity;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->parentActivity:Landroid/app/Activity;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 3833
    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public mapSearchResult(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/bean/MapSearchResultItem;",
            ">;)V"
        }
    .end annotation

    .line 3698
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapSearchResultItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3699
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapSearchResultItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3700
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "itemSize=="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapSearchResultItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mapSearchResult"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3701
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapSearchResultItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 3702
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    const/16 v0, 0x44c

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public nearbySearchResult(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/bean/PublishLocBean;",
            ">;)V"
        }
    .end annotation

    .line 3771
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "---nearbySearchResult--- nearByDataList.size=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trackingLocation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3772
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 3773
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/bean/PublishLocBean;

    .line 3774
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isNavigate:Z

    const-string v1, "uploadData"

    if-eqz v0, :cond_0

    .line 3776
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/PublishLocBean;->getDetailLoc()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->naviStartName:Ljava/lang/String;

    .line 3777
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "startNaviLoc=="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->naviStartName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3778
    :cond_0
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isRecordTrack:Z

    if-eqz v0, :cond_1

    .line 3780
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/PublishLocBean;->getDetailLoc()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackStartName:Ljava/lang/String;

    .line 3781
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "startrackLoc=="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackStartName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3784
    :cond_1
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/PublishLocBean;->getDetailLoc()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackEndName:Ljava/lang/String;

    .line 3785
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 3789
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "enddetailLoc=="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackEndName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nearbySearchResult"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "trackEnd"

    .line 3790
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackEndName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->canSaveTrackData:Z

    if-eqz p1, :cond_3

    .line 3792
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3794
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "endtrackLoc=="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackEndName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public nextStepNavi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3742
    iget v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->languageType:I

    if-nez v0, :cond_0

    .line 3743
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->afterDis:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " \u4e4b\u540e"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3745
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->afterDis:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "After "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const-string p1, "left"

    .line 3748
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "roundabout"

    const-string v1, "slight"

    if-eqz p1, :cond_3

    .line 3749
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3750
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nextDirection:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0f0039

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 3751
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3752
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nextDirection:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0f0037

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 3754
    :cond_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nextDirection:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0f003b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    const-string p1, "right"

    .line 3757
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3758
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3759
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nextDirection:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0f003a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 3760
    :cond_4
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3761
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nextDirection:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0f0038

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 3763
    :cond_5
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nextDirection:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0f003c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 531
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 534
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->routeEt:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 535
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->enableGPS()V

    .line 538
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->initPausePoint()V

    .line 540
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->pointList:Ljava/util/List;

    .line 541
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->searchResult:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 542
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapSearchResultItems:Ljava/util/ArrayList;

    .line 543
    new-instance p1, Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter;

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapSearchResultItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->searchedAdapter:Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter;

    .line 544
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->searchResult:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 546
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/RouteUtils;->setOnRouteAnalysisListener(Lcom/kugoo/kugookirin/utils/RouteUtils$onRouteAnalysisListener;)V

    .line 547
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/RouteUtils;->setOnNearbyPlaceListener(Lcom/kugoo/kugookirin/utils/RouteUtils$onNearbyPlaceListener;)V

    .line 549
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->initGoogleMap()V

    .line 551
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->setAdapter()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 19
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a028b,
            0x7f0a0287,
            0x7f0a0199,
            0x7f0a01b1,
            0x7f0a01a2,
            0x7f0a01b5,
            0x7f0a0603,
            0x7f0a0185,
            0x7f0a00c1,
            0x7f0a01d4,
            0x7f0a020c,
            0x7f0a035e,
            0x7f0a035d,
            0x7f0a01ec,
            0x7f0a01ed,
            0x7f0a015f,
            0x7f0a01a8,
            0x7f0a0191,
            0x7f0a01aa,
            0x7f0a05b1,
            0x7f0a036d,
            0x7f0a05b3,
            0x7f0a024b,
            0x7f0a04f9,
            0x7f0a04f5,
            0x7f0a0085,
            0x7f0a0565,
            0x7f0a0566,
            0x7f0a057a,
            0x7f0a0579,
            0x7f0a0570,
            0x7f0a0364,
            0x7f0a0057,
            0x7f0a03e0
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2591
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const-wide/16 v2, 0xc8

    const-string v4, "kug20"

    const-string v6, "kug19"

    const-string v8, "kug11"

    const-string v10, "kug03"

    const-string v12, "b205"

    const-string v14, "b17"

    const-string v5, "b11"

    const-string v7, "b2"

    const-string v9, "b1"

    const/16 v16, 0x2

    const/16 v17, -0x1

    move-object/from16 v18, v14

    const-wide/16 v13, 0x96

    const/4 v11, 0x0

    const/4 v15, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_e

    .line 2616
    :sswitch_0
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLogin:Z

    if-eqz v1, :cond_0

    .line 2617
    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->parentActivity:Landroid/app/Activity;

    const-class v3, Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2620
    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->HOME_PAGE_ID:Ljava/lang/String;

    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->loginUserId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2621
    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_e

    .line 2623
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->loginDialog()V

    goto/16 :goto_e

    .line 2846
    :sswitch_1
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 2858
    :sswitch_2
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLogin:Z

    if-eqz v1, :cond_1

    .line 2859
    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->parentActivity:Landroid/app/Activity;

    const-class v3, Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_e

    .line 2861
    :cond_1
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->parentActivity:Landroid/app/Activity;

    const v2, 0x7f120137

    invoke-virtual {v0, v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_e

    .line 2608
    :sswitch_3
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->test_input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2609
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 2612
    :sswitch_4
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->test_input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2613
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendHexString(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 2601
    :sswitch_5
    new-instance v1, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;

    invoke-direct {v1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;-><init>()V

    const-string v2, "test1"

    .line 2602
    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setBluetooth(Ljava/lang/String;)V

    .line 2603
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->test_input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setVersion(Ljava/lang/String;)V

    .line 2604
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->test_input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    .line 2605
    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showVehicle(Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;)V

    goto/16 :goto_e

    .line 2814
    :sswitch_6
    invoke-direct {v0, v11}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->hideOtherView(Z)V

    goto/16 :goto_e

    .line 2811
    :sswitch_7
    invoke-direct {v0, v15}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->hideOtherView(Z)V

    goto/16 :goto_e

    .line 2821
    :sswitch_8
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->parentActivity:Landroid/app/Activity;

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->shareImgFile:Ljava/io/File;

    invoke-static {v1, v2}, Lcom/kugoo/kugookirin/utils/ScreenShot;->shareImge02(Landroid/app/Activity;Ljava/io/File;)V

    .line 2822
    invoke-direct/range {p0 .. p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showInitialView()V

    .line 2825
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->canSaveTrackData:Z

    if-eqz v1, :cond_2

    .line 2826
    invoke-direct/range {p0 .. p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showSaveTrackDialog()V

    goto/16 :goto_e

    .line 2828
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showNoSaveDialog()V

    goto/16 :goto_e

    .line 2833
    :sswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showInitialView()V

    .line 2836
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->canSaveTrackData:Z

    if-eqz v1, :cond_3

    .line 2837
    invoke-direct/range {p0 .. p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showSaveTrackDialog()V

    goto/16 :goto_e

    .line 2839
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showNoSaveDialog()V

    goto/16 :goto_e

    .line 2818
    :sswitch_a
    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mConText:Landroid/content/Context;

    const-class v3, Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_e

    :sswitch_b
    const-string v1, "VehicleFragmenttracking_operation"

    const-string v2, "start_tracking"

    .line 2852
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    invoke-direct/range {p0 .. p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showTrackingView()V

    .line 2854
    invoke-direct/range {p0 .. p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->startTrackRide()V

    goto/16 :goto_e

    .line 2795
    :sswitch_c
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapFadeOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_e

    .line 2776
    :sswitch_d
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isClick:Z

    if-nez v1, :cond_22

    .line 2777
    iput-boolean v15, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isClick:Z

    .line 2778
    invoke-direct/range {p0 .. p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearDown()V

    .line 2779
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    new-instance v4, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$39;

    invoke-direct {v4, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$39;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_e

    .line 2843
    :sswitch_e
    invoke-direct {v0, v11}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->endTracking(Z)V

    goto/16 :goto_e

    .line 2874
    :sswitch_f
    invoke-direct/range {p0 .. p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->end_Navigation()V

    goto/16 :goto_e

    .line 2598
    :sswitch_10
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->driveS:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->driveD:Landroidx/appcompat/widget/AppCompatButton;

    const-string v3, "+DRIVMD=0"

    invoke-direct {v0, v1, v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showDriveUi(Landroid/widget/Button;Landroid/widget/Button;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 2594
    :sswitch_11
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->driveD:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->driveS:Landroidx/appcompat/widget/AppCompatButton;

    const-string v3, "+DRIVMD=1"

    invoke-direct {v0, v1, v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showDriveUi(Landroid/widget/Button;Landroid/widget/Button;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 2707
    :sswitch_12
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isClick:Z

    if-nez v1, :cond_14

    .line 2708
    iput-boolean v15, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isClick:Z

    .line 2709
    sget-object v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    :goto_0
    move/from16 v5, v17

    goto/16 :goto_1

    :sswitch_13
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v5, 0x8

    goto :goto_1

    :sswitch_14
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x7

    goto :goto_1

    :sswitch_15
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v5, 0x6

    goto :goto_1

    :sswitch_16
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v5, 0x5

    goto :goto_1

    :sswitch_17
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v5, 0x4

    goto :goto_1

    :sswitch_18
    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v5, 0x3

    goto :goto_1

    :sswitch_19
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    move/from16 v5, v16

    goto :goto_1

    :sswitch_1a
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_0

    :cond_b
    move v5, v15

    goto :goto_1

    :sswitch_1b
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_0

    :cond_c
    move v5, v11

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 2723
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLocked:Z

    if-eqz v1, :cond_10

    .line 2724
    sget-object v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :goto_2
    move/from16 v16, v17

    goto :goto_3

    :pswitch_0
    const-string v2, "kgkrn05"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_2

    :pswitch_1
    const-string v2, "kgkrn04"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2

    :cond_d
    move/from16 v16, v15

    goto :goto_3

    :pswitch_2
    const-string v2, "kgkrn03"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_2

    :cond_e
    move/from16 v16, v11

    :cond_f
    :goto_3
    packed-switch v16, :pswitch_data_2

    .line 2731
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    const-string v2, "+LOCK=0"

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    goto :goto_6

    .line 2728
    :pswitch_3
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    const-string v2, "AA03040488000021BB"

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendHexString(Ljava/lang/String;)V

    goto :goto_6

    .line 2736
    :cond_10
    sget-object v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_3

    :goto_4
    move/from16 v16, v17

    goto :goto_5

    :pswitch_4
    const-string v2, "kgkrn05"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_4

    :pswitch_5
    const-string v2, "kgkrn04"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_4

    :cond_11
    move/from16 v16, v15

    goto :goto_5

    :pswitch_6
    const-string v2, "kgkrn03"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_4

    :cond_12
    move/from16 v16, v11

    :cond_13
    :goto_5
    packed-switch v16, :pswitch_data_4

    .line 2743
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    const-string v2, "+LOCK=1"

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    goto :goto_6

    .line 2740
    :pswitch_7
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    const-string v2, "AA03040488010020BB"

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendHexString(Ljava/lang/String;)V

    .line 2747
    :goto_6
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLocked:Z

    xor-int/2addr v1, v15

    iput-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLocked:Z

    invoke-direct {v0, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showLockView(Z)V

    .line 2748
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$37;

    invoke-direct {v2, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$37;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v1, v2, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    .line 2720
    :pswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showLockPwdDialog()V

    .line 2757
    :goto_7
    iput-boolean v11, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isClick:Z

    goto/16 :goto_e

    .line 2762
    :cond_14
    :sswitch_1c
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isClick:Z

    if-nez v1, :cond_22

    .line 2763
    iput-boolean v15, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isClick:Z

    .line 2764
    invoke-direct/range {p0 .. p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearUp()V

    .line 2765
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$38;

    invoke-direct {v2, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$38;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v1, v2, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_e

    :sswitch_1d
    move-object/from16 v1, v18

    .line 2628
    iget-boolean v13, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isClick:Z

    if-nez v13, :cond_22

    .line 2629
    iput-boolean v15, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isClick:Z

    .line 2630
    sget-object v13, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_2

    :goto_8
    move/from16 v5, v17

    goto/16 :goto_9

    :sswitch_1e
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_8

    :cond_15
    const/16 v5, 0x9

    goto/16 :goto_9

    :sswitch_1f
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_8

    :cond_16
    const/16 v5, 0x8

    goto :goto_9

    :sswitch_20
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_8

    :cond_17
    const/4 v5, 0x7

    goto :goto_9

    :sswitch_21
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_8

    :cond_18
    const/4 v5, 0x6

    goto :goto_9

    :sswitch_22
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_8

    :cond_19
    const/4 v5, 0x5

    goto :goto_9

    :sswitch_23
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_8

    :cond_1a
    const/4 v5, 0x4

    goto :goto_9

    :sswitch_24
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_8

    :cond_1b
    const/4 v5, 0x3

    goto :goto_9

    :sswitch_25
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_8

    :cond_1c
    move/from16 v5, v16

    goto :goto_9

    :sswitch_26
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_8

    :cond_1d
    move v5, v15

    goto :goto_9

    :sswitch_27
    const-string v1, "kgkrn02"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_8

    :cond_1e
    move v5, v11

    :goto_9
    const-string v1, "AA070601AABB"

    packed-switch v5, :pswitch_data_5

    .line 2684
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLightOn:Z

    if-eqz v1, :cond_1f

    .line 2685
    iput-boolean v11, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLightOn:Z

    .line 2686
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    const-string v4, "HLGT=0"

    invoke-virtual {v1, v4}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    goto :goto_a

    .line 2688
    :cond_1f
    iput-boolean v15, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLightOn:Z

    .line 2689
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    const-string v4, "HLGT=1"

    invoke-virtual {v1, v4}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    .line 2691
    :goto_a
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLightOn:Z

    invoke-direct {v0, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showLightView(Z)V

    .line 2692
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    new-instance v4, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$36;

    invoke-direct {v4, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$36;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d

    .line 2640
    :pswitch_9
    iget-boolean v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLightOn:Z

    if-eqz v2, :cond_20

    .line 2641
    iput-boolean v11, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLightOn:Z

    .line 2642
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    const-string v2, "AA070600ABBB"

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendHexString(Ljava/lang/String;)V

    goto :goto_b

    .line 2644
    :cond_20
    iput-boolean v15, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLightOn:Z

    .line 2645
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendHexString(Ljava/lang/String;)V

    .line 2647
    :goto_b
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLightOn:Z

    invoke-direct {v0, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showLightView(Z)V

    goto :goto_d

    .line 2650
    :pswitch_a
    iget-boolean v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLightOn:Z

    if-eqz v2, :cond_21

    .line 2651
    iput-boolean v11, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLightOn:Z

    .line 2652
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    const-string v2, "AA070600ABBB"

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendHexString(Ljava/lang/String;)V

    .line 2653
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$32;

    invoke-direct {v2, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$32;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2659
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$33;

    invoke-direct {v2, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$33;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c

    .line 2666
    :cond_21
    iput-boolean v15, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLightOn:Z

    .line 2667
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendHexString(Ljava/lang/String;)V

    .line 2668
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$34;

    invoke-direct {v2, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$34;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2674
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$35;

    invoke-direct {v2, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$35;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2681
    :goto_c
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLightOn:Z

    invoke-direct {v0, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showLightView(Z)V

    .line 2702
    :goto_d
    iput-boolean v11, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isClick:Z

    goto :goto_e

    .line 2803
    :sswitch_28
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapFadeIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_e

    .line 2866
    :sswitch_29
    invoke-direct/range {p0 .. p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getCurrentLocation()V

    .line 2867
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nowLatlng:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v1, :cond_22

    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->oldMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v1, :cond_22

    .line 2868
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 2869
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nowLatlng:Lcom/google/android/gms/maps/model/LatLng;

    const v2, 0x7f0f0122

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->drawMarkerJ(Lcom/google/android/gms/maps/model/LatLng;ILandroid/graphics/Bitmap;)V

    .line 2870
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nowLatlng:Lcom/google/android/gms/maps/model/LatLng;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-static {v2, v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_e

    .line 2806
    :sswitch_2a
    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->parentActivity:Landroid/app/Activity;

    const-class v3, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_e

    .line 2791
    :sswitch_2b
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailFadeOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_e

    .line 2879
    :sswitch_2c
    new-instance v1, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->startActivity(Landroid/content/Intent;)V

    :cond_22
    :goto_e
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0057 -> :sswitch_2c
        0x7f0a0085 -> :sswitch_2b
        0x7f0a00c1 -> :sswitch_2a
        0x7f0a015f -> :sswitch_29
        0x7f0a0185 -> :sswitch_2c
        0x7f0a0191 -> :sswitch_28
        0x7f0a0199 -> :sswitch_1d
        0x7f0a01a2 -> :sswitch_12
        0x7f0a01a8 -> :sswitch_28
        0x7f0a01aa -> :sswitch_28
        0x7f0a01b1 -> :sswitch_1d
        0x7f0a01b5 -> :sswitch_12
        0x7f0a01d4 -> :sswitch_2c
        0x7f0a01ec -> :sswitch_11
        0x7f0a01ed -> :sswitch_10
        0x7f0a020c -> :sswitch_f
        0x7f0a024b -> :sswitch_e
        0x7f0a0287 -> :sswitch_d
        0x7f0a028b -> :sswitch_1c
        0x7f0a035d -> :sswitch_28
        0x7f0a035e -> :sswitch_28
        0x7f0a0364 -> :sswitch_c
        0x7f0a036d -> :sswitch_b
        0x7f0a03e0 -> :sswitch_a
        0x7f0a04f5 -> :sswitch_9
        0x7f0a04f9 -> :sswitch_8
        0x7f0a0565 -> :sswitch_7
        0x7f0a0566 -> :sswitch_6
        0x7f0a0570 -> :sswitch_5
        0x7f0a0579 -> :sswitch_4
        0x7f0a057a -> :sswitch_3
        0x7f0a05b1 -> :sswitch_2
        0x7f0a05b3 -> :sswitch_1
        0x7f0a0603 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xc0f -> :sswitch_1b
        0xc10 -> :sswitch_1a
        0x17602 -> :sswitch_19
        0x17608 -> :sswitch_18
        0x2d4e15 -> :sswitch_17
        0x61a8b00 -> :sswitch_16
        0x61a8b1d -> :sswitch_15
        0x61a8b25 -> :sswitch_14
        0x61a8b3b -> :sswitch_13
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2de8cbb2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x2de8cbb2
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x2de8cbb3 -> :sswitch_27
        0xc0f -> :sswitch_26
        0xc10 -> :sswitch_25
        0x17602 -> :sswitch_24
        0x17608 -> :sswitch_23
        0x2d4e15 -> :sswitch_22
        0x61a8b00 -> :sswitch_21
        0x61a8b1d -> :sswitch_20
        0x61a8b25 -> :sswitch_1f
        0x61a8b3b -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 512
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 513
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->initEvent()V

    .line 514
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->pagerItems:Ljava/util/List;

    .line 515
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->carouselUrls:Ljava/util/ArrayList;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 521
    iget-object p3, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->inflateView:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0d00a4

    const/4 v0, 0x0

    .line 522
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->inflateView:Landroid/view/View;

    .line 524
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->inflateView:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->unbinder:Lbutterknife/Unbinder;

    .line 525
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->initView()V

    .line 526
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->inflateView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 3002
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 3003
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3004
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3006
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->parentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 2995
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2996
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 2997
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->msgHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 3653
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapSearchResultItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/bean/MapSearchResultItem;

    .line 3654
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/MapSearchResultItem;->getAddress_title()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->searchResultAddress01:Ljava/lang/String;

    .line 3655
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/MapSearchResultItem;->getPlace_id()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->searchResultId01:Ljava/lang/String;

    .line 3657
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/MapSearchResultItem;->getAddress_title()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->naviEndName:Ljava/lang/String;

    .line 3658
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "endNaviLoc=="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->naviEndName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "recordRoute02"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3659
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->naviLocArray:Lorg/json/JSONArray;

    .line 3661
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->searchResult:Landroid/widget/ListView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3663
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->navigationTipsLayout:Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3664
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->exitNavigationBtn:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3668
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showMapResult()V

    .line 3669
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "01=="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->searchResultAddress01:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "02=="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->searchResultId01:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "searchResultId"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 5

    const-string v0, "VehicleFragmentgoogle_map"

    const-string v1, "execute onMapReady"

    .line 3450
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3451
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v0, 0x1

    .line 3452
    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 3453
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->parentActivity:Landroid/app/Activity;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 3457
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->requestPermissions([Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 3460
    :cond_0
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_3

    .line 3461
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->checkLocationPermission()V

    .line 3462
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 3463
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 3464
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 3465
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 3466
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/UiSettings;->setAllGesturesEnabled(Z)V

    .line 3467
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v1, 0x420c0000    # 35.0f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMaxZoomPreference(F)V

    .line 3468
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getCurrentLocation()V

    .line 3470
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_1

    return-void

    .line 3474
    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 3475
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->oldMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v1, :cond_2

    .line 3476
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    :cond_2
    const v1, 0x7f0f0122

    const/4 v2, 0x0

    .line 3478
    invoke-direct {p0, v0, v1, v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->drawMarkerJ(Lcom/google/android/gms/maps/model/LatLng;ILandroid/graphics/Bitmap;)V

    .line 3479
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {v0, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 3481
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_LONGITUDE:Ljava/lang/String;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3482
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_LATITUDE:Ljava/lang/String;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3485
    :cond_3
    :goto_0
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$55;

    invoke-direct {v0, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$55;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Lcom/google/android/gms/maps/GoogleMap;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mRunnable:Ljava/lang/Runnable;

    .line 3493
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$56;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$56;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraIdleListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 826
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 827
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_KMH:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isKMH:Z

    .line 828
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLogin:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->preferences:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->userToken:Ljava/lang/String;

    .line 831
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->preferences:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->loginUserId:Ljava/lang/String;

    .line 833
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->preferences:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_PORTRAIT:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->avatarUrl:Ljava/lang/String;

    .line 834
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "sasasas"

    .line 835
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->avatarUrl:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->ABSOLUTE_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicle_user_avatar:Lcom/kugoo/kugookirin/view/CircleImageView;

    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getPortraitImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_0

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicle_user_avatar:Lcom/kugoo/kugookirin/view/CircleImageView;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kugoo/kugookirin/view/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 842
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->askVehicle()V

    .line 843
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isLogin:Z

    if-eqz v0, :cond_2

    .line 844
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getVehicleData()V

    .line 847
    :cond_2
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->preferences:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_PROFILE:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 848
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->preferences:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USERNAME:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->userName:Ljava/lang/String;

    .line 849
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicle_user_profile:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 850
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicle_username:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 851
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->isKMH:Z

    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showUnitView(Z)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public routeDisAndTime(II)V
    .locals 0

    .line 3731
    iput p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapDistance:I

    .line 3732
    iput p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapDuration:I

    .line 3734
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mapDistance=="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapDistance:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "   mapDuration=="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapDuration:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "total0002"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendLockPwd(Ljava/lang/String;)V
    .locals 13

    .line 2954
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x2

    .line 2955
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    .line 2956
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    .line 2957
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x8

    .line 2958
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xa

    .line 2959
    invoke-virtual {p1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 2960
    invoke-virtual {p1, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x9

    new-array v10, v10, [Ljava/lang/String;

    const-string v12, "AA"

    aput-object v12, v10, v0

    const/4 v0, 0x1

    const-string v12, "16"

    aput-object v12, v10, v0

    const-string v0, "0B"

    aput-object v0, v10, v2

    const/4 v0, 0x3

    aput-object v3, v10, v0

    aput-object v5, v10, v4

    const/4 v0, 0x5

    aput-object v7, v10, v0

    aput-object v9, v10, v6

    const/4 v0, 0x7

    aput-object v11, v10, v0

    aput-object v1, v10, v8

    .line 2962
    invoke-static {v10}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->xor([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2963
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendcode=AA160B"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "sendcode"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AA160B"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendHexString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showNoneVehicleView(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 657
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->noneVehicleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 658
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleListRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 660
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->noneVehicleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 661
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleListRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public showVehicle(Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;)V
    .locals 3

    const/4 v0, 0x0

    .line 673
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->receiveData:Z

    .line 674
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 675
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 676
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 678
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->receiveData:Z

    goto :goto_0

    .line 681
    :cond_0
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->receiveData:Z

    .line 684
    :cond_1
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->initDetailUi(ZLcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;)V

    .line 685
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->test_type:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailFadeIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
