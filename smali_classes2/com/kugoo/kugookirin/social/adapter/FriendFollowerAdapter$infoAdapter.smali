.class public Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FriendFollowerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "infoAdapter"
.end annotation


# instance fields
.field private friendAddBtn:Landroid/widget/Button;

.field private personAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

.field private personName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;Landroid/view/View;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;->this$0:Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;

    .line 110
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0437

    .line 112
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/view/CircleImageView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;->personAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

    const p1, 0x7f0a0438

    .line 113
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;->personName:Landroid/widget/TextView;

    const p1, 0x7f0a027e

    .line 114
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;->friendAddBtn:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;)Lcom/kugoo/kugookirin/view/CircleImageView;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;->personAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;)Landroid/widget/TextView;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;->personName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;)Landroid/widget/Button;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;->friendAddBtn:Landroid/widget/Button;

    return-object p0
.end method
