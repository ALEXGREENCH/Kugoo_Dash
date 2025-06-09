.class Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$3;
.super Ljava/lang/Object;
.source "RecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;->setListener(Landroid/view/ViewGroup;Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;

.field final synthetic val$viewHolder:Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$MyViewHolder;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$MyViewHolder;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$3;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$3;->val$viewHolder:Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$3;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;

    iget-object v0, v0, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;->mOnItemClickListener:Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$3;->val$viewHolder:Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$MyViewHolder;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$MyViewHolder;->getAdapterPosition()I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$3;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;

    iget-object v1, v1, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;->mOnItemClickListener:Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$OnItemClickListener;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$3;->val$viewHolder:Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$MyViewHolder;

    iget-object v3, p0, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$3;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;

    invoke-static {v3}, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;->access$000(Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$OnItemClickListener;->onItemLongClick(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
