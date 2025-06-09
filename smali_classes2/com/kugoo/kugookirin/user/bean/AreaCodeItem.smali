.class public Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;
.super Ljava/lang/Object;
.source "AreaCodeItem.java"


# instance fields
.field areaCode:Ljava/lang/String;

.field areaName:Ljava/lang/String;

.field flagImgId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;->flagImgId:I

    .line 10
    iput-object p2, p0, Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;->areaName:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;->areaCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;->areaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;->areaName:Ljava/lang/String;

    return-object v0
.end method

.method public getFlagImgId()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;->flagImgId:I

    return v0
.end method

.method public setAreaCode(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;->areaCode:Ljava/lang/String;

    return-void
.end method

.method public setAreaName(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;->areaName:Ljava/lang/String;

    return-void
.end method

.method public setFlagImgId(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;->flagImgId:I

    return-void
.end method
