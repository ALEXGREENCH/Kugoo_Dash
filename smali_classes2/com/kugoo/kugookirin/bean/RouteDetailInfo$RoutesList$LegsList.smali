.class public Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList;
.super Ljava/lang/Object;
.source "RouteDetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LegsList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList;,
        Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StartLocationList;,
        Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$EndLocationList;,
        Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$DurationList;,
        Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$DistanceList;
    }
.end annotation


# instance fields
.field private distance:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$DistanceList;

.field private duration:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$DurationList;

.field private end_address:Ljava/lang/String;

.field private end_location:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$EndLocationList;

.field private start_address:Ljava/lang/String;

.field private start_location:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StartLocationList;

.field private steps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList;",
            ">;"
        }
    .end annotation
.end field

.field private traffic_speed_entry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field private via_waypoint:Ljava/util/List;
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

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDistance()Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$DistanceList;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList;->distance:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$DistanceList;

    return-object v0
.end method

.method public getDuration()Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$DurationList;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList;->duration:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$DurationList;

    return-object v0
.end method

.method public getEnd_address()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList;->end_address:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd_location()Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$EndLocationList;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList;->end_location:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$EndLocationList;

    return-object v0
.end method

.method public getStart_address()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList;->start_address:Ljava/lang/String;

    return-object v0
.end method

.method public getStart_location()Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StartLocationList;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList;->start_location:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StartLocationList;

    return-object v0
.end method

.method public getSteps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList;->steps:Ljava/util/List;

    return-object v0
.end method

.method public getTraffic_speed_entry()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList;->traffic_speed_entry:Ljava/util/List;

    return-object v0
.end method

.method public getVia_waypoint()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList;->via_waypoint:Ljava/util/List;

    return-object v0
.end method

.method public setDistance(Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$DistanceList;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList;->distance:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$DistanceList;

    return-void
.end method

.method public setDuration(Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$DurationList;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList;->duration:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$DurationList;

    return-void
.end method

.method public setEnd_address(Ljava/lang/String;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList;->end_address:Ljava/lang/String;

    return-void
.end method

.method public setEnd_location(Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$EndLocationList;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList;->end_location:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$EndLocationList;

    return-void
.end method

.method public setStart_address(Ljava/lang/String;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList;->start_address:Ljava/lang/String;

    return-void
.end method

.method public setStart_location(Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StartLocationList;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList;->start_location:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StartLocationList;

    return-void
.end method

.method public setSteps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList;",
            ">;)V"
        }
    .end annotation

    .line 269
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList;->steps:Ljava/util/List;

    return-void
.end method

.method public setTraffic_speed_entry(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 277
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList;->traffic_speed_entry:Ljava/util/List;

    return-void
.end method

.method public setVia_waypoint(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 285
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList;->via_waypoint:Ljava/util/List;

    return-void
.end method
