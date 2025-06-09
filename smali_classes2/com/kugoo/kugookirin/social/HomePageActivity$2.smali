.class Lcom/kugoo/kugookirin/social/HomePageActivity$2;
.super Ljava/lang/Object;
.source "HomePageActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/HomePageActivity;->getHomepagePosts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/HomePageActivity;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$2;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

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
            "Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 398
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$2;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/HomePageActivity;->detailSmartLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 399
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$2;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/HomePageActivity;->detailSmartLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean;",
            ">;)V"
        }
    .end annotation

    .line 378
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean;

    if-nez p1, :cond_0

    return-void

    .line 382
    :cond_0
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean;->getStatus()Ljava/lang/String;

    move-result-object p2

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 383
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean;->getDynamicArr()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 384
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean;->getDynamicArr()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eqz p2, :cond_1

    .line 385
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$2;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iget-object p2, p2, Lcom/kugoo/kugookirin/social/HomePageActivity;->noPostDataView:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 386
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean;->getDynamicArr()Ljava/util/ArrayList;

    move-result-object p1

    .line 387
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$2;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/HomePageActivity;->access$200(Lcom/kugoo/kugookirin/social/HomePageActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 388
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$2;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/HomePageActivity;->access$300(Lcom/kugoo/kugookirin/social/HomePageActivity;)Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 389
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$2;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/HomePageActivity;->access$200(Lcom/kugoo/kugookirin/social/HomePageActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 390
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$2;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/HomePageActivity;->noPostDataView:Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 393
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$2;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/HomePageActivity;->detailSmartLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 394
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$2;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/HomePageActivity;->detailSmartLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method
