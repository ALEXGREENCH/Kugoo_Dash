.class Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ChangeBleInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 150
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 152
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 156
    :cond_1
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 158
    :cond_2
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 160
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->EXTRA_DATA:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p2

    .line 162
    array-length v0, p2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    aget-byte v1, p2, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xaa

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xbb

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    .line 163
    aget-byte v2, p2, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x3

    .line 165
    aget-byte p2, p2, v3

    and-int/lit16 p2, p2, 0xff

    const/16 v3, 0xa6

    if-eq v2, v3, :cond_3

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    const p2, 0x7f1201c5

    .line 171
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 172
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->finish()V

    goto :goto_0

    :cond_4
    if-ne p2, v1, :cond_5

    const p2, 0x7f1201bc

    .line 175
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_5
    :goto_0
    return-void
.end method
