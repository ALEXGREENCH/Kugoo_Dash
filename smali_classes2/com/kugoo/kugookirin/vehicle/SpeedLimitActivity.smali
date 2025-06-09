.class public Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SpeedLimitActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field gearFourLimit:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0284
    .end annotation
.end field

.field gearFourLimitUnit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0285
    .end annotation
.end field

.field gearFourLimitValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0286
    .end annotation
.end field

.field gearOneLimit:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0288
    .end annotation
.end field

.field gearOneLimitUnit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0289
    .end annotation
.end field

.field gearOneLimitValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a028a
    .end annotation
.end field

.field gearThreeLimit:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a028d
    .end annotation
.end field

.field gearThreeLimitUnit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a028e
    .end annotation
.end field

.field gearThreeLimitValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a028f
    .end annotation
.end field

.field gearTwoLimit:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0290
    .end annotation
.end field

.field gearTwoLimitUnit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0291
    .end annotation
.end field

.field gearTwoLimitValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0292
    .end annotation
.end field

.field private isClick:Z

.field private isConnect:Z

.field private isKMH:Z

.field private limitValue_1:I

.field private limitValue_2:I

.field private limitValue_3:I

.field private limitValue_4:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimerHandler:Landroid/os/Handler;

.field private preferences:Landroid/content/SharedPreferences;

.field topBackBtn:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05a2
    .end annotation
.end field

.field topBackTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05a3
    .end annotation
.end field

.field private unitRatio:F

.field private unitStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->isClick:Z

    .line 278
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$3;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$3;-><init>(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->unitStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->limitValue_1:I

    return p0
.end method

.method static synthetic access$102(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->limitValue_1:I

    return p1
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->limitValue_2:I

    return p0
.end method

.method static synthetic access$202(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->limitValue_2:I

    return p1
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->limitValue_3:I

    return p0
.end method

.method static synthetic access$302(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->limitValue_3:I

    return p1
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;III)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->getSpeedLimitCom(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    return-object p0
.end method

.method static synthetic access$700(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->isClick:Z

    return p0
.end method

.method static synthetic access$702(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->isClick:Z

    return p1
.end method

.method static synthetic access$800(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->saveSpeedLimitValue(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->showLimitValue()V

    return-void
.end method

.method private getSpeedLimitCom(III)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0xa

    .line 235
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "%02x"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    mul-int/lit8 p2, p2, 0xa

    .line 236
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v2

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    mul-int/lit8 p3, p3, 0xa

    .line 237
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    const-string p3, "%04x"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 238
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "AA0209"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 239
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lcom/kugoo/kugookirin/utils/YiHuoUtil;->xor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "BB"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initBroadcast()V
    .locals 3

    .line 334
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 335
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private initEvent()V
    .locals 4

    .line 105
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    .line 106
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->preferences:Landroid/content/SharedPreferences;

    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->mTimerHandler:Landroid/os/Handler;

    .line 109
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_IS_CONNECT:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->isConnect:Z

    .line 110
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_KMH:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->isKMH:Z

    .line 111
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->GEAR_ONE_LIMIT:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->limitValue_1:I

    .line 112
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->GEAR_TWO_LIMIT:Ljava/lang/String;

    const/16 v3, 0x9

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->limitValue_2:I

    .line 113
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->GEAR_THREE_LIMIT:Ljava/lang/String;

    const/16 v3, 0x11

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->limitValue_3:I

    .line 114
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->GEAR_FOUR_LIMIT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->limitValue_4:I

    return-void
.end method

.method private initUnitView()V
    .locals 2

    .line 124
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->isKMH:Z

    if-eqz v0, :cond_0

    const-string v0, "km/h"

    .line 125
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->unitStr:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 126
    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->unitRatio:F

    .line 127
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearOneLimitUnit:Landroid/widget/TextView;

    const v1, 0x7f1203a6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 128
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearTwoLimitUnit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 129
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearThreeLimitUnit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearFourLimitUnit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const-string v0, "mi/h"

    .line 132
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->unitStr:Ljava/lang/String;

    const v0, 0x3f1eb852    # 0.62f

    .line 133
    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->unitRatio:F

    .line 134
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearOneLimitUnit:Landroid/widget/TextView;

    const v1, 0x7f1203a8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 135
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearTwoLimitUnit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 136
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearThreeLimitUnit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 137
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearFourLimitUnit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method private initView()V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->initUnitView()V

    .line 120
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->showLimitValue()V

    return-void
.end method

.method private saveSpeedLimitValue(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->GEAR_FOUR_LIMIT:Ljava/lang/String;

    iget v1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->limitValue_4:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 258
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->GEAR_THREE_LIMIT:Ljava/lang/String;

    iget v1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->limitValue_3:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 255
    :cond_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->GEAR_TWO_LIMIT:Ljava/lang/String;

    iget v1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->limitValue_2:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 252
    :cond_3
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->GEAR_ONE_LIMIT:Ljava/lang/String;

    iget v1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->limitValue_1:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method private setDialogParams(Landroid/app/Dialog;)V
    .locals 2

    .line 267
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 270
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    .line 271
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 272
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x51

    .line 273
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 274
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 98
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method private showLimitValue()V
    .locals 7

    .line 244
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearOneLimitValue:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->limitValue_1:I

    int-to-float v3, v3

    iget v4, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->unitRatio:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%.0f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearTwoLimitValue:Landroid/widget/TextView;

    new-array v2, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->limitValue_2:I

    int-to-float v5, v5

    iget v6, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->unitRatio:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearThreeLimitValue:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->limitValue_3:I

    int-to-float v2, v2

    iget v5, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->unitRatio:F

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showSpeedPicker(I)V
    .locals 10

    .line 166
    new-instance v6, Landroid/app/Dialog;

    const v0, 0x7f13046d

    invoke-direct {v6, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 167
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0087

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 168
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 169
    invoke-direct {p0, v6}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->setDialogParams(Landroid/app/Dialog;)V

    .line 170
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "%.0f"

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    const/high16 v4, 0x41880000    # 17.0f

    :goto_0
    const/high16 v5, 0x41c00000    # 24.0f

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_3

    .line 188
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-array v8, v3, [Ljava/lang/Object;

    iget v9, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->unitRatio:F

    mul-float/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->unitStr:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-float/2addr v4, v1

    goto :goto_0

    :cond_1
    const/high16 v4, 0x41100000    # 9.0f

    :goto_1
    const/high16 v5, 0x41800000    # 16.0f

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_3

    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-array v8, v3, [Ljava/lang/Object;

    iget v9, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->unitRatio:F

    mul-float/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->unitStr:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-float/2addr v4, v1

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_2
    const/high16 v5, 0x41000000    # 8.0f

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_3

    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-array v8, v3, [Ljava/lang/Object;

    iget v9, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->unitRatio:F

    mul-float/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->unitStr:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-float/2addr v4, v1

    goto :goto_2

    :cond_3
    :goto_3
    const v0, 0x7f0a052c

    .line 192
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/kugoo/kugookirin/view/PickerView;

    .line 193
    invoke-virtual {v3, v2}, Lcom/kugoo/kugookirin/view/PickerView;->setData(Ljava/util/List;)V

    const v0, 0x7f0a052e

    .line 195
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;

    move-object v0, v9

    move-object v1, p0

    move v4, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$1;-><init>(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;Ljava/util/List;Lcom/kugoo/kugookirin/view/PickerView;ILandroid/app/Dialog;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a052d

    .line 220
    invoke-virtual {v6, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$2;

    invoke-direct {v0, p0, v6}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$2;-><init>(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;Landroid/app/Dialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 229
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a05a2,
            0x7f0a0288,
            0x7f0a0290,
            0x7f0a028d,
            0x7f0a0284
        }
    .end annotation

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->isClick:Z

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 159
    :sswitch_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->finish()V

    goto :goto_0

    :sswitch_1
    const/4 p1, 0x2

    .line 150
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->showSpeedPicker(I)V

    goto :goto_0

    :sswitch_2
    const/4 p1, 0x3

    .line 153
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->showSpeedPicker(I)V

    goto :goto_0

    .line 147
    :sswitch_3
    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->showSpeedPicker(I)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0288 -> :sswitch_3
        0x7f0a028d -> :sswitch_2
        0x7f0a0290 -> :sswitch_1
        0x7f0a05a2 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d004a

    .line 86
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->setContentView(I)V

    .line 87
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 89
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->topBackTitle:Landroid/widget/TextView;

    const v0, 0x7f120354

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->initBroadcast()V

    .line 91
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->initEvent()V

    .line 92
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->initView()V

    .line 93
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->showDefaultUi()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 345
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 346
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
