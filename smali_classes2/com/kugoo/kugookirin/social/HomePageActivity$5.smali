.class Lcom/kugoo/kugookirin/social/HomePageActivity$5;
.super Ljava/lang/Object;
.source "HomePageActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/HomePageActivity;->getPersonalData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/kugoo/kugookirin/bean/UserPageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/HomePageActivity;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$5;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

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
            "Lcom/kugoo/kugookirin/bean/UserPageInfo;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/kugoo/kugookirin/bean/UserPageInfo;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/kugoo/kugookirin/bean/UserPageInfo;",
            ">;)V"
        }
    .end annotation

    .line 501
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$5;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kugoo/kugookirin/bean/UserPageInfo;

    invoke-static {p1, p2}, Lcom/kugoo/kugookirin/social/HomePageActivity;->access$402(Lcom/kugoo/kugookirin/social/HomePageActivity;Lcom/kugoo/kugookirin/bean/UserPageInfo;)Lcom/kugoo/kugookirin/bean/UserPageInfo;

    .line 502
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$5;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/HomePageActivity;->access$400(Lcom/kugoo/kugookirin/social/HomePageActivity;)Lcom/kugoo/kugookirin/bean/UserPageInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 505
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$5;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/HomePageActivity;->access$400(Lcom/kugoo/kugookirin/social/HomePageActivity;)Lcom/kugoo/kugookirin/bean/UserPageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getStatus()Ljava/lang/String;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 506
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$5;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/HomePageActivity;->access$500(Lcom/kugoo/kugookirin/social/HomePageActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x4ce

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 508
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$5;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/HomePageActivity;->access$400(Lcom/kugoo/kugookirin/social/HomePageActivity;)Lcom/kugoo/kugookirin/bean/UserPageInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getResult()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
