.class Lcom/kugoo/kugookirin/social/DynamicDetailActivity$16;
.super Ljava/lang/Object;
.source "DynamicDetailActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->getDynDetail(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/kugoo/kugookirin/social/bean/DynDetailInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

.field final synthetic val$limit:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;I)V
    .locals 0

    .line 516
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$16;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    iput p2, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$16;->val$limit:I

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
            "Lcom/kugoo/kugookirin/social/bean/DynDetailInfo;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 542
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$16;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->detailRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 543
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$16;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->detailRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/kugoo/kugookirin/social/bean/DynDetailInfo;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/kugoo/kugookirin/social/bean/DynDetailInfo;",
            ">;)V"
        }
    .end annotation

    .line 520
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo;

    if-nez p1, :cond_0

    return-void

    .line 524
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "getStatus=="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "26\u67e5\u770b\u8bc4\u8bba\u6216\u70b9\u8d5e\u8be6\u60c5"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo;->getStatus()Ljava/lang/String;

    move-result-object p2

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 526
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$16;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo;->isIsLastData()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$002(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Z)Z

    .line 527
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "isLastData=="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$16;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$000(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "26\u67e5\u770b\u8bc4\u8bba\u6216\u70b9\u8d5e\u8be6\u60c50001"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget p2, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$16;->val$limit:I

    if-nez p2, :cond_1

    .line 529
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$16;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo;->getDynamicArr()Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$1402(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;)Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    goto :goto_0

    .line 531
    :cond_1
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$16;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$1400(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getCommentArr()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo;->getDynamicArr()Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getCommentArr()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 534
    :goto_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$16;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$1500(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x3f2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 536
    :cond_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$16;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->detailRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 537
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$16;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->detailRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method
