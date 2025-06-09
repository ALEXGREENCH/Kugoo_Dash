.class public Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList;
.super Ljava/lang/Object;
.source "RouteDetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StepsList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$StartLocationListX;,
        Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$PolylineList;,
        Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$EndLocationListX;,
        Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$DurationListX;,
        Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$DistanceListX;
    }
.end annotation


# instance fields
.field private distance:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$DistanceListX;

.field private duration:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$DurationListX;

.field private end_location:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$EndLocationListX;

.field private html_instructions:Ljava/lang/String;

.field private maneuver:Ljava/lang/String;

.field private polyline:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$PolylineList;

.field private start_location:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$StartLocationListX;

.field private travel_mode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDistance()Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$DistanceListX;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList;->distance:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$DistanceListX;

    return-object v0
.end method

.method public getDuration()Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$DurationListX;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList;->duration:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$DurationListX;

    return-object v0
.end method

.method public getEnd_location()Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$EndLocationListX;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList;->end_location:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$EndLocationListX;

    return-object v0
.end method

.method public getHtml_instructions()Ljava/lang/String;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList;->html_instructions:Ljava/lang/String;

    return-object v0
.end method

.method public getManeuver()Ljava/lang/String;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList;->maneuver:Ljava/lang/String;

    return-object v0
.end method

.method public getPolyline()Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$PolylineList;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList;->polyline:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$PolylineList;

    return-object v0
.end method

.method public getStart_location()Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$StartLocationListX;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList;->start_location:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$StartLocationListX;

    return-object v0
.end method

.method public getTravel_mode()Ljava/lang/String;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList;->travel_mode:Ljava/lang/String;

    return-object v0
.end method

.method public setDistance(Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$DistanceListX;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList;->distance:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$DistanceListX;

    return-void
.end method

.method public setDuration(Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$DurationListX;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList;->duration:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$DurationListX;

    return-void
.end method

.method public setEnd_location(Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$EndLocationListX;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList;->end_location:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$EndLocationListX;

    return-void
.end method

.method public setHtml_instructions(Ljava/lang/String;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList;->html_instructions:Ljava/lang/String;

    return-void
.end method

.method public setManeuver(Ljava/lang/String;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList;->maneuver:Ljava/lang/String;

    return-void
.end method

.method public setPolyline(Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$PolylineList;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList;->polyline:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$PolylineList;

    return-void
.end method

.method public setStart_location(Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$StartLocationListX;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList;->start_location:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$StartLocationListX;

    return-void
.end method

.method public setTravel_mode(Ljava/lang/String;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList;->travel_mode:Ljava/lang/String;

    return-void
.end method
