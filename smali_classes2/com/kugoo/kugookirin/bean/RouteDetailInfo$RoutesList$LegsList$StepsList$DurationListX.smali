.class public Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$DurationListX;
.super Ljava/lang/Object;
.source "RouteDetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DurationListX"
.end annotation


# instance fields
.field private text:Ljava/lang/String;

.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$DurationListX;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 480
    iget v0, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$DurationListX;->value:I

    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$DurationListX;->text:Ljava/lang/String;

    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 484
    iput p1, p0, Lcom/kugoo/kugookirin/bean/RouteDetailInfo$RoutesList$LegsList$StepsList$DurationListX;->value:I

    return-void
.end method
