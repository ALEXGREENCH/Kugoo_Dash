.class Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;
.super Ljava/lang/Object;
.source "VehicleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->end_Navigation()V
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

    .line 3183
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 3188
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$5800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)F

    move-result v0

    iput v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->endTrackDis:F

    .line 3189
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->endTrackDis:F

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget v1, v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->startTrackDis:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3702(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;F)F

    .line 3191
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3192
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapTripTime:Landroid/widget/TextView;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3193
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->riding_time:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3194
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicle_riding_time:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3195
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$5300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 3196
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->exitNavigationBtn:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3198
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$6002(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z

    .line 3199
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->startTrackBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3200
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->navigationTipsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3201
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->routeEt:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3204
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3205
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$6100(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 3206
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    const v1, 0x7f0f0122

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3500(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Lcom/google/android/gms/maps/model/LatLng;ILandroid/graphics/Bitmap;)V

    .line 3208
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$5300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 3211
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3700(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double p1, v0, v2

    const-wide/16 v0, 0x1f4

    if-lez p1, :cond_1

    .line 3213
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3214
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 3216
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$6200(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    goto :goto_0

    .line 3219
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 3221
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48$1;

    invoke-direct {v2, p0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48$1;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment$48;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
