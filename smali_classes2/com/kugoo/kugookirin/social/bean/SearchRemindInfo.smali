.class public Lcom/kugoo/kugookirin/social/bean/SearchRemindInfo;
.super Ljava/lang/Object;
.source "SearchRemindInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/bean/SearchRemindInfo$ResultList;
    }
.end annotation


# instance fields
.field private result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/social/bean/SearchRemindInfo$ResultList;",
            ">;"
        }
    .end annotation
.end field

.field private status:Ljava/lang/String;


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
            "Lcom/kugoo/kugookirin/social/bean/SearchRemindInfo$ResultList;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchRemindInfo;->result:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchRemindInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/social/bean/SearchRemindInfo$ResultList;",
            ">;)V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchRemindInfo;->result:Ljava/util/List;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchRemindInfo;->status:Ljava/lang/String;

    return-void
.end method
