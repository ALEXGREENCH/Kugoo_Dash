.class Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$2;
.super Ljava/lang/Object;
.source "VehicleListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

.field final synthetic val$vehicleData:Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$2;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$2;->val$vehicleData:Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 109
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$2;->val$vehicleData:Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->isShowDel()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 110
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$2;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->access$400(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;

    const/4 v1, 0x0

    .line 111
    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setShowDel(Z)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$2;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$2;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->access$500(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;)Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$OnShowVehicleDetailView;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$2;->val$vehicleData:Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;

    invoke-interface {p1, v0}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$OnShowVehicleDetailView;->showVehicle(Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;)V

    :goto_1
    return-void
.end method
