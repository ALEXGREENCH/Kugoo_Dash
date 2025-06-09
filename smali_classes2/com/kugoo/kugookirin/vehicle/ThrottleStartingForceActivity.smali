.class public Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ThrottleStartingForceActivity.java"


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

.field force4:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0268
    .end annotation
.end field

.field force4Cb:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0269
    .end annotation
.end field

.field force5:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a026a
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

.field test:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0564
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

    .line 35
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->isClick:Z

    .line 129
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity$1;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity$1;-><init>(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->isConnect:Z

    return p1
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->checkCarStyle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->isClick:Z

    return p1
.end method

.method private checkCarStyle(Ljava/lang/String;)V
    .locals 3

    .line 166
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const-string v1, "gbk"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string p1, "BSTF"

    .line 167
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    const/4 v1, 0x7

    .line 168
    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const/4 v1, 0x5

    if-gt p1, v1, :cond_0

    .line 170
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->setCbSelected(I)V

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->test:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->test:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t \t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 175
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private initCbList()V
    .locals 2

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->checkBoxes:Ljava/util/List;

    .line 101
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->force0Cb:Landroid/widget/CheckBox;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->checkBoxes:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->force1Cb:Landroid/widget/CheckBox;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->checkBoxes:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->force2Cb:Landroid/widget/CheckBox;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->checkBoxes:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->force3Cb:Landroid/widget/CheckBox;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->checkBoxes:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->force4Cb:Landroid/widget/CheckBox;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->checkBoxes:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->force5Cb:Landroid/widget/CheckBox;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initView()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->force0:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private registerMyBroadcast()V
    .locals 3

    .line 116
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_REQUEST_PASSWORD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_REQUEST_PASSWORD_AGAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_CODE_OK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private setCbSelected(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 155
    :goto_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->checkBoxes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    .line 157
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->checkBoxes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->checkBoxes:Ljava/util/List;

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

    .line 87
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->getWindow()Landroid/view/Window;

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

    .line 277
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 278
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->finish()V

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

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a05a2

    if-eq p1, v0, :cond_0

    const-wide/16 v0, 0xc8

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 257
    :pswitch_0
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->isClick:Z

    if-nez p1, :cond_1

    .line 258
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    const-string v2, "+BSTF=5"

    invoke-virtual {p1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    const/4 p1, 0x5

    .line 259
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->setCbSelected(I)V

    .line 260
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity$7;

    invoke-direct {v2, p0}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity$7;-><init>(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 243
    :pswitch_1
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->isClick:Z

    if-nez p1, :cond_1

    .line 244
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    const-string v2, "+BSTF=4"

    invoke-virtual {p1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 245
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->setCbSelected(I)V

    .line 246
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity$6;

    invoke-direct {v2, p0}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity$6;-><init>(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 229
    :pswitch_2
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->isClick:Z

    if-nez p1, :cond_1

    .line 230
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    const-string v2, "+BSTF=3"

    invoke-virtual {p1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 231
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->setCbSelected(I)V

    .line 232
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity$5;

    invoke-direct {v2, p0}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity$5;-><init>(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 215
    :pswitch_3
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->isClick:Z

    if-nez p1, :cond_1

    .line 216
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    const-string v2, "+BSTF=2"

    invoke-virtual {p1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 217
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->setCbSelected(I)V

    .line 218
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity$4;

    invoke-direct {v2, p0}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity$4;-><init>(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 201
    :pswitch_4
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->isClick:Z

    if-nez p1, :cond_1

    .line 202
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    const-string v2, "+BSTF=1"

    invoke-virtual {p1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 203
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->setCbSelected(I)V

    .line 204
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity$3;

    invoke-direct {v2, p0}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity$3;-><init>(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 187
    :pswitch_5
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->isClick:Z

    if-nez p1, :cond_1

    .line 188
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    const-string v2, "+BSTF=0"

    invoke-virtual {p1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 189
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->setCbSelected(I)V

    .line 190
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity$2;

    invoke-direct {v2, p0}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity$2;-><init>(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->finish()V

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

    .line 73
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002d

    .line 74
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->setContentView(I)V

    .line 75
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->unbinder:Lbutterknife/Unbinder;

    .line 76
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->topBackTitle:Landroid/widget/TextView;

    const v0, 0x7f12034c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 77
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->preferences:Landroid/content/SharedPreferences;

    .line 78
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 79
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->registerMyBroadcast()V

    .line 80
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->initCbList()V

    .line 81
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->initView()V

    .line 82
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->showDefaultUi()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 284
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 285
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 111
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 112
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    const-string v1, "+BSTF=?"

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    return-void
.end method
