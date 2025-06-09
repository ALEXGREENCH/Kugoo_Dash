.class public Lcom/kugoo/kugookirin/social/ForYouFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ForYouFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/social/ForYouFragment;

.field private view7f0a0395:Landroid/view/View;

.field private view7f0a0464:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/social/ForYouFragment;Landroid/view/View;)V
    .locals 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment_ViewBinding;->target:Lcom/kugoo/kugookirin/social/ForYouFragment;

    const-string v0, "field \'noDataItem\'"

    .line 31
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a03fd

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/ForYouFragment;->noDataItem:Landroid/widget/TextView;

    const-string v0, "field \'noDataLayout\'"

    .line 32
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a03fe

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/ForYouFragment;->noDataLayout:Landroid/widget/RelativeLayout;

    const-string v0, "field \'forYouCv\'"

    .line 33
    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0a025d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/ForYouFragment;->forYouCv:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "field \'forYouRefreshLayout\'"

    .line 34
    const-class v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const v2, 0x7f0a025e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/ForYouFragment;->forYouRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const-string v0, "field \'messageBtn\' and method \'onClick\'"

    const v1, 0x7f0a0395

    .line 35
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'messageBtn\'"

    .line 36
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/social/ForYouFragment;->messageBtn:Landroid/widget/ImageView;

    .line 37
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment_ViewBinding;->view7f0a0395:Landroid/view/View;

    .line 38
    new-instance v1, Lcom/kugoo/kugookirin/social/ForYouFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/social/ForYouFragment_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/social/ForYouFragment_ViewBinding;Lcom/kugoo/kugookirin/social/ForYouFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0464

    const-string v1, "method \'onClick\'"

    .line 44
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 45
    iput-object p2, p0, Lcom/kugoo/kugookirin/social/ForYouFragment_ViewBinding;->view7f0a0464:Landroid/view/View;

    .line 46
    new-instance v0, Lcom/kugoo/kugookirin/social/ForYouFragment_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kugoo/kugookirin/social/ForYouFragment_ViewBinding$2;-><init>(Lcom/kugoo/kugookirin/social/ForYouFragment_ViewBinding;Lcom/kugoo/kugookirin/social/ForYouFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment_ViewBinding;->target:Lcom/kugoo/kugookirin/social/ForYouFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 59
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment_ViewBinding;->target:Lcom/kugoo/kugookirin/social/ForYouFragment;

    .line 61
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/ForYouFragment;->noDataItem:Landroid/widget/TextView;

    .line 62
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/ForYouFragment;->noDataLayout:Landroid/widget/RelativeLayout;

    .line 63
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/ForYouFragment;->forYouCv:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/ForYouFragment;->forYouRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 65
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/ForYouFragment;->messageBtn:Landroid/widget/ImageView;

    .line 67
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment_ViewBinding;->view7f0a0395:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment_ViewBinding;->view7f0a0395:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment_ViewBinding;->view7f0a0464:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment_ViewBinding;->view7f0a0464:Landroid/view/View;

    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
