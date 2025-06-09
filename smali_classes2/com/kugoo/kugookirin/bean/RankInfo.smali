.class public Lcom/kugoo/kugookirin/bean/RankInfo;
.super Ljava/lang/Object;
.source "RankInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/bean/RankInfo$ResultList;,
        Lcom/kugoo/kugookirin/bean/RankInfo$UserList;
    }
.end annotation


# instance fields
.field private result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/RankInfo$ResultList;",
            ">;"
        }
    .end annotation
.end field

.field private status:Ljava/lang/String;

.field private user:Lcom/kugoo/kugookirin/bean/RankInfo$UserList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/RankInfo$ResultList;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RankInfo;->result:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RankInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/kugoo/kugookirin/bean/RankInfo$UserList;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/RankInfo;->user:Lcom/kugoo/kugookirin/bean/RankInfo$UserList;

    return-object v0
.end method

.method public setResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/RankInfo$ResultList;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RankInfo;->result:Ljava/util/List;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RankInfo;->status:Ljava/lang/String;

    return-void
.end method

.method public setUser(Lcom/kugoo/kugookirin/bean/RankInfo$UserList;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/RankInfo;->user:Lcom/kugoo/kugookirin/bean/RankInfo$UserList;

    return-void
.end method
