.class Lcom/kugoo/kugookirin/social/SearchTopicFragment$2;
.super Ljava/lang/Object;
.source "SearchTopicFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/SearchTopicFragment;->searchTopic(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/kugoo/kugookirin/social/bean/SearchPostInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/SearchTopicFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/SearchTopicFragment;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment$2;->this$0:Lcom/kugoo/kugookirin/social/SearchTopicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/kugoo/kugookirin/social/bean/SearchPostInfo;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 170
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment$2;->this$0:Lcom/kugoo/kugookirin/social/SearchTopicFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->postRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 171
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment$2;->this$0:Lcom/kugoo/kugookirin/social/SearchTopicFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->postRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/kugoo/kugookirin/social/bean/SearchPostInfo;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/kugoo/kugookirin/social/bean/SearchPostInfo;",
            ">;)V"
        }
    .end annotation

    .line 145
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo;

    if-nez p1, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment$2;->this$0:Lcom/kugoo/kugookirin/social/SearchTopicFragment;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo;->isIsLastData()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->access$002(Lcom/kugoo/kugookirin/social/SearchTopicFragment;Z)Z

    .line 152
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo;->getStatus()Ljava/lang/String;

    move-result-object p2

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_1

    .line 153
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo;->getDynamicArr()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 154
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo;->getDynamicArr()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 155
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment$2;->this$0:Lcom/kugoo/kugookirin/social/SearchTopicFragment;

    iget-object p2, p2, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->noSearchItem:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment$2;->this$0:Lcom/kugoo/kugookirin/social/SearchTopicFragment;

    iget-object p2, p2, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->postCv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 157
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment$2;->this$0:Lcom/kugoo/kugookirin/social/SearchTopicFragment;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->access$500(Lcom/kugoo/kugookirin/social/SearchTopicFragment;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo;->getDynamicArr()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment$2;->this$0:Lcom/kugoo/kugookirin/social/SearchTopicFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->access$600(Lcom/kugoo/kugookirin/social/SearchTopicFragment;)Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->notifyDataSetChanged()V

    .line 160
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment$2;->this$0:Lcom/kugoo/kugookirin/social/SearchTopicFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->postRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 161
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment$2;->this$0:Lcom/kugoo/kugookirin/social/SearchTopicFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->postRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    goto :goto_0

    .line 163
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment$2;->this$0:Lcom/kugoo/kugookirin/social/SearchTopicFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->postCv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 164
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment$2;->this$0:Lcom/kugoo/kugookirin/social/SearchTopicFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->noSearchItem:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
