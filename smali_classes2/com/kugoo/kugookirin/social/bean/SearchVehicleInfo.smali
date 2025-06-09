.class public Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo;
.super Ljava/lang/Object;
.source "SearchVehicleInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo$ResultBean;
    }
.end annotation


# instance fields
.field private isLastData:Z

.field private status:Ljava/lang/String;

.field private userArr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo$ResultBean;",
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
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUserArr()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo$ResultBean;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo;->userArr:Ljava/util/List;

    return-object v0
.end method

.method public isLastData()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo;->isLastData:Z

    return v0
.end method

.method public setLastData(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo;->isLastData:Z

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo;->status:Ljava/lang/String;

    return-void
.end method

.method public setUserArr(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo$ResultBean;",
            ">;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo;->userArr:Ljava/util/List;

    return-void
.end method
