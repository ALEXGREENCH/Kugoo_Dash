.class public Lcom/kugoo/kugookirin/bean/RouteDetailInfo$GeocodedWaypointsList;
.super Ljava/lang/Object;
.source "RouteDetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/bean/RouteDetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeocodedWaypointsList"
.end annotation


# instance fields
.field private geocoder_status:Ljava/lang/String;

.field private place_id:Ljava/lang/String;

.field private types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGeocoder_status()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$GeocodedWaypointsList;->geocoder_status:Ljava/lang/String;

    return-object v0
.end method

.method public getPlace_id()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$GeocodedWaypointsList;->place_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$GeocodedWaypointsList;->types:Ljava/util/List;

    return-object v0
.end method

.method public setGeocoder_status(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$GeocodedWaypointsList;->geocoder_status:Ljava/lang/String;

    return-void
.end method

.method public setPlace_id(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$GeocodedWaypointsList;->place_id:Ljava/lang/String;

    return-void
.end method

.method public setTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$GeocodedWaypointsList;->types:Ljava/util/List;

    return-void
.end method
