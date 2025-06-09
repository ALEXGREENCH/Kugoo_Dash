.class Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$3;
.super Ljava/lang/Object;
.source "FriendFollowerAdapter.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;->postFollow(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/kugoo/kugookirin/social/bean/FollowUserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;I)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$3;->this$0:Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;

    iput p2, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$3;->val$position:I

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
            "Lcom/kugoo/kugookirin/social/bean/FollowUserInfo;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string p1, "testFollow002"

    .line 148
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/kugoo/kugookirin/social/bean/FollowUserInfo;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/kugoo/kugookirin/social/bean/FollowUserInfo;",
            ">;)V"
        }
    .end annotation

    .line 131
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/FollowUserInfo;

    .line 133
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/FollowUserInfo;->getStatus()Ljava/lang/String;

    move-result-object p1

    .line 134
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "status=="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "testFollow002"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$3;->this$0:Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;->access$300(Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    iget v1, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$3;->val$position:I

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kugoo/kugookirin/social/bean/FriendInfo$ResultList;

    const-string v1, "0"

    .line 137
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "2"

    .line 139
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "N"

    .line 140
    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/social/bean/FriendInfo$ResultList;->setIsattention(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "Y"

    .line 138
    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/social/bean/FriendInfo$ResultList;->setIsattention(Ljava/lang/String;)V

    .line 142
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "position=="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$3;->val$position:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "isFollow=="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/FriendInfo$ResultList;->getIsattention()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$3;->this$0:Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;

    iget p2, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$3;->val$position:I

    const v0, 0x7f0a027e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method
