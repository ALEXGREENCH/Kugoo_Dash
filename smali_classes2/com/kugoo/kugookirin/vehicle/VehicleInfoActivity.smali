.class public Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "VehicleInfoActivity.java"


# instance fields
.field chargeCycles:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00f0
    .end annotation
.end field

.field currentElectricity:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0162
    .end annotation
.end field

.field currentPower:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0164
    .end annotation
.end field

.field currentVoltage:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0165
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field topBarTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05a3
    .end annotation
.end field

.field private voltage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 72
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity$1;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->voltage:I

    return p0
.end method

.method static synthetic access$002(Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->voltage:I

    return p1
.end method

.method private initView()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->topBarTitle:Landroid/widget/TextView;

    const v1, 0x7f1203b0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private registerBroadcast()V
    .locals 3

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_CODE_OK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0050

    .line 41
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->setContentView(I)V

    .line 42
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 43
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->initView()V

    .line 44
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->registerBroadcast()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 68
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 69
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onViewClicked()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a05a2
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->finish()V

    return-void
.end method
