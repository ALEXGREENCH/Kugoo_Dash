.class Lcom/kugoo/kugookirin/social/SearchUserFragment$1;
.super Ljava/lang/Object;
.source "SearchUserFragment.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnRefreshLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/SearchUserFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/SearchUserFragment;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$1;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$1;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->access$000(Lcom/kugoo/kugookirin/social/SearchUserFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$1;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->access$100(Lcom/kugoo/kugookirin/social/SearchUserFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$1;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

    invoke-static {}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->access$300()I

    move-result v0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->access$212(Lcom/kugoo/kugookirin/social/SearchUserFragment;I)I

    .line 91
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$1;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->access$100(Lcom/kugoo/kugookirin/social/SearchUserFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$1;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->access$200(Lcom/kugoo/kugookirin/social/SearchUserFragment;)I

    move-result v1

    invoke-static {}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->access$300()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->access$400(Lcom/kugoo/kugookirin/social/SearchUserFragment;Ljava/lang/String;II)V

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onLoadMore==isLastData=="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$1;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->access$000(Lcom/kugoo/kugookirin/social/SearchUserFragment;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  searchContent=="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$1;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

    .line 94
    invoke-static {v0}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->access$100(Lcom/kugoo/kugookirin/social/SearchUserFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  limit=="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$1;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->access$200(Lcom/kugoo/kugookirin/social/SearchUserFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "serchPost002"

    .line 93
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    :cond_0
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    :goto_0
    return-void
.end method

.method public onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$1;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->access$100(Lcom/kugoo/kugookirin/social/SearchUserFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$1;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->access$202(Lcom/kugoo/kugookirin/social/SearchUserFragment;I)I

    .line 104
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$1;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->access$002(Lcom/kugoo/kugookirin/social/SearchUserFragment;Z)Z

    .line 105
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$1;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->access$500(Lcom/kugoo/kugookirin/social/SearchUserFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 106
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$1;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->access$100(Lcom/kugoo/kugookirin/social/SearchUserFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$1;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->access$200(Lcom/kugoo/kugookirin/social/SearchUserFragment;)I

    move-result v1

    invoke-static {}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->access$300()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->access$400(Lcom/kugoo/kugookirin/social/SearchUserFragment;Ljava/lang/String;II)V

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onRefresh==isLastData=="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$1;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->access$000(Lcom/kugoo/kugookirin/social/SearchUserFragment;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  searchContent=="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$1;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

    .line 109
    invoke-static {v0}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->access$100(Lcom/kugoo/kugookirin/social/SearchUserFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  limit=="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$1;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->access$200(Lcom/kugoo/kugookirin/social/SearchUserFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "serchPost002"

    .line 108
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_0
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    :goto_0
    return-void
.end method
