.class public Lcom/kugoo/kugookirin/vehicle/SettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field autoShutDown:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a007b
    .end annotation
.end field

.field beamLights:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0091
    .end annotation
.end field

.field private bleOldPwd:Ljava/lang/String;

.field private bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

.field brake_force_ll:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a00ae
    .end annotation
.end field

.field cyclingInfo:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0169
    .end annotation
.end field

.field ecoModeCb:Landroid/widget/CheckBox;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a01f6
    .end annotation
.end field

.field private editor:Landroid/content/SharedPreferences$Editor;

.field gearSetting:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a028c
    .end annotation
.end field

.field private isClick:Z

.field private isConnect:Z

.field private isCruise:Z

.field private isKMH:Z

.field private isZeroStart:Z

.field linearTempUnit:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a032f
    .end annotation
.end field

.field linearUnit:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0331
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimerHandler:Landroid/os/Handler;

.field maxSpeed10:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a038a
    .end annotation
.end field

.field maxSpeed20:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a038b
    .end annotation
.end field

.field maxSpeed30:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a038c
    .end annotation
.end field

.field maxSpeed41:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a038d
    .end annotation
.end field

.field maximumSpeed:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a038f
    .end annotation
.end field

.field maximumSpeedTitle:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0390
    .end annotation
.end field

.field nfcUnlockLinear:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a03f9
    .end annotation
.end field

.field private preferences:Landroid/content/SharedPreferences;

.field pushStartCb:Landroid/widget/CheckBox;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0467
    .end annotation
.end field

.field private ratioNum:D

.field ridingMode:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a04a0
    .end annotation
.end field

.field seekbarMaxSpeed:Landroid/widget/SeekBar;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a04da
    .end annotation
.end field

.field seekbarShutDownTime:Landroid/widget/SeekBar;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a04db
    .end annotation
.end field

.field settingBleName:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a04e5
    .end annotation
.end field

.field settingBlePwd:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a04e6
    .end annotation
.end field

.field settingCruise:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a04e9
    .end annotation
.end field

.field settingInstrumentBright:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a04ea
    .end annotation
.end field

.field settingLockPwd:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a04eb
    .end annotation
.end field

.field settingSelfCheck:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a04ef
    .end annotation
.end field

.field settingStartup:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a04f0
    .end annotation
.end field

.field settingSysInfo:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a04f1
    .end annotation
.end field

.field settingSystemReset:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a04f2
    .end annotation
.end field

.field settingSystemVersion:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a04f3
    .end annotation
.end field

.field private speedLimitOn:Z

.field speedLimitSwitch:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a052a
    .end annotation
.end field

.field speedLimitSwitchBtn:Landroid/widget/Switch;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a052b
    .end annotation
.end field

.field sportModeCb:Landroid/widget/CheckBox;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0532
    .end annotation
.end field

.field throttleStartingForce:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a058e
    .end annotation
.end field

.field vehicleInfo:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a05f6
    .end annotation
.end field

.field walkModeBtn:Landroid/widget/ImageView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a04f4
    .end annotation
.end field

.field zeroStartCb:Landroid/widget/CheckBox;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a062c
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 861
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$20;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$20;-><init>(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isClick:Z

    return p1
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->bleOldPwd:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isConnect:Z

    return p0
.end method

.method static synthetic access$402(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isConnect:Z

    return p1
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->parseStrData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isCruise:Z

    return p0
.end method

.method static synthetic access$602(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isCruise:Z

    return p1
.end method

.method static synthetic access$700(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isZeroStart:Z

    return p0
.end method

.method static synthetic access$702(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isZeroStart:Z

    return p1
.end method

.method static synthetic access$800(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->changeStartUpView(Z)V

    return-void
.end method

.method private askVehicle()V
    .locals 4

    .line 297
    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    const-string v1, "b2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    const-string v1, "b1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    const-string v1, "b205"

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    const-string v1, "kug11"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    const-string v1, "kug19"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    const-string v1, "kug20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    const-string v1, "b11"

    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    const-string v1, "b17"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    const-string v1, "kgkrn02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    const-string v1, "kgkrn04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "kug03"

    sget-object v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    const-string v1, "+ZSST=?"

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->mTimerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$1;-><init>(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private changeStartUpView(Z)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 725
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->zeroStartCb:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setSelected(Z)V

    .line 726
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->pushStartCb:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setSelected(Z)V

    goto :goto_0

    .line 728
    :cond_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->zeroStartCb:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setSelected(Z)V

    .line 729
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->pushStartCb:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setSelected(Z)V

    .line 731
    :goto_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_ZERO_START:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private initBroadcast()V
    .locals 3

    .line 266
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 267
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private initEvent()V
    .locals 3

    .line 276
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    .line 277
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->mTimerHandler:Landroid/os/Handler;

    .line 278
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->preferences:Landroid/content/SharedPreferences;

    .line 279
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 280
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_IS_CONNECT:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isConnect:Z

    return-void
.end method

.method private initUi()V
    .locals 7

    .line 157
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->setDefaultUi()V

    .line 158
    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "kug20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "kug19"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "kug11"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "kug03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "fmi02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "fmi01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "b205"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "b17"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "b11"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "h6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "c2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "b2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "b1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "kgkrn29"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "kgkrn25"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_f
    const-string v1, "kgkrn16"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_1

    :sswitch_10
    const-string v1, "kgkrn15"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_1

    :sswitch_11
    const-string v1, "kgkrn14"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_12
    const-string v1, "kgkrn10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_13
    const-string v1, "kgkrn07"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_14
    const-string v1, "kgkrn05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto :goto_1

    :sswitch_15
    const-string v1, "kgkrn04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_16
    const-string v1, "kgkrn02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    new-array v0, v2, [Landroid/view/View;

    .line 206
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->throttleStartingForce:Landroid/widget/LinearLayout;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->brake_force_ll:Landroid/widget/LinearLayout;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->nfcUnlockLinear:Landroid/widget/LinearLayout;

    aput-object v1, v0, v4

    invoke-direct {p0, v6, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->setViewVisibility(I[Landroid/view/View;)V

    goto/16 :goto_2

    :pswitch_1
    new-array v0, v4, [Landroid/view/View;

    .line 203
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->throttleStartingForce:Landroid/widget/LinearLayout;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->brake_force_ll:Landroid/widget/LinearLayout;

    aput-object v1, v0, v5

    invoke-direct {p0, v6, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->setViewVisibility(I[Landroid/view/View;)V

    goto :goto_2

    :pswitch_2
    new-array v0, v5, [Landroid/view/View;

    .line 198
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->settingCruise:Landroid/widget/LinearLayout;

    aput-object v1, v0, v6

    invoke-direct {p0, v6, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->setViewVisibility(I[Landroid/view/View;)V

    goto :goto_2

    :pswitch_3
    new-array v0, v4, [Landroid/view/View;

    .line 190
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->linearUnit:Landroid/widget/LinearLayout;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->settingCruise:Landroid/widget/LinearLayout;

    aput-object v1, v0, v5

    invoke-direct {p0, v3, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->setViewVisibility(I[Landroid/view/View;)V

    goto :goto_2

    :pswitch_4
    new-array v0, v4, [Landroid/view/View;

    .line 187
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->settingCruise:Landroid/widget/LinearLayout;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->settingStartup:Landroid/widget/LinearLayout;

    aput-object v1, v0, v5

    invoke-direct {p0, v6, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->setViewVisibility(I[Landroid/view/View;)V

    goto :goto_2

    :pswitch_5
    new-array v0, v4, [Landroid/view/View;

    .line 183
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->ridingMode:Landroid/widget/LinearLayout;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->settingLockPwd:Landroid/widget/LinearLayout;

    aput-object v1, v0, v5

    invoke-direct {p0, v6, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->setViewVisibility(I[Landroid/view/View;)V

    goto :goto_2

    :pswitch_6
    new-array v0, v2, [Landroid/view/View;

    .line 177
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->settingCruise:Landroid/widget/LinearLayout;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->settingStartup:Landroid/widget/LinearLayout;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->settingLockPwd:Landroid/widget/LinearLayout;

    aput-object v1, v0, v4

    invoke-direct {p0, v6, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->setViewVisibility(I[Landroid/view/View;)V

    goto :goto_2

    :pswitch_7
    new-array v0, v5, [Landroid/view/View;

    .line 173
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->nfcUnlockLinear:Landroid/widget/LinearLayout;

    aput-object v1, v0, v6

    invoke-direct {p0, v6, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->setViewVisibility(I[Landroid/view/View;)V

    goto :goto_2

    :cond_1
    new-array v0, v4, [Landroid/view/View;

    .line 162
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->settingStartup:Landroid/widget/LinearLayout;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->settingLockPwd:Landroid/widget/LinearLayout;

    aput-object v1, v0, v5

    invoke-direct {p0, v6, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->setViewVisibility(I[Landroid/view/View;)V

    new-array v0, v5, [Landroid/view/View;

    .line 163
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->settingSysInfo:Landroid/widget/LinearLayout;

    aput-object v1, v0, v6

    invoke-direct {p0, v3, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->setViewVisibility(I[Landroid/view/View;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x2de8cbb3 -> :sswitch_16
        -0x2de8cbb1 -> :sswitch_15
        -0x2de8cbb0 -> :sswitch_14
        -0x2de8cbae -> :sswitch_13
        -0x2de8cb96 -> :sswitch_12
        -0x2de8cb92 -> :sswitch_11
        -0x2de8cb91 -> :sswitch_10
        -0x2de8cb90 -> :sswitch_f
        -0x2de8cb72 -> :sswitch_e
        -0x2de8cb6e -> :sswitch_d
        0xc0f -> :sswitch_c
        0xc10 -> :sswitch_b
        0xc2f -> :sswitch_a
        0xcce -> :sswitch_9
        0x17602 -> :sswitch_8
        0x17608 -> :sswitch_7
        0x2d4e15 -> :sswitch_6
        0x5d07a03 -> :sswitch_5
        0x5d07a04 -> :sswitch_4
        0x61a8b00 -> :sswitch_3
        0x61a8b1d -> :sswitch_2
        0x61a8b25 -> :sswitch_1
        0x61a8b3b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseStrData(Ljava/lang/String;)V
    .locals 4

    const-string v0, "parseStrData: "

    .line 1094
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const-string v2, "gbk"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string p1, "UNIT"

    .line 1095
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    const-string p1, "+UNIT=1"

    .line 1096
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1097
    iput-boolean v3, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isKMH:Z

    goto :goto_0

    :cond_0
    const-string p1, "+UNIT=0"

    .line 1098
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1099
    iput-boolean v2, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isKMH:Z

    .line 1101
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isKMH:Z

    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->showUnitView(Z)V

    goto/16 :goto_3

    :cond_2
    const-string p1, "CRZE"

    .line 1102
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "+CRZE=0"

    .line 1103
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1104
    iput-boolean v3, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isCruise:Z

    goto :goto_1

    :cond_3
    const-string p1, "+CRZE=1"

    .line 1105
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1106
    iput-boolean v2, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isCruise:Z

    :cond_4
    :goto_1
    const-string p1, "isCruise"

    .line 1108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isCruise:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->walkModeBtn:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isCruise:Z

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto/16 :goto_3

    :cond_5
    const-string p1, "+SPDLT="

    .line 1110
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1111
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x9

    if-lt p1, v0, :cond_b

    .line 1112
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->seekbarMaxSpeed:Landroid/widget/SeekBar;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_3

    :cond_6
    const-string p1, "SPDLMT"

    .line 1114
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "+SPDLMT=1"

    .line 1115
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->speedLimitOn:Z

    .line 1116
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->speedLimitSwitchBtn:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setSelected(Z)V

    goto :goto_3

    :cond_7
    const-string p1, "SPLT"

    .line 1117
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "+SPLT=1"

    .line 1118
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->speedLimitOn:Z

    .line 1119
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->speedLimitSwitchBtn:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setSelected(Z)V

    goto :goto_3

    :cond_8
    const-string p1, "ZSST"

    .line 1120
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "+ZSST=0"

    .line 1121
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1123
    iput-boolean v2, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isZeroStart:Z

    goto :goto_2

    :cond_9
    const-string p1, "+ZSST=1"

    .line 1124
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1126
    iput-boolean v3, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isZeroStart:Z

    .line 1128
    :cond_a
    :goto_2
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isZeroStart:Z

    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->changeStartUpView(Z)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1131
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_b
    :goto_3
    return-void
.end method

.method private setDefaultUi()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->settingBleName:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->settingBlePwd:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->linearUnit:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->settingSelfCheck:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->settingSysInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->settingLockPwd:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->throttleStartingForce:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->brake_force_ll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->linearTempUnit:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->nfcUnlockLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->cyclingInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->vehicleInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->maximumSpeed:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->ridingMode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->autoShutDown:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->settingCruise:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->beamLights:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->speedLimitSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->settingStartup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->gearSetting:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->settingInstrumentBright:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->settingSystemReset:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->settingSystemVersion:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

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

    .line 232
    :cond_0
    array-length p1, p2

    :goto_0
    if-ge v0, p1, :cond_3

    aget-object v2, p2, v0

    .line 233
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_1
    array-length p1, p2

    :goto_1
    if-ge v0, p1, :cond_3

    aget-object v2, p2, v0

    .line 228
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 222
    :cond_2
    array-length p1, p2

    move v1, v0

    :goto_2
    if-ge v1, p1, :cond_3

    aget-object v2, p2, v1

    .line 223
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 150
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method private showReName()V
    .locals 4

    .line 781
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f13046d

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 782
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0084

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 783
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 785
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_BLUETOOTH_NAME:Ljava/lang/String;

    const-string v3, "name"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a00eb

    .line 786
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$16;

    invoke-direct {v3, p0, v0, v1}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$16;-><init>(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;Landroid/app/Dialog;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a00ea

    .line 804
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$17;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$17;-><init>(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 811
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 812
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showRePwd()V
    .locals 4

    .line 816
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_BLUETOOTH_PASSWORD:Ljava/lang/String;

    const-string v2, "000000"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->bleOldPwd:Ljava/lang/String;

    .line 817
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f13046d

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 818
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0075

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 819
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v1, 0x7f0a00ef

    .line 821
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$18;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$18;-><init>(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a00ed

    .line 850
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$19;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$19;-><init>(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 856
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 857
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showResetDialog()V
    .locals 4

    .line 735
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f13046d

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 736
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0085

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 738
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v1, 0x7f0a0496

    .line 739
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$13;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$13;-><init>(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0497

    .line 746
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$14;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$14;-><init>(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    .line 753
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 754
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showStartUpTips()V
    .locals 3

    .line 707
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f13046d

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d0089

    .line 708
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f0a0592

    .line 710
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f120336

    .line 711
    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a01ce

    .line 713
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$12;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$12;-><init>(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 719
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 720
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showUnitView(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 1075
    iput-wide v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->ratioNum:D

    .line 1076
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->maximumSpeedTitle:Landroid/widget/TextView;

    const v1, 0x7f12021a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1077
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->maxSpeed10:Landroid/widget/TextView;

    const-string v1, "10"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1078
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->maxSpeed20:Landroid/widget/TextView;

    const-string v1, "20"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->maxSpeed30:Landroid/widget/TextView;

    const-string v1, "30"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1080
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->maxSpeed41:Landroid/widget/TextView;

    const-string v1, "41"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-wide v0, 0x3fe3e2435696e58aL    # 0.62137

    .line 1082
    iput-wide v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->ratioNum:D

    .line 1083
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->maximumSpeedTitle:Landroid/widget/TextView;

    const v1, 0x7f12021b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1084
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->maxSpeed10:Landroid/widget/TextView;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->maxSpeed20:Landroid/widget/TextView;

    const-string v1, "12"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1086
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->maxSpeed30:Landroid/widget/TextView;

    const-string v1, "18"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->maxSpeed41:Landroid/widget/TextView;

    const-string v1, "25"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1089
    :goto_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_KMH:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private startupTips()V
    .locals 5

    .line 758
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f13046d

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 759
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0088

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 760
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 763
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const/4 v4, -0x1

    .line 764
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v4, -0x2

    .line 765
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v4, 0x11

    .line 766
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 767
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 769
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v1, 0x7f0a01ce

    .line 770
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$15;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$15;-><init>(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    .line 776
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 777
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 18
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f0a05a2,
            0x7f0a04e5,
            0x7f0a04e6,
            0x7f0a04eb,
            0x7f0a04ea,
            0x7f0a03f9,
            0x7f0a04a1,
            0x7f0a049f,
            0x7f0a0532,
            0x7f0a01f6,
            0x7f0a052b,
            0x7f0a0091,
            0x7f0a04f2,
            0x7f0a04ef,
            0x7f0a04f1,
            0x7f0a04f4,
            0x7f0a0331,
            0x7f0a0169,
            0x7f0a05f6,
            0x7f0a04f0,
            0x7f0a028c,
            0x7f0a032f,
            0x7f0a04f3,
            0x7f0a058e,
            0x7f0a00ae,
            0x7f0a0468,
            0x7f0a062d,
            0x7f0a0467,
            0x7f0a062c,
            0x7f0a0548
        }
    .end annotation

    move-object/from16 v0, p0

    .line 346
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "kug19"

    const-string v4, "kug11"

    const-string v6, "kug03"

    const-string v8, "b205"

    const-string v10, "b17"

    const-string v12, "b11"

    const-string v14, "b2"

    const-string v3, "b1"

    const-string v5, "kgkrn04"

    const-string v7, "kgkrn02"

    const/16 v16, -0x1

    const-string v9, "edit_type"

    move-object/from16 v17, v14

    const-wide/16 v13, 0x96

    const/4 v11, 0x0

    const/4 v15, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_d

    :sswitch_0
    move-object/from16 v9, v17

    goto/16 :goto_9

    .line 678
    :sswitch_1
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isConnect:Z

    if-eqz v1, :cond_0

    .line 679
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_d

    .line 681
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/kugoo/kugookirin/utils/DensityUtils;->disconnectDialog(Landroid/app/Activity;)V

    goto/16 :goto_d

    .line 699
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->finish()V

    goto/16 :goto_d

    .line 619
    :sswitch_3
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isConnect:Z

    if-eqz v1, :cond_1

    .line 620
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_d

    .line 622
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/kugoo/kugookirin/utils/DensityUtils;->disconnectDialog(Landroid/app/Activity;)V

    goto/16 :goto_d

    .line 348
    :sswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->showStartUpTips()V

    goto/16 :goto_d

    .line 443
    :sswitch_5
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isConnect:Z

    if-eqz v1, :cond_3

    .line 444
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isClick:Z

    if-nez v1, :cond_3b

    .line 445
    iput-boolean v15, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isClick:Z

    .line 446
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->speedLimitOn:Z

    if-eqz v1, :cond_2

    .line 447
    iput-boolean v11, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->speedLimitOn:Z

    .line 448
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    const-string v2, "+SPLT=0"

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_2
    iput-boolean v15, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->speedLimitOn:Z

    .line 451
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    const-string v2, "+SPLT=1"

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    .line 453
    :goto_0
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->speedLimitSwitchBtn:Landroid/widget/Switch;

    iget-boolean v2, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->speedLimitOn:Z

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setSelected(Z)V

    .line 454
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->mTimerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$6;

    invoke-direct {v2, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$6;-><init>(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_d

    .line 464
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/kugoo/kugookirin/utils/DensityUtils;->disconnectDialog(Landroid/app/Activity;)V

    goto/16 :goto_d

    .line 508
    :sswitch_6
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isConnect:Z

    if-eqz v1, :cond_12

    .line 509
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isClick:Z

    if-nez v1, :cond_3b

    .line 510
    iput-boolean v15, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isClick:Z

    .line 511
    sget-object v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_1

    :goto_1
    move/from16 v3, v16

    goto/16 :goto_2

    :sswitch_7
    const-string v2, "kug20"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/16 v3, 0xa

    goto/16 :goto_2

    :sswitch_8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/16 v3, 0x9

    goto/16 :goto_2

    :sswitch_9
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    const/16 v3, 0x8

    goto :goto_2

    :sswitch_a
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, 0x7

    goto :goto_2

    :sswitch_b
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    const/4 v3, 0x6

    goto :goto_2

    :sswitch_c
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_1

    :cond_9
    const/4 v3, 0x5

    goto :goto_2

    :sswitch_d
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1

    :cond_a
    const/4 v3, 0x4

    goto :goto_2

    :sswitch_e
    move-object/from16 v9, v17

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_1

    :cond_b
    const/4 v3, 0x3

    goto :goto_2

    :sswitch_f
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_1

    :cond_c
    const/4 v3, 0x2

    goto :goto_2

    :sswitch_10
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_1

    :cond_d
    move v3, v15

    goto :goto_2

    :sswitch_11
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_1

    :cond_e
    move v3, v11

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 556
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isCruise:Z

    if-eqz v1, :cond_f

    .line 557
    iput-boolean v11, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isCruise:Z

    .line 558
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    const-string v2, "+CRZE=0"

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    goto :goto_3

    .line 560
    :cond_f
    iput-boolean v15, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isCruise:Z

    .line 561
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    const-string v2, "+CRZE=1"

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    .line 563
    :goto_3
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->walkModeBtn:Landroid/widget/ImageView;

    iget-boolean v2, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isCruise:Z

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 564
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->mTimerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$11;

    invoke-direct {v2, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$11;-><init>(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)V

    invoke-virtual {v1, v2, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_d

    .line 521
    :pswitch_0
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isCruise:Z

    if-eqz v1, :cond_10

    .line 522
    iput-boolean v11, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isCruise:Z

    .line 523
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    const-string v2, "AA050600A9BB"

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendHexString(Ljava/lang/String;)V

    goto :goto_4

    .line 525
    :cond_10
    iput-boolean v15, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isCruise:Z

    .line 526
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    const-string v2, "AA050601A8BB"

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendHexString(Ljava/lang/String;)V

    .line 529
    :goto_4
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->walkModeBtn:Landroid/widget/ImageView;

    iget-boolean v2, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isCruise:Z

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 530
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->mTimerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$9;

    invoke-direct {v2, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$9;-><init>(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)V

    invoke-virtual {v1, v2, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_d

    .line 539
    :pswitch_1
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isCruise:Z

    if-eqz v1, :cond_11

    .line 540
    iput-boolean v11, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isCruise:Z

    .line 541
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    const-string v2, "AA03040588000020BB"

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendHexString(Ljava/lang/String;)V

    goto :goto_5

    .line 543
    :cond_11
    iput-boolean v15, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isCruise:Z

    .line 544
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    const-string v2, "AA03040588010021BB"

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendHexString(Ljava/lang/String;)V

    .line 547
    :goto_5
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->walkModeBtn:Landroid/widget/ImageView;

    iget-boolean v2, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isCruise:Z

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 548
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->mTimerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$10;

    invoke-direct {v2, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$10;-><init>(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)V

    invoke-virtual {v1, v2, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_d

    .line 575
    :cond_12
    invoke-static/range {p0 .. p0}, Lcom/kugoo/kugookirin/utils/DensityUtils;->disconnectDialog(Landroid/app/Activity;)V

    goto/16 :goto_d

    .line 692
    :sswitch_12
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isConnect:Z

    if-eqz v1, :cond_13

    .line 693
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kugoo/kugookirin/more/VersionActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_d

    .line 695
    :cond_13
    invoke-static/range {p0 .. p0}, Lcom/kugoo/kugookirin/utils/DensityUtils;->disconnectDialog(Landroid/app/Activity;)V

    goto/16 :goto_d

    .line 608
    :sswitch_13
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isConnect:Z

    if-eqz v1, :cond_14

    .line 609
    invoke-direct/range {p0 .. p0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->showResetDialog()V

    goto/16 :goto_d

    .line 611
    :cond_14
    invoke-static/range {p0 .. p0}, Lcom/kugoo/kugookirin/utils/DensityUtils;->disconnectDialog(Landroid/app/Activity;)V

    goto/16 :goto_d

    .line 643
    :sswitch_14
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isConnect:Z

    if-eqz v1, :cond_15

    .line 644
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_d

    .line 646
    :cond_15
    invoke-static/range {p0 .. p0}, Lcom/kugoo/kugookirin/utils/DensityUtils;->disconnectDialog(Landroid/app/Activity;)V

    goto/16 :goto_d

    .line 636
    :sswitch_15
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isConnect:Z

    if-eqz v1, :cond_16

    .line 637
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_d

    .line 639
    :cond_16
    invoke-static/range {p0 .. p0}, Lcom/kugoo/kugookirin/utils/DensityUtils;->disconnectDialog(Landroid/app/Activity;)V

    goto/16 :goto_d

    .line 599
    :sswitch_16
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isConnect:Z

    if-eqz v1, :cond_17

    .line 600
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "lock_pwd"

    .line 601
    invoke-virtual {v1, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_d

    .line 604
    :cond_17
    invoke-static/range {p0 .. p0}, Lcom/kugoo/kugookirin/utils/DensityUtils;->disconnectDialog(Landroid/app/Activity;)V

    goto/16 :goto_d

    .line 650
    :sswitch_17
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isConnect:Z

    if-eqz v1, :cond_18

    .line 651
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_d

    .line 653
    :cond_18
    invoke-static/range {p0 .. p0}, Lcom/kugoo/kugookirin/utils/DensityUtils;->disconnectDialog(Landroid/app/Activity;)V

    goto/16 :goto_d

    .line 589
    :sswitch_18
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isConnect:Z

    if-eqz v1, :cond_19

    .line 591
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "pwd"

    .line 592
    invoke-virtual {v1, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_d

    .line 595
    :cond_19
    invoke-static/range {p0 .. p0}, Lcom/kugoo/kugookirin/utils/DensityUtils;->disconnectDialog(Landroid/app/Activity;)V

    goto/16 :goto_d

    .line 579
    :sswitch_19
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isConnect:Z

    if-eqz v1, :cond_1a

    .line 581
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "name"

    .line 582
    invoke-virtual {v1, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_d

    .line 585
    :cond_1a
    invoke-static/range {p0 .. p0}, Lcom/kugoo/kugookirin/utils/DensityUtils;->disconnectDialog(Landroid/app/Activity;)V

    goto/16 :goto_d

    .line 469
    :sswitch_1a
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isConnect:Z

    if-eqz v1, :cond_1b

    .line 470
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isClick:Z

    if-nez v1, :cond_3b

    .line 471
    iput-boolean v15, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isClick:Z

    .line 472
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    const-string v2, "+MPMD=1"

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    .line 473
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->sportModeCb:Landroid/widget/CheckBox;

    invoke-virtual {v1, v15}, Landroid/widget/CheckBox;->setSelected(Z)V

    .line 474
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->ecoModeCb:Landroid/widget/CheckBox;

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setSelected(Z)V

    .line 475
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->mTimerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$7;

    invoke-direct {v2, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$7;-><init>(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_d

    .line 484
    :cond_1b
    invoke-static/range {p0 .. p0}, Lcom/kugoo/kugookirin/utils/DensityUtils;->disconnectDialog(Landroid/app/Activity;)V

    goto/16 :goto_d

    :sswitch_1b
    move-object/from16 v9, v17

    .line 352
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isConnect:Z

    if-eqz v1, :cond_27

    .line 353
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isClick:Z

    if-nez v1, :cond_28

    .line 354
    iput-boolean v15, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isClick:Z

    .line 355
    sget-object v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_2

    :goto_6
    move/from16 v1, v16

    goto/16 :goto_7

    :sswitch_1c
    const-string v15, "kug20"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_6

    :cond_1c
    const/16 v1, 0xa

    goto/16 :goto_7

    :sswitch_1d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_6

    :cond_1d
    const/16 v1, 0x9

    goto/16 :goto_7

    :sswitch_1e
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_6

    :cond_1e
    const/16 v1, 0x8

    goto :goto_7

    :sswitch_1f
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_6

    :cond_1f
    const/4 v1, 0x7

    goto :goto_7

    :sswitch_20
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_6

    :cond_20
    const/4 v1, 0x6

    goto :goto_7

    :sswitch_21
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_6

    :cond_21
    const/4 v1, 0x5

    goto :goto_7

    :sswitch_22
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_6

    :cond_22
    const/4 v1, 0x4

    goto :goto_7

    :sswitch_23
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_6

    :cond_23
    const/4 v1, 0x3

    goto :goto_7

    :sswitch_24
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto :goto_6

    :cond_24
    const/4 v1, 0x2

    goto :goto_7

    :sswitch_25
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_6

    :cond_25
    const/4 v1, 0x1

    goto :goto_7

    :sswitch_26
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_6

    :cond_26
    move v1, v11

    :goto_7
    packed-switch v1, :pswitch_data_1

    .line 376
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    const-string v15, "+ZSST=1"

    invoke-virtual {v1, v15}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    .line 377
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v15, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$3;

    invoke-direct {v15, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$3;-><init>(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)V

    invoke-virtual {v1, v15, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8

    .line 367
    :pswitch_2
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    const-string v15, "AA120601BFBB"

    invoke-virtual {v1, v15}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendHexString(Ljava/lang/String;)V

    .line 368
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v15, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$2;

    invoke-direct {v15, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$2;-><init>(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)V

    invoke-virtual {v1, v15, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 386
    :goto_8
    iput-boolean v11, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isZeroStart:Z

    .line 387
    invoke-direct {v0, v11}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->changeStartUpView(Z)V

    goto :goto_9

    .line 390
    :cond_27
    invoke-static/range {p0 .. p0}, Lcom/kugoo/kugookirin/utils/DensityUtils;->disconnectDialog(Landroid/app/Activity;)V

    .line 394
    :cond_28
    :goto_9
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isConnect:Z

    if-eqz v1, :cond_34

    .line 395
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isClick:Z

    if-nez v1, :cond_3b

    const/4 v1, 0x1

    .line 396
    iput-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isClick:Z

    .line 397
    sget-object v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_3

    :goto_a
    move/from16 v3, v16

    goto/16 :goto_b

    :sswitch_27
    const-string v2, "kug20"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    goto :goto_a

    :cond_29
    const/16 v3, 0xa

    goto/16 :goto_b

    :sswitch_28
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    goto :goto_a

    :cond_2a
    const/16 v3, 0x9

    goto/16 :goto_b

    :sswitch_29
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_a

    :cond_2b
    const/16 v3, 0x8

    goto :goto_b

    :sswitch_2a
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    goto :goto_a

    :cond_2c
    const/4 v3, 0x7

    goto :goto_b

    :sswitch_2b
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_a

    :cond_2d
    const/4 v3, 0x6

    goto :goto_b

    :sswitch_2c
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    goto :goto_a

    :cond_2e
    const/4 v3, 0x5

    goto :goto_b

    :sswitch_2d
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    goto :goto_a

    :cond_2f
    const/4 v3, 0x4

    goto :goto_b

    :sswitch_2e
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    goto :goto_a

    :cond_30
    const/4 v3, 0x3

    goto :goto_b

    :sswitch_2f
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    goto :goto_a

    :cond_31
    const/4 v3, 0x2

    goto :goto_b

    :sswitch_30
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    goto :goto_a

    :cond_32
    const/4 v3, 0x1

    goto :goto_b

    :sswitch_31
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    goto :goto_a

    :cond_33
    move v3, v11

    :goto_b
    packed-switch v3, :pswitch_data_2

    .line 418
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    const-string v2, "+ZSST=0"

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    .line 419
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$5;

    invoke-direct {v2, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$5;-><init>(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)V

    invoke-virtual {v1, v2, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c

    .line 409
    :pswitch_3
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    const-string v2, "AA120600BEBB"

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendHexString(Ljava/lang/String;)V

    .line 410
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$4;

    invoke-direct {v2, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$4;-><init>(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)V

    invoke-virtual {v1, v2, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_c
    const/4 v1, 0x1

    .line 428
    iput-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isZeroStart:Z

    .line 429
    invoke-direct {v0, v1}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->changeStartUpView(Z)V

    goto/16 :goto_d

    .line 432
    :cond_34
    invoke-static/range {p0 .. p0}, Lcom/kugoo/kugookirin/utils/DensityUtils;->disconnectDialog(Landroid/app/Activity;)V

    goto/16 :goto_d

    .line 685
    :sswitch_32
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isConnect:Z

    if-eqz v1, :cond_35

    .line 686
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_d

    .line 688
    :cond_35
    invoke-static/range {p0 .. p0}, Lcom/kugoo/kugookirin/utils/DensityUtils;->disconnectDialog(Landroid/app/Activity;)V

    goto/16 :goto_d

    .line 616
    :sswitch_33
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_d

    .line 633
    :sswitch_34
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_d

    .line 664
    :sswitch_35
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isConnect:Z

    if-eqz v1, :cond_36

    .line 665
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_d

    .line 667
    :cond_36
    invoke-static/range {p0 .. p0}, Lcom/kugoo/kugookirin/utils/DensityUtils;->disconnectDialog(Landroid/app/Activity;)V

    goto :goto_d

    .line 489
    :sswitch_36
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isConnect:Z

    if-eqz v1, :cond_37

    .line 490
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isClick:Z

    if-nez v1, :cond_3b

    const/4 v1, 0x1

    .line 491
    iput-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isClick:Z

    .line 492
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    const-string v3, "+MPMD=0"

    invoke-virtual {v2, v3}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    .line 493
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->sportModeCb:Landroid/widget/CheckBox;

    invoke-virtual {v2, v11}, Landroid/widget/CheckBox;->setSelected(Z)V

    .line 494
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->ecoModeCb:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setSelected(Z)V

    .line 495
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->mTimerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$8;

    invoke-direct {v2, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$8;-><init>(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d

    .line 504
    :cond_37
    invoke-static/range {p0 .. p0}, Lcom/kugoo/kugookirin/utils/DensityUtils;->disconnectDialog(Landroid/app/Activity;)V

    goto :goto_d

    .line 671
    :sswitch_37
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isConnect:Z

    if-eqz v1, :cond_38

    .line 672
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_d

    .line 674
    :cond_38
    invoke-static/range {p0 .. p0}, Lcom/kugoo/kugookirin/utils/DensityUtils;->disconnectDialog(Landroid/app/Activity;)V

    goto :goto_d

    .line 626
    :sswitch_38
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isConnect:Z

    if-eqz v1, :cond_39

    .line 627
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_d

    .line 629
    :cond_39
    invoke-static/range {p0 .. p0}, Lcom/kugoo/kugookirin/utils/DensityUtils;->disconnectDialog(Landroid/app/Activity;)V

    goto :goto_d

    .line 436
    :sswitch_39
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isConnect:Z

    if-eqz v1, :cond_3a

    .line 437
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_d

    .line 439
    :cond_3a
    invoke-static/range {p0 .. p0}, Lcom/kugoo/kugookirin/utils/DensityUtils;->disconnectDialog(Landroid/app/Activity;)V

    :cond_3b
    :goto_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0091 -> :sswitch_39
        0x7f0a00ae -> :sswitch_38
        0x7f0a0169 -> :sswitch_37
        0x7f0a01f6 -> :sswitch_36
        0x7f0a028c -> :sswitch_35
        0x7f0a032f -> :sswitch_34
        0x7f0a0331 -> :sswitch_33
        0x7f0a03f9 -> :sswitch_32
        0x7f0a0467 -> :sswitch_1b
        0x7f0a0468 -> :sswitch_1b
        0x7f0a049f -> :sswitch_36
        0x7f0a04a1 -> :sswitch_1a
        0x7f0a04e5 -> :sswitch_19
        0x7f0a04e6 -> :sswitch_18
        0x7f0a04ea -> :sswitch_17
        0x7f0a04eb -> :sswitch_16
        0x7f0a04ef -> :sswitch_15
        0x7f0a04f1 -> :sswitch_14
        0x7f0a04f2 -> :sswitch_13
        0x7f0a04f3 -> :sswitch_12
        0x7f0a04f4 -> :sswitch_6
        0x7f0a052b -> :sswitch_5
        0x7f0a0532 -> :sswitch_1a
        0x7f0a0548 -> :sswitch_4
        0x7f0a058e -> :sswitch_3
        0x7f0a05a2 -> :sswitch_2
        0x7f0a05f6 -> :sswitch_1
        0x7f0a062c -> :sswitch_0
        0x7f0a062d -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x2de8cbb3 -> :sswitch_11
        -0x2de8cbb1 -> :sswitch_10
        0xc0f -> :sswitch_f
        0xc10 -> :sswitch_e
        0x17602 -> :sswitch_d
        0x17608 -> :sswitch_c
        0x2d4e15 -> :sswitch_b
        0x61a8b00 -> :sswitch_a
        0x61a8b1d -> :sswitch_9
        0x61a8b25 -> :sswitch_8
        0x61a8b3b -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x2de8cbb3 -> :sswitch_26
        -0x2de8cbb1 -> :sswitch_25
        0xc0f -> :sswitch_24
        0xc10 -> :sswitch_23
        0x17602 -> :sswitch_22
        0x17608 -> :sswitch_21
        0x2d4e15 -> :sswitch_20
        0x61a8b00 -> :sswitch_1f
        0x61a8b1d -> :sswitch_1e
        0x61a8b25 -> :sswitch_1d
        0x61a8b3b -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x2de8cbb3 -> :sswitch_31
        -0x2de8cbb1 -> :sswitch_30
        0xc0f -> :sswitch_2f
        0xc10 -> :sswitch_2e
        0x17602 -> :sswitch_2d
        0x17608 -> :sswitch_2c
        0x2d4e15 -> :sswitch_2b
        0x61a8b00 -> :sswitch_2a
        0x61a8b1d -> :sswitch_29
        0x61a8b25 -> :sswitch_28
        0x61a8b3b -> :sswitch_27
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 137
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0046

    .line 138
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->setContentView(I)V

    .line 139
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/MyApplication;->addActivity(Landroid/app/Activity;)V

    .line 140
    invoke-static {p0}, Lcom/lidroid/xutils/ViewUtils;->inject(Landroid/app/Activity;)V

    const p1, 0x7f0a05a3

    .line 141
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f120228

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->initBroadcast()V

    .line 143
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->initEvent()V

    .line 144
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->initUi()V

    .line 145
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->showDefaultUi()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1137
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 1138
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 285
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 286
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_KMH:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isKMH:Z

    .line 287
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_ZERO_START:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isZeroStart:Z

    .line 288
    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->changeStartUpView(Z)V

    .line 289
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->isKMH:Z

    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->showUnitView(Z)V

    .line 290
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->askVehicle()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 322
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 328
    :pswitch_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->seekbarShutDownTime:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    const/16 v0, 0x9

    if-ge p1, v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+STBY=0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+STBY="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :pswitch_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->seekbarMaxSpeed:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    add-int/lit8 p1, p1, 0xa

    .line 325
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+SPDLT="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a04da
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
