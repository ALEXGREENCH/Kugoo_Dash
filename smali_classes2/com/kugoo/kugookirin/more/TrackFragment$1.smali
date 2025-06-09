.class Lcom/kugoo/kugookirin/more/TrackFragment$1;
.super Ljava/lang/Object;
.source "TrackFragment.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnRefreshLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/more/TrackFragment;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/more/TrackFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/more/TrackFragment;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$1;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment$1;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$000(Lcom/kugoo/kugookirin/more/TrackFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$1;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$112(Lcom/kugoo/kugookirin/more/TrackFragment;I)I

    .line 107
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$1;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$202(Lcom/kugoo/kugookirin/more/TrackFragment;Z)Z

    .line 108
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$1;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$100(Lcom/kugoo/kugookirin/more/TrackFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$1;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$300(Lcom/kugoo/kugookirin/more/TrackFragment;)I

    move-result v1

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$400(Lcom/kugoo/kugookirin/more/TrackFragment;IILjava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    :goto_0
    return-void
.end method

.method public onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 3

    .line 116
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$1;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$102(Lcom/kugoo/kugookirin/more/TrackFragment;I)I

    .line 117
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$1;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$502(Lcom/kugoo/kugookirin/more/TrackFragment;Z)Z

    .line 118
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$1;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$600(Lcom/kugoo/kugookirin/more/TrackFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 119
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$1;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$100(Lcom/kugoo/kugookirin/more/TrackFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/TrackFragment$1;->this$0:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$300(Lcom/kugoo/kugookirin/more/TrackFragment;)I

    move-result v1

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/kugoo/kugookirin/more/TrackFragment;->access$400(Lcom/kugoo/kugookirin/more/TrackFragment;IILjava/lang/String;)V

    return-void
.end method
