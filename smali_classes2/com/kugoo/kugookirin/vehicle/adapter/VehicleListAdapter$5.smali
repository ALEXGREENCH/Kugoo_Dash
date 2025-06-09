.class Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$5;
.super Ljava/lang/Object;
.source "VehicleListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->delTipDialog(Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$vehicleData:Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;Landroid/app/Dialog;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$5;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$5;->val$vehicleData:Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;

    iput-object p3, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$5;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 185
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$5;->val$vehicleData:Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getModel()Ljava/lang/String;

    move-result-object p1

    .line 186
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$5;->val$vehicleData:Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getMac()Ljava/lang/String;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$5;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

    invoke-static {v1, v0, p1}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->access$700(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$5;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->access$400(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$5;->val$vehicleData:Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 189
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$5;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->notifyDataSetChanged()V

    .line 190
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$5;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->access$800(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;)Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$OnShowNoneVehicleView;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$5;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$OnShowNoneVehicleView;->showNoneVehicleView(Z)V

    .line 191
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
