.class public Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DynamicDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "detailHolder"
.end annotation


# instance fields
.field private commentAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

.field private commentContent:Landroid/widget/TextView;

.field private commentLikeImg:Landroid/widget/ImageView;

.field private commentLikeLine:Landroid/widget/LinearLayout;

.field private commentLikeNum:Landroid/widget/TextView;

.field private commentName:Landroid/widget/TextView;

.field private commentTime:Landroid/widget/TextView;

.field private commentTo:Landroid/widget/TextView;

.field private commentToName:Landroid/widget/TextView;

.field private detailAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

.field private detailCommentImg:Landroid/widget/ImageView;

.field private detailCommentNum:Landroid/widget/TextView;

.field private detailCountry:Landroid/widget/TextView;

.field private detailCountryFlag:Landroid/widget/ImageView;

.field private detailGridview:Lcom/kugoo/kugookirin/view/NoScrollGridView;

.field private detailItem:Landroid/widget/LinearLayout;

.field private detailLikeImg:Landroid/widget/ImageView;

.field private detailLikeNum:Landroid/widget/TextView;

.field private detailLinearComment:Landroid/widget/LinearLayout;

.field private detailLinearLike:Landroid/widget/LinearLayout;

.field private detailName:Landroid/widget/TextView;

.field private detailShareImg:Landroid/widget/ImageView;

.field private detailShareLinear:Landroid/widget/LinearLayout;

.field private detailShareNum:Landroid/widget/TextView;

.field private detailText:Landroid/widget/TextView;

.field private detailTime:Landroid/widget/TextView;

.field private detailTopic:Landroid/widget/TextView;

.field private former_content02:Landroid/widget/TextView;

.field private former_first_pic02:Lcom/kugoo/kugookirin/view/GridImageView;

.field private former_name02:Landroid/widget/TextView;

.field private itemPosition:Landroid/widget/TextView;

.field private picVideoContain:Landroid/widget/FrameLayout;

.field private share_publish_linear02:Landroid/widget/RelativeLayout;

.field private textLinear:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

.field private toNameLinear:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Landroid/view/View;I)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    .line 597
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    const p1, 0x7f0a0181

    .line 599
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/view/CircleImageView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

    const p1, 0x7f0a01a5

    .line 600
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailName:Landroid/widget/TextView;

    const p1, 0x7f0a01bc

    .line 601
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailTime:Landroid/widget/TextView;

    const p1, 0x7f0a018a

    .line 602
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailCountry:Landroid/widget/TextView;

    const p1, 0x7f0a018b

    .line 603
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailCountryFlag:Landroid/widget/ImageView;

    const p1, 0x7f0a01bb

    .line 604
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailText:Landroid/widget/TextView;

    const p1, 0x7f0a01bd

    .line 605
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailTopic:Landroid/widget/TextView;

    const p1, 0x7f0a0192

    .line 606
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/view/NoScrollGridView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailGridview:Lcom/kugoo/kugookirin/view/NoScrollGridView;

    const p1, 0x7f0a019d

    .line 607
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailLinearLike:Landroid/widget/LinearLayout;

    const p1, 0x7f0a019a

    .line 608
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailLikeImg:Landroid/widget/ImageView;

    const p1, 0x7f0a019b

    .line 609
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailLikeNum:Landroid/widget/TextView;

    const p1, 0x7f0a019c

    .line 610
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailLinearComment:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0188

    .line 611
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailCommentImg:Landroid/widget/ImageView;

    const p1, 0x7f0a0189

    .line 612
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailCommentNum:Landroid/widget/TextView;

    const p1, 0x7f0a0194

    .line 613
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->itemPosition:Landroid/widget/TextView;

    const p1, 0x7f0a01ac

    .line 614
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailShareLinear:Landroid/widget/LinearLayout;

    const p1, 0x7f0a01ab

    .line 615
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailShareImg:Landroid/widget/ImageView;

    const p1, 0x7f0a01ad

    .line 616
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailShareNum:Landroid/widget/TextView;

    const p1, 0x7f0a0586

    .line 617
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->textLinear:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0452

    .line 618
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->picVideoContain:Landroid/widget/FrameLayout;

    const p1, 0x7f0a04fc

    .line 619
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->share_publish_linear02:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a0278

    .line 620
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/view/GridImageView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->former_first_pic02:Lcom/kugoo/kugookirin/view/GridImageView;

    const p1, 0x7f0a027b

    .line 621
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->former_name02:Landroid/widget/TextView;

    const p1, 0x7f0a0275

    .line 622
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->former_content02:Landroid/widget/TextView;

    .line 626
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailLinearLike:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailLinearComment:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p3, p1, :cond_1

    const p1, 0x7f0a012d

    .line 630
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/view/CircleImageView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->commentAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

    const p1, 0x7f0a0130

    .line 631
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->commentLikeLine:Landroid/widget/LinearLayout;

    const p1, 0x7f0a012f

    .line 632
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->commentLikeImg:Landroid/widget/ImageView;

    const p1, 0x7f0a0131

    .line 633
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->commentLikeNum:Landroid/widget/TextView;

    const p1, 0x7f0a0132

    .line 634
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->commentName:Landroid/widget/TextView;

    const p1, 0x7f0a0134

    .line 635
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->commentTime:Landroid/widget/TextView;

    const p1, 0x7f0a0135

    .line 636
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->commentTo:Landroid/widget/TextView;

    const p1, 0x7f0a0136

    .line 637
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->commentToName:Landroid/widget/TextView;

    const p1, 0x7f0a012e

    .line 638
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->commentContent:Landroid/widget/TextView;

    const p1, 0x7f0a0598

    .line 639
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->toNameLinear:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0193

    .line 640
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailItem:Landroid/widget/LinearLayout;

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Lcom/kugoo/kugookirin/view/CircleImageView;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailCommentImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailCommentNum:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailLikeImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailLikeNum:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailShareImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailShareNum:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/FrameLayout;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->picVideoContain:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->share_publish_linear02:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->former_content02:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->former_name02:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Lcom/kugoo/kugookirin/view/GridImageView;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->former_first_pic02:Lcom/kugoo/kugookirin/view/GridImageView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailShareLinear:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->commentTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->commentName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Lcom/kugoo/kugookirin/view/CircleImageView;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->commentAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->commentTo:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->commentToName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->commentContent:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailCountry:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailItem:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailGridview:Lcom/kugoo/kugookirin/view/NoScrollGridView;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailTopic:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailCountryFlag:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->textLinear:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->detailText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->itemPosition:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 646
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "dynamicDetailAdapter"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 648
    :pswitch_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$3600(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$3800(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$3900(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "detail_linear_like"

    .line 649
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string p1, "detail_linear_comment"

    .line 652
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a019c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
