.class public Lcom/kugoo/kugookirin/bean/HomepageInfoData;
.super Ljava/lang/Object;
.source "HomepageInfoData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;
    }
.end annotation


# instance fields
.field private flag:Ljava/lang/String;

.field private result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;",
            ">;"
        }
    .end annotation
.end field

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlag()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/HomepageInfoData;->flag:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/HomepageInfoData;->result:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/HomepageInfoData;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/HomepageInfoData;->flag:Ljava/lang/String;

    return-void
.end method

.method public setResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/HomepageInfoData;->result:Ljava/util/List;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/HomepageInfoData;->status:Ljava/lang/String;

    return-void
.end method
