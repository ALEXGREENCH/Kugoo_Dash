.class Lcom/kugoo/kugookirin/vehicle/VehicleFragment$5;
.super Ljava/lang/Object;
.source "VehicleFragment.java"

# interfaces
.implements Lcom/kugoo/kugookirin/view/SobLooperPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->setSlideshow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$5;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageChanged(I)V
    .locals 3

    const/4 v0, 0x0

    .line 709
    :goto_0
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$5;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$100(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-ne v0, p1, :cond_0

    .line 711
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$5;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$100(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const v2, 0x7f0f013d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 713
    :cond_0
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$5;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$100(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const v2, 0x7f0f013e

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
