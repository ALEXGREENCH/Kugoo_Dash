.class public Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SystemInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemInfoActivity"


# instance fields
.field mFirmwareTv:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0553
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mSoftwareTv:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0554
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 87
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity$1;-><init>(Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private initBroadcast()V
    .locals 3

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 53
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f0a05a2
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a05a2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d004c

    .line 42
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;->setContentView(I)V

    .line 43
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/MyApplication;->addActivity(Landroid/app/Activity;)V

    .line 45
    invoke-static {p0}, Lcom/lidroid/xutils/ViewUtils;->inject(Landroid/app/Activity;)V

    const p1, 0x7f0a05a3

    .line 46
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f120227

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;->initBroadcast()V

    .line 48
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;->showDefaultUi()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 81
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 82
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
