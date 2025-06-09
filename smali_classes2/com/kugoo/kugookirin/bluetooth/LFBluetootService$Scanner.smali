.class Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;
.super Ljava/lang/Thread;
.source "LFBluetootService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Scanner"
.end annotation


# instance fields
.field private final bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private bluetoothState:I

.field private isStart:Z

.field private final mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 1

    .line 242
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;->isStart:Z

    .line 240
    iput v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;->bluetoothState:I

    .line 243
    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 244
    iput-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 274
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    invoke-static {v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$908(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)I

    .line 275
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    invoke-static {v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$900(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)I

    move-result v1

    const/16 v2, 0x708

    if-ge v2, v1, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v1

    invoke-static {v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$900(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)I

    move-result v1

    :goto_1
    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$902(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;I)I

    .line 276
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 282
    iput v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;->bluetoothState:I

    .line 284
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    invoke-static {v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$900(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)I

    move-result v0

    if-ge v0, v2, :cond_1

    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    invoke-static {v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$900(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    invoke-static {v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1000(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 288
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1002(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Z)Z

    goto :goto_2

    .line 290
    :cond_1
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    invoke-static {v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$900(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)I

    move-result v0

    if-lt v0, v2, :cond_4

    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    invoke-static {v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1000(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 292
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 293
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1002(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Z)Z

    .line 294
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stopLeScan successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 298
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$902(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;I)I

    goto :goto_2

    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 300
    iget v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;->bluetoothState:I

    if-eq v0, v1, :cond_4

    .line 303
    iput v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;->bluetoothState:I

    .line 305
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$500(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 308
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 309
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$1002(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Z)Z

    :cond_4
    :goto_2
    const-wide/16 v0, 0x64

    .line 315
    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 320
    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 321
    throw v0

    .line 320
    :catch_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    return-void
.end method

.method public startScanning()V
    .locals 2

    .line 251
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startScanning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    monitor-enter p0

    .line 256
    :try_start_0
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;->isStart:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;->isStart:Z

    .line 259
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;->start()V

    .line 262
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
