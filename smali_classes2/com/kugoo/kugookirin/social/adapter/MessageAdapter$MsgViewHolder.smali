.class public Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MsgViewHolder"
.end annotation


# instance fields
.field messageItem:Landroid/widget/RelativeLayout;

.field msgItemAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

.field msgItemInfo:Landroid/widget/TextView;

.field msgItemName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;Landroid/view/View;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;->this$0:Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;

    .line 167
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a03be

    .line 168
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;->msgItemName:Landroid/widget/TextView;

    const p1, 0x7f0a03bd

    .line 169
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;->msgItemInfo:Landroid/widget/TextView;

    const p1, 0x7f0a03bc

    .line 170
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/view/CircleImageView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;->msgItemAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

    const p1, 0x7f0a0397

    .line 171
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;->messageItem:Landroid/widget/RelativeLayout;

    return-void
.end method
