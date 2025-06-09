.class public Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$BoundsList;
.super Ljava/lang/Object;
.source "RouteDetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoundsList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$BoundsList$SouthwestList;,
        Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$BoundsList$NortheastList;
    }
.end annotation


# instance fields
.field private northeast:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$BoundsList$NortheastList;

.field private southwest:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$BoundsList$SouthwestList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNortheast()Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$BoundsList$NortheastList;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$BoundsList;->northeast:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$BoundsList$NortheastList;

    return-object v0
.end method

.method public getSouthwest()Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$BoundsList$SouthwestList;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$BoundsList;->southwest:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$BoundsList$SouthwestList;

    return-object v0
.end method

.method public setNortheast(Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$BoundsList$NortheastList;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$BoundsList;->northeast:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$BoundsList$NortheastList;

    return-void
.end method

.method public setSouthwest(Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$BoundsList$SouthwestList;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$BoundsList;->southwest:Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$BoundsList$SouthwestList;

    return-void
.end method
