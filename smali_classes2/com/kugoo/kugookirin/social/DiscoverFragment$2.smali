.class Lcom/kugoo/kugookirin/social/DiscoverFragment$2;
.super Lrx/Subscriber;
.source "DiscoverFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/DiscoverFragment;->initLooperImg()V
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
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/DiscoverFragment;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$2;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$2;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->access$000(Lcom/kugoo/kugookirin/social/DiscoverFragment;)Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;->notifyDataSetChanged()V

    const-string v0, "getCarouselForDiscover"

    const-string v1, "\u83b7\u53d6\u7ed3\u675f"

    .line 256
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u5931\u8d25=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getCarouselForDiscover"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNext(Lcom/kugoo/kugookirin/bean/ResultListResponse;)V
    .locals 4

    .line 266
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

    const-string v1, "getCarouselForDiscover"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$2;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/ResultListResponse;->getResult()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->access$102(Lcom/kugoo/kugookirin/social/DiscoverFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 268
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$2;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->access$200(Lcom/kugoo/kugookirin/social/DiscoverFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 269
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$2;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->access$100(Lcom/kugoo/kugookirin/social/DiscoverFragment;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 270
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$2;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->access$100(Lcom/kugoo/kugookirin/social/DiscoverFragment;)Ljava/util/ArrayList;

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

    .line 271
    new-instance v1, Lcom/kugoo/kugookirin/bean/PagerItem;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u7b2c"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$2;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-static {v3}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->access$100(Lcom/kugoo/kugookirin/social/DiscoverFragment;)Ljava/util/ArrayList;

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

    .line 272
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$2;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->access$200(Lcom/kugoo/kugookirin/social/DiscoverFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 274
    :cond_0
    sget-object p1, Lcom/kugoo/kugookirin/utils/Constants;->CAROUSEL_DISCOVER:Ljava/lang/String;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$2;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->access$100(Lcom/kugoo/kugookirin/social/DiscoverFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/orhanobut/hawk/Hawk;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 252
    check-cast p1, Lcom/kugoo/kugookirin/bean/ResultListResponse;

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/DiscoverFragment$2;->onNext(Lcom/kugoo/kugookirin/bean/ResultListResponse;)V

    return-void
.end method
