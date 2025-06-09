.class public Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$EndLocationList;
.super Ljava/lang/Object;
.source "RouteDetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EndLocationList"
.end annotation


# instance fields
.field private lat:D

.field private lng:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLat()D
    .locals 2

    .line 335
    iget-wide v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$EndLocationList;->lat:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    .line 343
    iget-wide v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$EndLocationList;->lng:D

    return-wide v0
.end method

.method public setLat(D)V
    .locals 0

    .line 339
    iput-wide p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$EndLocationList;->lat:D

    return-void
.end method

.method public setLng(D)V
    .locals 0

    .line 347
    iput-wide p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$EndLocationList;->lng:D

    return-void
.end method
