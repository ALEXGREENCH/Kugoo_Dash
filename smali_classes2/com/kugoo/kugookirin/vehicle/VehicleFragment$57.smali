.class Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;
.super Ljava/lang/Object;
.source "VehicleFragment.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/vehicle/VehicleFragment;
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

    .line 3507
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 11

    const-string v0, "onLocationChanged"

    const-string v1, "VehicleFragment/mLocationListener"

    .line 3511
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_8

    const-string v0, "location != null"

    .line 3513
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3519
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$6702(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Landroid/location/Location;)Landroid/location/Location;

    .line 3520
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$6700(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nowLatitude:Ljava/lang/Double;

    .line 3521
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$6700(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nowLongitude:Ljava/lang/Double;

    .line 3522
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$6700(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/location/Location;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    .line 3523
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget-object v1, v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nowLatitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-object v3, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget-object v3, v3, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nowLongitude:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3302(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 3526
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$6800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$6900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    .line 3528
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$6800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/utils/RouteUtils;->getDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v0

    .line 3529
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$6900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float p1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr p1, v2

    float-to-double v2, p1

    div-double v2, v0, v2

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_1

    cmpg-float p1, p1, v8

    if-gez p1, :cond_0

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    cmpl-double p1, v0, v2

    if-gtz p1, :cond_1

    :cond_0
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_2

    :cond_1
    return-void

    .line 3543
    :cond_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$7000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_LONGITUDE:Ljava/lang/String;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$6700(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3544
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$7000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_LATITUDE:Ljava/lang/String;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$6700(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3546
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$6100(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3547
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$6100(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 3550
    :cond_3
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    const v1, 0x7f0f0122

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3500(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Lcom/google/android/gms/maps/model/LatLng;ILandroid/graphics/Bitmap;)V

    .line 3556
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$1200(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z

    move-result p1

    const/4 v9, 0x1

    const-string v10, "recordRoute"

    if-eqz p1, :cond_4

    .line 3558
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$7100(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)F

    move-result p1

    cmpl-float p1, p1, v8

    if-lez p1, :cond_4

    const-string p1, "trackLocArray.put"

    .line 3559
    invoke-static {v10, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3561
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nowLongitude:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nowLatitude:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-wide v0, v6

    invoke-static/range {v0 .. v5}, Lcom/kugoo/kugookirin/utils/toolUtil;->changeDataToJson(DDD)Lorg/json/JSONObject;

    move-result-object p1

    .line 3562
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 3565
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    new-instance v0, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$7202(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 3566
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$7200(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 3567
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$5300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$7200(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$7302(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Lcom/google/android/gms/maps/model/Polyline;)Lcom/google/android/gms/maps/model/Polyline;

    .line 3568
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$7300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object p1

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Polyline;->setWidth(F)V

    .line 3569
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$7300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Polyline;->setColor(I)V

    .line 3570
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$7300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object p1

    invoke-virtual {p1, v9}, Lcom/google/android/gms/maps/model/Polyline;->setGeodesic(Z)V

    .line 3571
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$7400(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3572
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$7300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$7400(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    .line 3578
    :cond_4
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$6000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 3579
    invoke-static {}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$500()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$7100(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)F

    move-result p1

    cmpl-float p1, p1, v8

    if-lez p1, :cond_7

    :cond_5
    const-string p1, "naviLocArray.put"

    .line 3581
    invoke-static {v10, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3582
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nowLongitude:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nowLatitude:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-wide v0, v6

    invoke-static/range {v0 .. v5}, Lcom/kugoo/kugookirin/utils/toolUtil;->changeDataToJson(DDD)Lorg/json/JSONObject;

    move-result-object p1

    .line 3583
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$4900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 3585
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$5400(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/utils/RouteUtils;->getDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->distanceDes:Ljava/lang/Double;

    .line 3587
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->distanceDes:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_6

    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$6000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3588
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$7500(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    .line 3592
    :cond_6
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$7600(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 3593
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1, v9}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$7602(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z

    const-string p1, "\u6301\u7eed\u83b7\u5f97\u5bfc\u822a\u8def\u7ebf\u6570\u636e"

    .line 3594
    invoke-static {v10, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3595
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$7700(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    .line 3602
    :cond_7
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$6802(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 3603
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$57;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$6902(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;J)J

    :cond_8
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    .line 3619
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onProviderDisabled=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VehicleFragment/mLocationListener"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    .line 3614
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onProviderEnabled=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VehicleFragment/mLocationListener"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 3609
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onStatusChanged=="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VehicleFragment/mLocationListener"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
