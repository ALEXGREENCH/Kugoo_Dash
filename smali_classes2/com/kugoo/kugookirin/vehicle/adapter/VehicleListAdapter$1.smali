.class Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$1;
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

    .line 99
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$1;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$1;->val$vehicleData:Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 102
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$1;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$1;->val$vehicleData:Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->access$200(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;)V

    return-void
.end method
