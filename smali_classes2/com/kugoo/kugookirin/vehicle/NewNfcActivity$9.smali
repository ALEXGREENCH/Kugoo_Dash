.class Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$9;
.super Landroid/content/BroadcastReceiver;
.source "NewNfcActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$9;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 474
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 475
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    .line 476
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$9;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    invoke-static {p1, v1}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->access$1202(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 477
    :cond_0
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_CODE_OK:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$9;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    invoke-static {p1, v1}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->access$1202(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 479
    :cond_1
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 480
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$9;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->access$1202(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 481
    :cond_2
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 482
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$9;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->access$1202(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 483
    :cond_3
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 484
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$9;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    invoke-static {p1, v1}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->access$1202(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 485
    sget-object p1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->EXTRA_DATA:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    .line 489
    :try_start_0
    new-instance p2, Ljava/lang/String;

    const-string v0, "gbk"

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 491
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string p1, ""

    :goto_0
    const-string p2, "RFAD"

    .line 494
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x6

    const/16 v3, 0x8

    if-eqz p2, :cond_6

    .line 495
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string v4, "+RFAD=0"

    if-le p2, v3, :cond_4

    .line 496
    iget-object p2, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$9;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->access$1302(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 497
    iget-object p2, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$9;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    invoke-static {p2, v4, v2}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->access$300(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;Ljava/lang/String;I)V

    .line 498
    iget-object p2, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$9;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    invoke-static {p2, v1}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->access$1402(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    :cond_4
    const-string p2, "+RFAD=E5"

    .line 500
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 502
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$9;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    invoke-static {p1, v1}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->access$1502(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 503
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$9;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    invoke-static {p1, v4, v2}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->access$300(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    const-string p2, "+RFAD=E4"

    .line 504
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 505
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$9;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    invoke-static {p1, v4, v2}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->access$300(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;Ljava/lang/String;I)V

    goto :goto_1

    :cond_6
    const-string p2, "RFDL"

    .line 507
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_1

    :cond_7
    const-string p2, "RFRP"

    .line 509
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 510
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x10

    .line 511
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "00000000"

    .line 512
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$9;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    .line 513
    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->access$400(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 514
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "add to set=="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewNfcActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$9;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->access$400(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 516
    new-instance p1, Lcom/kugoo/kugookirin/vehicle/bean/NfcCard;

    invoke-direct {p1, p2}, Lcom/kugoo/kugookirin/vehicle/bean/NfcCard;-><init>(Ljava/lang/String;)V

    .line 517
    iget-object p2, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$9;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    invoke-static {p2}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->access$500(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    :cond_8
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$9;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->access$1100(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)V

    :cond_9
    :goto_1
    return-void
.end method
