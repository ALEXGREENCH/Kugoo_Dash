.class Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$1;
.super Ljava/lang/Object;
.source "LFBluetootService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;

.field final synthetic val$gatt:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$1;->this$1:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;

    iput-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$1;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "ReadUUID Characteristic:"

    const-wide/16 v1, 0xc8

    .line 564
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 565
    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$1;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$1;->this$1:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;

    iget-object v2, v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1900(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 566
    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$1;->this$1:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;

    iget-object v1, v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1900(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    sget-object v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 568
    sget-object v2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    .line 569
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 570
    iget-object v2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$1;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 573
    :cond_0
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$700()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$1;->this$1:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;

    iget-object v0, v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1900(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 576
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 579
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
