.class Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity$4;
.super Ljava/lang/Object;
.source "ThrottleStartingForceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity$4;->this$0:Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 221
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    const-string v1, "+BSTF=?"

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity$4;->this$0:Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->access$202(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;Z)Z

    return-void
.end method
