.class Lcom/kugoo/kugookirin/vehicle/VehicleFragment$56;
.super Ljava/lang/Object;
.source "VehicleFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V
    .locals 0

    .line 3493
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$56;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraIdle()V
    .locals 4

    .line 3497
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$56;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$56;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$6600(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3498
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$56;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$56;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$6600(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
