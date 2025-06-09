.class Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "VehicleInfoActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity_ViewBinding;

.field final synthetic val$target:Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity_ViewBinding$1;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity_ViewBinding;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity_ViewBinding$1;->val$target:Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity_ViewBinding$1;->val$target:Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->onViewClicked()V

    return-void
.end method
