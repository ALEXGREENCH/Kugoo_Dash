.class Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$1;
.super Ljava/lang/Object;
.source "LFBluetootService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


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

    .line 179
    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$1;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 6

    .line 187
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$1;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$000(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$1;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$100(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$1;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$202(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;J)J

    .line 190
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$1;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$200(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$1;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$300(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$1;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$002(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Z)Z

    .line 193
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    sget-object v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$500(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$1;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    iput v1, v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->connectionState:I

    .line 195
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$1;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->stopScan()V

    const-wide/16 v2, 0x258

    .line 197
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 198
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$1;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->startScan()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 205
    :cond_0
    :goto_0
    invoke-static {p3}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->BytesToString([B)Ljava/lang/String;

    move-result-object p3

    .line 206
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$1;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    sget-object v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->deviceService:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$600(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$1;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    sget-object v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->deviceService_kugoo:Ljava/util/UUID;

    .line 207
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$600(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$1;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    sget-object v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->deviceService_fmi:Ljava/util/UUID;

    .line 208
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$600(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "str"

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "str==="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    monitor-enter p0

    .line 218
    :try_start_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$1;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    iget v0, v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->connectionState:I

    const/4 v2, 0x1

    if-nez v0, :cond_2

    move v1, v2

    .line 221
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 223
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$1;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 224
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$1;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    iput v2, v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->connectionState:I

    .line 225
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$1;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$700()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onLeScan: connecting--"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 227
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$1;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->connect(Ljava/lang/String;)Z

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$1;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$800(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->addDevice(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 221
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
