.class Lcom/kugoo/kugookirin/social/HomePageActivity$4;
.super Ljava/lang/Object;
.source "HomePageActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/HomePageActivity;->followUser()V
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
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/HomePageActivity;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$4;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

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

    .line 480
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
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

    .line 465
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/FollowUserInfo;

    .line 466
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/FollowUserInfo;->getStatus()Ljava/lang/String;

    move-result-object p1

    .line 467
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "status=="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "testFollow002"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "0"

    .line 469
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "4"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "2"

    .line 472
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 473
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$4;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/HomePageActivity;->followBtn:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$4;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    const v0, 0x7f12010a

    invoke-virtual {p2, v0}, Lcom/kugoo/kugookirin/social/HomePageActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$4;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/HomePageActivity;->followBtn:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1

    .line 470
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$4;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/HomePageActivity;->followBtn:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$4;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    const v0, 0x7f12010c

    invoke-virtual {p2, v0}, Lcom/kugoo/kugookirin/social/HomePageActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$4;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/HomePageActivity;->followBtn:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_2
    :goto_1
    return-void
.end method
