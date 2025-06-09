.class Lcom/kugoo/kugookirin/vehicle/SettingsActivity$20;
.super Landroid/content/BroadcastReceiver;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/vehicle/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)V
    .locals 0

    .line 862
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$20;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 865
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 866
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    const-string v2, "android.bluetooth.device.extra.BOND_STATE"

    .line 868
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    goto/16 :goto_8

    .line 877
    :cond_0
    sget-object v3, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_8

    .line 878
    :cond_1
    sget-object v3, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 879
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$20;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    invoke-static {v1, v5}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->access$402(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;Z)Z

    .line 880
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$20;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->access$200(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_IS_CONNECT:Ljava/lang/String;

    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$20;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    invoke-static {v3}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->access$400(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_8

    .line 881
    :cond_2
    sget-object v3, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 882
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$20;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    invoke-static {v1, v5}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->access$402(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;Z)Z

    .line 883
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$20;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->access$200(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_IS_CONNECT:Ljava/lang/String;

    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$20;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    invoke-static {v3}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->access$400(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_8

    .line 884
    :cond_3
    sget-object v3, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_CODE_OK:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 886
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    const-string v2, "+UNIT=?"

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 887
    :cond_4
    sget-object v3, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 888
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$20;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->access$402(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;Z)Z

    .line 889
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$20;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->access$200(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v6, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_IS_CONNECT:Ljava/lang/String;

    iget-object v7, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$20;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    invoke-static {v7}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->access$400(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)Z

    move-result v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 890
    sget-object v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->EXTRA_DATA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 891
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 893
    iget-object v6, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$20;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    invoke-static {v6, v2}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->access$500(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;Ljava/lang/String;)V

    .line 895
    array-length v2, v1

    const/16 v7, 0xa

    const/16 v8, 0xbb

    const/16 v9, 0x9

    const/4 v10, 0x6

    const/16 v11, 0xaa

    const/4 v12, 0x3

    const/4 v13, 0x5

    const-string v14, "0"

    const/4 v15, 0x2

    if-ne v2, v7, :cond_14

    aget-byte v2, v1, v5

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v11, :cond_14

    aget-byte v2, v1, v9

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v8, :cond_14

    .line 898
    aget-byte v2, v1, v3

    and-int/lit16 v2, v2, 0xff

    .line 899
    aget-byte v4, v1, v13

    and-int/lit16 v4, v4, 0xff

    .line 900
    aget-byte v6, v1, v10

    and-int/lit16 v6, v6, 0xff

    .line 902
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 903
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 904
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v15, :cond_5

    .line 905
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 907
    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v15, :cond_6

    .line 908
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_6
    const/16 v9, 0xa3

    if-eq v2, v9, :cond_7

    goto/16 :goto_4

    .line 913
    :cond_7
    invoke-virtual {v4, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 914
    invoke-virtual {v6, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 915
    invoke-virtual {v6, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 922
    sget-object v6, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :goto_0
    const/4 v6, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v9, "kug20"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_0

    :cond_8
    const/16 v6, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v9, "kug19"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_0

    :cond_9
    const/16 v6, 0x8

    goto/16 :goto_1

    :sswitch_2
    const-string v9, "kug11"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_0

    :cond_a
    const/4 v6, 0x7

    goto :goto_1

    :sswitch_3
    const-string v9, "kug03"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_0

    :cond_b
    move v6, v10

    goto :goto_1

    :sswitch_4
    const-string v9, "b205"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_0

    :cond_c
    move v6, v13

    goto :goto_1

    :sswitch_5
    const-string v9, "b17"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_0

    :cond_d
    const/4 v6, 0x4

    goto :goto_1

    :sswitch_6
    const-string v9, "b11"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_0

    :cond_e
    move v6, v12

    goto :goto_1

    :sswitch_7
    const-string v9, "b2"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_0

    :cond_f
    move v6, v15

    goto :goto_1

    :sswitch_8
    const-string v9, "b1"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    goto :goto_0

    :cond_10
    move v6, v3

    goto :goto_1

    :sswitch_9
    const-string v9, "kgkrn02"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    goto :goto_0

    :cond_11
    move v6, v5

    :goto_1
    packed-switch v6, :pswitch_data_0

    goto :goto_4

    .line 933
    :pswitch_0
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 934
    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$20;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    invoke-static {v4, v5}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->access$602(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;Z)Z

    goto :goto_2

    .line 936
    :cond_12
    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$20;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    invoke-static {v4, v3}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->access$602(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;Z)Z

    .line 938
    :goto_2
    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$20;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    iget-object v4, v4, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->walkModeBtn:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$20;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    invoke-static {v6}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->access$600(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 940
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 941
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$20;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->access$702(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;Z)Z

    goto :goto_3

    .line 943
    :cond_13
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$20;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    invoke-static {v2, v5}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->access$702(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;Z)Z

    .line 945
    :goto_3
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$20;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->access$700(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)Z

    move-result v4

    invoke-static {v2, v4}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->access$800(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;Z)V

    .line 953
    :cond_14
    :goto_4
    array-length v2, v1

    const/16 v4, 0x10

    if-ne v2, v4, :cond_18

    aget-byte v2, v1, v5

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v3, :cond_18

    aget-byte v2, v1, v15

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v4, :cond_18

    const-string v2, "mtu01"

    .line 957
    sget-object v6, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    return-void

    .line 960
    :cond_15
    aget-byte v2, v1, v5

    and-int/lit16 v2, v2, 0xff

    const/16 v6, 0xe

    .line 961
    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    if-eq v2, v3, :cond_16

    goto :goto_5

    :cond_16
    if-nez v6, :cond_17

    .line 966
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$20;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->access$200(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v6, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_SHOW_ACCEL:Ljava/lang/String;

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_5

    .line 968
    :cond_17
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$20;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->access$200(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v6, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_SHOW_ACCEL:Ljava/lang/String;

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 975
    :cond_18
    :goto_5
    array-length v2, v1

    if-ne v2, v10, :cond_1b

    aget-byte v2, v1, v5

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v11, :cond_1b

    aget-byte v2, v1, v13

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v8, :cond_1b

    .line 979
    aget-byte v2, v1, v3

    and-int/lit16 v2, v2, 0xff

    .line 980
    aget-byte v6, v1, v15

    and-int/lit16 v6, v6, 0xff

    .line 981
    aget-byte v9, v1, v12

    and-int/lit16 v9, v9, 0xff

    .line 983
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 984
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v15, :cond_19

    .line 985
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 987
    :cond_19
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xf6

    if-eq v2, v10, :cond_1a

    const/16 v4, 0xfa

    goto :goto_6

    .line 991
    :cond_1a
    invoke-virtual {v6, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 992
    invoke-virtual {v6, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 993
    invoke-virtual {v9, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 994
    invoke-virtual {v9, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 995
    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 997
    invoke-static {v6, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 999
    invoke-static {v10, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 1006
    invoke-static {v9, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 1033
    :cond_1b
    :goto_6
    array-length v2, v1

    const/16 v4, 0x9

    if-ne v2, v4, :cond_20

    aget-byte v2, v1, v5

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v11, :cond_20

    const/16 v2, 0x8

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v8, :cond_20

    .line 1040
    aget-byte v2, v1, v3

    and-int/lit16 v2, v2, 0xff

    .line 1041
    aget-byte v4, v1, v12

    and-int/lit16 v4, v4, 0xff

    .line 1043
    aget-byte v1, v1, v13

    and-int/lit16 v1, v1, 0xff

    .line 1044
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1045
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v15, :cond_1c

    .line 1046
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1c
    if-eq v2, v12, :cond_1d

    goto :goto_8

    :cond_1d
    if-ne v4, v13, :cond_20

    .line 1051
    invoke-virtual {v1, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1052
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_7

    .line 1057
    :cond_1e
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$20;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    invoke-static {v1, v5}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->access$602(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;Z)Z

    goto :goto_7

    .line 1054
    :cond_1f
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$20;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    invoke-static {v1, v3}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->access$602(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;Z)Z

    .line 1060
    :goto_7
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$20;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    iget-object v1, v1, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->walkModeBtn:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$20;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->access$600(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_20
    :goto_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2de8cbb3 -> :sswitch_9
        0xc0f -> :sswitch_8
        0xc10 -> :sswitch_7
        0x17602 -> :sswitch_6
        0x17608 -> :sswitch_5
        0x2d4e15 -> :sswitch_4
        0x61a8b00 -> :sswitch_3
        0x61a8b1d -> :sswitch_2
        0x61a8b25 -> :sswitch_1
        0x61a8b3b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
