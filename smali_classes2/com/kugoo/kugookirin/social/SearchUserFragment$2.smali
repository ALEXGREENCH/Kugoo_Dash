.class Lcom/kugoo/kugookirin/social/SearchUserFragment$2;
.super Ljava/lang/Object;
.source "SearchUserFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/SearchUserFragment;->getUserData(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/kugoo/kugookirin/social/bean/SearchUserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/SearchUserFragment;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$2;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

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
            "Lcom/kugoo/kugookirin/social/bean/SearchUserInfo;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 172
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$2;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/SearchUserFragment;->userRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 173
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$2;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/SearchUserFragment;->userRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/kugoo/kugookirin/social/bean/SearchUserInfo;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/kugoo/kugookirin/social/bean/SearchUserInfo;",
            ">;)V"
        }
    .end annotation

    .line 149
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo;

    if-nez p1, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$2;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo;->isIsLastData()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->access$002(Lcom/kugoo/kugookirin/social/SearchUserFragment;Z)Z

    .line 155
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo;->getStatus()Ljava/lang/String;

    move-result-object p2

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_1

    .line 156
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo;->getUserArr()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 157
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$2;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

    iget-object p2, p2, Lcom/kugoo/kugookirin/social/SearchUserFragment;->noSearchItem:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$2;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

    iget-object p2, p2, Lcom/kugoo/kugookirin/social/SearchUserFragment;->userCv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 159
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$2;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->access$500(Lcom/kugoo/kugookirin/social/SearchUserFragment;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo;->getUserArr()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$2;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->access$600(Lcom/kugoo/kugookirin/social/SearchUserFragment;)Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;->notifyDataSetChanged()V

    .line 162
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$2;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/SearchUserFragment;->userRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 163
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$2;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/SearchUserFragment;->userRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    goto :goto_0

    .line 165
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$2;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/SearchUserFragment;->userCv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 166
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment$2;->this$0:Lcom/kugoo/kugookirin/social/SearchUserFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/SearchUserFragment;->noSearchItem:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
