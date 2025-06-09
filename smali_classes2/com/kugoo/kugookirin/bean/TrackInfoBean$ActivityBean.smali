.class public Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;
.super Ljava/lang/Object;
.source "TrackInfoBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/bean/TrackInfoBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityBean"
.end annotation


# instance fields
.field private check:Z

.field private distance:Ljava/lang/String;

.field private end:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private start:Ljava/lang/String;

.field private suspendArr:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private timeLong:Ljava/lang/String;

.field private topSpeed:D

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDistance()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->distance:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->end:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->start:Ljava/lang/String;

    return-object v0
.end method

.method public getSuspendArr()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->suspendArr:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeLong()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->timeLong:Ljava/lang/String;

    return-object v0
.end method

.method public getTopSpeed()D
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->topSpeed:D

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->check:Z

    return v0
.end method

.method public setCheck(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->check:Z

    return-void
.end method

.method public setDistance(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->distance:Ljava/lang/String;

    return-void
.end method

.method public setEnd(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->end:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->location:Ljava/lang/String;

    return-void
.end method

.method public setStart(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->start:Ljava/lang/String;

    return-void
.end method

.method public setSuspendArr(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->suspendArr:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->time:Ljava/lang/String;

    return-void
.end method

.method public setTimeLong(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->timeLong:Ljava/lang/String;

    return-void
.end method

.method public setTopSpeed(D)V
    .locals 0

    .line 110
    iput-wide p1, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->topSpeed:D

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->type:Ljava/lang/String;

    return-void
.end method
