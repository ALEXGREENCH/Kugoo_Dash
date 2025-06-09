.class Lcom/kugoo/kugookirin/social/FriendListActivity$1;
.super Ljava/lang/Object;
.source "FriendListActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/FriendListActivity;->getFriendData(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/kugoo/kugookirin/social/bean/FriendInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/FriendListActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/FriendListActivity;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/FriendListActivity$1;->this$0:Lcom/kugoo/kugookirin/social/FriendListActivity;

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
            "Lcom/kugoo/kugookirin/social/bean/FriendInfo;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/kugoo/kugookirin/social/bean/FriendInfo;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/kugoo/kugookirin/social/bean/FriendInfo;",
            ">;)V"
        }
    .end annotation

    .line 127
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/FriendInfo;

    if-nez p1, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/FriendInfo;->getStatus()Ljava/lang/String;

    move-result-object p2

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 132
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/FriendInfo;->getResult()Ljava/util/List;

    move-result-object p2

    .line 133
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/FriendListActivity$1;->this$0:Lcom/kugoo/kugookirin/social/FriendListActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/FriendListActivity;->access$000(Lcom/kugoo/kugookirin/social/FriendListActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 135
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 136
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kugoo/kugookirin/social/bean/FriendInfo$ResultList;

    const-string v3, "Y"

    invoke-virtual {v2, v3}, Lcom/kugoo/kugookirin/social/bean/FriendInfo$ResultList;->setIsattention(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/FriendListActivity$1;->this$0:Lcom/kugoo/kugookirin/social/FriendListActivity;

    iget-object v0, v0, Lcom/kugoo/kugookirin/social/FriendListActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 140
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/FriendListActivity$1;->this$0:Lcom/kugoo/kugookirin/social/FriendListActivity;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/FriendListActivity;->access$100(Lcom/kugoo/kugookirin/social/FriendListActivity;)Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;->notifyDataSetChanged()V

    .line 141
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/FriendListActivity$1;->this$0:Lcom/kugoo/kugookirin/social/FriendListActivity;

    iget-object p2, p2, Lcom/kugoo/kugookirin/social/FriendListActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_2

    .line 142
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/FriendListActivity$1;->this$0:Lcom/kugoo/kugookirin/social/FriendListActivity;

    iget-object p2, p2, Lcom/kugoo/kugookirin/social/FriendListActivity;->no_follower_item:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "moredata==>AllData=="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "morepage"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
