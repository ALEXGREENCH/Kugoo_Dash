.class Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$8;
.super Ljava/lang/Object;
.source "ForYouAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

.field final synthetic val$finalPos:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;I)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$8;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    iput p2, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$8;->val$finalPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 336
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$8;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    iget v0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$8;->val$finalPos:I

    const-string v1, "formerDynamic"

    invoke-static {p1, v0, v1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->access$1700(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;ILjava/lang/String;)V

    return-void
.end method
