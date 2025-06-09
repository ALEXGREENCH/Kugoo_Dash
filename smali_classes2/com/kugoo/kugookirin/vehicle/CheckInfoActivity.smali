.class public Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CheckInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CheckInfoActivity"


# instance fields
.field acceleratorCheckResult:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0017
    .end annotation
.end field

.field acceleratorPiece:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0018
    .end annotation
.end field

.field batteryCheckResult:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a008b
    .end annotation
.end field

.field batteryPiece:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a008c
    .end annotation
.end field

.field batteryTempAlertCheckResult:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a008d
    .end annotation
.end field

.field batteryTempAlertPiece:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a008e
    .end annotation
.end field

.field batteryTempProtectionCheckResult:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a008f
    .end annotation
.end field

.field batteryTempProtectionPiece:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0090
    .end annotation
.end field

.field brakeCheckResult:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a00ab
    .end annotation
.end field

.field brakeCrankCheckResult:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a00ac
    .end annotation
.end field

.field brakeCrankPiece:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a00ad
    .end annotation
.end field

.field brakePiece:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a00af
    .end annotation
.end field

.field private challengeTime:Ljava/util/Timer;

.field private challengeTimeTask:Ljava/util/TimerTask;

.field private checkInfo:Ljava/lang/String;

.field checkStartTv:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a00f2
    .end annotation
.end field

.field private checkValue01:Ljava/lang/String;

.field comCheckResult:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a011e
    .end annotation
.end field

.field comReceiveCheckResult:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0129
    .end annotation
.end field

.field comReceivePiece:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a012a
    .end annotation
.end field

.field comSendCheckResult:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a012b
    .end annotation
.end field

.field comSendPiece:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a012c
    .end annotation
.end field

.field communicationPiece:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a013f
    .end annotation
.end field

.field controllerCheckResult:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a014e
    .end annotation
.end field

.field controllerCommunicationCheckResult:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a014f
    .end annotation
.end field

.field controllerCommunicationPiece:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0150
    .end annotation
.end field

.field controllerPiece:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0151
    .end annotation
.end field

.field currentCheckResult:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0161
    .end annotation
.end field

.field currentPiece:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0163
    .end annotation
.end field

.field private current_time:I

.field private errorCodeMyt:I

.field private getData1:Z

.field hallCheckResult:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a02a9
    .end annotation
.end field

.field hallPiece:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a02aa
    .end annotation
.end field

.field handleCheckResult:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a02ab
    .end annotation
.end field

.field handlePiece:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a02ac
    .end annotation
.end field

.field private isChecking:Z

.field private isLogin:Z

.field private jsonArray:Lorg/json/JSONArray;

.field layoutList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field motorPhaseCheckResult:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a03b8
    .end annotation
.end field

.field motorPhasePiece:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a03b9
    .end annotation
.end field

.field motorTempCheckResult:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a03ba
    .end annotation
.end field

.field motorTempPiece:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a03bb
    .end annotation
.end field

.field private mytErrors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private oldProStr:Ljava/lang/String;

.field powerSensorCheckResult:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a045b
    .end annotation
.end field

.field powerSensorPiece:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a045c
    .end annotation
.end field

.field private preferences:Landroid/content/SharedPreferences;

.field progressRate:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a00f3
    .end annotation
.end field

.field private resultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field selfCheckCircleView:Lcom/kugoo/kugookirin/view/SelfCheckCircleView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a04e3
    .end annotation
.end field

.field test__1:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0567
    .end annotation
.end field

.field test__2:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0568
    .end annotation
.end field

.field viewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/widget/LinearLayout;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->current_time:I

    const-string v1, ""

    .line 149
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->oldProStr:Ljava/lang/String;

    .line 151
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->isChecking:Z

    .line 153
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->checkInfo:Ljava/lang/String;

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->getData1:Z

    const/4 v0, -0x1

    .line 156
    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->errorCodeMyt:I

    .line 159
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$1;

    .line 160
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$1;-><init>(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->mHandler:Landroid/os/Handler;

    .line 594
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;-><init>(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->current_time:I

    return p0
.end method

.method static synthetic access$002(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->current_time:I

    return p1
.end method

.method static synthetic access$012(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;I)I
    .locals 1

    .line 58
    iget v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->current_time:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->current_time:I

    return v0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->stopTime()V

    return-void
.end method

.method static synthetic access$1000(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->initTS01Protocol()V

    return-void
.end method

.method static synthetic access$1100(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->initLiDian2Protocol()V

    return-void
.end method

.method static synthetic access$1200(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->getData1:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->getData1:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->initKG07Protocol()V

    return-void
.end method

.method static synthetic access$1400(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Landroid/os/Handler;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->isChecking:Z

    return p0
.end method

.method static synthetic access$202(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->isChecking:Z

    return p1
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->init5sProtocol()V

    return-void
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->errorCodeMyt:I

    return p0
.end method

.method static synthetic access$402(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->errorCodeMyt:I

    return p1
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Ljava/util/HashMap;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->mytErrors:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->showMytCheckResult(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->initV1Protocol()V

    return-void
.end method

.method static synthetic access$800(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->checkInfo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->checkInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->initV1Protocols()V

    return-void
.end method

.method private varargs addToResultViewList([Landroid/widget/TextView;)V
    .locals 4

    .line 502
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 503
    iget-object v3, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->resultList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private hasErrorNum(Ljava/lang/Integer;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1275
    :goto_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1277
    :try_start_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v2

    .line 1281
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private init5sProtocol()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 253
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->currentPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->acceleratorPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->motorPhasePiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->hallPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->brakePiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initBroadcast()V
    .locals 3

    .line 523
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 524
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 525
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 526
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 527
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 528
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 529
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private initEvent()V
    .locals 3

    .line 533
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->jsonArray:Lorg/json/JSONArray;

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->resultList:Ljava/util/List;

    .line 535
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->progressRate:Landroid/widget/TextView;

    const-string v1, "0%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->preferences:Landroid/content/SharedPreferences;

    .line 537
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->isLogin:Z

    return-void
.end method

.method private initKG07Protocol()V
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 409
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->controllerCommunicationPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->hallPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->acceleratorPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->controllerPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->batteryPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->communicationPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->motorPhasePiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initLiDian2Protocol()V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 379
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->hallPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->acceleratorPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->controllerPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->batteryPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->brakeCrankPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->motorPhasePiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->powerSensorPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->brakePiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->communicationPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initTS01Protocol()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 340
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->brakePiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->hallPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->controllerPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->motorPhasePiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->batteryPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->acceleratorPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->communicationPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->batteryTempProtectionPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->batteryTempAlertPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initV1Protocol()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 287
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->brakePiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->communicationPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->controllerPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->motorPhasePiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->batteryPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->acceleratorPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->hallPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->batteryTempProtectionPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->batteryTempAlertPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initV1Protocols()V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 301
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->brakePiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->acceleratorPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->batteryPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->controllerPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->motorPhasePiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->hallPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->communicationPiece:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initView(Ljava/lang/String;)V
    .locals 12

    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/View;

    .line 421
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->brakeCrankPiece:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->powerSensorPiece:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->brakePiece:Landroid/widget/LinearLayout;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->controllerPiece:Landroid/widget/LinearLayout;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->communicationPiece:Landroid/widget/LinearLayout;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->comReceivePiece:Landroid/widget/LinearLayout;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->comSendPiece:Landroid/widget/LinearLayout;

    const/4 v8, 0x6

    aput-object v1, v0, v8

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->motorPhasePiece:Landroid/widget/LinearLayout;

    const/4 v9, 0x7

    aput-object v1, v0, v9

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->batteryPiece:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    aput-object v1, v0, v10

    const/16 v1, 0x9

    iget-object v11, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->acceleratorPiece:Landroid/widget/LinearLayout;

    aput-object v11, v0, v1

    const/16 v1, 0xa

    iget-object v11, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->hallPiece:Landroid/widget/LinearLayout;

    aput-object v11, v0, v1

    const/16 v1, 0xb

    iget-object v11, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->controllerCommunicationPiece:Landroid/widget/LinearLayout;

    aput-object v11, v0, v1

    invoke-direct {p0, v10, v0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->setViewVisibility(I[Landroid/view/View;)V

    .line 424
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "s3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    move v1, v9

    goto :goto_0

    :sswitch_1
    const-string v0, "s1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v8

    goto :goto_0

    :sswitch_2
    const-string v0, "kgkrn29"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v7

    goto :goto_0

    :sswitch_3
    const-string v0, "kgkrn25"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v6

    goto :goto_0

    :sswitch_4
    const-string v0, "kgkrn23"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v5

    goto :goto_0

    :sswitch_5
    const-string v0, "kgkrn14"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v1, v4

    goto :goto_0

    :sswitch_6
    const-string v0, "kgkrn10"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_0

    :sswitch_7
    const-string v0, "kgkrn07"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    move v1, v2

    :goto_0
    packed-switch v1, :pswitch_data_0

    new-array p1, v9, [Landroid/view/View;

    .line 443
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->brakePiece:Landroid/widget/LinearLayout;

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->hallPiece:Landroid/widget/LinearLayout;

    aput-object v0, p1, v3

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->controllerPiece:Landroid/widget/LinearLayout;

    aput-object v0, p1, v4

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->motorPhasePiece:Landroid/widget/LinearLayout;

    aput-object v0, p1, v5

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->batteryPiece:Landroid/widget/LinearLayout;

    aput-object v0, p1, v6

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->acceleratorPiece:Landroid/widget/LinearLayout;

    aput-object v0, p1, v7

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->communicationPiece:Landroid/widget/LinearLayout;

    aput-object v0, p1, v8

    invoke-direct {p0, v2, p1}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->setViewVisibility(I[Landroid/view/View;)V

    goto :goto_1

    :pswitch_0
    new-array p1, v7, [Landroid/view/View;

    .line 430
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->hallPiece:Landroid/widget/LinearLayout;

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->controllerPiece:Landroid/widget/LinearLayout;

    aput-object v0, p1, v3

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->motorPhasePiece:Landroid/widget/LinearLayout;

    aput-object v0, p1, v4

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->batteryPiece:Landroid/widget/LinearLayout;

    aput-object v0, p1, v5

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->acceleratorPiece:Landroid/widget/LinearLayout;

    aput-object v0, p1, v6

    invoke-direct {p0, v2, p1}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->setViewVisibility(I[Landroid/view/View;)V

    goto :goto_1

    :pswitch_1
    new-array p1, v8, [Landroid/view/View;

    .line 439
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->hallPiece:Landroid/widget/LinearLayout;

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->controllerPiece:Landroid/widget/LinearLayout;

    aput-object v0, p1, v3

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->motorPhasePiece:Landroid/widget/LinearLayout;

    aput-object v0, p1, v4

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->batteryPiece:Landroid/widget/LinearLayout;

    aput-object v0, p1, v5

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->acceleratorPiece:Landroid/widget/LinearLayout;

    aput-object v0, p1, v6

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->communicationPiece:Landroid/widget/LinearLayout;

    aput-object v0, p1, v7

    invoke-direct {p0, v2, p1}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->setViewVisibility(I[Landroid/view/View;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2de8cbae -> :sswitch_7
        -0x2de8cb96 -> :sswitch_6
        -0x2de8cb92 -> :sswitch_5
        -0x2de8cb74 -> :sswitch_4
        -0x2de8cb72 -> :sswitch_3
        -0x2de8cb6e -> :sswitch_2
        0xe1e -> :sswitch_1
        0xe20 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private initViewMap()V
    .locals 3

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    .line 217
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->brakePiece:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->brakeCheckResult:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->powerSensorPiece:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->powerSensorCheckResult:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->communicationPiece:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->comCheckResult:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->comReceivePiece:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->comReceiveCheckResult:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->comSendPiece:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->comSendCheckResult:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->motorPhasePiece:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->motorPhaseCheckResult:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->acceleratorPiece:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->acceleratorCheckResult:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->hallPiece:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->hallCheckResult:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->controllerCommunicationPiece:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->controllerCommunicationCheckResult:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->brakeCrankPiece:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->brakeCrankCheckResult:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->controllerPiece:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->controllerCheckResult:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->currentPiece:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->currentCheckResult:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->batteryPiece:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->batteryCheckResult:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->batteryTempProtectionPiece:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->batteryTempProtectionCheckResult:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->batteryTempAlertPiece:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->batteryTempAlertCheckResult:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->handlePiece:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->handleCheckResult:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->motorTempPiece:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->motorTempCheckResult:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private sendCheckInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1298
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "id"

    .line 1299
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "mac"

    .line 1300
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "area"

    .line 1301
    invoke-virtual {v6, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "device"

    .line 1302
    invoke-virtual {v6, p1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "age"

    .line 1303
    invoke-virtual {v6, p1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "platform"

    const-string p2, "Android"

    .line 1304
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "method"

    const-string p2, "afterSales"

    .line 1305
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "problemType"

    .line 1306
    invoke-virtual {v6, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 1307
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    new-instance p1, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$6;

    const/4 v2, 0x1

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->USER_URL:Ljava/lang/String;

    new-instance v4, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$4;

    invoke-direct {v4, p0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$4;-><init>(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)V

    new-instance v5, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$5;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$5;-><init>(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$6;-><init>(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 1333
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private setAccelView(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 1149
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->acceleratorPiece:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1151
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->acceleratorPiece:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setViewVisibility(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/widget/LinearLayout;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_3

    .line 490
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 491
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 485
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 486
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 480
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    const/4 v0, 0x0

    .line 481
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method private varargs setViewVisibility(I[Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    goto :goto_3

    .line 467
    :cond_0
    array-length p1, p2

    :goto_0
    if-ge v0, p1, :cond_3

    aget-object v2, p2, v0

    .line 468
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
    :cond_1
    array-length p1, p2

    :goto_1
    if-ge v0, p1, :cond_3

    aget-object v2, p2, v0

    .line 463
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 457
    :cond_2
    array-length p1, p2

    move v1, v0

    :goto_2
    if-ge v1, p1, :cond_3

    aget-object v2, p2, v1

    .line 458
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method private showCheckView(I)V
    .locals 4

    const/4 v0, 0x0

    .line 1157
    :goto_0
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->resultList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    if-ne v0, p1, :cond_0

    .line 1159
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->resultList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1201b1

    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1160
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->resultList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v1, p1, 0x1

    .line 1161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->hasErrorNum(Ljava/lang/Integer;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1162
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_1

    .line 1165
    :cond_0
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->resultList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1201ba

    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1166
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->resultList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06020f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1169
    :cond_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->isLogin:Z

    if-eqz p1, :cond_3

    const-string p1, "fasong"

    const-string v0, "fasong1"

    .line 1170
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->uploadProblom()V

    :cond_3
    return-void
.end method

.method private showCheckView5s(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1195
    :goto_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->resultList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    .line 1197
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->resultList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f1201b1

    invoke-virtual {p0, v3}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1198
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->resultList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1

    .line 1203
    :cond_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->resultList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f1201ba

    invoke-virtual {p0, v3}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1204
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->resultList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private showCheckViewForJingHui(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1177
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1178
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-ne v1, v2, :cond_0

    .line 1179
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->resultList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1201b1

    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1180
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->resultList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f06020e

    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 1182
    :cond_0
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->resultList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1201ba

    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1183
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->resultList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f06004a

    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1187
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->isLogin:Z

    if-eqz p1, :cond_2

    const-string p1, "fasong"

    const-string v0, "fasong1"

    .line 1188
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->uploadProblom()V

    :cond_2
    return-void
.end method

.method private showCheckViewLiDian(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1215
    :goto_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->resultList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1216
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    .line 1217
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->resultList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f1201b1

    invoke-virtual {p0, v3}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1218
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->resultList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1

    .line 1220
    :cond_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->resultList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f1201ba

    invoke-virtual {p0, v3}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1221
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->resultList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 206
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method private showMytCheckResult(I)V
    .locals 3

    const/4 v0, 0x0

    .line 512
    :goto_0
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->resultList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-ne p1, v0, :cond_0

    .line 514
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->resultList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1201b1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 516
    :cond_0
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->resultList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1201ba

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startTime()V
    .locals 7

    .line 1254
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->challengeTime:Ljava/util/Timer;

    .line 1255
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$3;

    invoke-direct {v2, p0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$3;-><init>(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)V

    iput-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->challengeTimeTask:Ljava/util/TimerTask;

    .line 1261
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->challengeTime:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x32

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private stopTime()V
    .locals 1

    .line 1265
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->challengeTime:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1266
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1268
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->challengeTimeTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 1269
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_1
    return-void
.end method

.method private uploadProblom()V
    .locals 7

    .line 1229
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_CHECKINFO_TIME:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1230
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1231
    :goto_0
    iget-object v4, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1232
    iget-object v4, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1235
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1237
    iget-object v5, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->oldProStr:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sub-long v0, v3, v0

    const-wide/32 v5, 0xea60

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    .line 1238
    iput-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->oldProStr:Ljava/lang/String;

    .line 1239
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getConnectedAddress()Ljava/lang/String;

    .line 1240
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_BIRTHDAY:Ljava/lang/String;

    const-string v2, "25"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1241
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1242
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_LONGITUDE:Ljava/lang/String;

    const-string v5, "0"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1243
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_LATITUDE:Ljava/lang/String;

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1244
    iget-object v5, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_DEVICE:Ljava/lang/String;

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1245
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v5, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_CHECKINFO_TIME:Ljava/lang/String;

    invoke-interface {v2, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1247
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kugoo/kugookirin/utils/toolUtil;->arrJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f0a05a2,
            0x7f0a00f2
        }
    .end annotation

    .line 543
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a00f2

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a05a2

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->finish()V

    goto :goto_0

    .line 548
    :cond_1
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->isChecking:Z

    const/4 v0, 0x0

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 549
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->isChecking:Z

    .line 550
    sget-object v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    const-string v2, "myt01"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 551
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->mytErrors:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->mytErrors:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->mytErrors:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->mytErrors:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    :cond_2
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->getData1:Z

    .line 558
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->progressRate:Landroid/widget/TextView;

    const v0, 0x7f06020f

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 559
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->selfCheckCircleView:Lcom/kugoo/kugookirin/view/SelfCheckCircleView;

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->setCricleProgressColor(I)V

    .line 560
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->startTime()V

    goto :goto_0

    :cond_3
    const p1, 0x7f12005a

    .line 562
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 190
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0044

    .line 191
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->setContentView(I)V

    .line 192
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/MyApplication;->addActivity(Landroid/app/Activity;)V

    .line 193
    invoke-static {p0}, Lcom/lidroid/xutils/ViewUtils;->inject(Landroid/app/Activity;)V

    const p1, 0x7f0a05a3

    .line 195
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f120224

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->initEvent()V

    .line 198
    sget-object p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->initView(Ljava/lang/String;)V

    .line 199
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->initBroadcast()V

    .line 200
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->initViewMap()V

    .line 201
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->showDefaultUi()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 588
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 589
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 590
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 580
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 581
    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    const-string v1, "voyager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    const-string v1, "AA8F000BBB"

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendHexString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 572
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 573
    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    const-string v1, "voyager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    const-string v1, "AA8F010ABB"

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendHexString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
