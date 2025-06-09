.class public Lcom/kugoo/kugookirin/social/DiscoverFragment_ViewBinding;
.super Ljava/lang/Object;
.source "DiscoverFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/social/DiscoverFragment;

.field private view7f0a0395:Landroid/view/View;

.field private view7f0a04c3:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/social/DiscoverFragment;Landroid/view/View;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment_ViewBinding;->target:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    const-string v0, "field \'discoverSlPager\'"

    .line 33
    const-class v1, Lcom/kugoo/kugookirin/view/SobLooperPager;

    const v2, 0x7f0a01df

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/view/SobLooperPager;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/DiscoverFragment;->discoverSlPager:Lcom/kugoo/kugookirin/view/SobLooperPager;

    const-string v0, "field \'discoverTabLayout\'"

    .line 34
    const-class v1, Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f0a01e0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/DiscoverFragment;->discoverTabLayout:Lcom/google/android/material/tabs/TabLayout;

    const-string v0, "field \'odoRankingRv\'"

    .line 35
    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0a0413

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/DiscoverFragment;->odoRankingRv:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "field \'socialRankingRv\'"

    .line 36
    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0a0522

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/DiscoverFragment;->socialRankingRv:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "field \'discoverViewPager\'"

    .line 37
    const-class v1, Landroidx/viewpager/widget/ViewPager;

    const v2, 0x7f0a01e1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/DiscoverFragment;->discoverViewPager:Landroidx/viewpager/widget/ViewPager;

    const-string v0, "field \'odoRankingTv\'"

    .line 38
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0414

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/DiscoverFragment;->odoRankingTv:Landroid/widget/TextView;

    const-string v0, "field \'socialRankingTv\'"

    .line 39
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0523

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/DiscoverFragment;->socialRankingTv:Landroid/widget/TextView;

    const-string v0, "field \'messageBtn\' and method \'onClick\'"

    const v1, 0x7f0a0395

    .line 40
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'messageBtn\'"

    .line 41
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/social/DiscoverFragment;->messageBtn:Landroid/widget/ImageView;

    .line 42
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment_ViewBinding;->view7f0a0395:Landroid/view/View;

    .line 43
    new-instance v1, Lcom/kugoo/kugookirin/social/DiscoverFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/social/DiscoverFragment_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/social/DiscoverFragment_ViewBinding;Lcom/kugoo/kugookirin/social/DiscoverFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'discoverRefreshLayout\'"

    .line 49
    const-class v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const v2, 0x7f0a01d9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/DiscoverFragment;->discoverRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const v0, 0x7f0a04c3

    const-string v1, "method \'onClick\'"

    .line 50
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 51
    iput-object p2, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment_ViewBinding;->view7f0a04c3:Landroid/view/View;

    .line 52
    new-instance v0, Lcom/kugoo/kugookirin/social/DiscoverFragment_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kugoo/kugookirin/social/DiscoverFragment_ViewBinding$2;-><init>(Lcom/kugoo/kugookirin/social/DiscoverFragment_ViewBinding;Lcom/kugoo/kugookirin/social/DiscoverFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment_ViewBinding;->target:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 65
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment_ViewBinding;->target:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    .line 67
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->discoverSlPager:Lcom/kugoo/kugookirin/view/SobLooperPager;

    .line 68
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->discoverTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 69
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->odoRankingRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->socialRankingRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->discoverViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 72
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->odoRankingTv:Landroid/widget/TextView;

    .line 73
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->socialRankingTv:Landroid/widget/TextView;

    .line 74
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->messageBtn:Landroid/widget/ImageView;

    .line 75
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->discoverRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 77
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment_ViewBinding;->view7f0a0395:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment_ViewBinding;->view7f0a0395:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment_ViewBinding;->view7f0a04c3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment_ViewBinding;->view7f0a04c3:Landroid/view/View;

    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
