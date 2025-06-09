.class public Lcom/kugoo/kugookirin/social/bean/DynDetailInfo;
.super Ljava/lang/Object;
.source "DynDetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;
    }
.end annotation


# instance fields
.field private dynamicArr:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

.field private isLastData:Z

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDynamicArr()Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo;->dynamicArr:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public isIsLastData()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo;->isLastData:Z

    return v0
.end method

.method public setDynamicArr(Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo;->dynamicArr:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    return-void
.end method

.method public setIsLastData(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo;->isLastData:Z

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo;->status:Ljava/lang/String;

    return-void
.end method
