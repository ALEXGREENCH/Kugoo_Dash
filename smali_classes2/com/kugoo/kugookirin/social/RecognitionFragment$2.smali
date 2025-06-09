.class Lcom/kugoo/kugookirin/social/RecognitionFragment$2;
.super Ljava/lang/Object;
.source "RecognitionFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/RecognitionFragment;->getDiscoverData(II)V
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
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/RecognitionFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/RecognitionFragment;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment$2;->this$0:Lcom/kugoo/kugookirin/social/RecognitionFragment;

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
            "Lcom/kugoo/kugookirin/social/bean/DiscoverBean;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

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

    .line 173
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/DiscoverBean;

    if-nez p1, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean;->getStatus()Ljava/lang/String;

    move-result-object p2

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 178
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean;->getRecognition()Lcom/kugoo/kugookirin/social/bean/DiscoverBean$Recognition;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 179
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean;->getRecognition()Lcom/kugoo/kugookirin/social/bean/DiscoverBean$Recognition;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$Recognition;->getData()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 181
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment$2;->this$0:Lcom/kugoo/kugookirin/social/RecognitionFragment;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/RecognitionFragment;->access$400(Lcom/kugoo/kugookirin/social/RecognitionFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean;->getRecognition()Lcom/kugoo/kugookirin/social/bean/DiscoverBean$Recognition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$Recognition;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 182
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment$2;->this$0:Lcom/kugoo/kugookirin/social/RecognitionFragment;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/RecognitionFragment;->access$500(Lcom/kugoo/kugookirin/social/RecognitionFragment;)Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->notifyDataSetChanged()V

    .line 184
    :cond_1
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment$2;->this$0:Lcom/kugoo/kugookirin/social/RecognitionFragment;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/RecognitionFragment;->access$400(Lcom/kugoo/kugookirin/social/RecognitionFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 185
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment$2;->this$0:Lcom/kugoo/kugookirin/social/RecognitionFragment;

    iget-object p2, p2, Lcom/kugoo/kugookirin/social/RecognitionFragment;->no_data_view:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 186
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment$2;->this$0:Lcom/kugoo/kugookirin/social/RecognitionFragment;

    iget-object p2, p2, Lcom/kugoo/kugookirin/social/RecognitionFragment;->recognitionRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 188
    :cond_2
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment$2;->this$0:Lcom/kugoo/kugookirin/social/RecognitionFragment;

    invoke-static {p2, v1}, Lcom/kugoo/kugookirin/social/RecognitionFragment;->access$602(Lcom/kugoo/kugookirin/social/RecognitionFragment;Z)Z

    .line 189
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment$2;->this$0:Lcom/kugoo/kugookirin/social/RecognitionFragment;

    iget-object p2, p2, Lcom/kugoo/kugookirin/social/RecognitionFragment;->no_data_view:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 190
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment$2;->this$0:Lcom/kugoo/kugookirin/social/RecognitionFragment;

    iget-object p2, p2, Lcom/kugoo/kugookirin/social/RecognitionFragment;->recognitionRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 192
    :goto_0
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean;->getRecognition()Lcom/kugoo/kugookirin/social/bean/DiscoverBean$Recognition;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 193
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean;->getRecognition()Lcom/kugoo/kugookirin/social/bean/DiscoverBean$Recognition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$Recognition;->isLastData()Z

    move-result p1

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/RecognitionFragment;->access$002(Z)Z

    .line 195
    :cond_3
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment$2;->this$0:Lcom/kugoo/kugookirin/social/RecognitionFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/RecognitionFragment;->pageRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 196
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment$2;->this$0:Lcom/kugoo/kugookirin/social/RecognitionFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/RecognitionFragment;->pageRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method
