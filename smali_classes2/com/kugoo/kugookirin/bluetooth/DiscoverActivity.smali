.class public Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DiscoverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final D:Z = true

.field private static final REQUEST_ENABLE_BT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DiscoverActivity"


# instance fields
.field action_bar_back_btn:Landroid/widget/ImageView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0042
    .end annotation
.end field

.field private adapter:Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

.field private bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private countTime:I

.field private isSearchingDevice:Z

.field private isShow:Z

.field private is_run:Z

.field listView:Landroid/widget/ListView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0334
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private operatingAnim:Landroid/view/animation/Animation;

.field searchResultImage:Landroid/widget/ImageView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a04d1
    .end annotation
.end field

.field searching_again_btn:Landroid/widget/Button;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a04d6
    .end annotation
.end field

.field searching_text:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a04d9
    .end annotation
.end field

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->is_run:Z

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->countTime:I

    .line 85
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->isSearchingDevice:Z

    .line 87
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->isShow:Z

    .line 256
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$3;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$3;-><init>(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->thread:Ljava/lang/Thread;

    .line 351
    new-instance v0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$4;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$4;-><init>(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->is_run:Z

    return p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->countTime:I

    return p0
.end method

.method static synthetic access$108(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;)I
    .locals 2

    .line 62
    iget v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->countTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->countTime:I

    return v0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->searchUi()V

    return-void
.end method

.method static synthetic access$302(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->isShow:Z

    return p1
.end method

.method private initAdapter()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 186
    invoke-virtual {p0, v0, v1}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->adapter:Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    if-nez v0, :cond_4

    .line 192
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getBleDevicesAdapter()Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->adapter:Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    if-eqz v0, :cond_3

    .line 194
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->setContext(Landroid/content/Context;)V

    .line 195
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    iget-object v0, v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 197
    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->adapter:Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    invoke-virtual {v1, v0}, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->clearButDevices(Ljava/util/List;)V

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->adapter:Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_3
    const-string v0, "DiscoverActivity"

    const-string v1, "initAdapter: adapter ==null"

    .line 201
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method private initEvent()V
    .locals 2

    const-string v0, "bluetooth"

    .line 123
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 124
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 125
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    const v0, 0x7f01000c

    .line 126
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->operatingAnim:Landroid/view/animation/Animation;

    .line 127
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 128
    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->operatingAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private initGPS()V
    .locals 3

    const-string v0, "location"

    .line 146
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    .line 147
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1201bf

    .line 151
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 152
    new-instance v1, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$1;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$1;-><init>(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;)V

    const v2, 0x7f1201ba

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 160
    new-instance v1, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$2;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$2;-><init>(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;)V

    const v2, 0x7f12004e

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 166
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private registerBroadCast()V
    .locals 3

    .line 208
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 209
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_START_SCAN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_REQUEST_PASSWORD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_REQUEST_PASSWORD_AGAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_CODE_OK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private searchUi()V
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->adapter:Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->searchResultImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->listView:Landroid/widget/ListView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->searching_again_btn:Landroid/widget/Button;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->searching_text:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_1

    .line 286
    :cond_0
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->getCount()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->isSearchingDevice:Z

    .line 288
    iput v1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->countTime:I

    .line 289
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->stopScan()V

    .line 290
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->searchResultImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 291
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->searchResultImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->searching_again_btn:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->searching_text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 298
    :cond_1
    iget v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->countTime:I

    if-ne v0, v1, :cond_2

    .line 299
    iput-boolean v2, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->isSearchingDevice:Z

    .line 300
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->stopScan()V

    .line 301
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->searchResultImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 302
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->searchResultImage:Landroid/widget/ImageView;

    const v1, 0x7f0f00cf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 303
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->searchResultImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->searching_again_btn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->searching_text:Landroid/widget/TextView;

    const v1, 0x7f12002e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 306
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->searching_text:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string v0, "SearchUi"

    const-string v1, "One or more required objects are null."

    .line 282
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showBlueMusicSetting(Landroid/content/Context;)V
    .locals 2

    .line 455
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->isShow:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 458
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->isShow:Z

    .line 459
    new-instance p1, Landroid/app/Dialog;

    const v0, 0x7f13046f

    invoke-direct {p1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0d0056

    .line 460
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f0a04e8

    .line 462
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$8;-><init>(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04e7

    .line 472
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$9;-><init>(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 482
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 483
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 114
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 315
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f0a04d6,
            0x7f0a04d1,
            0x7f0a0042,
            0x7f0a0097
        }
    .end annotation

    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 330
    :sswitch_0
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->isSearchingDevice:Z

    if-nez p1, :cond_0

    return-void

    .line 334
    :cond_0
    :sswitch_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 335
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->searching_again_btn:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 336
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->searchResultImage:Landroid/widget/ImageView;

    const v1, 0x7f080124

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 337
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->searching_text:Landroid/widget/TextView;

    const v1, 0x7f120205

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 338
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->searching_text:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->startScan()V

    .line 340
    iput v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->countTime:I

    .line 341
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->operatingAnim:Landroid/view/animation/Animation;

    if-eqz p1, :cond_2

    .line 342
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->searchResultImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f120131

    .line 345
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 324
    :sswitch_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kugoo/kugookirin/vehicle/UserGuideActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 327
    :sswitch_3
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->finish()V

    :cond_2
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a0042 -> :sswitch_3
        0x7f0a0097 -> :sswitch_2
        0x7f0a04d1 -> :sswitch_0
        0x7f0a04d6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0029

    .line 93
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->setContentView(I)V

    .line 94
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/MyApplication;->addActivity(Landroid/app/Activity;)V

    .line 95
    invoke-static {p0}, Lcom/lidroid/xutils/ViewUtils;->inject(Landroid/app/Activity;)V

    .line 96
    invoke-direct {p0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->initGPS()V

    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 99
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 100
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x12

    invoke-virtual {p0, p1, v0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->initView()V

    .line 105
    invoke-direct {p0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->initEvent()V

    .line 106
    invoke-direct {p0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->initAdapter()V

    .line 107
    invoke-direct {p0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->registerBroadCast()V

    .line 108
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->thread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 109
    invoke-direct {p0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->showDefaultUi()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 510
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 511
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->is_run:Z

    .line 512
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 489
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->adapter:Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    invoke-virtual {p1, p3}, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->getDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const-string p2, "DiscoverActivity"

    if-nez p1, :cond_0

    const-string p1, "select no device"

    .line 491
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->adapter:Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    invoke-virtual {p1, p3}, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->removeDevice(I)V

    .line 493
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->adapter:Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 496
    sput-boolean p3, Lcom/kugoo/kugookirin/MainActivity;->is_click_blue_connect:Z

    .line 497
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "select "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-virtual {p4}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getConnectedAddress()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 499
    iget-object p3, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->connect(Ljava/lang/String;)Z

    .line 500
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "selecting "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 502
    :cond_1
    iget-object p3, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->connect(Ljava/lang/String;)Z

    .line 503
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "select a connected device "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 134
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x12

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 137
    aget p1, p3, p1

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 223
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 224
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    if-eqz v0, :cond_2

    .line 227
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->stopScan()V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->startScan()V

    .line 233
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->isSearchingDevice:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->countTime:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 234
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->searchResultImage:Landroid/widget/ImageView;

    const v1, 0x7f080124

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 235
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->operatingAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    .line 236
    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->searchResultImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->searchResultImage:Landroid/widget/ImageView;

    const v1, 0x7f0f00cf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 240
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->searchResultImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_0

    .line 248
    :cond_2
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->initialize()Z

    :cond_3
    :goto_0
    return-void
.end method

.method public requestPassword()V
    .locals 6

    .line 396
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->isShow:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 399
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->isShow:Z

    .line 400
    new-instance v1, Landroid/app/Dialog;

    const v2, 0x7f13046f

    invoke-direct {v1, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0d011f

    .line 401
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(I)V

    const/4 v2, 0x0

    .line 411
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 412
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    const v3, 0x7f0a005c

    .line 413
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-array v0, v0, [Landroid/text/InputFilter;

    .line 414
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v0, v2

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 415
    new-instance v0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$5;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$5;-><init>(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;)V

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0a005b

    .line 431
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$6;

    invoke-direct {v2, p0, v1}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$6;-><init>(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a005d

    .line 438
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$7;

    invoke-direct {v2, p0, v3, v1}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$7;-><init>(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
