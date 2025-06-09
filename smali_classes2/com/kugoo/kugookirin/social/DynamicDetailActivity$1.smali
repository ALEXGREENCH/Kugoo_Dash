.class Lcom/kugoo/kugookirin/social/DynamicDetailActivity$1;
.super Ljava/lang/Object;
.source "DynamicDetailActivity.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnRefreshLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$1;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 7

    .line 178
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$1;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$000(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$1;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$200(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$112(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;I)I

    .line 180
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$1;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$300(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$1;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$400(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$1;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$100(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)I

    move-result v4

    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$1;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$200(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)I

    move-result v5

    const-string v6, "messageDetails"

    invoke-static/range {v1 .. v6}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$500(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onLoadMore==isLastData=="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$1;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$000(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " limit == "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$1;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    .line 183
    invoke-static {v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$100(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "serchPost002"

    .line 182
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    :cond_0
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    :goto_0
    return-void
.end method

.method public onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 7

    .line 191
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$1;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$300(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$1;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$102(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;I)I

    .line 193
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$1;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$002(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Z)Z

    .line 194
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$1;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$300(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$1;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$400(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$1;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$100(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)I

    move-result v4

    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$1;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$200(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)I

    move-result v5

    const-string v6, "messageDetails"

    invoke-static/range {v1 .. v6}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$500(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onRefresh==isLastData=="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$1;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$000(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  limit=="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$1;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    .line 197
    invoke-static {v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$100(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "serchPost002"

    .line 196
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    :cond_0
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    :goto_0
    return-void
.end method
