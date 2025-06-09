.class public Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean;
.super Ljava/lang/Object;
.source "HomePagePostsBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;
    }
.end annotation


# instance fields
.field private dynamicArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;",
            ">;"
        }
    .end annotation
.end field

.field private flag:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private portraitUrl:Ljava/lang/String;

.field private speak_allowed:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDynamicArr()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean;->dynamicArr:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFlag()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean;->flag:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPortraitUrl()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean;->portraitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeak_allowed()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean;->speak_allowed:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setDynamicArr(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean;->dynamicArr:Ljava/util/ArrayList;

    return-void
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean;->flag:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setPortraitUrl(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean;->portraitUrl:Ljava/lang/String;

    return-void
.end method

.method public setSpeak_allowed(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean;->speak_allowed:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean;->status:Ljava/lang/String;

    return-void
.end method
