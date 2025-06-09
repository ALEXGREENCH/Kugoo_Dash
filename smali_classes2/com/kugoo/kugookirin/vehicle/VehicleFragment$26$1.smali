.class Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26$1;
.super Ljava/lang/Object;
.source "VehicleFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;)V
    .locals 0

    .line 1070
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26$1;->this$1:Lcom/kugoo/kugookirin/vehicle/VehicleFragment$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1073
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    const-string v1, "HLGT=?"

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    return-void
.end method
