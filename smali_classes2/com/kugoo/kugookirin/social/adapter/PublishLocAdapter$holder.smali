.class public Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PublishLocAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "holder"
.end annotation


# instance fields
.field private detailLoc:Landroid/widget/TextView;

.field private locCheckBox:Landroid/widget/ImageView;

.field private locLinear:Landroid/widget/LinearLayout;

.field private roughLoc:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;Landroid/view/View;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;->this$0:Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;

    .line 88
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a019e

    .line 90
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;->detailLoc:Landroid/widget/TextView;

    const p1, 0x7f0a04ab

    .line 91
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;->roughLoc:Landroid/widget/TextView;

    const p1, 0x7f0a0344

    .line 92
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;->locCheckBox:Landroid/widget/ImageView;

    const p1, 0x7f0a0345

    .line 93
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;->locLinear:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;)Landroid/widget/ImageView;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;->locCheckBox:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;)Landroid/widget/TextView;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;->detailLoc:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;)Landroid/widget/TextView;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;->roughLoc:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;->locLinear:Landroid/widget/LinearLayout;

    return-object p0
.end method
