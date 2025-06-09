.class Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$2;
.super Ljava/lang/Object;
.source "MessageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;->setListener(Landroid/view/ViewGroup;Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;

.field final synthetic val$viewHolder:Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$2;->val$viewHolder:Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;

    iget-object v0, v0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;->mOnItemClickListener:Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$2;->val$viewHolder:Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;->getAdapterPosition()I

    move-result v0

    .line 130
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;

    iget-object v1, v1, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;->mOnItemClickListener:Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$OnItemClickListener;

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$2;->val$viewHolder:Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;

    iget-object v3, p0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;

    invoke-static {v3}, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;->access$000(Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method
