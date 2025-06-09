.class public Lcom/kugoo/kugookirin/vehicle/StartupActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "StartupActivity.java"


# instance fields
.field cbPush:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00df
    .end annotation
.end field

.field cbZero:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00e0
    .end annotation
.end field

.field private isClick:Z

.field private isConnect:Z

.field private isZeroStart:Z

.field linePush:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0326
    .end annotation
.end field

.field lineZero:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0327
    .end annotation
.end field

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mReceiver:Landroid/content/BroadcastReceiver;

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->isClick:Z

    .line 124
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/StartupActivity$2;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/vehicle/StartupActivity$2;-><init>(Lcom/kugoo/kugookirin/vehicle/StartupActivity;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/kugoo/kugookirin/vehicle/StartupActivity;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->isConnect:Z

    return p1
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/vehicle/StartupActivity;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->parseStrData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/vehicle/StartupActivity;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->isZeroStart:Z

    return p0
.end method

.method static synthetic access$202(Lcom/kugoo/kugookirin/vehicle/StartupActivity;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->isZeroStart:Z

    return p1
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/vehicle/StartupActivity;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->changeStartUpView(Z)V

    return-void
.end method

.method static synthetic access$402(Lcom/kugoo/kugookirin/vehicle/StartupActivity;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->isClick:Z

    return p1
.end method

.method private changeStartUpView(Z)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 99
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->cbZero:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setSelected(Z)V

    .line 100
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->cbPush:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setSelected(Z)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->cbZero:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setSelected(Z)V

    .line 103
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->cbPush:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setSelected(Z)V

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_ZERO_START:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private parseStrData(Ljava/lang/String;)V
    .locals 3

    const-string v0, "code_ok001="

    .line 191
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const-string v2, "gbk"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string p1, "code_ok0001"

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ZSST"

    .line 194
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "+ZSST=0"

    .line 195
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 197
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->isZeroStart:Z

    goto :goto_0

    :cond_0
    const-string p1, "+ZSST=1"

    .line 198
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 200
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->isZeroStart:Z

    .line 202
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->isZeroStart:Z

    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->changeStartUpView(Z)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 205
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method private registerMyBroadcast()V
    .locals 3

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_REQUEST_PASSWORD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_REQUEST_PASSWORD_AGAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_CODE_OK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 75
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 304
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 305
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 19
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a05a2,
            0x7f0a0327,
            0x7f0a0326,
            0x7f0a00e0,
            0x7f0a00df
        }
    .end annotation

    move-object/from16 v0, p0

    .line 213
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v3, "kug20"

    const-string v5, "kug19"

    const-string v7, "kug11"

    const-string v9, "kug03"

    const-string v11, "b205"

    const/4 v12, 0x3

    const-string v13, "b17"

    const-string v15, "b11"

    const-string v2, "b2"

    const-string v4, "b1"

    const/16 v16, -0x1

    move-object/from16 v17, v15

    const-wide/16 v14, 0x96

    const/4 v6, 0x0

    const/4 v8, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_6

    .line 215
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->finish()V

    goto/16 :goto_6

    .line 219
    :sswitch_1
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->isConnect:Z

    if-eqz v1, :cond_9

    .line 220
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->isClick:Z

    if-nez v1, :cond_14

    .line 221
    iput-boolean v8, v0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->isClick:Z

    .line 222
    sget-object v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_1

    :goto_0
    move/from16 v2, v16

    goto/16 :goto_1

    :sswitch_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    goto :goto_1

    :sswitch_3
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x7

    goto :goto_1

    :sswitch_4
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_5
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_6
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_7
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move v2, v12

    goto :goto_1

    :sswitch_8
    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    move v2, v8

    goto :goto_1

    :sswitch_a
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    move v2, v6

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 241
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    const-string v2, "+ZSST=0"

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    .line 242
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/StartupActivity$4;

    invoke-direct {v2, v0}, Lcom/kugoo/kugookirin/vehicle/StartupActivity$4;-><init>(Lcom/kugoo/kugookirin/vehicle/StartupActivity;)V

    invoke-virtual {v1, v2, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 232
    :pswitch_0
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    const-string v2, "AA120600BEBB"

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendHexString(Ljava/lang/String;)V

    .line 233
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/StartupActivity$3;

    invoke-direct {v2, v0}, Lcom/kugoo/kugookirin/vehicle/StartupActivity$3;-><init>(Lcom/kugoo/kugookirin/vehicle/StartupActivity;)V

    invoke-virtual {v1, v2, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 251
    :goto_2
    iput-boolean v8, v0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->isZeroStart:Z

    .line 252
    invoke-direct {v0, v8}, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->changeStartUpView(Z)V

    goto/16 :goto_6

    .line 255
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/kugoo/kugookirin/utils/DensityUtils;->disconnectDialog(Landroid/app/Activity;)V

    goto/16 :goto_6

    :sswitch_b
    move-object/from16 v1, v17

    .line 260
    iget-boolean v10, v0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->isConnect:Z

    if-eqz v10, :cond_13

    .line 261
    iget-boolean v10, v0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->isClick:Z

    if-nez v10, :cond_14

    .line 262
    iput-boolean v8, v0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->isClick:Z

    .line 263
    sget-object v10, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_2

    :goto_3
    move/from16 v2, v16

    goto/16 :goto_4

    :sswitch_c
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    const/16 v2, 0x8

    goto :goto_4

    :sswitch_d
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_3

    :cond_b
    const/4 v2, 0x7

    goto :goto_4

    :sswitch_e
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_3

    :cond_c
    const/4 v2, 0x6

    goto :goto_4

    :sswitch_f
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3

    :cond_d
    const/4 v2, 0x5

    goto :goto_4

    :sswitch_10
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_3

    :cond_e
    const/4 v2, 0x4

    goto :goto_4

    :sswitch_11
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_3

    :cond_f
    move v2, v12

    goto :goto_4

    :sswitch_12
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_3

    :cond_10
    const/4 v2, 0x2

    goto :goto_4

    :sswitch_13
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_3

    :cond_11
    move v2, v8

    goto :goto_4

    :sswitch_14
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_3

    :cond_12
    move v2, v6

    :goto_4
    packed-switch v2, :pswitch_data_1

    .line 282
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    const-string v2, "+ZSST=1"

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    .line 283
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/StartupActivity$6;

    invoke-direct {v2, v0}, Lcom/kugoo/kugookirin/vehicle/StartupActivity$6;-><init>(Lcom/kugoo/kugookirin/vehicle/StartupActivity;)V

    invoke-virtual {v1, v2, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    .line 273
    :pswitch_1
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    const-string v2, "AA120601BFBB"

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendHexString(Ljava/lang/String;)V

    .line 274
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/StartupActivity$5;

    invoke-direct {v2, v0}, Lcom/kugoo/kugookirin/vehicle/StartupActivity$5;-><init>(Lcom/kugoo/kugookirin/vehicle/StartupActivity;)V

    invoke-virtual {v1, v2, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 292
    :goto_5
    iput-boolean v6, v0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->isZeroStart:Z

    .line 293
    invoke-direct {v0, v6}, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->changeStartUpView(Z)V

    goto :goto_6

    .line 296
    :cond_13
    invoke-static/range {p0 .. p0}, Lcom/kugoo/kugookirin/utils/DensityUtils;->disconnectDialog(Landroid/app/Activity;)V

    :cond_14
    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a00df -> :sswitch_b
        0x7f0a00e0 -> :sswitch_1
        0x7f0a0326 -> :sswitch_b
        0x7f0a0327 -> :sswitch_1
        0x7f0a05a2 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xc0f -> :sswitch_a
        0xc10 -> :sswitch_9
        0x17602 -> :sswitch_8
        0x17608 -> :sswitch_7
        0x2d4e15 -> :sswitch_6
        0x61a8b00 -> :sswitch_5
        0x61a8b1d -> :sswitch_4
        0x61a8b25 -> :sswitch_3
        0x61a8b3b -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        0xc0f -> :sswitch_14
        0xc10 -> :sswitch_13
        0x17602 -> :sswitch_12
        0x17608 -> :sswitch_11
        0x2d4e15 -> :sswitch_10
        0x61a8b00 -> :sswitch_f
        0x61a8b1d -> :sswitch_e
        0x61a8b25 -> :sswitch_d
        0x61a8b3b -> :sswitch_c
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d004b

    .line 60
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->setContentView(I)V

    .line 61
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 63
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->topBackTitle:Landroid/widget/TextView;

    const v0, 0x7f120355

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->preferences:Landroid/content/SharedPreferences;

    .line 66
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 67
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_ZERO_START:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->isZeroStart:Z

    .line 68
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->changeStartUpView(Z)V

    .line 69
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->registerMyBroadcast()V

    .line 70
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->showDefaultUi()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 310
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 311
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 83
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 84
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

    .line 85
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

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    const-string v1, "b17"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "kug03"

    sget-object v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/StartupActivity$1;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/StartupActivity$1;-><init>(Lcom/kugoo/kugookirin/vehicle/StartupActivity;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
