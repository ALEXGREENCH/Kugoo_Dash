.class public Lcom/kugoo/kugookirin/more/ShowTrackActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ShowTrackActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# instance fields
.field private bgHeight:I

.field private bgWidth:I

.field private bitmapDst:Landroid/graphics/Rect;

.field private bitmapSrc:Landroid/graphics/Rect;

.field private endLoc:Ljava/lang/String;

.field endLocTv:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a018e
    .end annotation
.end field

.field private inflate:Landroid/view/View;

.field private latitude:Ljava/lang/Double;

.field private longitude:Ljava/lang/Double;

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

.field private newIcon:Landroid/graphics/Bitmap;

.field private pauseJsonArray:Lorg/json/JSONArray;

.field private pauseNum:I

.field private pausePauseData:Ljava/lang/String;

.field private photoBg:Landroid/graphics/Bitmap;

.field private pointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private ratio:D

.field private rideDis:D

.field private routeJsonArray:Lorg/json/JSONArray;

.field private spendTimeStr:Ljava/lang/String;

.field private startDate:Ljava/lang/String;

.field private startLoc:Ljava/lang/String;

.field startLocTv:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a01ba
    .end annotation
.end field

.field private textPaint:Landroid/graphics/Paint;

.field private topSpeed:Ljava/lang/String;

.field private trackRouteData:Ljava/lang/String;

.field tripDisUnit:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a05c3
    .end annotation
.end field

.field tripStartDate:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a01c0
    .end annotation
.end field

.field trip_dis_tv:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a05c2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 338
    iput v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->pauseNum:I

    return-void
.end method

.method private dp2px(F)I
    .locals 2

    .line 394
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private drawMarkerJ(Lcom/google/android/gms/maps/model/LatLng;ILandroid/graphics/Bitmap;)V
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 408
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    if-eqz p3, :cond_0

    const-string p2, "recordRoute"

    const-string v1, "draw pause_icon"

    .line 411
    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-static {p3}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p2

    const p3, 0x7f12038f

    .line 413
    invoke-virtual {p0, p3}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 414
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    goto :goto_0

    .line 416
    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p2

    const p3, 0x7f12036c

    .line 417
    invoke-virtual {p0, p3}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 418
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 421
    :goto_0
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 p3, 0x41500000    # 13.0f

    invoke-static {p1, p3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_1
    return-void
.end method

.method private drawPausePoint()V
    .locals 6

    .line 349
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->pausePauseData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->pausePauseData:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->pauseJsonArray:Lorg/json/JSONArray;

    const/4 v0, 0x0

    .line 352
    :goto_0
    iget-object v1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->pauseJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->pauseJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "longitude"

    .line 354
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v4, "latitude"

    .line 355
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 357
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 359
    iget v2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->pauseNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->pauseNum:I

    .line 360
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->setPauseNum(Ljava/lang/String;)V

    .line 361
    iget-object v2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->newIcon:Landroid/graphics/Bitmap;

    const/4 v3, -0x1

    invoke-direct {p0, v1, v3, v2}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->drawMarkerJ(Lcom/google/android/gms/maps/model/LatLng;ILandroid/graphics/Bitmap;)V

    .line 363
    iget-object v1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->newIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 366
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private drawTrack()V
    .locals 5

    .line 272
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->latitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-object v3, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->longitude:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 273
    new-instance v1, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    .line 274
    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 275
    iget-object v2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v1

    .line 276
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/Polyline;->setColor(I)V

    const/high16 v2, 0x41200000    # 10.0f

    .line 277
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/Polyline;->setWidth(F)V

    const/4 v2, 0x1

    .line 278
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/Polyline;->setGeodesic(Z)V

    .line 279
    iget-object v2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->pointList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->pointList:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    return-void
.end method

.method private getBundleData()V
    .locals 5

    .line 149
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_START_LOC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->startLoc:Ljava/lang/String;

    .line 154
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_END_LOC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->endLoc:Ljava/lang/String;

    .line 155
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_START_DATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->startDate:Ljava/lang/String;

    .line 157
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_DISTANCE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->rideDis:D

    .line 158
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_TOP_SPEED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->topSpeed:Ljava/lang/String;

    .line 159
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_SPEND_TIME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->spendTimeStr:Ljava/lang/String;

    .line 161
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_TRACK_LOCATION_ARR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->trackRouteData:Ljava/lang/String;

    .line 162
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PAUSE_LOCATION_ARR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->pausePauseData:Ljava/lang/String;

    .line 163
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->startLoc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->startLocTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->startLoc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->endLoc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->endLocTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->endLoc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :cond_2
    iget-wide v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->rideDis:D

    iget-wide v2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->ratio:D

    mul-double/2addr v0, v2

    .line 176
    iget-object v2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->trip_dis_tv:Landroid/widget/TextView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "%.1f"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->tripStartDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->startDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initEvent()V
    .locals 3

    .line 183
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    .line 184
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USERNAME:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_PORTRAIT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_KMH:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 190
    iput-wide v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->ratio:D

    .line 191
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->tripDisUnit:Landroid/widget/TextView;

    const v1, 0x7f12037a

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-wide v0, 0x3fe3e2435696e58aL    # 0.62137

    .line 193
    iput-wide v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->ratio:D

    .line 194
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->tripDisUnit:Landroid/widget/TextView;

    const v1, 0x7f12037e

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->pointList:Ljava/util/List;

    return-void
.end method

.method private initInfoWindow()V
    .locals 4

    .line 376
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0124

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->photoBg:Landroid/graphics/Bitmap;

    .line 377
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->bgWidth:I

    .line 378
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->photoBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->bgHeight:I

    .line 380
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->textPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41600000    # 14.0f

    .line 381
    invoke-direct {p0, v1}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 382
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->textPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 383
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 385
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 386
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->textPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 388
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->photoBg:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->photoBg:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->bitmapSrc:Landroid/graphics/Rect;

    .line 390
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->bgWidth:I

    iget v2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->bgHeight:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->bitmapDst:Landroid/graphics/Rect;

    return-void
.end method

.method private initView()V
    .locals 0

    return-void
.end method

.method private mCheckPermission()V
    .locals 3

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 126
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.GET_ACCOUNTS"

    const-string v1, "android.permission.READ_CONTACTS"

    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 130
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const-string v0, "android.permission.BLUETOOTH"

    .line 135
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private screenshotSystem()Landroid/graphics/Bitmap;
    .locals 4

    .line 441
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->inflate:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x64

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->inflate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 442
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/more/ShowTrackActivity$1;

    invoke-direct {v2, p0}, Lcom/kugoo/kugookirin/more/ShowTrackActivity$1;-><init>(Lcom/kugoo/kugookirin/more/ShowTrackActivity;)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-static {v1, v0, v2, v3}, Landroid/view/PixelCopy;->request(Landroid/view/Window;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    :cond_0
    return-object v0
.end method

.method private setPauseNum(Ljava/lang/String;)V
    .locals 6

    .line 398
    iget v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->bgWidth:I

    iget v1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->bgHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->newIcon:Landroid/graphics/Bitmap;

    .line 399
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->newIcon:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 400
    iget-object v1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 402
    iget-object v2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->photoBg:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->bitmapSrc:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->bitmapDst:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 403
    iget v2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->bgWidth:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    iget v1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->bgHeight:I

    div-int/lit8 v3, v1, 0x5

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private shareImage()V
    .locals 3

    .line 428
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->screenshotSystem()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "assasasas"

    const-string v2, "bitmap != null"

    .line 430
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-static {v0, p0}, Lcom/kugoo/kugookirin/utils/ScreenShot;->SaveBitmapToCache(Landroid/graphics/Bitmap;Landroid/app/Activity;)Ljava/io/File;

    move-result-object v0

    .line 435
    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->showShareBar(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 112
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method private showShareBar(Ljava/io/File;)V
    .locals 4

    .line 460
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f13046d

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d00c7

    .line 461
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 463
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 464
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v3, 0x51

    .line 465
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v3, -0x1

    .line 466
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x2

    .line 467
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 468
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v1, 0x7f0a04f9

    .line 470
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/more/ShowTrackActivity$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/kugoo/kugookirin/more/ShowTrackActivity$2;-><init>(Lcom/kugoo/kugookirin/more/ShowTrackActivity;Ljava/io/File;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a04f5

    .line 478
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/kugoo/kugookirin/more/ShowTrackActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/kugoo/kugookirin/more/ShowTrackActivity$3;-><init>(Lcom/kugoo/kugookirin/more/ShowTrackActivity;Landroid/app/Dialog;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 485
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 486
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public checkmPermission()V
    .locals 1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 333
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f0a05ad,
            0x7f0a05ae
        }
    .end annotation

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 212
    :pswitch_0
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->shareImage()V

    goto :goto_0

    .line 208
    :pswitch_1
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->finish()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a05ad
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 97
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f0d0047

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->inflate:Landroid/view/View;

    .line 99
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->setContentView(Landroid/view/View;)V

    .line 102
    invoke-static {p0}, Lcom/lidroid/xutils/ViewUtils;->inject(Landroid/app/Activity;)V

    .line 103
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->initView()V

    .line 104
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->initEvent()V

    .line 105
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->mCheckPermission()V

    .line 106
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->getBundleData()V

    .line 107
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->showDefaultUi()V

    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 6

    .line 219
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v0, 0x1

    .line 220
    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    .line 222
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->requestPermissions([Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 228
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    .line 234
    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 235
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 236
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setAllGesturesEnabled(Z)V

    .line 238
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->initInfoWindow()V

    .line 240
    :try_start_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->trackRouteData:Ljava/lang/String;

    if-nez p1, :cond_1

    return-void

    .line 243
    :cond_1
    new-instance p1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->trackRouteData:Ljava/lang/String;

    invoke-direct {p1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->routeJsonArray:Lorg/json/JSONArray;

    .line 244
    :goto_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->routeJsonArray:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ge v1, p1, :cond_4

    .line 245
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->routeJsonArray:Lorg/json/JSONArray;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "longitude"

    .line 246
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->longitude:Ljava/lang/Double;

    const-string v2, "latitude"

    .line 247
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->latitude:Ljava/lang/Double;

    if-nez v1, :cond_2

    .line 250
    new-instance p1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->latitude:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->longitude:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {p1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 251
    iget-object v2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {p1, v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 252
    iget-object v2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    const v3, 0x7f0f0122

    .line 253
    invoke-static {v3}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    .line 252
    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    goto :goto_1

    .line 254
    :cond_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->routeJsonArray:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    sub-int/2addr p1, v0

    if-ne v1, p1, :cond_3

    .line 255
    new-instance p1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->latitude:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->longitude:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {p1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 256
    iget-object v2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 257
    invoke-virtual {v3, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    const v3, 0x7f0f00ff

    .line 258
    invoke-static {v3}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    .line 256
    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 260
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->drawTrack()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 263
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .line 286
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x64

    if-ne p1, p2, :cond_2

    .line 288
    array-length p1, p3

    if-lez p1, :cond_2

    const/4 p1, 0x0

    aget p2, p3, p1

    if-nez p2, :cond_2

    .line 289
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p2, :cond_2

    .line 290
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->checkmPermission()V

    .line 292
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 293
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p2}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 294
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p2}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/google/android/gms/maps/UiSettings;->setAllGesturesEnabled(Z)V

    .line 297
    :try_start_0
    new-instance p2, Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->trackRouteData:Ljava/lang/String;

    invoke-direct {p2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->routeJsonArray:Lorg/json/JSONArray;

    .line 298
    :goto_0
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->routeJsonArray:Lorg/json/JSONArray;

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 299
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->routeJsonArray:Lorg/json/JSONArray;

    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "longitude"

    .line 300
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->longitude:Ljava/lang/Double;

    const-string v0, "latitude"

    .line 301
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->latitude:Ljava/lang/Double;

    if-nez p1, :cond_0

    .line 304
    new-instance p2, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->latitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->longitude:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 305
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {p2, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 306
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 307
    invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p2

    const v1, 0x7f0f0122

    .line 308
    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p2

    .line 306
    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    goto :goto_1

    .line 309
    :cond_0
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->routeJsonArray:Lorg/json/JSONArray;

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p2

    sub-int/2addr p2, p3

    if-ne p1, p2, :cond_1

    .line 310
    new-instance p2, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->latitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->longitude:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 311
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 312
    invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p2

    const v1, 0x7f0f00ff

    .line 313
    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p2

    .line 311
    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 315
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->drawTrack()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 320
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 120
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 121
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a05b0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->mapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

    .line 122
    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    return-void
.end method
