.class public Lcom/kugoo/kugookirin/more/adapter/DayRankAdapter$dayViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DayRankAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/more/adapter/DayRankAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "dayViewHolder"
.end annotation


# instance fields
.field private final itemAvatarIv:Lcom/kugoo/kugookirin/view/CircleImageView;

.field private final itemDis:Landroid/widget/TextView;

.field private final itemName:Landroid/widget/TextView;

.field private final itemOrder:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/kugoo/kugookirin/more/adapter/DayRankAdapter;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/more/adapter/DayRankAdapter;Landroid/view/View;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/adapter/DayRankAdapter$dayViewHolder;->this$0:Lcom/kugoo/kugookirin/more/adapter/DayRankAdapter;

    .line 64
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a02ef

    .line 65
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/more/adapter/DayRankAdapter$dayViewHolder;->itemOrder:Landroid/widget/TextView;

    const p1, 0x7f0a02f2

    .line 66
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/more/adapter/DayRankAdapter$dayViewHolder;->itemName:Landroid/widget/TextView;

    const p1, 0x7f0a02ec

    .line 67
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/more/adapter/DayRankAdapter$dayViewHolder;->itemDis:Landroid/widget/TextView;

    const p1, 0x7f0a02ea

    .line 68
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/view/CircleImageView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/more/adapter/DayRankAdapter$dayViewHolder;->itemAvatarIv:Lcom/kugoo/kugookirin/view/CircleImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/more/adapter/DayRankAdapter$dayViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/kugoo/kugookirin/more/adapter/DayRankAdapter$dayViewHolder;->itemOrder:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/more/adapter/DayRankAdapter$dayViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/kugoo/kugookirin/more/adapter/DayRankAdapter$dayViewHolder;->itemName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/more/adapter/DayRankAdapter$dayViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/kugoo/kugookirin/more/adapter/DayRankAdapter$dayViewHolder;->itemDis:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/more/adapter/DayRankAdapter$dayViewHolder;)Lcom/kugoo/kugookirin/view/CircleImageView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/kugoo/kugookirin/more/adapter/DayRankAdapter$dayViewHolder;->itemAvatarIv:Lcom/kugoo/kugookirin/view/CircleImageView;

    return-object p0
.end method
