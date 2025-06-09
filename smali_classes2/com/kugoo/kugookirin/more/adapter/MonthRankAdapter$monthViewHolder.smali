.class public Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MonthRankAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "monthViewHolder"
.end annotation


# instance fields
.field private final itemAvatarIv:Lcom/kugoo/kugookirin/view/CircleImageView;

.field private final itemDis:Landroid/widget/TextView;

.field private final itemName:Landroid/widget/TextView;

.field private final itemOrder:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter;Landroid/view/View;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;->this$0:Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter;

    .line 66
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a02ef

    .line 67
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;->itemOrder:Landroid/widget/TextView;

    const p1, 0x7f0a02f2

    .line 68
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;->itemName:Landroid/widget/TextView;

    const p1, 0x7f0a02ec

    .line 69
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;->itemDis:Landroid/widget/TextView;

    const p1, 0x7f0a02ea

    .line 70
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/view/CircleImageView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;->itemAvatarIv:Lcom/kugoo/kugookirin/view/CircleImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;->itemOrder:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;->itemName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;->itemDis:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;)Lcom/kugoo/kugookirin/view/CircleImageView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;->itemAvatarIv:Lcom/kugoo/kugookirin/view/CircleImageView;

    return-object p0
.end method
