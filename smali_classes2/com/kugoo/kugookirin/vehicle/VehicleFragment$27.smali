.class Lcom/kugoo/kugookirin/vehicle/VehicleFragment$27;
.super Ljava/lang/Object;
.source "VehicleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showConfirmDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Landroid/app/Dialog;)V
    .locals 0

    .line 1736
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$27;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$27;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1739
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$27;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$1602(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z

    .line 1740
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$27;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
