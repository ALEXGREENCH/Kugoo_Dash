.class Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CycleInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22

    move-object/from16 v1, p0

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    sget-object v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 101
    :cond_0
    sget-object v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_CODE_OK:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    .line 103
    :cond_1
    sget-object v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_3

    .line 105
    :cond_2
    sget-object v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_3

    .line 107
    :cond_3
    sget-object v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 109
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->EXTRA_DATA:Ljava/lang/String;

    move-object/from16 v2, p2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 111
    invoke-static {v2}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->BytesToString([B)Ljava/lang/String;

    .line 113
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v3, "gbk"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 118
    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_9

    const/4 v3, 0x1

    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x26

    if-ne v4, v5, :cond_9

    array-length v4, v2

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v6, 0xd

    if-ne v4, v6, :cond_9

    array-length v4, v2

    sub-int/2addr v4, v3

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v6, 0xa

    if-ne v4, v6, :cond_9

    .line 119
    aget-byte v4, v2, v5

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x7

    .line 120
    aget-byte v7, v2, v5

    const/16 v8, 0x8

    aget-byte v9, v2, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v8

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v7, v9

    const/16 v9, 0x20

    const-string v10, "km"

    const-string v11, "mile"

    const/16 v12, 0x9

    const-string v13, "readMessage"

    const/4 v14, 0x6

    const/4 v15, 0x5

    const/high16 v16, 0x41200000    # 10.0f

    const-wide/high16 v17, 0x4024000000000000L    # 10.0

    const/high16 v19, 0x45610000    # 3600.0f

    const-wide v20, 0x3fe3d70a3d70a3d7L    # 0.62

    const-string v0, "%.1f"

    if-eq v4, v9, :cond_6

    const/16 v7, 0x21

    if-eq v4, v7, :cond_4

    goto/16 :goto_3

    .line 153
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "readMessage=21"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->BytesToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x4

    .line 154
    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    aget-byte v7, v2, v15

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v4, v7

    aget-byte v7, v2, v14

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v8

    or-int/2addr v4, v7

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 157
    aget-byte v5, v2, v8

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    aget-byte v7, v2, v12

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v5, v7

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v8

    or-int/2addr v5, v6

    const/16 v6, 0xb

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v5

    .line 160
    iget-object v5, v1, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;

    invoke-static {v5}, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->access$100(Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 161
    iget-object v5, v1, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;

    iget-object v5, v5, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->rideMileage:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-array v7, v3, [Ljava/lang/Object;

    mul-int/2addr v4, v3

    int-to-float v4, v4

    div-float v4, v4, v16

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 163
    :cond_5
    iget-object v5, v1, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;

    iget-object v5, v5, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->rideMileage:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-array v7, v3, [Ljava/lang/Object;

    int-to-double v8, v4

    mul-double v8, v8, v20

    div-double v8, v8, v17

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :goto_1
    iget-object v4, v1, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;

    iget-object v4, v4, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->totalRide:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-array v6, v3, [Ljava/lang/Object;

    mul-int/2addr v2, v3

    int-to-float v2, v2

    div-float v2, v2, v19

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v6, v3

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "h"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 125
    :cond_6
    aget-byte v4, v2, v15

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v8

    aget-byte v5, v2, v14

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 127
    iget-object v5, v1, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;

    invoke-static {v5}, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->access$000(Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;)I

    move-result v5

    if-le v4, v5, :cond_7

    .line 128
    iget-object v5, v1, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;

    invoke-static {v5, v4}, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->access$002(Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;I)I

    .line 131
    :cond_7
    aget-byte v4, v2, v12

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v8

    aget-byte v5, v2, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "readMessage="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->BytesToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v2, v1, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->access$100(Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 135
    iget-object v2, v1, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;

    iget-object v2, v2, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->singleMileage:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-array v6, v3, [Ljava/lang/Object;

    mul-int/lit8 v8, v7, 0x1

    int-to-float v8, v8

    div-float v8, v8, v16

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v2, v1, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;

    iget-object v2, v2, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->averageSpeed:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-array v6, v3, [Ljava/lang/Object;

    int-to-float v7, v7

    mul-float v7, v7, v19

    int-to-float v8, v4

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "km/h"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v2, v1, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;

    iget-object v2, v2, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->maximumSpeed:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;

    invoke-static {v8}, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->access$000(Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;)I

    move-result v8

    mul-int/2addr v8, v3

    int-to-float v8, v8

    div-float v8, v8, v16

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 141
    :cond_8
    iget-object v2, v1, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;

    iget-object v2, v2, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->singleMileage:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-array v6, v3, [Ljava/lang/Object;

    int-to-double v8, v7

    mul-double v8, v8, v20

    div-double v8, v8, v17

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v2, v1, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;

    iget-object v2, v2, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->averageSpeed:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-array v6, v3, [Ljava/lang/Object;

    int-to-float v7, v7

    mul-float v7, v7, v19

    float-to-double v7, v7

    mul-double v7, v7, v20

    int-to-double v9, v4

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mph"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v2, v1, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;

    iget-object v2, v2, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->maximumSpeed:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;

    invoke-static {v8}, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->access$000(Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;)I

    move-result v8

    int-to-double v8, v8

    mul-double v8, v8, v20

    div-double v8, v8, v17

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :goto_2
    iget-object v2, v1, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;

    iget-object v2, v2, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->singleRide:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-array v6, v3, [Ljava/lang/Object;

    mul-int/2addr v4, v3

    int-to-float v3, v4

    div-float v3, v3, v19

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v6, v4

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "h"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_3
    return-void
.end method
