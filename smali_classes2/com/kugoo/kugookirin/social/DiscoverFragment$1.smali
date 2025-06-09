.class Lcom/kugoo/kugookirin/social/DiscoverFragment$1;
.super Ljava/lang/Object;
.source "DiscoverFragment.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnRefreshLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/DiscoverFragment;->setAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/DiscoverFragment;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$1;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    return-void
.end method

.method public onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$1;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->refreshData()V

    .line 232
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method
