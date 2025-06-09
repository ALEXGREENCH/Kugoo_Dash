.class Lcom/kugoo/kugookirin/vehicle/VehicleFragment$58;
.super Ljava/lang/Object;
.source "VehicleFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showNoSaveDialog()V
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

    .line 3972
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$58;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3975
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$58;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$6400(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f13046d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d010c

    .line 3976
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f0a01ce

    .line 3978
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$58$1;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$58$1;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment$58;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 3985
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3986
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
