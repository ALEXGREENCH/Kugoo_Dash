.class public Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean$RemindStrList;
.super Ljava/lang/Object;
.source "SearchPostInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;
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

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean$RemindStrList;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean$RemindStrList;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPortraitUrl()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean$RemindStrList;->portraitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean$RemindStrList;->id:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean$RemindStrList;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setPortraitUrl(Ljava/lang/String;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean$RemindStrList;->portraitUrl:Ljava/lang/String;

    return-void
.end method
