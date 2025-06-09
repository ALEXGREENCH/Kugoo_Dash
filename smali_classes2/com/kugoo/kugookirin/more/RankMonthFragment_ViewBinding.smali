.class public Lcom/kugoo/kugookirin/more/RankMonthFragment_ViewBinding;
.super Ljava/lang/Object;
.source "RankMonthFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/more/RankMonthFragment;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/more/RankMonthFragment;Landroid/view/View;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/RankMonthFragment_ViewBinding;->target:Lcom/kugoo/kugookirin/more/RankMonthFragment;

    const-string v0, "field \'top1PhotoIv\'"

    .line 24
    const-class v1, Lcom/kugoo/kugookirin/view/CircleImageView;

    const v2, 0x7f0a059e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/view/CircleImageView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/more/RankMonthFragment;->top1PhotoIv:Lcom/kugoo/kugookirin/view/CircleImageView;

    const-string v0, "field \'top1Name\'"

    .line 25
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a059d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/more/RankMonthFragment;->top1Name:Landroid/widget/TextView;

    const-string v0, "field \'top1Dis\'"

    .line 26
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a059c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/more/RankMonthFragment;->top1Dis:Landroid/widget/TextView;

    const-string v0, "field \'top1Tv\'"

    .line 27
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05a0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/more/RankMonthFragment;->top1Tv:Landroid/widget/TextView;

    const-string v0, "field \'monthRankRv\'"

    .line 28
    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0a0473

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/more/RankMonthFragment;->monthRankRv:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "field \'top1Relate\'"

    .line 29
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a059f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/more/RankMonthFragment;->top1Relate:Landroid/widget/RelativeLayout;

    const-string v0, "field \'no_rank_tv\'"

    .line 30
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0404

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/kugoo/kugookirin/more/RankMonthFragment;->no_rank_tv:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/RankMonthFragment_ViewBinding;->target:Lcom/kugoo/kugookirin/more/RankMonthFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/kugoo/kugookirin/more/RankMonthFragment_ViewBinding;->target:Lcom/kugoo/kugookirin/more/RankMonthFragment;

    .line 40
    iput-object v1, v0, Lcom/kugoo/kugookirin/more/RankMonthFragment;->top1PhotoIv:Lcom/kugoo/kugookirin/view/CircleImageView;

    .line 41
    iput-object v1, v0, Lcom/kugoo/kugookirin/more/RankMonthFragment;->top1Name:Landroid/widget/TextView;

    .line 42
    iput-object v1, v0, Lcom/kugoo/kugookirin/more/RankMonthFragment;->top1Dis:Landroid/widget/TextView;

    .line 43
    iput-object v1, v0, Lcom/kugoo/kugookirin/more/RankMonthFragment;->top1Tv:Landroid/widget/TextView;

    .line 44
    iput-object v1, v0, Lcom/kugoo/kugookirin/more/RankMonthFragment;->monthRankRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    iput-object v1, v0, Lcom/kugoo/kugookirin/more/RankMonthFragment;->top1Relate:Landroid/widget/RelativeLayout;

    .line 46
    iput-object v1, v0, Lcom/kugoo/kugookirin/more/RankMonthFragment;->no_rank_tv:Landroid/widget/TextView;

    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
