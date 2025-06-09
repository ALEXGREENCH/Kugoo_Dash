.class public Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean$RemindStrList;
.super Ljava/lang/Object;
.source "HomePagePostsBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemindStrList"
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private portraitUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean$RemindStrList;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean$RemindStrList;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPortraitUrl()Ljava/lang/String;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean$RemindStrList;->portraitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean$RemindStrList;->id:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean$RemindStrList;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setPortraitUrl(Ljava/lang/String;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean$RemindStrList;->portraitUrl:Ljava/lang/String;

    return-void
.end method
