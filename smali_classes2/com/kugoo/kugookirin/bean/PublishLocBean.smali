.class public Lcom/kugoo/kugookirin/bean/PublishLocBean;
.super Ljava/lang/Object;
.source "PublishLocBean.java"


# instance fields
.field private detailLoc:Ljava/lang/String;

.field private isCheck:Z

.field private rougeLoc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetailLoc()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/PublishLocBean;->detailLoc:Ljava/lang/String;

    return-object v0
.end method

.method public getRougeLoc()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/PublishLocBean;->rougeLoc:Ljava/lang/String;

    return-object v0
.end method

.method public isCheck()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/bean/PublishLocBean;->isCheck:Z

    return v0
.end method

.method public setCheck(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/bean/PublishLocBean;->isCheck:Z

    return-void
.end method

.method public setDetailLoc(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/PublishLocBean;->detailLoc:Ljava/lang/String;

    return-void
.end method

.method public setRougeLoc(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/PublishLocBean;->rougeLoc:Ljava/lang/String;

    return-void
.end method
