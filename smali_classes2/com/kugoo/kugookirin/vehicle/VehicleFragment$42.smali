.class Lcom/kugoo/kugookirin/vehicle/VehicleFragment$42;
.super Ljava/lang/Object;
.source "VehicleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showLockPwdDialog()V
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

    .line 2918
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$42;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$42;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 2921
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$42;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
