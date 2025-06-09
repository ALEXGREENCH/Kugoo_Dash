.class Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;
.super Landroid/content/BroadcastReceiver;
.source "VehicleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/vehicle/VehicleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V
    .locals 0

    .line 1051
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21

    move-object/from16 v0, p0

    .line 1056
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1057
    sget-object v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_CODE_OK:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x65

    const-string v4, "VehicleFragment"

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    .line 1058
    invoke-static {v5}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$502(Z)Z

    .line 1059
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$602(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1061
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$702(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1062
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--> bleMac=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$600(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "// blaName=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$700(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VehicleFragmentuploadTTest"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1066
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$902(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;J)J

    .line 1067
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1069
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    const-string v2, "GETDEVID"

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    .line 1070
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26$1;

    invoke-direct {v2, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26$1;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1077
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26$2;

    invoke-direct {v2, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26$2;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;)V

    const-wide/16 v3, 0x258

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_26

    .line 1089
    :cond_0
    sget-object v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1090
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 1091
    :cond_1
    sget-object v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v9, 0x0

    if-eqz v2, :cond_8

    .line 1092
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    invoke-static {v9}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$502(Z)Z

    .line 1097
    new-instance v1, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;

    invoke-direct {v1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;-><init>()V

    .line 1098
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$600(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setMac(Ljava/lang/String;)V

    .line 1099
    sget-object v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setVersion(Ljava/lang/String;)V

    .line 1100
    sget-object v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v10, -0x1

    sparse-switch v4, :sswitch_data_0

    :goto_0
    move v6, v10

    goto :goto_1

    :sswitch_0
    const-string v4, "kug12"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :sswitch_1
    const-string v4, "kug11"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1

    :sswitch_2
    const-string v4, "kug03"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "b17"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    move v6, v5

    goto :goto_1

    :sswitch_4
    const-string v4, "b11"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    move v6, v9

    :cond_6
    :goto_1
    packed-switch v6, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v2, "kug19"

    .line 1102
    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setModel(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1
    const-string v2, "\u5927\u9c7cB1"

    .line 1105
    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setModel(Ljava/lang/String;)V

    :pswitch_2
    const-string v2, "\u5927\u9c7cB2"

    .line 1107
    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setModel(Ljava/lang/String;)V

    :pswitch_3
    const-string v2, "\u5927\u9c7cB3"

    .line 1109
    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setModel(Ljava/lang/String;)V

    :pswitch_4
    const-string v2, "\u98de\u7c73Jupiter 1"

    .line 1111
    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setModel(Ljava/lang/String;)V

    .line 1113
    :goto_2
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$700(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setModel(Ljava/lang/String;)V

    .line 1115
    :goto_3
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$1000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_7

    .line 1116
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$1000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setMileage(Ljava/lang/String;)V

    .line 1117
    :cond_7
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setTimelog(Ljava/lang/String;)V

    .line 1118
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$1100(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;)V

    .line 1119
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1125
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$1200(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 1126
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1, v9}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$1202(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z

    .line 1127
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1, v5}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$1300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)V

    goto/16 :goto_26

    .line 1129
    :cond_8
    sget-object v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1130
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 1131
    :cond_9
    sget-object v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 1132
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    invoke-static {v5}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$502(Z)Z

    .line 1134
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->EXTRA_DATA:Ljava/lang/String;

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 1136
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ACTION_DATA_AVAILABLE data=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->BytesToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$1400(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Ljava/lang/String;)V

    .line 1140
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget-object v2, v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->test_flag:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v10}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$1500(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z

    move-result v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ""

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1143
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$1500(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z

    move-result v2

    if-nez v2, :cond_a

    return-void

    .line 1148
    :cond_a
    array-length v2, v1

    const/16 v3, 0xbb

    const/16 v10, 0xaa

    const/16 v11, 0xc

    const/16 v13, 0xb

    const/4 v14, 0x5

    const/4 v15, 0x7

    const/4 v8, 0x6

    const/16 v12, 0x8

    if-ne v2, v11, :cond_d

    aget-byte v2, v1, v9

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v10, :cond_d

    aget-byte v2, v1, v13

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v3, :cond_d

    .line 1151
    aget-byte v2, v1, v5

    and-int/lit16 v2, v2, 0xff

    .line 1152
    aget-byte v11, v1, v7

    and-int/lit16 v11, v11, 0xff

    .line 1153
    aget-byte v13, v1, v6

    and-int/lit16 v13, v13, 0xff

    .line 1154
    aget-byte v6, v1, v14

    and-int/lit16 v6, v6, 0xff

    .line 1155
    aget-byte v14, v1, v8

    and-int/lit16 v14, v14, 0xff

    .line 1156
    aget-byte v8, v1, v15

    and-int/lit16 v8, v8, 0xff

    .line 1157
    aget-byte v15, v1, v12

    and-int/lit16 v15, v15, 0xff

    const/16 v16, 0x9

    .line 1158
    aget-byte v7, v1, v16

    and-int/lit16 v7, v7, 0xff

    .line 1160
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    .line 1161
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 1162
    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    .line 1163
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    .line 1164
    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v4

    .line 1165
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v20, v1

    const/16 v1, 0xa5

    if-eq v2, v1, :cond_c

    :cond_b
    :goto_4
    move-object/from16 v1, v20

    goto :goto_5

    .line 1169
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    int-to-char v1, v13

    .line 1170
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    int-to-char v2, v6

    .line 1171
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    int-to-char v3, v14

    .line 1172
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    int-to-char v4, v8

    .line 1173
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    int-to-char v5, v15

    .line 1174
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    int-to-char v6, v7

    .line 1175
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    .line 1177
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v11, v2, :cond_b

    .line 1179
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$1600(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1180
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$1700(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    move-object/from16 v19, v4

    .line 1188
    :goto_5
    array-length v2, v1

    const/16 v3, 0xa

    const/16 v4, 0x10

    const-string v5, "1"

    const/16 v6, 0x64

    const-string v7, "0"

    if-ne v2, v3, :cond_1e

    const/4 v2, 0x0

    aget-byte v8, v1, v2

    and-int/lit16 v2, v8, 0xff

    const/16 v8, 0xaa

    if-ne v2, v8, :cond_1e

    const/16 v2, 0x9

    aget-byte v8, v1, v2

    and-int/lit16 v2, v8, 0xff

    const/16 v8, 0xbb

    if-ne v2, v8, :cond_1e

    .line 1191
    invoke-static {v1}, Lcom/kugoo/kugookirin/utils/YiHuoUtil;->getXor_0_2([B)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/16 v8, 0x8

    aget-byte v9, v1, v8

    and-int/lit16 v8, v9, 0xff

    if-ne v2, v8, :cond_1e

    const/4 v2, 0x1

    .line 1192
    aget-byte v8, v1, v2

    and-int/lit16 v2, v8, 0xff

    const/4 v8, 0x3

    .line 1193
    aget-byte v9, v1, v8

    and-int/lit16 v8, v9, 0xff

    const/4 v10, 0x4

    .line 1194
    aget-byte v11, v1, v10

    and-int/lit16 v10, v11, 0xff

    const/4 v12, 0x5

    .line 1195
    aget-byte v13, v1, v12

    and-int/lit16 v12, v13, 0xff

    const/4 v14, 0x6

    .line 1196
    aget-byte v15, v1, v14

    const/4 v14, 0x7

    .line 1197
    aget-byte v15, v1, v14

    and-int/lit16 v14, v15, 0xff

    const/4 v15, 0x2

    new-array v3, v15, [B

    const/16 v17, 0x0

    aput-byte v9, v3, v17

    const/4 v9, 0x1

    aput-byte v11, v3, v9

    aget-byte v18, v3, v17

    aget-byte v3, v3, v9

    and-int/lit16 v3, v11, 0xff

    const/16 v9, 0x8

    shl-int/2addr v3, v9

    and-int/lit16 v9, v13, 0xff

    or-int/2addr v3, v9

    .line 1204
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    .line 1205
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v15, :cond_e

    .line 1206
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1208
    :cond_e
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    .line 1209
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v15, :cond_f

    .line 1210
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1212
    :cond_f
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    .line 1213
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v15, :cond_10

    .line 1214
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1216
    :cond_10
    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    .line 1217
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v15, :cond_11

    .line 1218
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_11
    const/4 v10, 0x3

    .line 1220
    aget-byte v11, v1, v10

    and-int/lit16 v10, v11, 0xff

    const/16 v11, 0x8

    shl-int/2addr v10, v11

    const/4 v12, 0x4

    aget-byte v13, v1, v12

    and-int/lit16 v12, v13, 0xff

    or-int/2addr v10, v12

    const/4 v12, 0x5

    .line 1223
    aget-byte v13, v1, v12

    and-int/lit16 v12, v13, 0xff

    shl-int/2addr v12, v4

    const/4 v13, 0x6

    aget-byte v14, v1, v13

    and-int/lit16 v13, v14, 0xff

    shl-int/2addr v13, v11

    or-int v11, v12, v13

    const/4 v12, 0x7

    aget-byte v13, v1, v12

    and-int/lit16 v12, v13, 0xff

    or-int/2addr v11, v12

    const/16 v12, 0xa1

    if-eq v2, v12, :cond_18

    const/16 v3, 0xa2

    if-eq v2, v3, :cond_17

    const/16 v3, 0xa4

    if-eq v2, v3, :cond_12

    goto/16 :goto_c

    :cond_12
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1284
    invoke-virtual {v9, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x2

    .line 1285
    invoke-virtual {v9, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1287
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 1288
    iget-object v9, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v9, v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2102(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z

    goto :goto_6

    .line 1289
    :cond_13
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1290
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2102(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z

    .line 1292
    :cond_14
    :goto_6
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2100(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2200(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)V

    .line 1294
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1295
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2302(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z

    goto :goto_7

    .line 1296
    :cond_15
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1297
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2302(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z

    .line 1299
    :cond_16
    :goto_7
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2400(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)V

    goto :goto_c

    .line 1280
    :cond_17
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    int-to-float v3, v11

    const/4 v8, 0x2

    invoke-static {v2, v8, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;IF)V

    .line 1281
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    int-to-float v3, v10

    const/4 v8, 0x1

    invoke-static {v2, v8, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;IF)V

    goto :goto_c

    :cond_18
    if-gez v8, :cond_19

    const/4 v8, 0x0

    goto :goto_8

    :cond_19
    if-le v8, v6, :cond_1a

    move v8, v6

    .line 1235
    :cond_1a
    :goto_8
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2, v8}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$1800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;I)V

    .line 1267
    sget-object v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    const-string v8, "kug11"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    sget-object v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    const-string v8, "kug19"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_9

    :cond_1b
    move-object/from16 v8, v19

    goto :goto_b

    :cond_1c
    :goto_9
    const/16 v2, 0x182

    if-le v3, v2, :cond_1d

    const/16 v2, 0x1c2

    goto :goto_a

    :cond_1d
    int-to-float v2, v3

    const v3, 0x3f956042    # 1.167f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    :goto_a
    move v3, v2

    .line 1273
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "onReceive: imoogoo_kug19 or 11"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v8, v19

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    :goto_b
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$1900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;F)V

    goto :goto_d

    :cond_1e
    :goto_c
    move-object/from16 v8, v19

    .line 1304
    :goto_d
    array-length v2, v1

    const/4 v3, 0x6

    if-ne v2, v3, :cond_26

    const/4 v2, 0x0

    aget-byte v3, v1, v2

    and-int/lit16 v2, v3, 0xff

    const/16 v3, 0xaa

    if-ne v2, v3, :cond_26

    const/4 v2, 0x5

    aget-byte v3, v1, v2

    and-int/lit16 v2, v3, 0xff

    const/16 v3, 0xbb

    if-ne v2, v3, :cond_26

    const/4 v2, 0x1

    .line 1308
    aget-byte v3, v1, v2

    and-int/lit16 v2, v3, 0xff

    const/4 v3, 0x2

    .line 1309
    aget-byte v9, v1, v3

    and-int/lit16 v3, v9, 0xff

    const/4 v9, 0x3

    .line 1310
    aget-byte v10, v1, v9

    and-int/lit16 v9, v10, 0xff

    const/4 v10, 0x4

    .line 1311
    aget-byte v11, v1, v10

    .line 1313
    iget-object v10, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget-object v10, v10, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->test_receive_3:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "6bytes=="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->BytesToString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v10, 0x2

    .line 1315
    aget-byte v11, v1, v10

    const/4 v10, 0x3

    aget-byte v11, v1, v10

    .line 1318
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "command="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "valueH="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "valueL="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 1320
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_1f

    .line 1321
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1323
    :cond_1f
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 1324
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v11, :cond_20

    .line 1325
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_20
    const/16 v8, 0xf1

    if-eq v2, v8, :cond_21

    goto :goto_10

    :cond_21
    if-gez v3, :cond_22

    const/4 v3, 0x0

    goto :goto_e

    :cond_22
    if-le v3, v6, :cond_23

    move v3, v6

    .line 1336
    :cond_23
    :goto_e
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$1800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;I)V

    if-gez v9, :cond_24

    const/4 v2, 0x0

    goto :goto_f

    :cond_24
    const/16 v2, 0xc8

    if-le v9, v2, :cond_25

    const/16 v2, 0xc8

    goto :goto_f

    :cond_25
    move v2, v9

    .line 1343
    :goto_f
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    int-to-float v2, v2

    invoke-static {v3, v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$1900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;F)V

    .line 1353
    :cond_26
    :goto_10
    array-length v2, v1

    const/16 v3, 0xb

    if-ne v2, v3, :cond_3a

    const/4 v2, 0x0

    aget-byte v3, v1, v2

    and-int/lit16 v2, v3, 0xff

    const/16 v3, 0xaa

    if-ne v2, v3, :cond_3a

    const/16 v2, 0xa

    aget-byte v3, v1, v2

    and-int/lit16 v2, v3, 0xff

    const/16 v3, 0xbb

    if-ne v2, v3, :cond_3a

    const/4 v2, 0x1

    .line 1358
    aget-byte v3, v1, v2

    and-int/lit16 v2, v3, 0xff

    const/4 v3, 0x3

    .line 1359
    aget-byte v8, v1, v3

    and-int/lit16 v3, v8, 0xff

    const/4 v9, 0x4

    .line 1360
    aget-byte v10, v1, v9

    and-int/lit16 v9, v10, 0xff

    const/4 v11, 0x5

    .line 1361
    aget-byte v12, v1, v11

    and-int/lit16 v11, v12, 0xff

    const/4 v13, 0x6

    .line 1362
    aget-byte v14, v1, v13

    and-int/lit16 v13, v14, 0xff

    const/4 v14, 0x7

    .line 1363
    aget-byte v15, v1, v14

    and-int/lit16 v14, v15, 0xff

    const/16 v15, 0x8

    .line 1364
    aget-byte v16, v1, v15

    const/4 v6, 0x2

    new-array v4, v6, [B

    const/16 v16, 0x0

    aput-byte v8, v4, v16

    const/4 v8, 0x1

    aput-byte v10, v4, v8

    aget-byte v17, v4, v16

    aget-byte v4, v4, v8

    and-int/lit16 v4, v10, 0xff

    shl-int/2addr v4, v15

    and-int/lit16 v8, v12, 0xff

    or-int/2addr v4, v8

    .line 1371
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 1372
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v6, :cond_27

    .line 1373
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1375
    :cond_27
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 1376
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v6, :cond_28

    .line 1377
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1379
    :cond_28
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 1380
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v6, :cond_29

    .line 1381
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1384
    :cond_29
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 1385
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v6, :cond_2a

    .line 1386
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1389
    :cond_2a
    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    .line 1390
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v6, :cond_2b

    .line 1391
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_2b
    const/4 v6, 0x3

    .line 1394
    aget-byte v10, v1, v6

    and-int/lit16 v6, v10, 0xff

    const/16 v10, 0x8

    shl-int/2addr v6, v10

    const/4 v10, 0x4

    aget-byte v11, v1, v10

    and-int/lit16 v10, v11, 0xff

    or-int/2addr v6, v10

    const/4 v10, 0x5

    .line 1397
    aget-byte v11, v1, v10

    and-int/lit16 v10, v11, 0xff

    shl-int/lit8 v10, v10, 0x20

    const/4 v11, 0x6

    aget-byte v12, v1, v11

    and-int/lit16 v11, v12, 0xff

    const/16 v12, 0x10

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    const/4 v11, 0x7

    aget-byte v12, v1, v11

    and-int/lit16 v11, v12, 0xff

    const/16 v12, 0x8

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    aget-byte v11, v1, v12

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    const/16 v11, 0xa1

    if-eq v2, v11, :cond_2d

    const/16 v3, 0xa2

    if-eq v2, v3, :cond_2c

    goto/16 :goto_18

    .line 1462
    :cond_2c
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    int-to-float v3, v10

    const/4 v4, 0x2

    invoke-static {v2, v4, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;IF)V

    .line 1463
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    int-to-float v3, v6

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;IF)V

    goto/16 :goto_18

    :cond_2d
    if-gez v3, :cond_2e

    const/4 v3, 0x0

    goto :goto_11

    :cond_2e
    const/16 v2, 0x64

    if-le v3, v2, :cond_2f

    const/16 v3, 0x64

    .line 1407
    :cond_2f
    :goto_11
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$1800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;I)V

    .line 1412
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    int-to-float v3, v4

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$1900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;F)V

    .line 1415
    invoke-static {v8}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->hexString2binaryString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1416
    invoke-static {v8}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->hexString2binaryString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x6

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x2

    const/4 v6, 0x1

    .line 1417
    invoke-virtual {v9, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1420
    invoke-static {v9}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->hexString2binaryString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1423
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1424
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2102(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z

    goto :goto_12

    .line 1425
    :cond_30
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1426
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2, v6}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2102(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z

    .line 1428
    :cond_31
    :goto_12
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2100(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2200(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)V

    .line 1430
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1431
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2302(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z

    goto :goto_13

    .line 1432
    :cond_32
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1433
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2302(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z

    goto :goto_14

    :cond_33
    :goto_13
    const/4 v3, 0x1

    .line 1435
    :goto_14
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z

    move-result v6

    invoke-static {v2, v6}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2400(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)V

    .line 1437
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1438
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2502(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z

    goto :goto_15

    .line 1439
    :cond_34
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1440
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2502(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z

    .line 1442
    :cond_35
    :goto_15
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2500(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2600(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)V

    .line 1444
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    packed-switch v2, :pswitch_data_1

    goto :goto_16

    :pswitch_5
    const-string v2, "4"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    goto :goto_16

    :cond_36
    const/4 v3, 0x3

    goto :goto_16

    :pswitch_6
    const-string v2, "3"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    goto :goto_16

    :cond_37
    const/4 v3, 0x2

    goto :goto_16

    :pswitch_7
    const-string v2, "2"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    goto :goto_16

    :cond_38
    const/4 v3, 0x1

    goto :goto_16

    :pswitch_8
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    goto :goto_16

    :cond_39
    const/4 v3, 0x0

    :goto_16
    packed-switch v3, :pswitch_data_2

    goto :goto_17

    .line 1455
    :pswitch_9
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2702(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;I)I

    goto :goto_17

    .line 1452
    :pswitch_a
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2702(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;I)I

    goto :goto_17

    .line 1449
    :pswitch_b
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2702(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;I)I

    goto :goto_17

    .line 1446
    :pswitch_c
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2702(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;I)I

    .line 1458
    :goto_17
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2700(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;I)V

    .line 1472
    :cond_3a
    :goto_18
    array-length v2, v1

    const/16 v3, 0x9

    if-ne v2, v3, :cond_4a

    const/4 v2, 0x0

    aget-byte v3, v1, v2

    and-int/lit16 v2, v3, 0xff

    const/16 v3, 0xaa

    if-ne v2, v3, :cond_4a

    const/16 v2, 0x8

    aget-byte v3, v1, v2

    and-int/lit16 v2, v3, 0xff

    const/16 v3, 0xbb

    if-ne v2, v3, :cond_4a

    const/4 v2, 0x1

    .line 1478
    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$502(Z)Z

    .line 1479
    aget-byte v3, v1, v2

    and-int/lit16 v2, v3, 0xff

    const/4 v3, 0x3

    .line 1480
    aget-byte v4, v1, v3

    and-int/lit16 v3, v4, 0xff

    const/4 v4, 0x5

    .line 1482
    aget-byte v6, v1, v4

    and-int/lit16 v4, v6, 0xff

    .line 1483
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 1484
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x2

    if-ge v6, v8, :cond_3b

    .line 1485
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3b
    const/4 v6, 0x3

    if-eq v2, v6, :cond_3c

    goto/16 :goto_20

    :cond_3c
    const/4 v2, 0x1

    if-ne v3, v2, :cond_41

    .line 1490
    invoke-virtual {v4, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1491
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v8, -0x1

    packed-switch v2, :pswitch_data_3

    goto :goto_19

    :pswitch_d
    const-string v2, "3"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    goto :goto_19

    :cond_3d
    const/4 v8, 0x3

    goto :goto_19

    :pswitch_e
    const-string v2, "2"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    goto :goto_19

    :cond_3e
    const/4 v8, 0x2

    goto :goto_19

    :pswitch_f
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    goto :goto_19

    :cond_3f
    const/4 v8, 0x1

    goto :goto_19

    :pswitch_10
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    goto :goto_19

    :cond_40
    const/4 v8, 0x0

    :goto_19
    packed-switch v8, :pswitch_data_4

    :goto_1a
    const/4 v2, 0x2

    goto :goto_1b

    .line 1497
    :pswitch_11
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v2, v6}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2702(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;I)I

    .line 1498
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2700(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)I

    move-result v6

    invoke-static {v2, v6}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;I)V

    goto :goto_1a

    :cond_41
    move v2, v8

    :goto_1b
    const/4 v6, 0x1

    if-ne v3, v2, :cond_44

    .line 1506
    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1507
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    goto :goto_1c

    .line 1512
    :cond_42
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2, v6}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2302(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z

    goto :goto_1c

    .line 1509
    :cond_43
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2302(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z

    .line 1515
    :goto_1c
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z

    move-result v8

    invoke-static {v2, v8}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2400(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)V

    :cond_44
    const/4 v2, 0x3

    if-ne v3, v2, :cond_47

    const/4 v2, 0x2

    .line 1520
    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1521
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    :goto_1d
    const/4 v6, 0x1

    goto :goto_1e

    .line 1526
    :cond_45
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2502(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z

    goto :goto_1d

    .line 1523
    :cond_46
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    const/4 v6, 0x1

    invoke-static {v2, v6}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2502(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z

    .line 1529
    :goto_1e
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2500(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z

    move-result v8

    invoke-static {v2, v8}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2600(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)V

    :cond_47
    const/4 v2, 0x4

    if-ne v3, v2, :cond_4a

    const/4 v2, 0x2

    .line 1533
    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1534
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    goto :goto_1f

    .line 1539
    :cond_48
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2, v6}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2102(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z

    goto :goto_1f

    .line 1536
    :cond_49
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2102(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z

    .line 1542
    :goto_1f
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2100(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2200(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)V

    .line 1549
    :cond_4a
    :goto_20
    array-length v2, v1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_52

    const/4 v2, 0x0

    aget-byte v3, v1, v2

    and-int/lit16 v2, v3, 0xff

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_52

    const/4 v2, 0x1

    aget-byte v3, v1, v2

    and-int/lit16 v2, v3, 0xff

    const/16 v4, 0xa0

    if-ne v2, v4, :cond_52

    and-int/lit16 v2, v3, 0xff

    const/4 v3, 0x3

    .line 1555
    aget-byte v4, v1, v3

    and-int/lit16 v3, v4, 0xff

    const/4 v5, 0x4

    .line 1556
    aget-byte v5, v1, v5

    and-int/lit16 v6, v5, 0xff

    const/4 v8, 0x5

    .line 1557
    aget-byte v9, v1, v8

    and-int/lit16 v8, v9, 0xff

    const/4 v9, 0x6

    .line 1558
    aget-byte v10, v1, v9

    const/4 v9, 0x7

    .line 1559
    aget-byte v10, v1, v9

    and-int/lit16 v9, v10, 0xff

    const/16 v10, 0x8

    .line 1560
    aget-byte v11, v1, v10

    const/4 v11, 0x2

    new-array v12, v11, [B

    const/4 v11, 0x0

    aput-byte v4, v12, v11

    const/4 v4, 0x1

    aput-byte v5, v12, v4

    const/16 v5, 0xc

    .line 1562
    aget-byte v13, v1, v5

    const/16 v5, 0xd

    aget-byte v5, v1, v5

    aget-byte v14, v12, v11

    aget-byte v11, v12, v4

    and-int/lit16 v4, v13, 0xff

    shl-int/2addr v4, v10

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 1567
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 1568
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v10, 0x2

    if-ge v6, v10, :cond_4b

    .line 1569
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1571
    :cond_4b
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 1572
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v10, :cond_4c

    .line 1573
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1575
    :cond_4c
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 1576
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v10, :cond_4d

    .line 1577
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1579
    :cond_4d
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 1580
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v10, :cond_4e

    .line 1581
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_4e
    const/4 v5, 0x6

    .line 1583
    aget-byte v6, v1, v5

    and-int/lit16 v5, v6, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    const/4 v7, 0x7

    aget-byte v8, v1, v7

    and-int/lit16 v7, v8, 0xff

    or-int/2addr v5, v7

    .line 1586
    aget-byte v7, v1, v6

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x20

    const/16 v8, 0x9

    aget-byte v9, v1, v8

    and-int/lit16 v8, v9, 0xff

    const/16 v9, 0x10

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    const/16 v8, 0xa

    aget-byte v9, v1, v8

    and-int/lit16 v8, v9, 0xff

    shl-int/2addr v8, v6

    or-int v6, v7, v8

    const/16 v7, 0xb

    aget-byte v8, v1, v7

    and-int/lit16 v7, v8, 0xff

    or-int/2addr v6, v7

    const/16 v7, 0xa0

    if-eq v2, v7, :cond_4f

    goto :goto_22

    :cond_4f
    if-gez v3, :cond_50

    const/4 v3, 0x0

    goto :goto_21

    :cond_50
    const/16 v2, 0x64

    if-le v3, v2, :cond_51

    const/16 v3, 0x64

    .line 1597
    :cond_51
    :goto_21
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$1800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;I)V

    .line 1601
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget-object v2, v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->test_receive_1:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->BytesToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1602
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    int-to-float v3, v4

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$1900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;F)V

    .line 1604
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    int-to-float v3, v6

    const/4 v4, 0x2

    invoke-static {v2, v4, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;IF)V

    .line 1605
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    int-to-float v3, v5

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;IF)V

    goto :goto_23

    :cond_52
    :goto_22
    const/4 v4, 0x1

    .line 1614
    :goto_23
    array-length v2, v1

    const/16 v3, 0xf

    if-ne v2, v3, :cond_55

    const/4 v2, 0x0

    aget-byte v3, v1, v2

    and-int/lit16 v2, v3, 0xff

    if-ne v2, v4, :cond_55

    aget-byte v2, v1, v4

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0xf

    if-ne v2, v4, :cond_55

    and-int/lit16 v2, v3, 0xff

    const/4 v3, 0x3

    .line 1616
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x2

    new-array v5, v4, [B

    const/16 v6, 0xc

    .line 1618
    aget-byte v7, v1, v6

    const/4 v6, 0x0

    aput-byte v7, v5, v6

    const/16 v7, 0xd

    aget-byte v7, v1, v7

    const/4 v8, 0x1

    aput-byte v7, v5, v8

    new-array v7, v4, [B

    const/4 v4, 0x6

    .line 1619
    aget-byte v9, v1, v4

    aput-byte v9, v7, v6

    const/4 v4, 0x7

    aget-byte v9, v1, v4

    aput-byte v9, v7, v8

    const/16 v4, 0x8

    .line 1620
    aget-byte v9, v1, v4

    const/16 v10, 0x9

    aget-byte v11, v1, v10

    const/16 v10, 0xa

    aget-byte v12, v1, v10

    const/16 v10, 0xb

    aget-byte v13, v1, v10

    aget-byte v10, v5, v6

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v4

    aget-byte v5, v5, v8

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v10

    aget-byte v10, v7, v6

    and-int/lit16 v6, v10, 0xff

    shl-int/2addr v6, v4

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    and-int/lit16 v7, v9, 0xff

    shl-int/lit8 v7, v7, 0x18

    and-int/lit16 v8, v11, 0xff

    const/16 v9, 0x10

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    and-int/lit16 v8, v12, 0xff

    shl-int/2addr v8, v4

    or-int v4, v7, v8

    and-int/lit16 v7, v13, 0xff

    or-int/2addr v4, v7

    const/4 v7, 0x1

    if-eq v2, v7, :cond_53

    goto :goto_25

    :cond_53
    const/16 v2, 0x64

    if-le v3, v2, :cond_54

    const/16 v2, 0x64

    goto :goto_24

    :cond_54
    move v2, v3

    .line 1630
    :goto_24
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v3, v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$1800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;I)V

    .line 1638
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    int-to-float v3, v5

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$1900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;F)V

    .line 1639
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    int-to-float v3, v6

    const/4 v5, 0x1

    invoke-static {v2, v5, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;IF)V

    .line 1640
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    int-to-float v3, v4

    const/4 v4, 0x2

    invoke-static {v2, v4, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;IF)V

    .line 1649
    :cond_55
    :goto_25
    array-length v2, v1

    const/16 v3, 0xe

    if-ne v2, v3, :cond_56

    const/4 v2, 0x0

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x1

    if-ne v3, v4, :cond_56

    aget-byte v3, v1, v4

    and-int/lit16 v3, v3, 0xff

    const/16 v5, 0xb

    if-ne v3, v5, :cond_56

    const/4 v3, 0x2

    .line 1655
    aget-byte v6, v1, v3

    and-int/lit16 v6, v6, 0xff

    new-array v7, v3, [B

    .line 1657
    aget-byte v5, v1, v5

    aput-byte v5, v7, v2

    const/16 v5, 0xc

    aget-byte v5, v1, v5

    aput-byte v5, v7, v4

    new-array v5, v3, [B

    const/4 v3, 0x5

    .line 1658
    aget-byte v3, v1, v3

    aput-byte v3, v5, v2

    const/4 v3, 0x6

    aget-byte v3, v1, v3

    aput-byte v3, v5, v4

    const/4 v3, 0x7

    .line 1659
    aget-byte v3, v1, v3

    const/16 v8, 0x8

    aget-byte v9, v1, v8

    const/16 v10, 0x9

    aget-byte v10, v1, v10

    const/16 v11, 0xa

    aget-byte v1, v1, v11

    aget-byte v11, v7, v2

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v8

    aget-byte v7, v7, v4

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v11

    aget-byte v2, v5, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v8

    aget-byte v5, v5, v4

    and-int/lit16 v4, v5, 0xff

    or-int/2addr v2, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    and-int/lit16 v4, v9, 0xff

    const/16 v5, 0x10

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    and-int/lit16 v4, v10, 0xff

    shl-int/2addr v4, v8

    or-int/2addr v3, v4

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v3

    const/16 v3, 0x64

    .line 1665
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1667
    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v4, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$1800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;I)V

    .line 1683
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    int-to-float v4, v7

    invoke-static {v3, v4}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$1900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;F)V

    .line 1684
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    int-to-float v2, v2

    const/4 v4, 0x1

    invoke-static {v3, v4, v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;IF)V

    .line 1685
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    int-to-float v1, v1

    const/4 v3, 0x2

    invoke-static {v2, v3, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;IF)V

    return-void

    :cond_56
    const/4 v3, 0x2

    .line 1695
    array-length v2, v1

    const/16 v4, 0x10

    if-ne v2, v4, :cond_59

    const/4 v2, 0x0

    aget-byte v5, v1, v2

    and-int/lit16 v2, v5, 0xff

    const/4 v5, 0x1

    if-ne v2, v5, :cond_59

    aget-byte v2, v1, v3

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v4, :cond_59

    .line 1699
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->BytesToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VehicleFragment---\u9502\u75352\u53f7\u65b0\u534f\u8bae\uff08\u946b\u5a01xnw-06 16\u5b57\u8282\uff09---"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "mtu01"

    .line 1701
    sget-object v3, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    return-void

    :cond_57
    const/4 v2, 0x0

    .line 1704
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x2

    new-array v5, v4, [B

    const/16 v6, 0xb

    .line 1706
    aget-byte v6, v1, v6

    aput-byte v6, v5, v2

    const/16 v6, 0xc

    aget-byte v6, v1, v6

    const/4 v7, 0x1

    aput-byte v6, v5, v7

    new-array v6, v4, [B

    const/4 v4, 0x5

    .line 1707
    aget-byte v4, v1, v4

    aput-byte v4, v6, v2

    const/4 v4, 0x6

    aget-byte v4, v1, v4

    aput-byte v4, v6, v7

    const/4 v4, 0x7

    .line 1708
    aget-byte v4, v1, v4

    const/16 v8, 0x8

    aget-byte v9, v1, v8

    const/16 v10, 0x9

    aget-byte v10, v1, v10

    const/16 v11, 0xa

    aget-byte v1, v1, v11

    aget-byte v11, v5, v2

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v8

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v11

    aget-byte v2, v6, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v8

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    and-int/lit16 v6, v9, 0xff

    const/16 v7, 0x10

    shl-int/2addr v6, v7

    or-int/2addr v4, v6

    and-int/lit16 v6, v10, 0xff

    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_58

    goto :goto_26

    .line 1716
    :cond_58
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    int-to-float v5, v5

    invoke-static {v3, v5}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$1900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;F)V

    .line 1717
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    int-to-float v2, v2

    invoke-static {v3, v4, v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;IF)V

    .line 1718
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    int-to-float v1, v1

    const/4 v3, 0x2

    invoke-static {v2, v3, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;IF)V

    :cond_59
    :goto_26
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x17602 -> :sswitch_4
        0x17608 -> :sswitch_3
        0x61a8b00 -> :sswitch_2
        0x61a8b1d -> :sswitch_1
        0x61a8b1e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x31
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x30
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method
