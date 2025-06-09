.class Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$3;
.super Ljava/lang/Object;
.source "SearchUserAdapter.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;->getUserData(Ljava/lang/String;Ljava/lang/String;I)V
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
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;I)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$3;->this$0:Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;

    iput p2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$3;->val$position:I

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

    .line 144
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
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

    .line 127
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/FollowUserInfo;

    .line 128
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/FollowUserInfo;->getStatus()Ljava/lang/String;

    move-result-object p2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "status=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "testFollow002"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$3;->this$0:Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;->access$300(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$3;->val$position:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;

    const-string v2, "0"

    .line 132
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "4"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "2"

    .line 134
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "N"

    .line 135
    invoke-virtual {v0, p2}, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;->setFollow(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "Y"

    .line 133
    invoke-virtual {v0, p2}, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;->setFollow(Ljava/lang/String;)V

    .line 137
    :cond_2
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "position=="

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$3;->val$position:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "isFollow=="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;->getFollow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$3;->this$0:Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;->access$600(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/FollowUserInfo;->getResult()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 139
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$3;->this$0:Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;

    iget p2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$3;->val$position:I

    invoke-virtual {p1, p2}, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;->notifyItemChanged(I)V

    return-void
.end method
