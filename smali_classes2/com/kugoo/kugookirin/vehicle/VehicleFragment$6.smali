.class Lcom/kugoo/kugookirin/vehicle/VehicleFragment$6;
.super Lrx/Subscriber;
.source "VehicleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->initLooperImg()V
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
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V
    .locals 0

    .line 737
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$6;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 740
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$6;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$200(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;->notifyDataSetChanged()V

    const-string v0, "VehicleFragmentgetCarouselForMain"

    const-string v1, "\u83b7\u53d6\u7ed3\u675f"

    .line 741
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u5931\u8d25=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VehicleFragmentgetCarouselForMain"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNext(Lcom/kugoo/kugookirin/bean/ResultListResponse;)V
    .locals 4

    .line 752
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

    const-string v1, "VehicleFragmentgetCarouselForMain"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$6;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/ResultListResponse;->getResult()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$302(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 754
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$6;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 755
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$6;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 756
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$6;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/util/ArrayList;

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

    .line 757
    new-instance v1, Lcom/kugoo/kugookirin/bean/PagerItem;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u7b2c"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$6;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/util/ArrayList;

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

    .line 758
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$6;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 760
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$6;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$400(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    .line 761
    sget-object p1, Lcom/kugoo/kugookirin/utils/Constants;->CAROUSEL_MAIN:Ljava/lang/String;

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$6;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/orhanobut/hawk/Hawk;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 737
    check-cast p1, Lcom/kugoo/kugookirin/bean/ResultListResponse;

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$6;->onNext(Lcom/kugoo/kugookirin/bean/ResultListResponse;)V

    return-void
.end method
