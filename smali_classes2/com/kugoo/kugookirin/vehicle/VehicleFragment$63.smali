.class Lcom/kugoo/kugookirin/vehicle/VehicleFragment$63;
.super Ljava/lang/Object;
.source "VehicleFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getVehicleData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/kugoo/kugookirin/bean/HomepageInfoData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V
    .locals 0

    .line 4083
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$63;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

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
            "Lcom/kugoo/kugookirin/bean/HomepageInfoData;",
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
            "Lcom/kugoo/kugookirin/bean/HomepageInfoData;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/kugoo/kugookirin/bean/HomepageInfoData;",
            ">;)V"
        }
    .end annotation

    .line 4086
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/bean/HomepageInfoData;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "0"

    .line 4090
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 4091
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData;->getResult()Ljava/util/List;

    move-result-object p1

    .line 4092
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u83b7\u53d6\u8fde\u8f66\u4fe1\u606f\u6210\u529f size=="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VehicleFragmentuploadTTest"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4093
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 4094
    iget-object p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$63;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$7800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 4095
    iget-object p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$63;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$7800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4096
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$63;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$7900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->notifyDataSetChanged()V

    .line 4097
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$63;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$7800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showNoneVehicleView(Z)V

    :cond_2
    return-void
.end method
