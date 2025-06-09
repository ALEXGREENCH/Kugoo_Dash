.class Lcom/kugoo/kugookirin/social/PopularFragment$1;
.super Ljava/lang/Object;
.source "PopularFragment.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnRefreshLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/PopularFragment;->setAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/PopularFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/PopularFragment;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PopularFragment$1;->this$0:Lcom/kugoo/kugookirin/social/PopularFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 2

    .line 139
    invoke-static {}, Lcom/kugoo/kugookirin/social/PopularFragment;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PopularFragment$1;->this$0:Lcom/kugoo/kugookirin/social/PopularFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/PopularFragment;->access$200(Lcom/kugoo/kugookirin/social/PopularFragment;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/social/PopularFragment;->access$112(Lcom/kugoo/kugookirin/social/PopularFragment;I)I

    .line 142
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PopularFragment$1;->this$0:Lcom/kugoo/kugookirin/social/PopularFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/PopularFragment;->access$100(Lcom/kugoo/kugookirin/social/PopularFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PopularFragment$1;->this$0:Lcom/kugoo/kugookirin/social/PopularFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/PopularFragment;->access$200(Lcom/kugoo/kugookirin/social/PopularFragment;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/kugoo/kugookirin/social/PopularFragment;->access$300(Lcom/kugoo/kugookirin/social/PopularFragment;II)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    :goto_0
    return-void
.end method

.method public onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    return-void
.end method
