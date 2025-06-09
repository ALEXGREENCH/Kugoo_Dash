.class Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;
.super Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;
.source "LFBluetootService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-direct {p0}, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 6

    const-string v0, "delay1"

    .line 663
    invoke-super {p0, p1, p2}, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 665
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    const/4 v2, 0x0

    .line 670
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 672
    :try_start_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ljava/lang/ThreadGroup;

    invoke-direct {v2, v0}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$4;

    invoke-direct {v4, p0, v3}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$4;-><init>(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;Ljava/lang/String;)V

    invoke-direct {v1, v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    .line 689
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception v1

    .line 693
    :goto_0
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v3, v2

    .line 697
    :goto_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 700
    iget-object v2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1300(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 703
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$700()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "change current device("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {v5}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1300(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")-->("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1502(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 706
    iget-object v2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1302(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Ljava/lang/String;)Ljava/lang/String;

    .line 710
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {v4}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$800(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    move-result-object v4

    iget-object v4, v4, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->currentDeviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 714
    iget-object v2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$800(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->currentDeviceAddress:Ljava/lang/String;

    .line 715
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {p1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$800(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->notifyDataSetChanged()V

    :cond_1
    const-string p1, "CODE_OK"

    .line 718
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_4

    .line 719
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {p1, v4}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$102(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Z)Z

    .line 720
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {p1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$800(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    move-result-object p1

    iput-boolean v4, p1, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->is_Code_Ok:Z

    .line 721
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {p1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$2000(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 723
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {p1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$2002(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;I)I

    .line 725
    :cond_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {p1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$2100(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 726
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {p1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$2102(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Z)Z

    .line 727
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    iget-object v2, p1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->password:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->savePassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :cond_3
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    const/4 v1, 0x2

    iput v1, p1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->connectionState:I

    .line 731
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_CODE_OK:Ljava/lang/String;

    invoke-static {p1, v1, p2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$2200(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 733
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/ThreadGroup;

    invoke-direct {v1, v0}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$5;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$5;-><init>(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;)V

    invoke-direct {p1, v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    .line 746
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :cond_4
    const-string p1, "CODE_NG"

    .line 747
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 749
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {p1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$2008(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)I

    .line 750
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {p1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$2000(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_5

    .line 752
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {p1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$2002(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;I)I

    .line 753
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-virtual {p1, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->removePassword(Ljava/lang/String;)V

    .line 754
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-virtual {p1, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->disconnect(Ljava/lang/String;)Z

    .line 755
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->showToast(Ljava/lang/String;Z)V

    goto :goto_2

    .line 758
    :cond_5
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_REQUEST_PASSWORD_AGAIN:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$500(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Ljava/lang/String;)V

    .line 762
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$2200(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 763
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$302(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;J)J

    .line 764
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {p1, v4}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$002(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Z)Z

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    .line 650
    invoke-super {p0, p1, p2, p3}, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    if-nez p3, :cond_0

    .line 654
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    sget-object p3, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-static {p1, p3, p2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$2200(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    :cond_0
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2

    .line 427
    invoke-super {p0, p1, p2, p3}, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    .line 429
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lfbluetoot=onConnection"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "====="

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 435
    iget-object p3, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {p3, p2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1502(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 436
    iget-object p3, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1302(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Ljava/lang/String;)Ljava/lang/String;

    .line 437
    iget-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {p2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$800(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    move-result-object p2

    iget-object p3, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {p3}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1500(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->currentDeviceAddress:Ljava/lang/String;

    .line 438
    iget-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {p2, p1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1602(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    .line 440
    iget-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    sget-object p3, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$500(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Ljava/lang/String;)V

    const-wide/16 p2, 0x64

    .line 442
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 444
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 447
    :goto_0
    iget-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {p2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1600(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 449
    iget-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {p2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1400(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_0
    const-string v0, "Disconnected from GATT server."

    if-nez p3, :cond_2

    .line 452
    iget-object p3, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    const/4 v1, 0x0

    iput v1, p3, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->connectionState:I

    .line 453
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {p3}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1300(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Ljava/lang/String;

    move-result-object p3

    if-ne p2, p3, :cond_1

    .line 454
    iget-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1302(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Ljava/lang/String;)Ljava/lang/String;

    .line 455
    iget-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {p2, p3}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1502(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 456
    iget-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {p2, p3}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1202(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Ljava/lang/String;)Ljava/lang/String;

    .line 457
    iget-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    sget-object p3, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$500(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Ljava/lang/String;)V

    .line 459
    :cond_1
    iget-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {p2, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1702(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Z)Z

    .line 460
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 462
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$700()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/16 p2, 0x85

    if-ne p3, p2, :cond_3

    .line 465
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$700()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 469
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 470
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {p3}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1200(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 472
    iget-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->connect(Ljava/lang/String;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public onConnectionUpdated(Landroid/bluetooth/BluetoothGatt;IIII)V
    .locals 0

    .line 771
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "lfbluetoot=updated"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "====="

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->requestConnectionPriority(I)V

    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    .line 779
    invoke-super {p0, p1, p2, p3}, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;->onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V

    if-nez p3, :cond_0

    .line 782
    new-instance p1, Landroid/content/Intent;

    sget-object p3, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 783
    sget-object p3, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->EXTRA_TEXT:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.vehicle.kugooa"

    .line 784
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    iget-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 8

    .line 499
    invoke-super {p0, p1, p2}, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    if-nez p2, :cond_a

    .line 504
    iget-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1802(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 505
    iget-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {p2, v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1902(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 507
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$700()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Discovered Services==: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {p2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1600(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p2

    .line 511
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 513
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    .line 515
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$700()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Discovered Service:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v1

    .line 518
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 519
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$700()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getCharacteristics is Empty!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 521
    :cond_1
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$700()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getCharacteristics isn\'t Empty!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 523
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    .line 524
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$700()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Characteristic:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    sget-object v5, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->writeUUID:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 526
    sput v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->CONNECT_TYPE:I

    .line 527
    iget-object v4, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {v4, v3}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1802(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    goto :goto_1

    .line 529
    :cond_3
    sget-object v5, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->writeUUID_kugoo:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x2

    .line 530
    sput v4, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->CONNECT_TYPE:I

    .line 531
    iget-object v4, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {v4, v3}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1802(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    goto :goto_1

    .line 533
    :cond_4
    sget-object v5, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->writeUUID_fmi:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v4, 0x3

    .line 534
    sput v4, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->CONNECT_TYPE:I

    .line 535
    iget-object v4, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {v4, v3}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1802(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    goto :goto_1

    .line 537
    :cond_5
    sget-object v5, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->readUUID:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 539
    iget-object v4, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {v4, v3}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1902(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    goto :goto_1

    .line 541
    :cond_6
    sget-object v5, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->readUUID_kugoo:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 543
    iget-object v4, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {v4, v3}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1902(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    goto :goto_1

    .line 545
    :cond_7
    sget-object v5, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->readUUID_fmi:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 547
    iget-object v4, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {v4, v3}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1902(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    goto/16 :goto_1

    .line 554
    :cond_8
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Discovered Services: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " OK"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {p2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1800(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {p2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1900(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 558
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Ljava/lang/ThreadGroup;

    const-string v1, "delay1"

    invoke-direct {v0, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$1;

    invoke-direct {v3, p0, p1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$1;-><init>(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;Landroid/bluetooth/BluetoothGatt;)V

    invoke-direct {p2, v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    .line 582
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 584
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Ljava/lang/ThreadGroup;

    invoke-direct {v0, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$2;

    invoke-direct {v3, p0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$2;-><init>(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;)V

    invoke-direct {p2, v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    .line 600
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 602
    sget-object p2, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_DEVICE_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 603
    sget-object p2, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_MAC:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 604
    iget-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$102(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Z)Z

    .line 605
    iget-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {p2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$800(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    move-result-object p2

    iput-boolean v0, p2, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->is_Code_Ok:Z

    .line 606
    new-instance p2, Ljava/lang/Thread;

    new-instance v3, Ljava/lang/ThreadGroup;

    invoke-direct {v3, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$3;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$3;-><init>(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;Landroid/bluetooth/BluetoothGatt;)V

    invoke-direct {p2, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    .line 628
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 631
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$2002(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;I)I

    .line 632
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {p1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$2102(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Z)Z

    .line 634
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$700()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "WriteUUID Characteristic:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1800(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_9
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    sget-object p2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$500(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Ljava/lang/String;)V

    goto :goto_2

    .line 641
    :cond_a
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$700()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServicesDiscovered received: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 481
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "refresh"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    new-array v2, v0, [Ljava/lang/Object;

    .line 484
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 485
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 489
    :catch_0
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$700()Ljava/lang/String;

    move-result-object p1

    const-string v1, "An exception occured while refreshing device"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method
