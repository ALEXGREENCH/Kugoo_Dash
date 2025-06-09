.class Lcom/kugoo/kugookirin/social/SearchVehicleFragment$1;
.super Ljava/lang/Object;
.source "SearchVehicleFragment.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnRefreshLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/SearchVehicleFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/SearchVehicleFragment;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment$1;->this$0:Lcom/kugoo/kugookirin/social/SearchVehicleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment$1;->this$0:Lcom/kugoo/kugookirin/social/SearchVehicleFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->access$000(Lcom/kugoo/kugookirin/social/SearchVehicleFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment$1;->this$0:Lcom/kugoo/kugookirin/social/SearchVehicleFragment;

    invoke-static {}, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->access$200()I

    move-result v0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->access$112(Lcom/kugoo/kugookirin/social/SearchVehicleFragment;I)I

    .line 90
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment$1;->this$0:Lcom/kugoo/kugookirin/social/SearchVehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->access$000(Lcom/kugoo/kugookirin/social/SearchVehicleFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment$1;->this$0:Lcom/kugoo/kugookirin/social/SearchVehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->access$100(Lcom/kugoo/kugookirin/social/SearchVehicleFragment;)I

    move-result v1

    invoke-static {}, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->access$200()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->access$300(Lcom/kugoo/kugookirin/social/SearchVehicleFragment;Ljava/lang/String;II)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    :goto_0
    return-void
.end method

.method public onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment$1;->this$0:Lcom/kugoo/kugookirin/social/SearchVehicleFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->access$000(Lcom/kugoo/kugookirin/social/SearchVehicleFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment$1;->this$0:Lcom/kugoo/kugookirin/social/SearchVehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->access$400(Lcom/kugoo/kugookirin/social/SearchVehicleFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 100
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment$1;->this$0:Lcom/kugoo/kugookirin/social/SearchVehicleFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->access$502(Lcom/kugoo/kugookirin/social/SearchVehicleFragment;Z)Z

    .line 101
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment$1;->this$0:Lcom/kugoo/kugookirin/social/SearchVehicleFragment;

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->access$102(Lcom/kugoo/kugookirin/social/SearchVehicleFragment;I)I

    .line 102
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment$1;->this$0:Lcom/kugoo/kugookirin/social/SearchVehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->access$000(Lcom/kugoo/kugookirin/social/SearchVehicleFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment$1;->this$0:Lcom/kugoo/kugookirin/social/SearchVehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->access$100(Lcom/kugoo/kugookirin/social/SearchVehicleFragment;)I

    move-result v1

    invoke-static {}, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->access$200()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->access$300(Lcom/kugoo/kugookirin/social/SearchVehicleFragment;Ljava/lang/String;II)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    :goto_0
    return-void
.end method
