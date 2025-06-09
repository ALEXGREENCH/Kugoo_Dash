.class public Lcom/kugoo/kugookirin/social/RecognitionFragment_ViewBinding;
.super Ljava/lang/Object;
.source "RecognitionFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/social/RecognitionFragment;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/social/RecognitionFragment;Landroid/view/View;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment_ViewBinding;->target:Lcom/kugoo/kugookirin/social/RecognitionFragment;

    const-string v0, "field \'recognitionRv\'"

    .line 24
    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0a042b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/RecognitionFragment;->recognitionRv:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "field \'pageRefreshLayout\'"

    .line 25
    const-class v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const v2, 0x7f0a042a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/RecognitionFragment;->pageRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const-string v0, "field \'no_data_view\'"

    .line 26
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a03ff

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/RecognitionFragment;->no_data_view:Landroid/widget/RelativeLayout;

    const-string v0, "field \'none_date_tv\'"

    .line 27
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0409

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/kugoo/kugookirin/social/RecognitionFragment;->none_date_tv:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment_ViewBinding;->target:Lcom/kugoo/kugookirin/social/RecognitionFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment_ViewBinding;->target:Lcom/kugoo/kugookirin/social/RecognitionFragment;

    .line 37
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->recognitionRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->pageRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 39
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->no_data_view:Landroid/widget/RelativeLayout;

    .line 40
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->none_date_tv:Landroid/widget/TextView;

    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
