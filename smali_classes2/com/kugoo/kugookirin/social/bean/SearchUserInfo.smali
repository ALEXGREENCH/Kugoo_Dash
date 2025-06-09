.class public Lcom/kugoo/kugookirin/social/bean/SearchUserInfo;
.super Ljava/lang/Object;
.source "SearchUserInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;
    }
.end annotation


# instance fields
.field private isLastData:Z

.field private status:Ljava/lang/String;

.field private userArr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUserArr()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo;->userArr:Ljava/util/List;

    return-object v0
.end method

.method public isIsLastData()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo;->isLastData:Z

    return v0
.end method

.method public setIsLastData(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo;->isLastData:Z

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo;->status:Ljava/lang/String;

    return-void
.end method

.method public setUserArr(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo;->userArr:Ljava/util/List;

    return-void
.end method
