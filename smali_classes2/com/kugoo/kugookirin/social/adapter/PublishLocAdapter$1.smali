.class Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$1;
.super Ljava/lang/Object;
.source "PublishLocAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;I)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;

    iput p2, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 56
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;->access$300(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;)I

    move-result p1

    iget v0, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$1;->val$position:I

    if-eq p1, v0, :cond_0

    .line 58
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;->access$400(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;->access$300(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/bean/PublishLocBean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/bean/PublishLocBean;->setCheck(Z)V

    .line 59
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;->access$300(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;->notifyItemChanged(I)V

    .line 62
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;

    iget v0, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$1;->val$position:I

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;->access$302(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;I)I

    .line 63
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;->access$400(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$1;->val$position:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/bean/PublishLocBean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/bean/PublishLocBean;->setCheck(Z)V

    .line 64
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;->access$300(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;->notifyItemChanged(I)V

    .line 66
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;->access$500(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;)Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$onSelectLocTxtListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;->access$500(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;)Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$onSelectLocTxtListener;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;->access$400(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;->access$300(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/bean/PublishLocBean;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bean/PublishLocBean;->getDetailLoc()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$onSelectLocTxtListener;->selectedLocTxt(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
