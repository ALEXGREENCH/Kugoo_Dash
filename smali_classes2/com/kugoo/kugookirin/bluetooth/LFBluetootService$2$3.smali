.class Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$3;
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

    .line 606
    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$3;->this$1:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;

    iput-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$3;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "CODE="

    const-string v1, "password=="

    const-wide/16 v2, 0x9c4

    .line 611
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 612
    iget-object v2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$3;->this$1:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;

    iget-object v2, v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    iget-object v3, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$3;->this$1:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;

    iget-object v3, v3, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    iget-object v4, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$3;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->password:Ljava/lang/String;

    const-string v2, "jhahaahah"

    .line 613
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$3;->this$1:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;

    iget-object v1, v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    iget-object v1, v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->password:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$3;->this$1:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;

    iget-object v1, v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    iget-object v1, v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->password:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 615
    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$3;->this$1:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;

    iget-object v1, v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$3;->this$1:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;

    iget-object v0, v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    iget-object v0, v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->password:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    goto :goto_0

    .line 616
    :cond_0
    sget v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->CONNECT_TYPE:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 617
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$3;->this$1:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;

    iget-object v0, v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    const-string v1, "CODE=000000"

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    goto :goto_0

    .line 619
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$3;->this$1:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;

    iget-object v0, v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_REQUEST_PASSWORD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$500(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 622
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 625
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
