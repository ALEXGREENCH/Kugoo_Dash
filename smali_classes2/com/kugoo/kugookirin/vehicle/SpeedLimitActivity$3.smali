.class Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "SpeedLimitActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$3;->this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 282
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 283
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "android.bluetooth.device.extra.BOND_STATE"

    const/4 v0, -0x1

    .line 285
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    goto/16 :goto_1

    .line 294
    :cond_0
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 295
    :cond_1
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 296
    :cond_2
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    .line 297
    :cond_3
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_CODE_OK:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_1

    .line 298
    :cond_4
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 299
    sget-object p1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->EXTRA_DATA:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    .line 301
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    .line 303
    array-length p2, p1

    const/16 v0, 0x9

    if-ne p2, v0, :cond_c

    const/4 p2, 0x0

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    const/16 v0, 0xaa

    if-ne p2, v0, :cond_c

    const/16 p2, 0x8

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xbb

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    .line 305
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x3

    .line 306
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x4

    .line 307
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x5

    .line 308
    aget-byte v4, p1, v4

    const/4 v5, 0x6

    aget-byte p1, p1, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 p2, v4, 0x8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, p2

    const/16 p2, 0xa6

    if-eq v1, p2, :cond_5

    goto :goto_1

    .line 312
    :cond_5
    iget-object p2, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$3;->this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    invoke-static {p2}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->access$700(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    :cond_6
    const/16 p2, 0x46

    if-le v2, p2, :cond_7

    move v2, p2

    :cond_7
    const/16 p2, 0x50

    if-ge v3, p2, :cond_8

    move v3, p2

    :cond_8
    const/16 p2, 0xa0

    if-le v3, p2, :cond_9

    move v3, p2

    :cond_9
    if-ge p1, v0, :cond_a

    goto :goto_0

    :cond_a
    move v0, p1

    :goto_0
    const/16 p1, 0x10e

    if-le v0, p1, :cond_b

    move v0, p1

    .line 320
    :cond_b
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$3;->this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    div-int/lit8 v2, v2, 0xa

    invoke-static {p1, v2}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->access$102(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;I)I

    .line 321
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$3;->this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    div-int/lit8 v3, v3, 0xa

    invoke-static {p1, v3}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->access$202(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;I)I

    .line 322
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$3;->this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    div-int/lit8 v0, v0, 0xa

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->access$302(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;I)I

    .line 324
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity$3;->this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->access$900(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)V

    :cond_c
    :goto_1
    return-void
.end method
