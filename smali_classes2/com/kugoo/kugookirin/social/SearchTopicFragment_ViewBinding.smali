.class public Lcom/kugoo/kugookirin/social/SearchTopicFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SearchTopicFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/social/SearchTopicFragment;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/social/SearchTopicFragment;Landroid/view/View;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment_ViewBinding;->target:Lcom/kugoo/kugookirin/social/SearchTopicFragment;

    const-string v0, "field \'noSearchItem\'"

    .line 23
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0405

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->noSearchItem:Landroid/widget/TextView;

    const-string v0, "field \'postCv\'"

    .line 24
    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0a0498

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->postCv:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "field \'postRefreshLayout\'"

    .line 25
    const-class v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const v2, 0x7f0a0499

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object p2, p1, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->postRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment_ViewBinding;->target:Lcom/kugoo/kugookirin/social/SearchTopicFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment_ViewBinding;->target:Lcom/kugoo/kugookirin/social/SearchTopicFragment;

    .line 35
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->noSearchItem:Landroid/widget/TextView;

    .line 36
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->postCv:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->postRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
