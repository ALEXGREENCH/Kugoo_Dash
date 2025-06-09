.class public Lcom/kugoo/kugookirin/bean/TrackInfoBean;
.super Ljava/lang/Object;
.source "TrackInfoBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;
    }
.end annotation


# instance fields
.field private activity:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;",
            ">;"
        }
    .end annotation
.end field

.field private isLastData:Z

.field private result:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivity()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean;->activity:Ljava/util/List;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public isIsLastData()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean;->isLastData:Z

    return v0
.end method

.method public setActivity(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean;->activity:Ljava/util/List;

    return-void
.end method

.method public setIsLastData(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean;->isLastData:Z

    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean;->result:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean;->status:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/TrackInfoBean;->uid:Ljava/lang/String;

    return-void
.end method
