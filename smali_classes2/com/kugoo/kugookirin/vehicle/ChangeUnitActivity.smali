.class public Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ChangeUnitActivity.java"


# instance fields
.field cbKmh:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00da
    .end annotation
.end field

.field cbMph:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00db
    .end annotation
.end field

.field private isClick:Z

.field private isConnect02:Z

.field private isKMH:Z

.field lineKmh:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0323
    .end annotation
.end field

.field lineMph:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0324
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

.field unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->isClick:Z

    .line 112
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity$1;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity$1;-><init>(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->isConnect02:Z

    return p1
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->checkCarStyle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->isKMH:Z

    return p0
.end method

.method static synthetic access$202(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->isKMH:Z

    return p1
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->changeUnitView(Z)V

    return-void
.end method

.method static synthetic access$402(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->isClick:Z

    return p1
.end method

.method private changeUnitView(Z)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 89
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->cbKmh:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setSelected(Z)V

    .line 90
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->cbMph:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setSelected(Z)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->cbKmh:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setSelected(Z)V

    .line 93
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->cbMph:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setSelected(Z)V

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_KMH:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private checkCarStyle(Ljava/lang/String;)V
    .locals 3

    const-string v0, "code_ok001="

    .line 175
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const-string v2, "gbk"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string p1, "code_ok0001"

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "UNIT"

    .line 178
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "+UNIT=0"

    .line 179
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 180
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->isKMH:Z

    goto :goto_0

    :cond_0
    const-string p1, "+UNIT=1"

    .line 181
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 182
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->isKMH:Z

    .line 184
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->isKMH:Z

    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->changeUnitView(Z)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 187
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method private registerMyBroadcast()V
    .locals 3

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_REQUEST_PASSWORD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_REQUEST_PASSWORD_AGAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_CODE_OK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 73
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->getWindow()Landroid/view/Window;

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

    .line 295
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 296
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0323,
            0x7f0a0324,
            0x7f0a05a2,
            0x7f0a00da,
            0x7f0a00db,
            0x7f0a0569,
            0x7f0a0571,
            0x7f0a056a,
            0x7f0a0572
        }
    .end annotation

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x5

    const-wide/16 v1, 0xc8

    const/4 v3, 0x2

    const-string v4, "kgkrn05"

    const-string v5, "kgkrn04"

    const-string v6, "kgkrn03"

    const/4 v7, -0x1

    const-string v8, "+UNIT=1"

    const-string v9, "+UNIT=0"

    const/4 v10, 0x0

    const/4 v11, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_8

    .line 288
    :sswitch_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->finish()V

    goto/16 :goto_8

    .line 207
    :sswitch_1
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    const-string v0, "AA190601B4BB"

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendHexString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 204
    :sswitch_2
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    const-string v0, "AA190600B5BB"

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendHexString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 201
    :sswitch_3
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 198
    :sswitch_4
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    invoke-virtual {p1, v9}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 250
    :sswitch_5
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->isClick:Z

    if-nez p1, :cond_8

    .line 251
    iput-boolean v11, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->isClick:Z

    .line 252
    sget-object p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :goto_0
    move v3, v7

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v11

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v10

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_1

    .line 269
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    goto :goto_3

    .line 255
    :pswitch_3
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    const-string v0, "AA03040388010027BB"

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendHexString(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_4
    move p1, v10

    :goto_2
    if-ge p1, v0, :cond_3

    .line 259
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity$4;

    invoke-direct {v4, p0}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity$4;-><init>(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;)V

    mul-int/lit16 v5, p1, 0x96

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 274
    :cond_3
    :goto_3
    iput-boolean v10, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->isKMH:Z

    .line 275
    invoke-direct {p0, v10}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->changeUnitView(Z)V

    .line 277
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity$5;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity$5;-><init>(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_8

    .line 212
    :sswitch_6
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->isClick:Z

    if-nez p1, :cond_8

    .line 213
    iput-boolean v11, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->isClick:Z

    .line 214
    sget-object p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v8

    packed-switch v8, :pswitch_data_2

    :goto_4
    move v3, v7

    goto :goto_5

    :pswitch_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_4

    :pswitch_6
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    move v3, v11

    goto :goto_5

    :pswitch_7
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    move v3, v10

    :cond_6
    :goto_5
    packed-switch v3, :pswitch_data_3

    .line 230
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    invoke-virtual {p1, v9}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    goto :goto_7

    .line 217
    :pswitch_8
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    const-string v0, "AA03040388000026BB"

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendHexString(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    :pswitch_9
    if-ge v10, v0, :cond_7

    .line 221
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity$2;

    invoke-direct {v3, p0}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity$2;-><init>(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;)V

    mul-int/lit16 v4, v10, 0x96

    int-to-long v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 234
    :cond_7
    :goto_7
    iput-boolean v11, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->isKMH:Z

    .line 235
    invoke-direct {p0, v11}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->changeUnitView(Z)V

    .line 237
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity$3;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity$3;-><init>(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    :goto_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a00da -> :sswitch_6
        0x7f0a00db -> :sswitch_5
        0x7f0a0323 -> :sswitch_6
        0x7f0a0324 -> :sswitch_5
        0x7f0a0569 -> :sswitch_4
        0x7f0a056a -> :sswitch_3
        0x7f0a0571 -> :sswitch_2
        0x7f0a0572 -> :sswitch_1
        0x7f0a05a2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch -0x2de8cbb2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x2de8cbb2
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0023

    .line 61
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->setContentView(I)V

    .line 62
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->unbinder:Lbutterknife/Unbinder;

    .line 64
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->topBackTitle:Landroid/widget/TextView;

    const v0, 0x7f120357

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 65
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->preferences:Landroid/content/SharedPreferences;

    .line 66
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 67
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->registerMyBroadcast()V

    .line 68
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->showDefaultUi()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 302
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 303
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 81
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 82
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    const-string v1, "+UNIT=?"

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_KMH:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->isKMH:Z

    .line 84
    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->changeUnitView(Z)V

    return-void
.end method
