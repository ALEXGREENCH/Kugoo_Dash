.class public Lcom/kugoo/kugookirin/bean/PagerItem;
.super Ljava/lang/Object;
.source "PagerItem.java"


# instance fields
.field private picResId:Ljava/lang/Integer;

.field private picUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/PagerItem;->title:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/kugoo/kugookirin/bean/PagerItem;->picResId:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/PagerItem;->title:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/kugoo/kugookirin/bean/PagerItem;->picUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPicResId()Ljava/lang/Integer;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/PagerItem;->picResId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/PagerItem;->picUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/PagerItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setPicResId(Ljava/lang/Integer;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/PagerItem;->picResId:Ljava/lang/Integer;

    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/PagerItem;->picUrl:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/PagerItem;->title:Ljava/lang/String;

    return-void
.end method
