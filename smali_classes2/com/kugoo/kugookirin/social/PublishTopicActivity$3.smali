.class Lcom/kugoo/kugookirin/social/PublishTopicActivity$3;
.super Ljava/lang/Object;
.source "PublishTopicActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/PublishTopicActivity;->getLabelData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/kugoo/kugookirin/social/bean/LabelInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$3;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

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
            "Lcom/kugoo/kugookirin/social/bean/LabelInfo;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/kugoo/kugookirin/social/bean/LabelInfo;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/kugoo/kugookirin/social/bean/LabelInfo;",
            ">;)V"
        }
    .end annotation

    .line 183
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/LabelInfo;

    if-nez p1, :cond_0

    return-void

    .line 187
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "getStatus=="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/LabelInfo;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "publishTopicActivity001"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/LabelInfo;->getStatus()Ljava/lang/String;

    move-result-object p2

    const-string v1, "0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 189
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/LabelInfo;->getResult()Ljava/util/List;

    move-result-object p1

    .line 190
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "size=="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$3;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$400(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 192
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$3;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$500(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x65

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
