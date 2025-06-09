.class public Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter$avatarHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RemindSelectedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "avatarHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter;

.field private userAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter;Landroid/view/View;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter$avatarHolder;->this$0:Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter;

    .line 56
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0493

    .line 57
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/view/CircleImageView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter$avatarHolder;->userAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter$avatarHolder;)Lcom/kugoo/kugookirin/view/CircleImageView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter$avatarHolder;->userAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

    return-object p0
.end method
