.class public Lcom/kugoo/kugookirin/social/bean/FriendInfo;
.super Ljava/lang/Object;
.source "FriendInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/bean/FriendInfo$ResultList;
    }
.end annotation


# instance fields
.field private flag:Ljava/lang/String;

.field private result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/social/bean/FriendInfo$ResultList;",
            ">;"
        }
    .end annotation
.end field

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlag()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/FriendInfo;->flag:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/social/bean/FriendInfo$ResultList;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/FriendInfo;->result:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/FriendInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/FriendInfo;->flag:Ljava/lang/String;

    return-void
.end method

.method public setResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/social/bean/FriendInfo$ResultList;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/FriendInfo;->result:Ljava/util/List;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/FriendInfo;->status:Ljava/lang/String;

    return-void
.end method
