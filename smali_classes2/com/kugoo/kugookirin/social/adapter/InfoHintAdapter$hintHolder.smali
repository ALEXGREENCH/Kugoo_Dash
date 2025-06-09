.class public Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "InfoHintAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "hintHolder"
.end annotation


# instance fields
.field private dealBtn:Landroid/widget/Button;

.field private hintItem:Landroid/widget/RelativeLayout;

.field private hintItemAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

.field private hintItemInfo:Landroid/widget/TextView;

.field private hintItemName:Landroid/widget/TextView;

.field private noticeSlideMenu:Lcom/kugoo/kugookirin/view/NotificationMenuView;

.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;Landroid/view/View;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;->this$0:Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;

    .line 114
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a02b1

    .line 115
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/view/CircleImageView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;->hintItemAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

    const p1, 0x7f0a02b3

    .line 116
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;->hintItemName:Landroid/widget/TextView;

    const p1, 0x7f0a02b2

    .line 117
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;->hintItemInfo:Landroid/widget/TextView;

    const p1, 0x7f0a02d9

    .line 118
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;->hintItem:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a040d

    .line 119
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/view/NotificationMenuView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;->noticeSlideMenu:Lcom/kugoo/kugookirin/view/NotificationMenuView;

    const p1, 0x7f0a0170

    .line 120
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;->dealBtn:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;)Lcom/kugoo/kugookirin/view/CircleImageView;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;->hintItemAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;)Landroid/widget/TextView;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;->hintItemName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;)Landroid/widget/TextView;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;->hintItemInfo:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;->hintItem:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;)Landroid/widget/Button;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;->dealBtn:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$700(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;)Lcom/kugoo/kugookirin/view/NotificationMenuView;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;->noticeSlideMenu:Lcom/kugoo/kugookirin/view/NotificationMenuView;

    return-object p0
.end method
