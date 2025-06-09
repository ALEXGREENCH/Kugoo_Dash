.class public Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$OverviewPolylineList;
.super Ljava/lang/Object;
.source "RouteDetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverviewPolylineList"
.end annotation


# instance fields
.field private points:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPoints()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$OverviewPolylineList;->points:Ljava/lang/String;

    return-object v0
.end method

.method public setPoints(Ljava/lang/String;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$OverviewPolylineList;->points:Ljava/lang/String;

    return-void
.end method
