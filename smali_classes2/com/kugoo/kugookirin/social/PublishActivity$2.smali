.class Lcom/kugoo/kugookirin/social/PublishActivity$2;
.super Lrx/Subscriber;
.source "PublishActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/PublishActivity;->publishDynamic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/PublishActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/PublishActivity;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishActivity;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    const-string v0, "publishDynamic"

    const-string v1, "onCompleted22222"

    .line 439
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/PublishActivity;->access$100(Lcom/kugoo/kugookirin/social/PublishActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/social/PublishActivity;->access$202(Lcom/kugoo/kugookirin/social/PublishActivity;Z)Z

    .line 442
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishActivity;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/PublishActivity;->finish()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/PublishActivity;->access$100(Lcom/kugoo/kugookirin/social/PublishActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/social/PublishActivity;->access$202(Lcom/kugoo/kugookirin/social/PublishActivity;Z)Z

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onError=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "publishDynamic"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 436
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/PublishActivity$2;->onNext(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Ljava/lang/String;)V
    .locals 2

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onNext=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "publishDynamic"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/PublishActivity;->access$100(Lcom/kugoo/kugookirin/social/PublishActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 457
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    .line 458
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    .line 459
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 460
    sput-boolean p1, Lcom/kugoo/kugookirin/social/ForYouFragment;->publishRefresh:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 463
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 465
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/social/PublishActivity;->access$202(Lcom/kugoo/kugookirin/social/PublishActivity;Z)Z

    .line 466
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishActivity;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/PublishActivity;->finish()V

    return-void
.end method
