.class Lcom/kugoo/kugookirin/more/NaviFragment$1;
.super Ljava/lang/Object;
.source "NaviFragment.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnRefreshLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/more/NaviFragment;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/more/NaviFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/more/NaviFragment;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/NaviFragment$1;->this$0:Lcom/kugoo/kugookirin/more/NaviFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment$1;->this$0:Lcom/kugoo/kugookirin/more/NaviFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/more/NaviFragment;->access$000(Lcom/kugoo/kugookirin/more/NaviFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/NaviFragment$1;->this$0:Lcom/kugoo/kugookirin/more/NaviFragment;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/more/NaviFragment;->access$112(Lcom/kugoo/kugookirin/more/NaviFragment;I)I

    .line 114
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/NaviFragment$1;->this$0:Lcom/kugoo/kugookirin/more/NaviFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/more/NaviFragment;->access$202(Lcom/kugoo/kugookirin/more/NaviFragment;Z)Z

    .line 115
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/NaviFragment$1;->this$0:Lcom/kugoo/kugookirin/more/NaviFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/NaviFragment;->access$100(Lcom/kugoo/kugookirin/more/NaviFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/NaviFragment$1;->this$0:Lcom/kugoo/kugookirin/more/NaviFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/more/NaviFragment;->access$300(Lcom/kugoo/kugookirin/more/NaviFragment;)I

    move-result v1

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/kugoo/kugookirin/more/NaviFragment;->access$400(Lcom/kugoo/kugookirin/more/NaviFragment;IILjava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    :goto_0
    return-void
.end method

.method public onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 3

    .line 123
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/NaviFragment$1;->this$0:Lcom/kugoo/kugookirin/more/NaviFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/more/NaviFragment;->access$102(Lcom/kugoo/kugookirin/more/NaviFragment;I)I

    .line 124
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/NaviFragment$1;->this$0:Lcom/kugoo/kugookirin/more/NaviFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/more/NaviFragment;->access$502(Lcom/kugoo/kugookirin/more/NaviFragment;Z)Z

    .line 125
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/NaviFragment$1;->this$0:Lcom/kugoo/kugookirin/more/NaviFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/NaviFragment;->access$600(Lcom/kugoo/kugookirin/more/NaviFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 126
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/NaviFragment$1;->this$0:Lcom/kugoo/kugookirin/more/NaviFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/NaviFragment;->access$100(Lcom/kugoo/kugookirin/more/NaviFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/NaviFragment$1;->this$0:Lcom/kugoo/kugookirin/more/NaviFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/more/NaviFragment;->access$300(Lcom/kugoo/kugookirin/more/NaviFragment;)I

    move-result v1

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/kugoo/kugookirin/more/NaviFragment;->access$400(Lcom/kugoo/kugookirin/more/NaviFragment;IILjava/lang/String;)V

    return-void
.end method
