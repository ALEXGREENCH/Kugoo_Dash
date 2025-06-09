.class Lcom/kugoo/kugookirin/social/ForYouFragment$8;
.super Ljava/lang/Object;
.source "ForYouFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/ForYouFragment;->getForYouDynamics(Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/kugoo/kugookirin/social/bean/ForYouBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/ForYouFragment;I)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$8;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    iput p2, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$8;->val$size:I

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
            "Lcom/kugoo/kugookirin/social/bean/ForYouBean;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 386
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$8;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/ForYouFragment;->forYouRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 387
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$8;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/ForYouFragment;->forYouRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/kugoo/kugookirin/social/bean/ForYouBean;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/kugoo/kugookirin/social/bean/ForYouBean;",
            ">;)V"
        }
    .end annotation

    .line 349
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/ForYouBean;

    if-nez p1, :cond_0

    return-void

    .line 353
    :cond_0
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/ForYouBean;->getStatus()Ljava/lang/String;

    move-result-object p2

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 354
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/ForYouBean;->getDynamicArr()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 355
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/ForYouBean;->getDynamicArr()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eqz p2, :cond_2

    .line 356
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$8;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    iget-object p2, p2, Lcom/kugoo/kugookirin/social/ForYouFragment;->forYouCv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 357
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$8;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    iget-object p2, p2, Lcom/kugoo/kugookirin/social/ForYouFragment;->noDataLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 358
    iget p2, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$8;->val$size:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 359
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/ForYouBean;->getDynamicArr()Ljava/util/ArrayList;

    move-result-object p1

    .line 360
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$8;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$600(Lcom/kugoo/kugookirin/social/ForYouFragment;)Ljava/util/ArrayList;

    move-result-object p2

    sget v2, Lcom/kugoo/kugookirin/social/ForYouFragment;->freshItemPos:I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 361
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$8;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$600(Lcom/kugoo/kugookirin/social/ForYouFragment;)Ljava/util/ArrayList;

    move-result-object p2

    sget v2, Lcom/kugoo/kugookirin/social/ForYouFragment;->freshItemPos:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;

    invoke-virtual {p2, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 362
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$8;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$1100(Lcom/kugoo/kugookirin/social/ForYouFragment;)Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    move-result-object p1

    sget p2, Lcom/kugoo/kugookirin/social/ForYouFragment;->freshItemPos:I

    add-int/2addr p2, v0

    const v1, 0x7f0a010f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 363
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$8;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$1100(Lcom/kugoo/kugookirin/social/ForYouFragment;)Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    move-result-object p1

    sget p2, Lcom/kugoo/kugookirin/social/ForYouFragment;->freshItemPos:I

    add-int/2addr p2, v0

    const v1, 0x7f0a010e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 364
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$8;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$1100(Lcom/kugoo/kugookirin/social/ForYouFragment;)Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    move-result-object p1

    sget p2, Lcom/kugoo/kugookirin/social/ForYouFragment;->freshItemPos:I

    add-int/2addr p2, v0

    const v0, 0x7f0a04f7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    const/4 p1, -0x1

    .line 365
    sput p1, Lcom/kugoo/kugookirin/social/ForYouFragment;->freshItemPos:I

    goto :goto_0

    .line 367
    :cond_1
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$8;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-static {p2, v1}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$1202(Lcom/kugoo/kugookirin/social/ForYouFragment;Z)Z

    .line 368
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/ForYouBean;->getDynamicArr()Ljava/util/ArrayList;

    move-result-object p2

    .line 369
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$8;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/ForYouBean;->isIsLastData()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$002(Lcom/kugoo/kugookirin/social/ForYouFragment;Z)Z

    .line 370
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$8;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$600(Lcom/kugoo/kugookirin/social/ForYouFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 371
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$8;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$1100(Lcom/kugoo/kugookirin/social/ForYouFragment;)Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 375
    :cond_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$8;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$600(Lcom/kugoo/kugookirin/social/ForYouFragment;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_3

    .line 376
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$8;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/ForYouFragment;->forYouCv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 377
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$8;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/ForYouFragment;->noDataLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 380
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$8;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/ForYouFragment;->forYouRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 381
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$8;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/ForYouFragment;->forYouRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method
