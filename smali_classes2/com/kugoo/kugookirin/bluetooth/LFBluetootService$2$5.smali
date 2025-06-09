.class Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$5;
.super Ljava/lang/Object;
.source "LFBluetootService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;)V
    .locals 0

    .line 733
    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$5;->this$1:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0xc8

    .line 738
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 739
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$5;->this$1:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;

    iget-object v0, v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    const-string v1, "GETDEVID"

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 742
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 744
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
