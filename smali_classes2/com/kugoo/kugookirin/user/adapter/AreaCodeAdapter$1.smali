.class Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$1;
.super Ljava/lang/Object;
.source "AreaCodeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;

.field final synthetic val$finalPos:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;I)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$1;->this$0:Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;

    iput p2, p0, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$1;->val$finalPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 52
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$1;->this$0:Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;->access$000(Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;)Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$OnAreaItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$1;->this$0:Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;->access$000(Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;)Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$OnAreaItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$1;->val$finalPos:I

    invoke-interface {p1, v0}, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$OnAreaItemClickListener;->onAreaItemClick(I)V

    :cond_0
    return-void
.end method
