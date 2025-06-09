.class Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 92
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "SystemInfoActivity"

    if-eqz v3, :cond_0

    const-string v2, "android.bluetooth.device.extra.BOND_STATE"

    const/4 v3, -0x1

    .line 109
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string v1, "BluetoothDevice bonded"

    .line 120
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_1
    const-string v1, "BluetoothDevice bonding"

    .line 116
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_2
    const-string v1, "BluetoothDevice not bonded"

    .line 112
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 124
    :cond_0
    sget-object v3, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 126
    :cond_1
    sget-object v3, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 128
    :cond_2
    sget-object v3, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 130
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 131
    :cond_3
    sget-object v3, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 132
    sget-object v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->EXTRA_DATA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 137
    array-length v2, v1

    const/4 v3, 0x6

    const/4 v4, 0x3

    const/16 v5, 0xbb

    const/4 v6, 0x5

    const/16 v7, 0xaa

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v2, v3, :cond_7

    aget-byte v2, v1, v8

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v7, :cond_7

    aget-byte v2, v1, v6

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v5, :cond_7

    .line 138
    aget-byte v2, v1, v9

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xf9

    if-eq v2, v3, :cond_4

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x2

    .line 142
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    .line 143
    aget-byte v10, v1, v4

    and-int/lit16 v10, v10, 0xff

    .line 144
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 146
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v13, "Hi"

    invoke-static {v13, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Li"

    invoke-static {v12, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    const-string v12, "0"

    if-ge v11, v2, :cond_5

    .line 149
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 151
    :cond_5
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v11, v2, :cond_6

    .line 152
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 154
    :cond_6
    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 155
    invoke-virtual {v3, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-virtual {v10, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 157
    invoke-virtual {v10, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 159
    iget-object v10, v0, Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;

    iget-object v10, v10, Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;->mFirmwareTv:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "."

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;

    iget-object v3, v3, Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;->mSoftwareTv:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_7
    :goto_0
    array-length v2, v1

    const/16 v3, 0xa3

    const/4 v10, 0x4

    const/16 v11, 0xa

    const/high16 v12, 0x41200000    # 10.0f

    const-string v13, "%.1f"

    if-ne v2, v11, :cond_9

    aget-byte v2, v1, v8

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v7, :cond_9

    const/16 v2, 0x9

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v5, :cond_9

    .line 166
    aget-byte v2, v1, v9

    and-int/lit16 v2, v2, 0xff

    .line 167
    aget-byte v14, v1, v4

    .line 168
    aget-byte v14, v1, v10

    and-int/lit16 v14, v14, 0xff

    .line 169
    aget-byte v15, v1, v6

    and-int/lit16 v15, v15, 0xff

    if-eq v2, v3, :cond_8

    goto :goto_1

    .line 173
    :cond_8
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;

    iget-object v2, v2, Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;->mFirmwareTv:Landroid/widget/TextView;

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v6, v9, [Ljava/lang/Object;

    int-to-float v15, v15

    div-float/2addr v15, v12

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v6, v8

    invoke-static {v3, v13, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;

    iget-object v2, v2, Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;->mSoftwareTv:Landroid/widget/TextView;

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v6, v9, [Ljava/lang/Object;

    int-to-float v14, v14

    div-float/2addr v14, v12

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v6, v8

    invoke-static {v3, v13, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :cond_9
    :goto_1
    array-length v2, v1

    const/16 v3, 0xb

    if-ne v2, v3, :cond_b

    aget-byte v2, v1, v8

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v7, :cond_b

    aget-byte v2, v1, v11

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v5, :cond_b

    .line 179
    aget-byte v2, v1, v9

    and-int/lit16 v2, v2, 0xff

    .line 180
    aget-byte v3, v1, v4

    .line 181
    aget-byte v3, v1, v10

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x5

    .line 182
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    const/16 v4, 0xa3

    if-eq v2, v4, :cond_a

    goto :goto_2

    .line 186
    :cond_a
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;

    iget-object v2, v2, Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;->mFirmwareTv:Landroid/widget/TextView;

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v5, v9, [Ljava/lang/Object;

    int-to-float v1, v1

    div-float/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-static {v4, v13, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;

    iget-object v1, v1, Lcom/kugoo/kugookirin/vehicle/SystemInfoActivity;->mSoftwareTv:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v4, v9, [Ljava/lang/Object;

    int-to-float v3, v3

    div-float/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v4, v8

    invoke-static {v2, v13, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
