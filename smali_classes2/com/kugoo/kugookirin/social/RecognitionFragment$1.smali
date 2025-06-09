.class Lcom/kugoo/kugookirin/social/RecognitionFragment$1;
.super Ljava/lang/Object;
.source "RecognitionFragment.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnRefreshLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/RecognitionFragment;->setAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/RecognitionFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/RecognitionFragment;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment$1;->this$0:Lcom/kugoo/kugookirin/social/RecognitionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 2

    .line 107
    invoke-static {}, Lcom/kugoo/kugookirin/social/RecognitionFragment;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment$1;->this$0:Lcom/kugoo/kugookirin/social/RecognitionFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/RecognitionFragment;->access$200(Lcom/kugoo/kugookirin/social/RecognitionFragment;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/social/RecognitionFragment;->access$112(Lcom/kugoo/kugookirin/social/RecognitionFragment;I)I

    .line 110
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment$1;->this$0:Lcom/kugoo/kugookirin/social/RecognitionFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/RecognitionFragment;->access$100(Lcom/kugoo/kugookirin/social/RecognitionFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment$1;->this$0:Lcom/kugoo/kugookirin/social/RecognitionFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/RecognitionFragment;->access$200(Lcom/kugoo/kugookirin/social/RecognitionFragment;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/kugoo/kugookirin/social/RecognitionFragment;->access$300(Lcom/kugoo/kugookirin/social/RecognitionFragment;II)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    :goto_0
    return-void
.end method

.method public onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    return-void
.end method
