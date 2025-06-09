.class public Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SearchUserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserHolder"
.end annotation


# instance fields
.field private addBtn:Landroid/widget/Button;

.field private itemAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

.field private itemName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;Landroid/view/View;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;->this$0:Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;

    .line 107
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a05f1

    .line 108
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/view/CircleImageView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;->itemAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

    const p1, 0x7f0a05f2

    .line 109
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;->itemName:Landroid/widget/TextView;

    const p1, 0x7f0a05ef

    .line 110
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;->addBtn:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;)Landroid/widget/TextView;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;->itemName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;)Lcom/kugoo/kugookirin/view/CircleImageView;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;->itemAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;)Landroid/widget/Button;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;->addBtn:Landroid/widget/Button;

    return-object p0
.end method
