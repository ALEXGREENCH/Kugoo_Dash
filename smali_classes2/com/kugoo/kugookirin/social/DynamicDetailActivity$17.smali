.class Lcom/kugoo/kugookirin/social/DynamicDetailActivity$17;
.super Ljava/lang/Object;
.source "DynamicDetailActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->deleteDynamic(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/kugoo/kugookirin/social/bean/DeleteDynamicInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$17;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

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
            "Lcom/kugoo/kugookirin/social/bean/DeleteDynamicInfo;",
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
            "Lcom/kugoo/kugookirin/social/bean/DeleteDynamicInfo;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/kugoo/kugookirin/social/bean/DeleteDynamicInfo;",
            ">;)V"
        }
    .end annotation

    .line 560
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/DeleteDynamicInfo;

    if-nez p1, :cond_0

    return-void

    .line 564
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "getStatus=="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DeleteDynamicInfo;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "17+\u5220\u9664\u52a8\u6001"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DeleteDynamicInfo;->getStatus()Ljava/lang/String;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 566
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$17;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$1600(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Lcom/kugoo/kugookirin/social/DynamicDetailActivity$onDetailMessageListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 567
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$17;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$1600(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Lcom/kugoo/kugookirin/social/DynamicDetailActivity$onDetailMessageListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$onDetailMessageListener;->activityFinish()V

    .line 569
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$17;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->finish()V

    :cond_2
    return-void
.end method
