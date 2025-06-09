.class public Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CycleInfoActivity.java"


# instance fields
.field averageSpeed:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0082
    .end annotation
.end field

.field private isKMH:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field maximumSpeed:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a038f
    .end annotation
.end field

.field rideMileage:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a049c
    .end annotation
.end field

.field singleMileage:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0510
    .end annotation
.end field

.field singleRide:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0511
    .end annotation
.end field

.field topBarTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05a3
    .end annotation
.end field

.field private top_speed:I

.field totalRide:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05aa
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 94
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity$1;-><init>(Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->top_speed:I

    return p0
.end method

.method static synthetic access$002(Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->top_speed:I

    return p1
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->isKMH:Z

    return p0
.end method

.method private initView()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->topBarTitle:Landroid/widget/TextView;

    const v1, 0x7f1200a1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private registerBroadcast()V
    .locals 3

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_CODE_OK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 63
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0027

    .line 53
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->setContentView(I)V

    .line 54
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 55
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->initView()V

    .line 56
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->registerBroadcast()V

    .line 57
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_KMH:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->isKMH:Z

    .line 58
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->showDefaultUi()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 90
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 91
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onViewClicked()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a05a2
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->finish()V

    return-void
.end method
