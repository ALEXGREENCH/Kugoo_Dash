.class public Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$BoundsList$NortheastList;
.super Ljava/lang/Object;
.source "RouteDetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$BoundsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NortheastList"
.end annotation


# instance fields
.field private lat:D

.field private lng:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLat()D
    .locals 2

    .line 155
    iget-wide v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$BoundsList$NortheastList;->lat:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    .line 163
    iget-wide v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$BoundsList$NortheastList;->lng:D

    return-wide v0
.end method

.method public setLat(D)V
    .locals 0

    .line 159
    iput-wide p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$BoundsList$NortheastList;->lat:D

    return-void
.end method

.method public setLng(D)V
    .locals 0

    .line 167
    iput-wide p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$BoundsList$NortheastList;->lng:D

    return-void
.end method
