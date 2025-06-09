.class public Lcom/kugoo/kugookirin/utils/RouteUtils;
.super Ljava/lang/Object;
.source "RouteUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/utils/RouteUtils$onNearbyPlaceListener;,
        Lcom/kugoo/kugookirin/utils/RouteUtils$onRouteAnalysisListener;
    }
.end annotation


# static fields
.field private static mListener:Lcom/kugoo/kugookirin/utils/RouteUtils$onRouteAnalysisListener;

.field private static nearbyListener:Lcom/kugoo/kugookirin/utils/RouteUtils$onNearbyPlaceListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AnalysisSearchedPlace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "predictions"

    .line 73
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    .line 75
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 76
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "description"

    .line 77
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "place_id"

    .line 78
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "structured_formatting"

    .line 79
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "main_text"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "matches001"

    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "matches=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v5, Lcom/kugoo/kugookirin/bean/MapSearchResultItem;

    invoke-direct {v5, v2, v3, v4, p1}, Lcom/kugoo/kugookirin/bean/MapSearchResultItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    sget-object p0, Lcom/kugoo/kugookirin/utils/RouteUtils;->mListener:Lcom/kugoo/kugookirin/utils/RouteUtils$onRouteAnalysisListener;

    if-eqz p0, :cond_1

    .line 84
    invoke-interface {p0, v0}, Lcom/kugoo/kugookirin/utils/RouteUtils$onRouteAnalysisListener;->mapSearchResult(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 87
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/RouteUtils;->analysisRouteDetail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Lcom/kugoo/kugookirin/utils/RouteUtils$onNearbyPlaceListener;
    .locals 1

    .line 27
    sget-object v0, Lcom/kugoo/kugookirin/utils/RouteUtils;->nearbyListener:Lcom/kugoo/kugookirin/utils/RouteUtils$onNearbyPlaceListener;

    return-object v0
.end method

.method private static analysisRouteDetail(Ljava/lang/String;)V
    .locals 13

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "routeInfoSize002=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getRouteData"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/kugoo/kugookirin/bean/RouteDetailInfo;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo;

    const-string v1, "OK"

    .line 138
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/bean/RouteDetailInfo;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 139
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/bean/RouteDetailInfo;->getRoutes()Ljava/util/List;

    move-result-object p0

    const-string v1, ""

    move-object v3, v1

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    .line 140
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_4

    .line 141
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList;

    .line 142
    invoke-virtual {v8}, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList;->getLegs()Ljava/util/List;

    move-result-object v8

    move v9, v2

    .line 143
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 144
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList;

    .line 145
    invoke-virtual {v5}, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList;->getSteps()Ljava/util/List;

    move-result-object v6

    move v10, v2

    .line 146
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_2

    add-int/lit8 v7, v7, 0x1

    if-nez v10, :cond_0

    .line 149
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList;

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList;->getDistance()Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$DistanceListX;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$DistanceListX;->getText()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 152
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList;

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList;->getManeuver()Ljava/lang/String;

    move-result-object v3

    .line 154
    :cond_1
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList;

    invoke-virtual {v11}, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList;->getPolyline()Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$PolylineList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$PolylineList;->getPoints()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/kugoo/kugookirin/utils/RouteUtils;->decodePoly(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 155
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 158
    :cond_2
    invoke-virtual {v5}, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList;->getDistance()Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$DistanceList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$DistanceList;->getValue()I

    move-result v6

    .line 159
    invoke-virtual {v5}, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList;->getDuration()Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$DurationList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$DurationList;->getValue()I

    move-result v5

    add-int/lit8 v9, v9, 0x1

    move v12, v6

    move v6, v5

    move v5, v12

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 162
    :cond_4
    sget-object p0, Lcom/kugoo/kugookirin/utils/RouteUtils;->mListener:Lcom/kugoo/kugookirin/utils/RouteUtils$onRouteAnalysisListener;

    if-eqz p0, :cond_5

    .line 163
    invoke-interface {p0, v0}, Lcom/kugoo/kugookirin/utils/RouteUtils$onRouteAnalysisListener;->analysisRouteResult(Ljava/util/ArrayList;)V

    .line 164
    sget-object p0, Lcom/kugoo/kugookirin/utils/RouteUtils;->mListener:Lcom/kugoo/kugookirin/utils/RouteUtils$onRouteAnalysisListener;

    invoke-interface {p0, v5, v6}, Lcom/kugoo/kugookirin/utils/RouteUtils$onRouteAnalysisListener;->routeDisAndTime(II)V

    .line 165
    sget-object p0, Lcom/kugoo/kugookirin/utils/RouteUtils;->mListener:Lcom/kugoo/kugookirin/utils/RouteUtils$onRouteAnalysisListener;

    invoke-interface {p0, v1, v3}, Lcom/kugoo/kugookirin/utils/RouteUtils$onRouteAnalysisListener;->nextStepNavi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move v2, v7

    .line 169
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "total=="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "total0002"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static decodePoly(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v1, :cond_4

    move v6, v2

    move v7, v6

    :goto_1
    add-int/lit8 v8, v3, 0x1

    .line 180
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x3f

    and-int/lit8 v9, v3, 0x1f

    shl-int/2addr v9, v7

    or-int/2addr v6, v9

    add-int/lit8 v7, v7, 0x5

    const/16 v9, 0x20

    if-ge v3, v9, :cond_3

    and-int/lit8 v3, v6, 0x1

    if-eqz v3, :cond_0

    shr-int/lit8 v3, v6, 0x1

    not-int v3, v3

    goto :goto_2

    :cond_0
    shr-int/lit8 v3, v6, 0x1

    :goto_2
    add-int/2addr v3, v4

    move v4, v2

    move v6, v4

    :goto_3
    add-int/lit8 v7, v8, 0x1

    .line 189
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x3f

    and-int/lit8 v10, v8, 0x1f

    shl-int/2addr v10, v6

    or-int/2addr v4, v10

    add-int/lit8 v6, v6, 0x5

    if-ge v8, v9, :cond_2

    and-int/lit8 v6, v4, 0x1

    shr-int/lit8 v4, v4, 0x1

    if-eqz v6, :cond_1

    not-int v4, v4

    :cond_1
    add-int/2addr v5, v4

    .line 196
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    int-to-double v8, v3

    const-wide v10, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v8, v10

    int-to-double v12, v5

    div-double/2addr v12, v10

    invoke-direct {v4, v8, v9, v12, v13}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 198
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v3

    move v3, v7

    goto :goto_0

    :cond_2
    move v8, v7

    goto :goto_3

    :cond_3
    move v3, v8

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static getDirectionsUrl(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "origin="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "default"

    .line 230
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v0, "searchResultId"

    if-eqz p3, :cond_0

    .line 231
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "destination="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v1, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 233
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "destination=place_id:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "&"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "&sensor=false&mode=driving"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "https://maps.googleapis.com/maps/api/directions/json?"

    if-nez p4, :cond_1

    .line 251
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "&key=AIzaSyBQTyKTsKrZ4AamGOtID4qHsmdgOohMbas&language=zh-CN"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 254
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "&key=AIzaSyBQTyKTsKrZ4AamGOtID4qHsmdgOohMbas&language=en-US"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 258
    :goto_1
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static getDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    .locals 10

    .line 210
    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, v2

    .line 211
    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    mul-double/2addr v4, v2

    .line 213
    iget-wide v6, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    mul-double/2addr v6, v2

    .line 214
    iget-wide p0, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    mul-double/2addr p0, v2

    .line 219
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    sub-double/2addr p0, v6

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr v0, p0

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    const-wide v0, 0x40b8e30000000000L    # 6371.0

    mul-double/2addr p0, v0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public static getNearbyPlace(Ljava/lang/String;I)V
    .locals 3

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 311
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 312
    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    const-string v1, "GET"

    const/4 v2, 0x0

    .line 313
    invoke-virtual {p0, v1, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 314
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 315
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 316
    invoke-virtual {v1, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    .line 318
    new-instance v1, Lcom/kugoo/kugookirin/utils/RouteUtils$3;

    invoke-direct {v1, p1, v0}, Lcom/kugoo/kugookirin/utils/RouteUtils$3;-><init>(ILjava/util/ArrayList;)V

    invoke-interface {p0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public static getRouteDataAndAnalysis(Ljava/lang/String;)V
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestUrl0005=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getRouteData002"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 96
    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    const-string v0, "GET"

    const/4 v1, 0x0

    .line 97
    invoke-virtual {p0, v0, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 98
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 99
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 100
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    .line 102
    new-instance v0, Lcom/kugoo/kugookirin/utils/RouteUtils$2;

    invoke-direct {v0}, Lcom/kugoo/kugookirin/utils/RouteUtils$2;-><init>()V

    invoke-interface {p0, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public static getSearchResultAndAnalysis(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 36
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 37
    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    const-string v0, "GET"

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0, v0, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 39
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 40
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 41
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    .line 43
    new-instance v0, Lcom/kugoo/kugookirin/utils/RouteUtils$1;

    invoke-direct {v0, p1}, Lcom/kugoo/kugookirin/utils/RouteUtils$1;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public static setOnNearbyPlaceListener(Lcom/kugoo/kugookirin/utils/RouteUtils$onNearbyPlaceListener;)V
    .locals 0

    .line 288
    sput-object p0, Lcom/kugoo/kugookirin/utils/RouteUtils;->nearbyListener:Lcom/kugoo/kugookirin/utils/RouteUtils$onNearbyPlaceListener;

    return-void
.end method

.method public static setOnRouteAnalysisListener(Lcom/kugoo/kugookirin/utils/RouteUtils$onRouteAnalysisListener;)V
    .locals 0

    .line 278
    sput-object p0, Lcom/kugoo/kugookirin/utils/RouteUtils;->mListener:Lcom/kugoo/kugookirin/utils/RouteUtils$onRouteAnalysisListener;

    return-void
.end method
