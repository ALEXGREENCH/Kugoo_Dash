.class public Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;
.super Ljava/lang/Object;
.source "AddLabelInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/bean/AddLabelInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LabelArrList"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private labelId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;->labelId:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;->content:Ljava/lang/String;

    return-void
.end method

.method public setLabelId(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;->labelId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 59
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
