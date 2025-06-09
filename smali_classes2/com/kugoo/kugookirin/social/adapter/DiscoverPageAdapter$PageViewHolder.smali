.class public Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DiscoverPageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageViewHolder"
.end annotation


# instance fields
.field private formerContent01:Landroid/widget/TextView;

.field private formerName01:Landroid/widget/TextView;

.field private formerPic01:Lcom/kugoo/kugookirin/view/GridImageView;

.field private itemAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

.field private itemCommentImage:Landroid/widget/ImageView;

.field private itemCommentNum:Landroid/widget/TextView;

.field private itemCountry:Landroid/widget/TextView;

.field private itemCountryFlag:Landroid/widget/ImageView;

.field private itemGridview:Lcom/kugoo/kugookirin/view/NoScrollGridView;

.field private itemLabel:Landroid/widget/TextView;

.field private itemLikeImage:Landroid/widget/ImageView;

.field private itemLikeNum:Landroid/widget/TextView;

.field private itemLinerCommend:Landroid/widget/LinearLayout;

.field private itemLinerLike:Landroid/widget/LinearLayout;

.field private itemMoreBtn:Landroid/widget/ImageButton;

.field private itemName:Landroid/widget/TextView;

.field private itemPosition:Landroid/widget/TextView;

.field private itemShareImage:Landroid/widget/ImageView;

.field private itemShareNum:Landroid/widget/TextView;

.field private itemText:Landroid/widget/TextView;

.field private itemTime:Landroid/widget/TextView;

.field private listItem:Landroid/widget/RelativeLayout;

.field private picVideoContain:Landroid/widget/FrameLayout;

.field private shareLinear:Landroid/widget/LinearLayout;

.field private sharePublishLinear:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 803
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0107

    .line 805
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->listItem:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0108

    .line 807
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/view/CircleImageView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

    const v0, 0x7f0a0113

    .line 809
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemLikeImage:Landroid/widget/ImageView;

    const v0, 0x7f0a0109

    .line 811
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemCommentImage:Landroid/widget/ImageView;

    const v0, 0x7f0a0110

    .line 813
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemName:Landroid/widget/TextView;

    const v0, 0x7f0a0112

    .line 815
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemTime:Landroid/widget/TextView;

    const v0, 0x7f0a010b

    .line 817
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemCountry:Landroid/widget/TextView;

    const v0, 0x7f0a010c

    .line 819
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemCountryFlag:Landroid/widget/ImageView;

    const v0, 0x7f0a0111

    .line 821
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemText:Landroid/widget/TextView;

    const v0, 0x7f0a0114

    .line 823
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemLikeNum:Landroid/widget/TextView;

    const v0, 0x7f0a010a

    .line 825
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemCommentNum:Landroid/widget/TextView;

    const v0, 0x7f0a010d

    .line 827
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/view/NoScrollGridView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemGridview:Lcom/kugoo/kugookirin/view/NoScrollGridView;

    const v0, 0x7f0a010f

    .line 829
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemLinerLike:Landroid/widget/LinearLayout;

    const v0, 0x7f0a010e

    .line 831
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemLinerCommend:Landroid/widget/LinearLayout;

    const v0, 0x7f0a04f7

    .line 833
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->shareLinear:Landroid/widget/LinearLayout;

    const v0, 0x7f0a04f6

    .line 835
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemShareImage:Landroid/widget/ImageView;

    const v0, 0x7f0a04f8

    .line 837
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemShareNum:Landroid/widget/TextView;

    const v0, 0x7f0a0337

    .line 839
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemPosition:Landroid/widget/TextView;

    const v0, 0x7f0a0336

    .line 841
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemLabel:Landroid/widget/TextView;

    const v0, 0x7f0a0451

    .line 846
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->picVideoContain:Landroid/widget/FrameLayout;

    const v0, 0x7f0a04fb

    .line 849
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->sharePublishLinear:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0277

    .line 851
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/view/GridImageView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->formerPic01:Lcom/kugoo/kugookirin/view/GridImageView;

    const v0, 0x7f0a027a

    .line 853
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->formerName01:Landroid/widget/TextView;

    const v0, 0x7f0a0274

    .line 855
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->formerContent01:Landroid/widget/TextView;

    const v0, 0x7f0a0105

    .line 857
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemMoreBtn:Landroid/widget/ImageButton;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Lcom/kugoo/kugookirin/view/CircleImageView;
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemCommentNum:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemLikeImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemLikeNum:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemPosition:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->sharePublishLinear:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->listItem:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemLinerLike:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemLinerCommend:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->shareLinear:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/ImageButton;
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemMoreBtn:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemCountry:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemGridview:Lcom/kugoo/kugookirin/view/NoScrollGridView;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->formerContent01:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->formerName01:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Lcom/kugoo/kugookirin/view/GridImageView;
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->formerPic01:Lcom/kugoo/kugookirin/view/GridImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemCountryFlag:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/FrameLayout;
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->picVideoContain:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemShareImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemShareNum:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->itemCommentImage:Landroid/widget/ImageView;

    return-object p0
.end method
