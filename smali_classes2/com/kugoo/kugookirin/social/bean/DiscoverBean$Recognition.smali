.class public Lcom/kugoo/kugookirin/social/bean/DiscoverBean$Recognition;
.super Ljava/lang/Object;
.source "DiscoverBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/bean/DiscoverBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Recognition"
.end annotation


# instance fields
.field data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;",
            ">;"
        }
    .end annotation
.end field

.field isLastData:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;",
            ">;"
        }
    .end annotation

    .line 615
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$Recognition;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isLastData()Z
    .locals 1

    .line 623
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$Recognition;->isLastData:Z

    return v0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;",
            ">;)V"
        }
    .end annotation

    .line 619
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$Recognition;->data:Ljava/util/ArrayList;

    return-void
.end method

.method public setLastData(Z)V
    .locals 0

    .line 627
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$Recognition;->isLastData:Z

    return-void
.end method
