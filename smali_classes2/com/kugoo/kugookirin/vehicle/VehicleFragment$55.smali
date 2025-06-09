.class Lcom/kugoo/kugookirin/vehicle/VehicleFragment$55;
.super Ljava/lang/Object;
.source "VehicleFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$googleMap:Lcom/google/android/gms/maps/GoogleMap;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 0

    .line 3485
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$55;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$55;->val$googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3489
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$55;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3490
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$55;->val$googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$55;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {v1, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_0
    return-void
.end method
