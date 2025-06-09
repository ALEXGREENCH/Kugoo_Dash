.class public Lcom/kugoo/kugookirin/bean/RankInfo$UserList;
.super Ljava/lang/Object;
.source "RankInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/bean/RankInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserList"
.end annotation


# instance fields
.field private nickName:Ljava/lang/String;

.field private portraitUrl:Ljava/lang/String;

.field private rank:Ljava/lang/String;

.field private tol:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RankInfo$UserList;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPortraitUrl()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RankInfo$UserList;->portraitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RankInfo$UserList;->rank:Ljava/lang/String;

    return-object v0
.end method

.method public getTol()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RankInfo$UserList;->tol:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RankInfo$UserList;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RankInfo$UserList;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setPortraitUrl(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RankInfo$UserList;->portraitUrl:Ljava/lang/String;

    return-void
.end method

.method public setRank(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RankInfo$UserList;->rank:Ljava/lang/String;

    return-void
.end method

.method public setTol(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RankInfo$UserList;->tol:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RankInfo$UserList;->uid:Ljava/lang/String;

    return-void
.end method
