.class Lcom/kugoo/kugookirin/social/PublishRemindActivity$7;
.super Ljava/lang/Object;
.source "PublishRemindActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/PublishRemindActivity;->searchRemind(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/kugoo/kugookirin/social/bean/SearchRemindInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$7;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

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
            "Lcom/kugoo/kugookirin/social/bean/SearchRemindInfo;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/kugoo/kugookirin/social/bean/SearchRemindInfo;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/kugoo/kugookirin/social/bean/SearchRemindInfo;",
            ">;)V"
        }
    .end annotation

    .line 377
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/SearchRemindInfo;

    if-nez p1, :cond_0

    return-void

    .line 382
    :cond_0
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/SearchRemindInfo;->getStatus()Ljava/lang/String;

    move-result-object p2

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 383
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$7;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->access$500(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 384
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/SearchRemindInfo;->getResult()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    .line 386
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 389
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kugoo/kugookirin/social/bean/SearchRemindInfo$ResultList;

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/social/bean/SearchRemindInfo$ResultList;->getNickName()Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kugoo/kugookirin/social/bean/SearchRemindInfo$ResultList;

    invoke-virtual {v2}, Lcom/kugoo/kugookirin/social/bean/SearchRemindInfo$ResultList;->getPortraitUrl()Ljava/lang/String;

    move-result-object v2

    .line 391
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kugoo/kugookirin/social/bean/SearchRemindInfo$ResultList;

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/SearchRemindInfo$ResultList;->getUid()Ljava/lang/String;

    move-result-object v3

    move v4, p2

    move v5, v4

    .line 394
    :goto_1
    iget-object v6, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$7;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-static {v6}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->access$000(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v4, v6, :cond_2

    .line 395
    iget-object v6, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$7;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-static {v6}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->access$000(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kugoo/kugookirin/social/bean/RemindInfo;

    .line 396
    invoke-virtual {v6}, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v7

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    .line 403
    iget-object v4, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$7;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-static {v4}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->access$500(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Lcom/kugoo/kugookirin/social/bean/RemindInfo;

    invoke-direct {v5, v3, v1, v2, v7}, Lcom/kugoo/kugookirin/social/bean/RemindInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 405
    :cond_3
    iget-object v4, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$7;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-static {v4}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->access$500(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Lcom/kugoo/kugookirin/social/bean/RemindInfo;

    invoke-direct {v5, v3, v1, v2, p2}, Lcom/kugoo/kugookirin/social/bean/RemindInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    :cond_4
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$7;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->access$500(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 410
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$7;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->searchLv:Landroid/widget/ListView;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 411
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$7;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->remindLv:Landroid/widget/ListView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 412
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$7;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->access$600(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;->notifyDataSetChanged()V

    :cond_5
    return-void
.end method
