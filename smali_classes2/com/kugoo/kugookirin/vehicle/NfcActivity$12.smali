.class Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;
.super Landroid/content/BroadcastReceiver;
.source "NfcActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/vehicle/NfcActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v0, p0

    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 529
    sget-object v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    .line 530
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v2, :cond_0

    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v1, v4}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$1302(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 531
    :cond_0
    sget-object v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_CODE_OK:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 532
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v1, v4}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$1302(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 533
    :cond_1
    sget-object v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 534
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$1302(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 536
    :cond_2
    sget-object v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 537
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$1302(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 539
    :cond_3
    sget-object v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 540
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v1, v4}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$1302(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 541
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->EXTRA_DATA:Ljava/lang/String;

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 542
    invoke-static {v1}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->BytesToString([B)Ljava/lang/String;

    move-result-object v1

    .line 543
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AAAA"

    .line 548
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$800(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 549
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$700(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)V

    const/4 v2, 0x6

    const/4 v6, 0x4

    .line 550
    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 553
    iget-object v7, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v7}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$1400(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v9, 0x2

    const-string v10, "NfcActivityLog"

    const-string v11, "E1"

    const-string v12, "D1"

    const-string v13, "C1"

    const-string v14, "B1"

    const-string v15, "A1"

    const-string v6, "FF"

    const/4 v8, 0x5

    if-eqz v7, :cond_8

    .line 554
    iget-object v7, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v7}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$400(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    if-ge v7, v8, :cond_f

    .line 555
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 558
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 559
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$802(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 560
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "search success, readMessage=="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$400(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 563
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    iput v3, v1, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->emptyPos:I

    .line 564
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v1, v15}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$1502(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 565
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v1, v4}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$1602(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 566
    :cond_4
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$400(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 567
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    iput v9, v1, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->emptyPos:I

    .line 568
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v1, v14}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$1502(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 569
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v1, v4}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$1602(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 570
    :cond_5
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$400(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 571
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    const/4 v7, 0x3

    iput v7, v1, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->emptyPos:I

    .line 572
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v1, v13}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$1502(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 573
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v1, v4}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$1602(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 574
    :cond_6
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$400(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 575
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    const/4 v2, 0x4

    iput v2, v1, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->emptyPos:I

    .line 576
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v1, v12}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$1502(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 577
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v1, v4}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$1602(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 578
    :cond_7
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$400(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 579
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    iput v8, v1, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->emptyPos:I

    .line 580
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v1, v11}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$1502(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 581
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v1, v4}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$1602(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_8
    const/4 v1, 0x4

    const/4 v7, 0x3

    .line 587
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 592
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$400(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    .line 595
    :cond_9
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$400(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v3, v9

    goto :goto_0

    .line 598
    :cond_a
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$400(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v3, v7

    goto :goto_0

    .line 601
    :cond_b
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$400(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move v3, v1

    goto :goto_0

    .line 604
    :cond_c
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$400(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    move v3, v8

    goto :goto_0

    :cond_d
    move v3, v5

    .line 608
    :goto_0
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$900(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "+ADDCARD="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    .line 609
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "command==+ADDCARD="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NfcTest"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 613
    :cond_e
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$400(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$400(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-ge v1, v8, :cond_f

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "add bound card id to set, cardId=="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$400(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 617
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/bean/NfcCard;

    invoke-direct {v1, v2}, Lcom/kugoo/kugookirin/vehicle/bean/NfcCard;-><init>(Ljava/lang/String;)V

    .line 618
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$500(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$300(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;->notifyDataSetChanged()V

    :cond_f
    :goto_1
    return-void
.end method
