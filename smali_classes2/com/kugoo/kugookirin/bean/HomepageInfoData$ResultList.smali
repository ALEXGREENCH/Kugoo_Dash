.class public Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;
.super Ljava/lang/Object;
.source "HomepageInfoData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/bean/HomepageInfoData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultList"
.end annotation


# instance fields
.field private Bluetooth:Ljava/lang/String;

.field private Version:Ljava/lang/String;

.field private bleuuid:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isShowDel:Z

.field private mac:Ljava/lang/String;

.field private mileage:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private timelog:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->isShowDel:Z

    return-void
.end method


# virtual methods
.method public getBleuuid()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->bleuuid:Ljava/lang/String;

    return-object v0
.end method

.method public getBluetooth()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->Bluetooth:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getMileage()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->mileage:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTimelog()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->timelog:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->Version:Ljava/lang/String;

    return-object v0
.end method

.method public isShowDel()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->isShowDel:Z

    return v0
.end method

.method public setBleuuid(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->bleuuid:Ljava/lang/String;

    return-void
.end method

.method public setBluetooth(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->Bluetooth:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->id:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->mac:Ljava/lang/String;

    return-void
.end method

.method public setMileage(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->mileage:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->model:Ljava/lang/String;

    return-void
.end method

.method public setShowDel(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->isShowDel:Z

    return-void
.end method

.method public setTimelog(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->timelog:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->uid:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->Version:Ljava/lang/String;

    return-void
.end method
