.class Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$9;
.super Ljava/lang/Object;
.source "DynamicDetailAdapter.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->postComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/kugoo/kugookirin/social/bean/PostCommentResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

.field final synthetic val$cContent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Ljava/lang/String;)V
    .locals 0

    .line 681
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$9;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$9;->val$cContent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/kugoo/kugookirin/social/bean/PostCommentResult;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 717
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$9;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$2802(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/kugoo/kugookirin/social/bean/PostCommentResult;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/kugoo/kugookirin/social/bean/PostCommentResult;",
            ">;)V"
        }
    .end annotation

    .line 685
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/PostCommentResult;

    .line 686
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$9;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    const-string v0, ""

    invoke-static {p2, v0}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$2802(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Ljava/lang/String;)Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 692
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "getStatus=="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/PostCommentResult;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "commentDetail"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/PostCommentResult;->getStatus()Ljava/lang/String;

    move-result-object p2

    const-string v1, "0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 694
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "body=="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/PostCommentResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    new-instance p2, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;

    invoke-direct {p2}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;-><init>()V

    .line 696
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/PostCommentResult;->getCommentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->setCommentId(Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$9;->val$cContent:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->setCContent(Ljava/lang/String;)V

    .line 698
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->setCommentTime(J)V

    .line 699
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$9;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$4000(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->setPortraitUrl(Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$9;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$4100(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->setNickName(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/PostCommentResult;->getToUid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->setToUid(Ljava/lang/String;)V

    .line 702
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$9;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$3000(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->setId(Ljava/lang/String;)V

    .line 703
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$9;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$2900(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->setTonickName(Ljava/lang/String;)V

    .line 704
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$9;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->mCommentData:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 706
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$9;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$600(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 707
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$9;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$600(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getCommentNum()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 708
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$9;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$600(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->setCommentNum(Ljava/lang/String;)V

    .line 709
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$9;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$600(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    move-result-object p1

    const-string p2, "Y"

    invoke-virtual {p1, p2}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->setComment(Ljava/lang/String;)V

    .line 711
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$9;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method
