.class public Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HomePageInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InfoHolder"
.end annotation


# instance fields
.field private bleNameTv:Landroid/widget/TextView;

.field private lastConnectTime:Landroid/widget/TextView;

.field private modelTv:Landroid/widget/TextView;

.field private odoTimeTv:Landroid/widget/TextView;

.field private odoTimeUnitTv:Landroid/widget/TextView;

.field private odoTv:Landroid/widget/TextView;

.field private odoUnitTv:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter;

.field private vehicleImg:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter;Landroid/view/View;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;->this$0:Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter;

    .line 77
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a02de

    .line 79
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;->vehicleImg:Landroid/widget/ImageView;

    const p1, 0x7f0a02da

    .line 80
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;->modelTv:Landroid/widget/TextView;

    const p1, 0x7f0a02d8

    .line 81
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;->bleNameTv:Landroid/widget/TextView;

    const p1, 0x7f0a02dc

    .line 82
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;->odoTv:Landroid/widget/TextView;

    const p1, 0x7f0a02db

    .line 83
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;->odoTimeTv:Landroid/widget/TextView;

    const p1, 0x7f0a0301

    .line 84
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;->lastConnectTime:Landroid/widget/TextView;

    const p1, 0x7f0a0415

    .line 85
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;->odoTimeUnitTv:Landroid/widget/TextView;

    const p1, 0x7f0a0416

    .line 86
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;->odoUnitTv:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;)Landroid/widget/TextView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;->modelTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;)Landroid/widget/TextView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;->bleNameTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;)Landroid/widget/TextView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;->odoTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;)Landroid/widget/TextView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;->odoTimeTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;)Landroid/widget/TextView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;->odoTimeUnitTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;)Landroid/widget/TextView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;->lastConnectTime:Landroid/widget/TextView;

    return-object p0
.end method
