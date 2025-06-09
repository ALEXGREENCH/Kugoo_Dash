.class public Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;
.super Ljava/lang/Object;
.source "SearchUserInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/bean/SearchUserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserArrList"
.end annotation


# instance fields
.field private follow:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private portraitUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFollow()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;->follow:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPortraitUrl()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;->portraitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setFollow(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;->follow:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;->id:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setPortraitUrl(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;->portraitUrl:Ljava/lang/String;

    return-void
.end method
