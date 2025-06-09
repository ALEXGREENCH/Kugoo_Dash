.class Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "CheckInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 599
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 600
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    const-string v5, "CheckInfoActivity"

    if-eqz v3, :cond_0

    const-string v2, "android.bluetooth.device.extra.BOND_STATE"

    .line 602
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1f

    :pswitch_0
    const-string v1, "BluetoothDevice bonded"

    .line 612
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    :pswitch_1
    const-string v1, "BluetoothDevice bonding"

    .line 609
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    :pswitch_2
    const-string v1, "BluetoothDevice not bonded"

    .line 605
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 616
    :cond_0
    sget-object v3, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 617
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 619
    :cond_1
    sget-object v3, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 620
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 621
    :cond_2
    sget-object v3, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 622
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 623
    :cond_3
    sget-object v3, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 624
    sget-object v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->EXTRA_DATA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "LFBluetooth_rawValue="

    .line 625
    invoke-static {v1}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->BytesToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v2, v2, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->test__2:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->BytesToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 643
    aget-byte v3, v1, v2

    and-int/lit16 v5, v3, 0xff

    const/16 v6, 0x3a

    const/16 v7, 0xd

    const/16 v8, 0xa

    const/16 v9, 0x10

    const/4 v10, 0x3

    const v11, 0x7f1201b1

    const/4 v12, 0x4

    const v13, 0x7f1201ba

    const/16 v14, 0x8

    const/4 v15, 0x2

    const/4 v4, 0x1

    if-ne v5, v6, :cond_12

    aget-byte v5, v1, v4

    and-int/lit16 v6, v5, 0xff

    const/16 v2, 0x26

    if-eq v6, v2, :cond_4

    and-int/lit16 v2, v5, 0xff

    const/16 v5, 0x1a

    if-ne v2, v5, :cond_12

    :cond_4
    array-length v2, v1

    sub-int/2addr v2, v15

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v7, :cond_12

    array-length v2, v1

    sub-int/2addr v2, v4

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v8, :cond_12

    .line 648
    aget-byte v2, v1, v15

    and-int/lit16 v2, v2, 0xff

    .line 650
    array-length v3, v1

    const/16 v5, 0x14

    if-ne v3, v5, :cond_5

    const/16 v3, 0xf

    .line 651
    aget-byte v3, v1, v3

    goto :goto_0

    .line 653
    :cond_5
    aget-byte v3, v1, v14

    :goto_0
    and-int/lit16 v3, v3, 0xff

    const/16 v5, 0x20

    if-eq v2, v5, :cond_a

    const/16 v4, 0x52

    if-eq v2, v4, :cond_6

    goto/16 :goto_1e

    .line 658
    :cond_6
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$200(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Z

    move-result v2

    if-nez v2, :cond_7

    return-void

    .line 661
    :cond_7
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$300(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)V

    add-int/lit8 v3, v3, -0x21

    if-ltz v3, :cond_9

    if-gt v3, v12, :cond_9

    const/4 v2, 0x0

    .line 664
    :goto_1
    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v4, v4, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5b

    if-ne v3, v2, :cond_8

    .line 666
    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v4, v4, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v5, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v5, v5, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 668
    :cond_8
    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v4, v4, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v5, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v5, v5, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    const/4 v2, 0x0

    .line 672
    :goto_3
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v3, v3, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5b

    .line 673
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v3, v3, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v4, v4, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 678
    :cond_a
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$200(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Z

    move-result v2

    if-nez v2, :cond_b

    return-void

    .line 681
    :cond_b
    sget-object v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    const-string v3, "myt01"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return-void

    .line 684
    :cond_c
    aget-byte v2, v1, v7

    and-int/lit16 v2, v2, 0xff

    if-eq v2, v10, :cond_11

    if-eq v2, v12, :cond_10

    if-eq v2, v14, :cond_f

    if-eq v2, v9, :cond_e

    const/16 v3, 0x30

    if-eq v2, v3, :cond_d

    .line 724
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    const/16 v3, 0x65

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$600(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;I)V

    goto/16 :goto_1e

    .line 720
    :cond_d
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2, v12}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$402(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;I)I

    .line 721
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$400(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$600(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;I)V

    goto/16 :goto_1e

    .line 715
    :cond_e
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2, v10}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$402(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;I)I

    .line 716
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$500(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$400(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$600(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;I)V

    goto/16 :goto_1e

    .line 710
    :cond_f
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2, v15}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$402(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;I)I

    .line 711
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$500(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$400(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$600(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;I)V

    goto/16 :goto_1e

    .line 692
    :cond_10
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2, v4}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$402(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;I)I

    .line 693
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$500(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$400(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$600(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;I)V

    goto/16 :goto_1e

    .line 687
    :cond_11
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$402(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;I)I

    .line 688
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$500(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$400(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$600(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;I)V

    goto/16 :goto_1e

    .line 732
    :cond_12
    array-length v2, v1

    const-string v6, "kgkrn02"

    const/4 v5, 0x5

    const/16 v9, 0x31

    const/4 v7, 0x6

    const-string v12, "0"

    if-ne v2, v8, :cond_32

    and-int/lit16 v2, v3, 0xff

    const/16 v8, 0xaa

    if-ne v2, v8, :cond_32

    const/16 v2, 0x9

    aget-byte v8, v1, v2

    and-int/lit16 v8, v8, 0xff

    const/16 v2, 0xbb

    if-ne v8, v2, :cond_32

    .line 735
    aget-byte v2, v1, v4

    and-int/lit16 v2, v2, 0xff

    .line 736
    aget-byte v3, v1, v10

    and-int/lit16 v3, v3, 0xff

    .line 737
    aget-byte v8, v1, v5

    and-int/lit16 v8, v8, 0xff

    .line 738
    aget-byte v5, v1, v7

    and-int/lit16 v5, v5, 0xff

    .line 740
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 741
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v15, :cond_13

    .line 742
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 744
    :cond_13
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 745
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v15, :cond_14

    .line 746
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 748
    :cond_14
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 749
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v15, :cond_15

    .line 750
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_15
    const/16 v10, 0xa3

    if-eq v2, v10, :cond_24

    const/16 v3, 0xa4

    if-eq v2, v3, :cond_16

    goto/16 :goto_1e

    .line 813
    :cond_16
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$200(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Z

    move-result v2

    if-nez v2, :cond_17

    return-void

    .line 816
    :cond_17
    sget-object v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_4
    const/4 v15, -0x1

    goto/16 :goto_5

    :sswitch_0
    const-string v3, "kug20"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_4

    :cond_18
    const/16 v15, 0x9

    goto/16 :goto_5

    :sswitch_1
    const-string v3, "kug19"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_4

    :cond_19
    move v15, v14

    goto :goto_5

    :sswitch_2
    const-string v3, "kug11"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_4

    :cond_1a
    const/4 v15, 0x7

    goto :goto_5

    :sswitch_3
    const-string v3, "kug03"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_4

    :cond_1b
    move v15, v7

    goto :goto_5

    :sswitch_4
    const-string v3, "b205"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_4

    :cond_1c
    const/4 v15, 0x5

    goto :goto_5

    :sswitch_5
    const-string v3, "b17"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_4

    :cond_1d
    const/4 v15, 0x4

    goto :goto_5

    :sswitch_6
    const-string v3, "b11"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_4

    :cond_1e
    const/4 v15, 0x3

    goto :goto_5

    :sswitch_7
    const-string v3, "b2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_4

    :sswitch_8
    const-string v3, "b1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_4

    :cond_1f
    move v15, v4

    goto :goto_5

    :sswitch_9
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_4

    :cond_20
    const/4 v15, 0x0

    :cond_21
    :goto_5
    packed-switch v15, :pswitch_data_1

    goto/16 :goto_1e

    .line 838
    :pswitch_3
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$900(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)V

    .line 839
    invoke-static {v8}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->hexString2binaryString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 840
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-virtual {v2, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$802(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x0

    .line 841
    :goto_6
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v3}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$800(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5b

    .line 842
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v3}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$800(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v9, :cond_22

    .line 843
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v3, v3, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v4, v4, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_7

    .line 845
    :cond_22
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v3, v3, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v4, v4, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(I)V

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 826
    :pswitch_4
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$700(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)V

    .line 827
    invoke-static {v8}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->hexString2binaryString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 828
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-virtual {v2, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$802(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x0

    .line 829
    :goto_8
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v3}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$800(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5b

    .line 830
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v3}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$800(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v9, :cond_23

    .line 831
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v3, v3, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v4, v4, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_9

    .line 833
    :cond_23
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v3, v3, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v4, v4, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(I)V

    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 780
    :cond_24
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$200(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Z

    move-result v2

    if-nez v2, :cond_25

    return-void

    .line 783
    :cond_25
    sget-object v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    :goto_a
    const/4 v15, -0x1

    goto/16 :goto_b

    :sswitch_a
    const-string v6, "kug20"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_a

    :cond_26
    const/16 v15, 0xa

    goto/16 :goto_b

    :sswitch_b
    const-string v6, "kug19"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_a

    :cond_27
    const/16 v15, 0x9

    goto/16 :goto_b

    :sswitch_c
    const-string v6, "kug11"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_a

    :cond_28
    move v15, v14

    goto :goto_b

    :sswitch_d
    const-string v6, "kug03"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    goto :goto_a

    :cond_29
    const/4 v15, 0x7

    goto :goto_b

    :sswitch_e
    const-string v6, "b205"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    goto :goto_a

    :cond_2a
    move v15, v7

    goto :goto_b

    :sswitch_f
    const-string v6, "b17"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    goto :goto_a

    :cond_2b
    const/4 v15, 0x5

    goto :goto_b

    :sswitch_10
    const-string v6, "b11"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    goto :goto_a

    :cond_2c
    const/4 v15, 0x4

    goto :goto_b

    :sswitch_11
    const-string v6, "b2"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    goto :goto_a

    :cond_2d
    const/4 v15, 0x3

    goto :goto_b

    :sswitch_12
    const-string v6, "b1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_a

    :sswitch_13
    const-string v6, "kgkrn05"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    goto :goto_a

    :cond_2e
    move v15, v4

    goto :goto_b

    :sswitch_14
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_a

    :cond_2f
    const/4 v15, 0x0

    :cond_30
    :goto_b
    packed-switch v15, :pswitch_data_2

    .line 798
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$700(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)V

    .line 800
    invoke-static {v3}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->hexString2binaryString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 801
    invoke-static {v5}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->hexString2binaryString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 803
    iget-object v5, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3, v7, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$802(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x0

    .line 804
    :goto_c
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v3}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$800(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5b

    .line 805
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v3}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$800(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v9, :cond_31

    .line 806
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v3, v3, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v4, v4, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_d

    .line 808
    :cond_31
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v3, v3, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v4, v4, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(I)V

    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :pswitch_5
    return-void

    .line 854
    :cond_32
    array-length v2, v1

    const/16 v5, 0xb

    if-ne v2, v5, :cond_39

    and-int/lit16 v2, v3, 0xff

    const/16 v5, 0xaa

    if-ne v2, v5, :cond_39

    const/16 v2, 0xa

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v5, 0xbb

    if-ne v2, v5, :cond_39

    .line 857
    aget-byte v2, v1, v4

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x3

    .line 858
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v5, 0x5

    .line 859
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    .line 860
    aget-byte v6, v1, v7

    and-int/lit16 v6, v6, 0xff

    .line 862
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 863
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v15, :cond_33

    .line 864
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 866
    :cond_33
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 867
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v15, :cond_34

    .line 868
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 870
    :cond_34
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 871
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v15, :cond_35

    .line 872
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_35
    const/16 v6, 0xa3

    if-eq v2, v6, :cond_36

    goto/16 :goto_1e

    .line 901
    :cond_36
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$200(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Z

    move-result v2

    if-nez v2, :cond_37

    return-void

    .line 905
    :cond_37
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$1000(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)V

    .line 907
    invoke-static {v3}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->hexString2binaryString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 908
    invoke-static {v5}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->hexString2binaryString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 910
    iget-object v5, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3, v7, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$802(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x0

    .line 911
    :goto_e
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v3}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$800(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5b

    .line 912
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v3}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$800(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v9, :cond_38

    .line 913
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v3, v3, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v4, v4, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_f

    .line 915
    :cond_38
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v3, v3, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v4, v4, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(I)V

    :goto_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 925
    :cond_39
    array-length v2, v1

    const/16 v5, 0xe

    if-ne v2, v5, :cond_43

    and-int/lit16 v2, v3, 0xff

    if-eq v2, v15, :cond_3b

    and-int/lit16 v2, v3, 0xff

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3a

    goto :goto_10

    :cond_3a
    move v8, v3

    const/4 v3, 0x3

    goto/16 :goto_15

    :cond_3b
    :goto_10
    aget-byte v2, v1, v15

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v4, :cond_43

    const/16 v2, 0xd

    aget-byte v3, v1, v2

    and-int/lit16 v2, v3, 0xff

    .line 928
    invoke-static {v1}, Lcom/kugoo/kugookirin/utils/YiHuoUtil;->getXor_0_1([B)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    if-ne v2, v3, :cond_43

    const/4 v2, 0x0

    .line 929
    aget-byte v3, v1, v2

    and-int/lit16 v2, v3, 0xff

    const/4 v3, 0x3

    .line 930
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v5, 0x4

    .line 931
    aget-byte v6, v1, v5

    and-int/lit16 v5, v6, 0xff

    .line 932
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 933
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v15, :cond_3c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 934
    :cond_3c
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 935
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v15, :cond_3d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_3d
    const/16 v6, 0x10

    .line 937
    invoke-static {v3, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    new-array v8, v4, [Ljava/lang/Object;

    .line 938
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v10, 0x0

    aput-object v3, v8, v10

    const-string v3, "%08d"

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 941
    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    .line 942
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v10

    const-string v5, "%08d"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 944
    iget-object v6, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x5

    invoke-virtual {v3, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3, v7, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v8, 0x4

    .line 945
    invoke-virtual {v5, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 944
    invoke-static {v6, v3}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$802(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    if-eq v2, v15, :cond_3e

    if-eq v2, v8, :cond_3e

    goto/16 :goto_1e

    .line 974
    :cond_3e
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$200(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Z

    move-result v2

    if-nez v2, :cond_3f

    return-void

    .line 978
    :cond_3f
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$1100(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)V

    .line 980
    sget-object v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    const-string v3, "mtu01"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    const/4 v2, 0x0

    .line 981
    :goto_11
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v3}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$800(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v15

    if-ge v2, v3, :cond_5b

    .line 982
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v3}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$800(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v9, :cond_40

    .line 983
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v3, v3, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v4, v4, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_12

    .line 985
    :cond_40
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v3, v3, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v4, v4, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(I)V

    :goto_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_41
    const/4 v2, 0x0

    .line 990
    :goto_13
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v3}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$800(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5b

    .line 991
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v3}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$800(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v9, :cond_42

    .line 992
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v3, v3, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v4, v4, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_14

    .line 994
    :cond_42
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v3, v3, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v4, v4, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(I)V

    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_43
    const/4 v3, 0x3

    const/4 v8, 0x4

    :goto_15
    const/4 v10, 0x5

    .line 1004
    array-length v2, v1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4e

    const/4 v2, 0x0

    aget-byte v8, v1, v2

    and-int/lit16 v8, v8, 0xff

    if-ne v8, v4, :cond_4e

    aget-byte v8, v1, v15

    and-int/lit16 v8, v8, 0xff

    if-ne v8, v3, :cond_4e

    const-string v3, "mtu01"

    .line 1008
    sget-object v6, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    return-void

    .line 1011
    :cond_44
    aget-byte v3, v1, v2

    and-int/lit16 v2, v3, 0xff

    const/16 v3, 0xd

    .line 1012
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    .line 1013
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    if-eq v2, v4, :cond_45

    goto/16 :goto_1e

    .line 1018
    :cond_45
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$200(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Z

    move-result v2

    if-nez v2, :cond_46

    return-void

    :cond_46
    if-nez v5, :cond_47

    .line 1023
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v2, v2, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->acceleratorPiece:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_16

    .line 1025
    :cond_47
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v2, v2, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->acceleratorPiece:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_16
    if-ne v3, v4, :cond_48

    const-string v12, "1"

    goto :goto_17

    :cond_48
    if-nez v3, :cond_49

    goto :goto_17

    :cond_49
    if-ne v3, v15, :cond_4a

    const-string v12, "2"

    goto :goto_17

    :cond_4a
    const-string v12, "3333333"

    :goto_17
    const-string v2, "3333333"

    .line 1038
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_4b

    .line 1039
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2, v4}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$1202(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;Z)Z

    .line 1042
    :cond_4b
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$1200(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const-string v2, "1"

    .line 1043
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1044
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v2, v2, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->comReceiveCheckResult:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_18

    .line 1046
    :cond_4c
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v2, v2, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->comReceiveCheckResult:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(I)V

    :goto_18
    const-string v2, "2"

    .line 1049
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 1050
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v2, v2, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->brakeCheckResult:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1e

    .line 1052
    :cond_4d
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v2, v2, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->brakeCheckResult:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1e

    .line 1060
    :cond_4e
    array-length v2, v1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_52

    const/4 v2, 0x0

    aget-byte v3, v1, v2

    and-int/lit16 v2, v3, 0xff

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_52

    aget-byte v2, v1, v4

    and-int/lit16 v3, v2, 0xff

    const/16 v8, 0xa0

    if-ne v3, v8, :cond_52

    and-int/lit16 v2, v2, 0xff

    .line 1066
    aget-byte v3, v1, v5

    and-int/lit16 v3, v3, 0xff

    .line 1068
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 1069
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v15, :cond_4f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4f
    const/16 v5, 0x10

    .line 1073
    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 1074
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "%08d"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1077
    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x7

    invoke-virtual {v3, v7, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$802(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    const/16 v3, 0xa0

    if-eq v2, v3, :cond_50

    goto/16 :goto_1e

    .line 1104
    :cond_50
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$1300(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)V

    .line 1105
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v2, v2, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->test__1:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->BytesToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v5

    .line 1107
    :goto_19
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v3}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$800(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5b

    .line 1108
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v3}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$800(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v9, :cond_51

    .line 1109
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v3, v3, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v4, v4, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(I)V

    .line 1110
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v3, v3, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v4, v4, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    const v5, 0x7f0602c2

    invoke-virtual {v4, v5}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1a

    .line 1112
    :cond_51
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v3, v3, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v4, v4, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->layoutList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(I)V

    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_52
    const/4 v5, 0x0

    .line 1122
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$200(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Z

    move-result v2

    if-nez v2, :cond_53

    return-void

    .line 1125
    :cond_53
    sget-object v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_2

    :goto_1b
    const/4 v4, -0x1

    goto :goto_1c

    :sswitch_15
    const-string v3, "kgkrn25"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    goto :goto_1b

    :cond_54
    move v4, v7

    goto :goto_1c

    :sswitch_16
    const-string v3, "kgkrn10"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    goto :goto_1b

    :cond_55
    move v4, v10

    goto :goto_1c

    :sswitch_17
    const-string v3, "kgkrn07"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    goto :goto_1b

    :cond_56
    const/4 v4, 0x4

    goto :goto_1c

    :sswitch_18
    const-string v3, "kgkrn05"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    goto :goto_1b

    :cond_57
    const/4 v4, 0x3

    goto :goto_1c

    :sswitch_19
    const-string v3, "kgkrn04"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    goto :goto_1b

    :cond_58
    move v4, v15

    goto :goto_1c

    :sswitch_1a
    const-string v3, "kgkrn03"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    goto :goto_1b

    :sswitch_1b
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    goto :goto_1b

    :cond_59
    move v4, v5

    :cond_5a
    :goto_1c
    packed-switch v4, :pswitch_data_3

    .line 1135
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v2, v2, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1136
    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v4, v4, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->viewMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1d

    .line 1142
    :cond_5b
    :goto_1e
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object v2, v2, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->test__2:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->BytesToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    nop

    :cond_5c
    :goto_1f
    :pswitch_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x2de8cbb3 -> :sswitch_14
        -0x2de8cbb0 -> :sswitch_13
        0xc0f -> :sswitch_12
        0xc10 -> :sswitch_11
        0x17602 -> :sswitch_10
        0x17608 -> :sswitch_f
        0x2d4e15 -> :sswitch_e
        0x61a8b00 -> :sswitch_d
        0x61a8b1d -> :sswitch_c
        0x61a8b25 -> :sswitch_b
        0x61a8b3b -> :sswitch_a
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x2de8cbb3 -> :sswitch_1b
        -0x2de8cbb2 -> :sswitch_1a
        -0x2de8cbb1 -> :sswitch_19
        -0x2de8cbb0 -> :sswitch_18
        -0x2de8cbae -> :sswitch_17
        -0x2de8cb96 -> :sswitch_16
        -0x2de8cb72 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
