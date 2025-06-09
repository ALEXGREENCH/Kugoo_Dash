.class public Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BrakeForceActivity.java"


# instance fields
.field checkBoxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field force0:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0260
    .end annotation
.end field

.field force0Cb:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0261
    .end annotation
.end field

.field force1Cb:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0263
    .end annotation
.end field

.field force2Cb:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0265
    .end annotation
.end field

.field force3Cb:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0267
    .end annotation
.end field

.field force4Cb:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0269
    .end annotation
.end field

.field force5Cb:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a026b
    .end annotation
.end field

.field private isClick:Z

.field private isConnect:Z

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private preferences:Landroid/content/SharedPreferences;

.field topBackTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05a3
    .end annotation
.end field

.field unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->isClick:Z

    .line 120
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity$1;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity$1;-><init>(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->isConnect:Z

    return p1
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->checkCarStyle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->isClick:Z

    return p1
.end method

.method private checkCarStyle(Ljava/lang/String;)V
    .locals 2

    .line 157
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const-string v1, "gbk"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string p1, "+EBKF="

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    const/4 v1, 0x7

    .line 159
    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    .line 161
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->setCbSelected(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 165
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private initCbList()V
    .locals 2

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->checkBoxes:Ljava/util/List;

    .line 88
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->force0Cb:Landroid/widget/CheckBox;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->checkBoxes:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->force1Cb:Landroid/widget/CheckBox;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->checkBoxes:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->force2Cb:Landroid/widget/CheckBox;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->checkBoxes:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->force3Cb:Landroid/widget/CheckBox;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->checkBoxes:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->force4Cb:Landroid/widget/CheckBox;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->checkBoxes:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->force5Cb:Landroid/widget/CheckBox;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initView()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->force0:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private registerMyBroadcast()V
    .locals 3

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_REQUEST_PASSWORD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_REQUEST_PASSWORD_AGAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_CODE_OK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private setCbSelected(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 146
    :goto_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->checkBoxes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    .line 148
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->checkBoxes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->checkBoxes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 80
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->getWindow()Landroid/view/Window;

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

    .line 267
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 268
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0260,
            0x7f0a0262,
            0x7f0a0264,
            0x7f0a0266,
            0x7f0a0268,
            0x7f0a026a,
            0x7f0a0261,
            0x7f0a0263,
            0x7f0a0265,
            0x7f0a0267,
            0x7f0a0269,
            0x7f0a026b,
            0x7f0a05a2
        }
    .end annotation

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a05a2

    if-eq p1, v0, :cond_0

    const-wide/16 v0, 0xc8

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 247
    :pswitch_0
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->isClick:Z

    if-nez p1, :cond_1

    .line 248
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    const-string v2, "+EBKF=5"

    invoke-virtual {p1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    const/4 p1, 0x5

    .line 249
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->setCbSelected(I)V

    .line 250
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity$7;

    invoke-direct {v2, p0}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity$7;-><init>(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 233
    :pswitch_1
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->isClick:Z

    if-nez p1, :cond_1

    .line 234
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    const-string v2, "+EBKF=4"

    invoke-virtual {p1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 235
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->setCbSelected(I)V

    .line 236
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity$6;

    invoke-direct {v2, p0}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity$6;-><init>(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 219
    :pswitch_2
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->isClick:Z

    if-nez p1, :cond_1

    .line 220
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    const-string v2, "+EBKF=3"

    invoke-virtual {p1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 221
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->setCbSelected(I)V

    .line 222
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity$5;

    invoke-direct {v2, p0}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity$5;-><init>(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 205
    :pswitch_3
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->isClick:Z

    if-nez p1, :cond_1

    .line 206
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    const-string v2, "+EBKF=2"

    invoke-virtual {p1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 207
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->setCbSelected(I)V

    .line 208
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity$4;

    invoke-direct {v2, p0}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity$4;-><init>(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 191
    :pswitch_4
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->isClick:Z

    if-nez p1, :cond_1

    .line 192
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    const-string v2, "+EBKF=1"

    invoke-virtual {p1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 193
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->setCbSelected(I)V

    .line 194
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity$3;

    invoke-direct {v2, p0}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity$3;-><init>(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 177
    :pswitch_5
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->isClick:Z

    if-nez p1, :cond_1

    .line 178
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    const-string v2, "+EBKF=0"

    invoke-virtual {p1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 179
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->setCbSelected(I)V

    .line 180
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity$2;

    invoke-direct {v2, p0}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity$2;-><init>(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->finish()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a0260
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002d

    .line 67
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->setContentView(I)V

    .line 68
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->unbinder:Lbutterknife/Unbinder;

    .line 69
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->topBackTitle:Landroid/widget/TextView;

    const v0, 0x7f120044

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 70
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->preferences:Landroid/content/SharedPreferences;

    .line 71
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->registerMyBroadcast()V

    .line 73
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->initCbList()V

    .line 74
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->initView()V

    .line 75
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->showDefaultUi()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 274
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 275
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 102
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 103
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    const-string v1, "+EBKF=?"

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    return-void
.end method
