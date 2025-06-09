.class Lcom/kugoo/kugookirin/social/HomePageActivity$1;
.super Ljava/lang/Object;
.source "HomePageActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/HomePageActivity;->getPageInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/kugoo/kugookirin/bean/HomepageInfoData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/HomePageActivity;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$1;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

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
            "Lcom/kugoo/kugookirin/bean/HomepageInfoData;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 352
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$1;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/HomePageActivity;->detailSmartLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 353
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$1;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

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
            "Lcom/kugoo/kugookirin/bean/HomepageInfoData;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/kugoo/kugookirin/bean/HomepageInfoData;",
            ">;)V"
        }
    .end annotation

    .line 334
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/bean/HomepageInfoData;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "0"

    .line 338
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 339
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData;->getResult()Ljava/util/List;

    move-result-object p1

    .line 340
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_1

    .line 341
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$1;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/HomePageActivity;->noInfoDataView:Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 343
    :cond_1
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$1;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iget-object p2, p2, Lcom/kugoo/kugookirin/social/HomePageActivity;->noInfoDataView:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 344
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$1;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/HomePageActivity;->access$000(Lcom/kugoo/kugookirin/social/HomePageActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 345
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$1;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/HomePageActivity;->access$000(Lcom/kugoo/kugookirin/social/HomePageActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 346
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$1;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/HomePageActivity;->access$100(Lcom/kugoo/kugookirin/social/HomePageActivity;)Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method
