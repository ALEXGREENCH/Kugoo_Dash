.class Lcom/kugoo/kugookirin/more/TrackFragment$2;
.super Ljava/lang/Object;
.source "TrackFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/more/TrackFragment;->loadGPSInfo(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/kugoo/kugookirin/bean/TrackInfoBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/more/TrackFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/more/TrackFragment;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$2;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/kugoo/kugookirin/bean/TrackInfoBean;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "error=="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "locationdata1111"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/kugoo/kugookirin/bean/TrackInfoBean;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/kugoo/kugookirin/bean/TrackInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 137
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/bean/TrackInfoBean;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/TrackInfoBean;->getStatus()Ljava/lang/String;

    move-result-object p1

    .line 138
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment$2;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kugoo/kugookirin/bean/TrackInfoBean;

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/bean/TrackInfoBean;->isIsLastData()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$002(Lcom/kugoo/kugookirin/more/TrackFragment;Z)Z

    const-string v0, "0"

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$2;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/more/TrackFragment;->noRecord:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 143
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/bean/TrackInfoBean;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/TrackInfoBean;->getActivity()Ljava/util/List;

    move-result-object p1

    .line 144
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/TrackFragment$2;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-static {p2}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$600(Lcom/kugoo/kugookirin/more/TrackFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 145
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$2;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$700(Lcom/kugoo/kugookirin/more/TrackFragment;)Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$2;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$600(Lcom/kugoo/kugookirin/more/TrackFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 148
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$2;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/more/TrackFragment;->noRecord:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 150
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$2;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$200(Lcom/kugoo/kugookirin/more/TrackFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 151
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$2;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$202(Lcom/kugoo/kugookirin/more/TrackFragment;Z)Z

    .line 152
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$2;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/more/TrackFragment;->traFreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    goto :goto_1

    .line 153
    :cond_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$2;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$500(Lcom/kugoo/kugookirin/more/TrackFragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 154
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$2;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$502(Lcom/kugoo/kugookirin/more/TrackFragment;Z)Z

    .line 155
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$2;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/more/TrackFragment;->traFreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    :cond_3
    :goto_1
    return-void
.end method
