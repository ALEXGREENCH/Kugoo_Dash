.class Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$3;
.super Ljava/lang/Object;
.source "GpsInfoAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;I)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$3;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

    iput p2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 180
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$3;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;->access$1100(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$3;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;

    .line 181
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->getTime()Ljava/lang/String;

    move-result-object p1

    .line 182
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$3;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

    iget v1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$3;->val$position:I

    invoke-static {v0, p1, v1}, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;->access$1200(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;Ljava/lang/String;I)V

    const/4 p1, 0x0

    return p1
.end method
