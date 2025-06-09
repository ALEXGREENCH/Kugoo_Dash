.class public Lcom/kugoo/kugookirin/social/bean/ForYouBean;
.super Ljava/lang/Object;
.source "ForYouBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;
    }
.end annotation


# instance fields
.field private dynamicArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;",
            ">;"
        }
    .end annotation
.end field

.field private isLastData:Z

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDynamicArr()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean;->dynamicArr:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public isIsLastData()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean;->isLastData:Z

    return v0
.end method

.method public setDynamicArr(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean;->dynamicArr:Ljava/util/ArrayList;

    return-void
.end method

.method public setIsLastData(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean;->isLastData:Z

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean;->status:Ljava/lang/String;

    return-void
.end method
