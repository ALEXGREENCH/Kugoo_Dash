.class Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$4;
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

.field final synthetic val$finalString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;Ljava/lang/String;)V
    .locals 0

    .line 672
    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$4;->this$1:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;

    iput-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$4;->val$finalString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v0, 0x96

    .line 677
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 679
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->getBleAuthentication()Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$4;->val$finalString:Ljava/lang/String;

    sget v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->CONNECT_TYPE:I

    invoke-virtual {v0, v1, v2}, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->recieveResult(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 683
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 686
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
