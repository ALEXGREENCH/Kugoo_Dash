.class public Lcom/kugoo/kugookirin/social/bean/LabelInfo$ResultList;
.super Ljava/lang/Object;
.source "LabelInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/bean/LabelInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultList"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private num:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/LabelInfo$ResultList;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/LabelInfo$ResultList;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNum()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/LabelInfo$ResultList;->num:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/LabelInfo$ResultList;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/LabelInfo$ResultList;->content:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/LabelInfo$ResultList;->id:Ljava/lang/String;

    return-void
.end method

.method public setNum(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/LabelInfo$ResultList;->num:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/LabelInfo$ResultList;->uid:Ljava/lang/String;

    return-void
.end method
