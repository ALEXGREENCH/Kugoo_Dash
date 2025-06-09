.class Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "DiscoverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$4;->this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 355
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 357
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "DiscoverActivity"

    if-eqz v0, :cond_0

    .line 358
    sget-object p1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 360
    :cond_0
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_CODE_OK:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 361
    sput-boolean v2, Lcom/kugoo/kugookirin/MainActivity;->is_click_blue_connect:Z

    .line 363
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$4;->this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->finish()V

    goto :goto_0

    .line 365
    :cond_1
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    sget-object p1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 369
    :cond_2
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 371
    sget-object p1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->EXTRA_DATA:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    .line 374
    invoke-static {p1}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->BytesToString([B)Ljava/lang/String;

    goto :goto_0

    .line 386
    :cond_3
    sget-object p2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_REQUEST_PASSWORD:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 387
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$4;->this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->requestPassword()V

    goto :goto_0

    .line 388
    :cond_4
    sget-object p2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_REQUEST_PASSWORD_AGAIN:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 389
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$4;->this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

    const p2, 0x7f12003c

    invoke-virtual {p1, p2}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 390
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$4;->this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->requestPassword()V

    :cond_5
    :goto_0
    return-void
.end method
