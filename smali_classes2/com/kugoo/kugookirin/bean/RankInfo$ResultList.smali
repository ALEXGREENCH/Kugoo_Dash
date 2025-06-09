.class public Lcom/kugoo/kugookirin/bean/RankInfo$ResultList;
.super Ljava/lang/Object;
.source "RankInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/bean/RankInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultList"
.end annotation


# instance fields
.field private nickName:Ljava/lang/String;

.field private portraitUrl:Ljava/lang/String;

.field private tol:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RankInfo$ResultList;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPortraitUrl()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RankInfo$ResultList;->portraitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTol()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RankInfo$ResultList;->tol:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RankInfo$ResultList;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RankInfo$ResultList;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setPortraitUrl(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RankInfo$ResultList;->portraitUrl:Ljava/lang/String;

    return-void
.end method

.method public setTol(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RankInfo$ResultList;->tol:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RankInfo$ResultList;->uid:Ljava/lang/String;

    return-void
.end method
