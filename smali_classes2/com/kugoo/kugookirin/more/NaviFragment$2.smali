.class Lcom/kugoo/kugookirin/more/NaviFragment$2;
.super Ljava/lang/Object;
.source "NaviFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/more/NaviFragment;->loadNaviInfo(IILjava/lang/String;)V
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
.field final synthetic this$0:Lcom/kugoo/kugookirin/more/NaviFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/more/NaviFragment;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/NaviFragment$2;->this$0:Lcom/kugoo/kugookirin/more/NaviFragment;

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

    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "error=="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "locationdataonFailure"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
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

    .line 164
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/bean/TrackInfoBean;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/TrackInfoBean;->getStatus()Ljava/lang/String;

    move-result-object p1

    .line 165
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment$2;->this$0:Lcom/kugoo/kugookirin/more/NaviFragment;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kugoo/kugookirin/bean/TrackInfoBean;

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/bean/TrackInfoBean;->isIsLastData()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/more/NaviFragment;->access$002(Lcom/kugoo/kugookirin/more/NaviFragment;Z)Z

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "status=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uploadTrackRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "0"

    .line 169
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 170
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/NaviFragment$2;->this$0:Lcom/kugoo/kugookirin/more/NaviFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/more/NaviFragment;->noRecord:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 171
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/bean/TrackInfoBean;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/TrackInfoBean;->getActivity()Ljava/util/List;

    move-result-object p1

    .line 172
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "naviSize=="

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "  dis=="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;

    invoke-virtual {v2}, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->getDistance()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/NaviFragment$2;->this$0:Lcom/kugoo/kugookirin/more/NaviFragment;

    invoke-static {p2}, Lcom/kugoo/kugookirin/more/NaviFragment;->access$600(Lcom/kugoo/kugookirin/more/NaviFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/NaviFragment$2;->this$0:Lcom/kugoo/kugookirin/more/NaviFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/NaviFragment;->access$700(Lcom/kugoo/kugookirin/more/NaviFragment;)Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/NaviFragment$2;->this$0:Lcom/kugoo/kugookirin/more/NaviFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/NaviFragment;->access$600(Lcom/kugoo/kugookirin/more/NaviFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 177
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/NaviFragment$2;->this$0:Lcom/kugoo/kugookirin/more/NaviFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/more/NaviFragment;->noRecord:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 179
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/NaviFragment$2;->this$0:Lcom/kugoo/kugookirin/more/NaviFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/NaviFragment;->access$200(Lcom/kugoo/kugookirin/more/NaviFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 180
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/NaviFragment$2;->this$0:Lcom/kugoo/kugookirin/more/NaviFragment;

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/more/NaviFragment;->access$202(Lcom/kugoo/kugookirin/more/NaviFragment;Z)Z

    .line 181
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/NaviFragment$2;->this$0:Lcom/kugoo/kugookirin/more/NaviFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/more/NaviFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    goto :goto_1

    .line 182
    :cond_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/NaviFragment$2;->this$0:Lcom/kugoo/kugookirin/more/NaviFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/NaviFragment;->access$500(Lcom/kugoo/kugookirin/more/NaviFragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 183
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/NaviFragment$2;->this$0:Lcom/kugoo/kugookirin/more/NaviFragment;

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/more/NaviFragment;->access$502(Lcom/kugoo/kugookirin/more/NaviFragment;Z)Z

    .line 184
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/NaviFragment$2;->this$0:Lcom/kugoo/kugookirin/more/NaviFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/more/NaviFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 186
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/NaviFragment$2;->this$0:Lcom/kugoo/kugookirin/more/NaviFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/NaviFragment;->access$800(Lcom/kugoo/kugookirin/more/NaviFragment;)Lcom/kugoo/kugookirin/more/NaviFragment$onNavAdapterSizeListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 188
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/NaviFragment$2;->this$0:Lcom/kugoo/kugookirin/more/NaviFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/NaviFragment;->access$800(Lcom/kugoo/kugookirin/more/NaviFragment;)Lcom/kugoo/kugookirin/more/NaviFragment$onNavAdapterSizeListener;

    move-result-object p1

    iget-object p2, p0, Lcom/kugoo/kugookirin/more/NaviFragment$2;->this$0:Lcom/kugoo/kugookirin/more/NaviFragment;

    invoke-static {p2}, Lcom/kugoo/kugookirin/more/NaviFragment;->access$600(Lcom/kugoo/kugookirin/more/NaviFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/kugoo/kugookirin/more/NaviFragment$onNavAdapterSizeListener;->getNavAdapterCount(I)V

    :cond_4
    return-void
.end method
