.class Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$3;
.super Ljava/lang/Object;
.source "LFBluetootService.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 800
    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$3;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 804
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$3;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    iget v0, v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->connectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$3;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$2300(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$3;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    const/4 v1, 0x0

    iput v1, v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->connectionState:I

    .line 806
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$3;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    sget-object v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DISCONNECTED:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$500(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$3;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->access$902(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;I)I

    goto :goto_0
.end method
