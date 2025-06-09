.class public Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo$ResultBean;
.super Ljava/lang/Object;
.source "SearchVehicleInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultBean"
.end annotation


# instance fields
.field id:Ljava/lang/String;

.field model:Ljava/lang/String;

.field nickName:Ljava/lang/String;

.field portraitUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo$ResultBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo$ResultBean;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo$ResultBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPortraitUrl()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo$ResultBean;->portraitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo$ResultBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo$ResultBean;->model:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo$ResultBean;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setPortraitUrl(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo$ResultBean;->portraitUrl:Ljava/lang/String;

    return-void
.end method
