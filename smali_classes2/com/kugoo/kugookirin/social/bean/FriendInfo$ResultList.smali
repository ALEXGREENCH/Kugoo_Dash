.class public Lcom/kugoo/kugookirin/social/bean/FriendInfo$ResultList;
.super Ljava/lang/Object;
.source "FriendInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/bean/FriendInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultList"
.end annotation


# instance fields
.field private isattention:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private portraitUrl:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsattention()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/FriendInfo$ResultList;->isattention:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/FriendInfo$ResultList;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPortraitUrl()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/FriendInfo$ResultList;->portraitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/FriendInfo$ResultList;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setIsattention(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/FriendInfo$ResultList;->isattention:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/FriendInfo$ResultList;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setPortraitUrl(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/FriendInfo$ResultList;->portraitUrl:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/FriendInfo$ResultList;->uid:Ljava/lang/String;

    return-void
.end method
