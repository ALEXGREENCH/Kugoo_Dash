.class Lcom/kugoo/kugookirin/social/ForYouFragment$1;
.super Ljava/lang/Object;
.source "ForYouFragment.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnRefreshLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/ForYouFragment;->setAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/ForYouFragment;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$1;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$1;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$000(Lcom/kugoo/kugookirin/social/ForYouFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$1;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$200(Lcom/kugoo/kugookirin/social/ForYouFragment;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$112(Lcom/kugoo/kugookirin/social/ForYouFragment;I)I

    .line 202
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$1;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$300(Lcom/kugoo/kugookirin/social/ForYouFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$1;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$400(Lcom/kugoo/kugookirin/social/ForYouFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$1;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$100(Lcom/kugoo/kugookirin/social/ForYouFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$1;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-static {v3}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$200(Lcom/kugoo/kugookirin/social/ForYouFragment;)I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$500(Lcom/kugoo/kugookirin/social/ForYouFragment;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 205
    :cond_0
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    :goto_0
    return-void
.end method

.method public onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$1;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$400(Lcom/kugoo/kugookirin/social/ForYouFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$1;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$600(Lcom/kugoo/kugookirin/social/ForYouFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 213
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$1;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$002(Lcom/kugoo/kugookirin/social/ForYouFragment;Z)Z

    .line 214
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$1;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$102(Lcom/kugoo/kugookirin/social/ForYouFragment;I)I

    .line 215
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$1;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$300(Lcom/kugoo/kugookirin/social/ForYouFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$1;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$400(Lcom/kugoo/kugookirin/social/ForYouFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$1;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$100(Lcom/kugoo/kugookirin/social/ForYouFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$1;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-static {v3}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$200(Lcom/kugoo/kugookirin/social/ForYouFragment;)I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$500(Lcom/kugoo/kugookirin/social/ForYouFragment;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 217
    :cond_0
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    :goto_0
    return-void
.end method
