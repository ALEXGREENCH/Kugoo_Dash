.class Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$5;
.super Ljava/lang/Object;
.source "DynamicDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

.field final synthetic val$finalPos:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;I)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$5;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    iput p2, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$5;->val$finalPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 355
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$5;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->mCommentData:Ljava/util/ArrayList;

    iget v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$5;->val$finalPos:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;

    .line 356
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$5;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$2802(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 357
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$5;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$2902(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 358
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->getCommentId()Ljava/lang/String;

    move-result-object p1

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uid=\u56de\u590d\u7528\u623701="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$5;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$2800(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hahahha"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$5;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$3000(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$5;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$2800(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "uid=\u56de\u590d\u7528\u623702="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$5;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$2800(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$5;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$2802(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$5;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$2902(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$5;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$3100(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$onOperateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$5;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$3100(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$onOperateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$onOperateListener;->showDeleteDialog(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$5;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    const-string v1, "comment"

    invoke-static {v0, v1, p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$3200(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$5;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$3100(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$onOperateListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 371
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$5;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$3100(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$onOperateListener;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$5;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$2900(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$onOperateListener;->showSoftInput(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
