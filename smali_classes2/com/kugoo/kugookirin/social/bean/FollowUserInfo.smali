.class public Lcom/kugoo/kugookirin/social/bean/FollowUserInfo;
.super Ljava/lang/Object;
.source "FollowUserInfo.java"


# instance fields
.field private result:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/FollowUserInfo;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/FollowUserInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/FollowUserInfo;->result:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/FollowUserInfo;->status:Ljava/lang/String;

    return-void
.end method
