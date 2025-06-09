.class public Lcom/kugoo/kugookirin/social/bean/AddLabelInfo;
.super Ljava/lang/Object;
.source "AddLabelInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;
    }
.end annotation


# instance fields
.field private labelArr:Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;

.field private result:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLabelArr()Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/AddLabelInfo;->labelArr:Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/AddLabelInfo;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/AddLabelInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setLabelArr(Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/AddLabelInfo;->labelArr:Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;

    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/AddLabelInfo;->result:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/AddLabelInfo;->status:Ljava/lang/String;

    return-void
.end method
