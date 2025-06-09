.class public Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$RemindStrList;
.super Ljava/lang/Object;
.source "ForYouBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;
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

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$RemindStrList;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$RemindStrList;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPortraitUrl()Ljava/lang/String;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$RemindStrList;->portraitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$RemindStrList;->id:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$RemindStrList;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setPortraitUrl(Ljava/lang/String;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$RemindStrList;->portraitUrl:Ljava/lang/String;

    return-void
.end method
