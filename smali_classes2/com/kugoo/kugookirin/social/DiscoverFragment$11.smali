.class Lcom/kugoo/kugookirin/social/DiscoverFragment$11;
.super Ljava/lang/Object;
.source "DiscoverFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/DiscoverFragment;->getDiscoverData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/kugoo/kugookirin/social/bean/DiscoverBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/DiscoverFragment;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$11;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/kugoo/kugookirin/social/bean/DiscoverBean;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 511
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$11;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/DiscoverFragment;->discoverRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 512
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$11;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/DiscoverFragment;->discoverRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 513
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onFailure: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DiscoverBean"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/kugoo/kugookirin/social/bean/DiscoverBean;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/kugoo/kugookirin/social/bean/DiscoverBean;",
            ">;)V"
        }
    .end annotation

    .line 481
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/DiscoverBean;

    if-nez p1, :cond_0

    return-void

    .line 485
    :cond_0
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean;->getStatus()Ljava/lang/String;

    move-result-object p2

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean;->getRanking()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 486
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$11;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->access$800(Lcom/kugoo/kugookirin/social/DiscoverFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 487
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$11;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->access$800(Lcom/kugoo/kugookirin/social/DiscoverFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean;->getRanking()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 488
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$11;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->access$900(Lcom/kugoo/kugookirin/social/DiscoverFragment;)Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->notifyDataSetChanged()V

    .line 490
    :cond_1
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean;->getStatus()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 491
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean;->getFans()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 492
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$11;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->access$1000(Lcom/kugoo/kugookirin/social/DiscoverFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 493
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$11;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->access$1000(Lcom/kugoo/kugookirin/social/DiscoverFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean;->getFans()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 494
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$11;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->access$1100(Lcom/kugoo/kugookirin/social/DiscoverFragment;)Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->notifyDataSetChanged()V

    .line 496
    :cond_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$11;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->access$800(Lcom/kugoo/kugookirin/social/DiscoverFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/16 p2, 0x8

    if-eqz p1, :cond_3

    .line 497
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$11;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/DiscoverFragment;->odoRankingTv:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 498
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$11;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/DiscoverFragment;->odoRankingRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 500
    :cond_3
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$11;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->access$1000(Lcom/kugoo/kugookirin/social/DiscoverFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 501
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$11;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/DiscoverFragment;->socialRankingTv:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 502
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$11;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/DiscoverFragment;->socialRankingRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 505
    :cond_4
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$11;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/DiscoverFragment;->discoverRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 506
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$11;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/DiscoverFragment;->discoverRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method
