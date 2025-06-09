.class Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "VehicleInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 77
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 79
    :cond_0
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_CODE_OK:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 81
    :cond_1
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 83
    :cond_2
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    .line 85
    :cond_3
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 87
    sget-object p1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->EXTRA_DATA:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    .line 89
    invoke-static {p1}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->BytesToString([B)Ljava/lang/String;

    .line 93
    :try_start_0
    new-instance p2, Ljava/lang/String;

    const-string v0, "gbk"

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 95
    invoke-virtual {p2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    const/4 p2, 0x0

    .line 98
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_7

    array-length v0, p1

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0xd

    if-ne v0, v2, :cond_7

    array-length v0, p1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0xa

    if-ne v0, v3, :cond_7

    .line 100
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x5

    .line 101
    aget-byte v1, p1, v1

    and-int/lit16 v3, v1, 0xff

    const/16 v4, 0x9

    const/high16 v5, 0x447a0000    # 1000.0f

    const/4 v6, 0x4

    const-string v7, "%.1f"

    if-eq v0, v4, :cond_6

    const/16 v4, 0x17

    if-eq v0, v4, :cond_5

    const/16 p1, 0x52

    if-eq v0, p1, :cond_4

    goto/16 :goto_1

    .line 126
    :cond_4
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->currentElectricity:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v2, [Ljava/lang/Object;

    int-to-float v3, v3

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, p2

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->currentPower:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->access$000(Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    mul-float/2addr v3, v2

    float-to-double v2, v3

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, p2

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "W"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    and-int/lit16 p2, v1, 0xff

    shl-int/lit8 p2, p2, 0x8

    .line 119
    aget-byte p1, p1, v6

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, p2

    .line 121
    iget-object p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;

    iget-object p2, p2, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->chargeCycles:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 105
    :cond_6
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    aget-byte p1, p1, v6

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    invoke-static {v0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->access$002(Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;I)I

    .line 107
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->currentVoltage:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->access$000(Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, p2

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "V"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_1
    return-void
.end method
