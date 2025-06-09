.class Lcom/kugoo/kugookirin/vehicle/VehicleFragment$46;
.super Ljava/lang/Object;
.source "VehicleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->endTracking(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Landroid/app/Dialog;)V
    .locals 0

    .line 3136
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$46;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$46;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string p1, "VehicleFragmenttracking_operation"

    const-string v0, "finish_track"

    .line 3139
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3141
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$46;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$5700(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    .line 3142
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$46;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3143
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$46;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$5300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$46;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    const/high16 v1, 0x41840000    # 16.5f

    invoke-static {v0, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 3144
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$46;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$1202(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z

    .line 3145
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$46;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$5800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)F

    move-result v1

    iput v1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->endTrackDis:F

    .line 3147
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$46;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$5900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 3149
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$46;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3151
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$46;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->progress_Linear:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3153
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$46;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xe

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3155
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$46;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->endTrackDis:F

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$46;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget v1, v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->startTrackDis:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3702(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;F)F

    .line 3157
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$46;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3700(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double p1, v0, v2

    if-lez p1, :cond_1

    .line 3158
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$46;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3802(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z

    .line 3160
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$46;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xc

    const-wide/16 v1, 0x1770

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3162
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$46;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
