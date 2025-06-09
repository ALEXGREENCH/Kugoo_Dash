.class Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$2;
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


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2$2;->this$1:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x1f4

    .line 589
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 591
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->getBleAuthentication()Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->reset()Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->startAuth()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 594
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 597
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
