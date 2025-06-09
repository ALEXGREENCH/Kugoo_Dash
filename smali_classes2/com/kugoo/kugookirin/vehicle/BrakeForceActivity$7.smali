.class Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity$7;
.super Ljava/lang/Object;
.source "BrakeForceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity$7;->this$0:Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 253
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    const-string v1, "+EBKF=?"

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity$7;->this$0:Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->access$202(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;Z)Z

    return-void
.end method
