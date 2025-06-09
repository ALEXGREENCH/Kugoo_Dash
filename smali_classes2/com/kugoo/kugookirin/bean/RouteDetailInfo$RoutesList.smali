.class public Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList;
.super Ljava/lang/Object;
.source "RouteDetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/bean/RouteDetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoutesList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList;,
        Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$OverviewPolylineList;,
        Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$BoundsList;
    }
.end annotation


# instance fields
.field private bounds:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$BoundsList;

.field private copyrights:Ljava/lang/String;

.field private legs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList;",
            ">;"
        }
    .end annotation
.end field

.field private overview_polyline:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$OverviewPolylineList;

.field private summary:Ljava/lang/String;

.field private warnings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field private waypoint_order:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBounds()Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$BoundsList;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList;->bounds:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$BoundsList;

    return-object v0
.end method

.method public getCopyrights()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList;->copyrights:Ljava/lang/String;

    return-object v0
.end method

.method public getLegs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList;->legs:Ljava/util/List;

    return-object v0
.end method

.method public getOverview_polyline()Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$OverviewPolylineList;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList;->overview_polyline:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$OverviewPolylineList;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getWarnings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList;->warnings:Ljava/util/List;

    return-object v0
.end method

.method public getWaypoint_order()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList;->waypoint_order:Ljava/util/List;

    return-object v0
.end method

.method public setBounds(Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$BoundsList;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList;->bounds:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$BoundsList;

    return-void
.end method

.method public setCopyrights(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList;->copyrights:Ljava/lang/String;

    return-void
.end method

.method public setLegs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList;",
            ">;)V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList;->legs:Ljava/util/List;

    return-void
.end method

.method public setOverview_polyline(Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$OverviewPolylineList;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList;->overview_polyline:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$OverviewPolylineList;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList;->summary:Ljava/lang/String;

    return-void
.end method

.method public setWarnings(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList;->warnings:Ljava/util/List;

    return-void
.end method

.method public setWaypoint_order(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList;->waypoint_order:Ljava/util/List;

    return-void
.end method
