.class Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$CheckDevice;
.super Ljava/lang/Thread;
.source "LFBluetootService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckDevice"
.end annotation


# instance fields
.field private final bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    .line 347
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 348
    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$CheckDevice;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 357
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    invoke-static {v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1100(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 359
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    iget-object v0, v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v0

    .line 360
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    iget-object v1, v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    .line 362
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$700()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connected(aim:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v3

    invoke-static {v3}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1200(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 365
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    invoke-static {v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$800(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->currentDeviceAddress:Ljava/lang/String;

    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v2

    invoke-static {v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1200(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_5

    .line 366
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    invoke-static {v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$800(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->currentDeviceAddress:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_5

    .line 368
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1302(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Ljava/lang/String;)Ljava/lang/String;

    .line 369
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    invoke-static {v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$800(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    move-result-object v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->currentDeviceAddress:Ljava/lang/String;

    .line 370
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$500(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 373
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_4

    .line 375
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 377
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v4

    invoke-static {v4}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1200(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    .line 379
    :goto_2
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v4

    invoke-static {v4}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1400(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 380
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v4

    invoke-static {v4}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1400(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 381
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 382
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v4

    invoke-static {v4}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1400(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 383
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v4

    invoke-static {v4}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1400(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 388
    :cond_2
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$700()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mbleService.gattHashMap"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 391
    :cond_3
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    invoke-static {v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$800(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    move-result-object v1

    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v2

    invoke-static {v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1200(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->currentDeviceAddress:Ljava/lang/String;

    .line 392
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    sget-object v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$500(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 396
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    invoke-static {v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1300(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 398
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1302(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Ljava/lang/String;)Ljava/lang/String;

    :cond_5
    :goto_3
    const-wide/16 v0, 0xbb8

    .line 405
    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$CheckDevice;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 413
    throw v0

    :catch_0
    return-void
.end method
