.class Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18;
.super Landroid/os/Handler;
.source "DynamicDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/DynamicDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Landroid/os/Looper;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 595
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 596
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3f2

    if-ne p1, v0, :cond_1

    .line 597
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$1700(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    .line 598
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    new-instance v0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$1400(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;-><init>(Landroid/content/Context;Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;)V

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$1702(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    .line 599
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->commentRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$1700(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 602
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$1700(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->notifyDataSetChanged()V

    .line 604
    :goto_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$1700(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    move-result-object p1

    new-instance v0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18$1;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18$1;-><init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18;)V

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->setOnOperateListener(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$onOperateListener;)V

    :cond_1
    return-void
.end method
