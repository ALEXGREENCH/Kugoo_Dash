.class Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$13;
.super Lrx/Subscriber;
.source "ForYouAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->initLooperData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lcom/kugoo/kugookirin/bean/ResultListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$13;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    const-string v0, "getCarouselForForYou"

    const-string v1, "\u83b7\u53d6\u7ed3\u675f"

    .line 503
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u5931\u8d25=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getCarouselForForYou"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNext(Lcom/kugoo/kugookirin/bean/ResultListResponse;)V
    .locals 4

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u5b8c\u6210 getStatus=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/ResultListResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " // getResult.length=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/ResultListResponse;->getResult()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCarouselForForYou"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$13;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->access$3502(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 515
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$13;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/ResultListResponse;->getResult()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->access$3502(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 516
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$13;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->access$000(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 517
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$13;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->access$3500(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 518
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$13;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->access$3500(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 519
    new-instance v1, Lcom/kugoo/kugookirin/bean/PagerItem;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u7b2c"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$13;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    invoke-static {v3}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->access$3500(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4e2a\u56fe\u7247"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/kugoo/kugookirin/bean/PagerItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$13;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->access$000(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 522
    :cond_0
    sget-object p1, Lcom/kugoo/kugookirin/utils/Constants;->CAROUSEL_FOR_YOU:Ljava/lang/String;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$13;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->access$3500(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/orhanobut/hawk/Hawk;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 500
    check-cast p1, Lcom/kugoo/kugookirin/bean/ResultListResponse;

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$13;->onNext(Lcom/kugoo/kugookirin/bean/ResultListResponse;)V

    return-void
.end method
