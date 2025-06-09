.class public Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$DistanceListX;
.super Ljava/lang/Object;
.source "RouteDetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DistanceListX"
.end annotation


# instance fields
.field private text:Ljava/lang/String;

.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$DistanceListX;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 459
    iget v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$DistanceListX;->value:I

    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$DistanceListX;->text:Ljava/lang/String;

    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 463
    iput p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$DistanceListX;->value:I

    return-void
.end method
