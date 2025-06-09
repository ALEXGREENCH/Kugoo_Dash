.class Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$3;
.super Ljava/lang/Object;
.source "VehicleListAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$3;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 123
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$3;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->access$400(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;

    .line 124
    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setShowDel(Z)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$3;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->notifyDataSetChanged()V

    return v1
.end method
