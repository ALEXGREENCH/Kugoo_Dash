.class Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$1;
.super Ljava/lang/Object;
.source "GpsInfoAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

.field final synthetic val$activitiesBean:Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$1;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$1;->val$activitiesBean:Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 134
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$1;->val$activitiesBean:Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->setCheck(Z)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$1;->val$activitiesBean:Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->setCheck(Z)V

    .line 139
    :goto_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$1;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;->access$900(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;)Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$onItemCheckedChangeListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 142
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$1;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;->access$900(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;)Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$onItemCheckedChangeListener;

    move-result-object p1

    iget-object p2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$1;->val$activitiesBean:Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;

    invoke-interface {p1, p2}, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$onItemCheckedChangeListener;->NavItemChecked(Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;)V

    :cond_1
    return-void
.end method
