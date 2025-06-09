.class public Lcom/kugoo/kugookirin/bean/RouteDetailInfo;
.super Ljava/lang/Object;
.source "RouteDetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList;,
        Lcom/kugoo/kugookirin/bean/RouteDetailInfo$GeocodedWaypointsList;
    }
.end annotation


# instance fields
.field private geocoded_waypoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/RouteDetailInfo$GeocodedWaypointsList;",
            ">;"
        }
    .end annotation
.end field

.field private routes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList;",
            ">;"
        }
    .end annotation
.end field

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGeocoded_waypoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/RouteDetailInfo$GeocodedWaypointsList;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo;->geocoded_waypoints:Ljava/util/List;

    return-object v0
.end method

.method public getRoutes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo;->routes:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setGeocoded_waypoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/RouteDetailInfo$GeocodedWaypointsList;",
            ">;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo;->geocoded_waypoints:Ljava/util/List;

    return-void
.end method

.method public setRoutes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo;->routes:Ljava/util/List;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo;->status:Ljava/lang/String;

    return-void
.end method
