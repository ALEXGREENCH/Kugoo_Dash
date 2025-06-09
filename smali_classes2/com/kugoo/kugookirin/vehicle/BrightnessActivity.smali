.class public Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BrightnessActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field brightBar:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00b0
    .end annotation
.end field

.field private brightnessLv:I

.field instrumentImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02e5
    .end annotation
.end field

.field private isClick:Z

.field private isConnect:Z

.field level01:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a030f
    .end annotation
.end field

.field level02:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0310
    .end annotation
.end field

.field level03:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0311
    .end annotation
.end field

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private oldBrightness:I

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
    .locals 2

    .line 37
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x3

    .line 54
    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->brightnessLv:I

    const/4 v1, 0x0

    .line 55
    iput-boolean v1, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->isClick:Z

    .line 58
    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->oldBrightness:I

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->mHandler:Landroid/os/Handler;

    .line 140
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity$2;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity$2;-><init>(Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->isConnect:Z

    return p1
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->parseStrData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->isClick:Z

    return p1
.end method

.method private changeBrightView(IZ)V
    .locals 6

    .line 196
    iput p1, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->oldBrightness:I

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bight0001=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->brightnessLv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "testbright"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    const/4 v1, 0x5

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne p1, v4, :cond_0

    .line 199
    iget-object v5, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->level01:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    iget-object v3, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->level02:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    iget-object v3, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->level03:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 203
    iget-object v5, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->level01:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    iget-object v5, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->level02:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    iget-object v3, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->level03:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    .line 207
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->level01:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->level02:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->level03:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_BRIGHTNESS:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p2, :cond_c

    .line 213
    iget-boolean p2, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->isClick:Z

    if-nez p2, :cond_c

    const/4 p2, 0x1

    .line 214
    iput-boolean p2, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->isClick:Z

    const-string p2, "rch02"

    const-string v2, "junh01"

    if-eq p1, v4, :cond_9

    if-eq p1, v1, :cond_6

    if-eq p1, v0, :cond_3

    goto/16 :goto_4

    .line 231
    :cond_3
    sget-object p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 234
    :cond_4
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    const-string p2, "+TIM=L7"

    invoke-virtual {p1, p2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    goto :goto_4

    .line 232
    :cond_5
    :goto_1
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    const-string p2, "+LUMA=M0L2"

    invoke-virtual {p1, p2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    goto :goto_4

    .line 224
    :cond_6
    sget-object p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    sget-object p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    .line 227
    :cond_7
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    const-string p2, "+TIM=L5"

    invoke-virtual {p1, p2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    goto :goto_4

    .line 225
    :cond_8
    :goto_2
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    const-string p2, "+LUMA=M0L1"

    invoke-virtual {p1, p2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    goto :goto_4

    .line 217
    :cond_9
    sget-object p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    sget-object p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_3

    .line 220
    :cond_a
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    const-string p2, "+TIM=L3"

    invoke-virtual {p1, p2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    goto :goto_4

    .line 218
    :cond_b
    :goto_3
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    const-string p2, "+LUMA=M0L0"

    invoke-virtual {p1, p2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    .line 238
    :goto_4
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity$3;

    invoke-direct {p2, p0}, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity$3;-><init>(Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    return-void
.end method

.method private initEvent()V
    .locals 4

    .line 112
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->registerMyBroadcast()V

    .line 113
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity$1;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity$1;-><init>(Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initView()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->topBackTitle:Landroid/widget/TextView;

    const v1, 0x7f120350

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "ryi01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "rch02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "myt01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_3
    const-string v1, "dse01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_4
    const-string v1, "ytai04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_5
    const-string v1, "ytai02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_6
    const-string v1, "ytai01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_7
    const-string v1, "plte01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_8
    const-string v1, "kxwe01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_9
    const-string v1, "junh01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 89
    :pswitch_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->instrumentImg:Landroid/widget/ImageView;

    const v1, 0x7f0f0013

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 106
    :pswitch_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->instrumentImg:Landroid/widget/ImageView;

    const v1, 0x7f0f0139

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 101
    :pswitch_2
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->instrumentImg:Landroid/widget/ImageView;

    const v1, 0x7f0f013a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 93
    :pswitch_3
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->instrumentImg:Landroid/widget/ImageView;

    const v1, 0x7f0f003d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 97
    :pswitch_4
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->instrumentImg:Landroid/widget/ImageView;

    const v1, 0x7f0f00f4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x447a02fa -> :sswitch_9
        -0x4296d7c4 -> :sswitch_8
        -0x3ab913d2 -> :sswitch_7
        -0x2af54e3c -> :sswitch_6
        -0x2af54e3b -> :sswitch_5
        -0x2af54e39 -> :sswitch_4
        0x5b6f637 -> :sswitch_3
        0x638bc49 -> :sswitch_2
        0x6750499 -> :sswitch_1
        0x67f0883 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private parseStrData(Ljava/lang/String;)V
    .locals 2

    .line 166
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const-string v1, "gbk"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string p1, "+TIM=L3"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_4

    const-string p1, "+LUMA=M0L0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "+TIM=L5"

    .line 169
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "+LUMA=M0L1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "+TIM=L7"

    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "+LUMA=M0L2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_2
    const/4 p1, 0x7

    .line 172
    invoke-direct {p0, p1, v1}, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->changeBrightView(IZ)V

    goto :goto_2

    :cond_3
    :goto_0
    const/4 p1, 0x5

    .line 170
    invoke-direct {p0, p1, v1}, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->changeBrightView(IZ)V

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x3

    .line 168
    invoke-direct {p0, p1, v1}, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->changeBrightView(IZ)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 176
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_5
    :goto_2
    return-void
.end method

.method private registerMyBroadcast()V
    .locals 3

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_REQUEST_PASSWORD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_REQUEST_PASSWORD_AGAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_CODE_OK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 79
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->getWindow()Landroid/view/Window;

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

    .line 191
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 192
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a05a2
        }
    .end annotation

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a05a2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001f

    .line 64
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->setContentView(I)V

    .line 65
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 66
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->brightBar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 67
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->preferences:Landroid/content/SharedPreferences;

    .line 68
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 69
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_BRIGHTNESS:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->brightnessLv:I

    .line 70
    iput p1, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->oldBrightness:I

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->changeBrightView(IZ)V

    .line 72
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->initEvent()V

    .line 73
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->initView()V

    .line 74
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->showDefaultUi()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a00b0

    if-ne p1, v0, :cond_5

    .line 257
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 258
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 260
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->brightBar:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLeft()I

    move-result p1

    int-to-float p1, p1

    .line 261
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->brightBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getRight()I

    move-result v1

    int-to-float v1, v1

    .line 262
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpg-float p1, p1, v2

    const/high16 v3, 0x40400000    # 3.0f

    if-gez p1, :cond_1

    div-float p1, v1, v3

    cmpg-float p1, v2, p1

    if-gez p1, :cond_1

    .line 266
    iget p1, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->oldBrightness:I

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    .line 267
    invoke-direct {p0, v1, v0}, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->changeBrightView(IZ)V

    goto :goto_0

    :cond_1
    div-float p1, v1, v3

    cmpg-float p1, p1, v2

    const/high16 v4, 0x40000000    # 2.0f

    if-gez p1, :cond_2

    mul-float p1, v1, v4

    div-float/2addr p1, v3

    cmpg-float p1, v2, p1

    if-gez p1, :cond_2

    .line 270
    iget p1, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->oldBrightness:I

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    .line 271
    invoke-direct {p0, v1, v0}, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->changeBrightView(IZ)V

    goto :goto_0

    :cond_2
    mul-float/2addr v4, v1

    div-float/2addr v4, v3

    cmpg-float p1, v4, v2

    if-gez p1, :cond_3

    cmpg-float p1, v2, v1

    if-gez p1, :cond_3

    .line 275
    iget p1, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->oldBrightness:I

    const/4 v1, 0x7

    if-eq p1, v1, :cond_3

    .line 276
    invoke-direct {p0, v1, v0}, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->changeBrightView(IZ)V

    .line 279
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "left=="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->brightBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "  right=="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->brightBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getRight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "  downX=="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 280
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "touchbright"

    .line 279
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0

    :cond_5
    const/4 p1, 0x0

    return p1
.end method
