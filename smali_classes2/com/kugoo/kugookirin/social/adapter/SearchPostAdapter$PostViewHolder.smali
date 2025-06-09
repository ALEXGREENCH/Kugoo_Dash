.class public Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SearchPostAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PostViewHolder"
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

.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;Landroid/view/View;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->this$0:Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;

    .line 581
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0107

    .line 583
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->listItem:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a0108

    .line 585
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/view/CircleImageView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

    const p1, 0x7f0a0113

    .line 587
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemLikeImage:Landroid/widget/ImageView;

    const p1, 0x7f0a0109

    .line 589
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemCommentImage:Landroid/widget/ImageView;

    const p1, 0x7f0a0110

    .line 591
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemName:Landroid/widget/TextView;

    const p1, 0x7f0a0112

    .line 593
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemTime:Landroid/widget/TextView;

    const p1, 0x7f0a010b

    .line 595
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemCountry:Landroid/widget/TextView;

    const p1, 0x7f0a010c

    .line 597
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemCountryFlag:Landroid/widget/ImageView;

    const p1, 0x7f0a0111

    .line 599
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemText:Landroid/widget/TextView;

    const p1, 0x7f0a0114

    .line 601
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemLikeNum:Landroid/widget/TextView;

    const p1, 0x7f0a010a

    .line 603
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemCommentNum:Landroid/widget/TextView;

    const p1, 0x7f0a010d

    .line 605
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/view/NoScrollGridView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemGridview:Lcom/kugoo/kugookirin/view/NoScrollGridView;

    const p1, 0x7f0a010f

    .line 607
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemLinerLike:Landroid/widget/LinearLayout;

    const p1, 0x7f0a010e

    .line 609
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemLinerCommend:Landroid/widget/LinearLayout;

    const p1, 0x7f0a04f7

    .line 611
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->shareLinear:Landroid/widget/LinearLayout;

    const p1, 0x7f0a04f6

    .line 613
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemShareImage:Landroid/widget/ImageView;

    const p1, 0x7f0a04f8

    .line 615
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemShareNum:Landroid/widget/TextView;

    const p1, 0x7f0a0337

    .line 617
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemPosition:Landroid/widget/TextView;

    const p1, 0x7f0a0336

    .line 619
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemLabel:Landroid/widget/TextView;

    const p1, 0x7f0a0451

    .line 624
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->picVideoContain:Landroid/widget/FrameLayout;

    const p1, 0x7f0a04fb

    .line 627
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->sharePublishLinear:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a0277

    .line 629
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/view/GridImageView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->formerPic01:Lcom/kugoo/kugookirin/view/GridImageView;

    const p1, 0x7f0a027a

    .line 631
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->formerName01:Landroid/widget/TextView;

    const p1, 0x7f0a0274

    .line 633
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->formerContent01:Landroid/widget/TextView;

    const p1, 0x7f0a0105

    .line 635
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemMoreBtn:Landroid/widget/ImageButton;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Lcom/kugoo/kugookirin/view/CircleImageView;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemCommentNum:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemLikeImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemLikeNum:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemPosition:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->sharePublishLinear:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->listItem:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemLinerLike:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemLinerCommend:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->shareLinear:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/ImageButton;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemMoreBtn:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemCountry:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemGridview:Lcom/kugoo/kugookirin/view/NoScrollGridView;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->formerContent01:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->formerName01:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Lcom/kugoo/kugookirin/view/GridImageView;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->formerPic01:Lcom/kugoo/kugookirin/view/GridImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemCountryFlag:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/FrameLayout;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->picVideoContain:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemShareImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemShareNum:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->itemCommentImage:Landroid/widget/ImageView;

    return-object p0
.end method
