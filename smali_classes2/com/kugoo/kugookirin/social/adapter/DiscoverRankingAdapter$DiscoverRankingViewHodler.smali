.class public Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DiscoverRankingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiscoverRankingViewHodler"
.end annotation


# instance fields
.field rankingItem:Landroid/widget/LinearLayout;

.field rankingItemCountry:Landroid/widget/TextView;

.field rankingItemCountryFlag:Landroid/widget/ImageView;

.field rankingItemData:Landroid/widget/TextView;

.field rankingItemFollowBtn:Landroid/widget/TextView;

.field rankingItemName:Landroid/widget/TextView;

.field rankingItemPortrait:Lcom/kugoo/kugookirin/view/CircleImageView;

.field rankingItemRank:Landroid/widget/TextView;

.field rankingItemTop:Landroid/widget/TextView;

.field rankingItemUnit:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 223
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a047c

    .line 224
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/view/CircleImageView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemPortrait:Lcom/kugoo/kugookirin/view/CircleImageView;

    const v0, 0x7f0a047b

    .line 225
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemName:Landroid/widget/TextView;

    const v0, 0x7f0a0477

    .line 226
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemCountry:Landroid/widget/TextView;

    const v0, 0x7f0a047d

    .line 227
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemRank:Landroid/widget/TextView;

    const v0, 0x7f0a0479

    .line 228
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemData:Landroid/widget/TextView;

    const v0, 0x7f0a047e

    .line 229
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemTop:Landroid/widget/TextView;

    const v0, 0x7f0a047f

    .line 230
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemUnit:Landroid/widget/TextView;

    const v0, 0x7f0a047a

    .line 231
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemFollowBtn:Landroid/widget/TextView;

    const v0, 0x7f0a0478

    .line 232
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemCountryFlag:Landroid/widget/ImageView;

    const v0, 0x7f0a0476

    .line 233
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItem:Landroid/widget/LinearLayout;

    return-void
.end method
