.class public Lcom/kugoo/kugookirin/social/bean/DiscoverBean;
.super Ljava/lang/Object;
.source "DiscoverBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PopularLike;,
        Lcom/kugoo/kugookirin/social/bean/DiscoverBean$Recognition;,
        Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;,
        Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;,
        Lcom/kugoo/kugookirin/social/bean/DiscoverBean$OdoRankingBean;
    }
.end annotation


# instance fields
.field private PopularLike:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PopularLike;

.field private Ranking:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/DiscoverBean$OdoRankingBean;",
            ">;"
        }
    .end annotation
.end field

.field private Recognition:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$Recognition;

.field private fans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;",
            ">;"
        }
    .end annotation
.end field

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFans()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;",
            ">;"
        }
    .end annotation

    .line 669
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean;->fans:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPopularLike()Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PopularLike;
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean;->PopularLike:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PopularLike;

    return-object v0
.end method

.method public getRanking()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/DiscoverBean$OdoRankingBean;",
            ">;"
        }
    .end annotation

    .line 661
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean;->Ranking:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRecognition()Lcom/kugoo/kugookirin/social/bean/DiscoverBean$Recognition;
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean;->Recognition:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$Recognition;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setFans(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;",
            ">;)V"
        }
    .end annotation

    .line 673
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean;->fans:Ljava/util/ArrayList;

    return-void
.end method

.method public setPopularLike(Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PopularLike;)V
    .locals 0

    .line 681
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean;->PopularLike:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PopularLike;

    return-void
.end method

.method public setRanking(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/DiscoverBean$OdoRankingBean;",
            ">;)V"
        }
    .end annotation

    .line 665
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean;->Ranking:Ljava/util/ArrayList;

    return-void
.end method

.method public setRecognition(Lcom/kugoo/kugookirin/social/bean/DiscoverBean$Recognition;)V
    .locals 0

    .line 689
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean;->Recognition:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$Recognition;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean;->status:Ljava/lang/String;

    return-void
.end method
