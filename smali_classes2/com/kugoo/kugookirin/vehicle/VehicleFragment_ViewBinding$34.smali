.class Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$34;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "VehicleFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;

.field final synthetic val$target:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$34;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$34;->val$target:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$34;->val$target:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->onClick(Landroid/view/View;)V

    return-void
.end method
