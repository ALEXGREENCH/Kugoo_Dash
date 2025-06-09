.class Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity$3;
.super Ljava/lang/Object;
.source "ChangeUnitActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity$3;->this$0:Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 240
    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    const-string v1, "kgkrn03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    const-string v1, "kgkrn04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    const-string v1, "kgkrn05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    const-string v1, "+UNIT=?"

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity$3;->this$0:Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->access$402(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;Z)Z

    return-void
.end method
