.class Lcom/kugoo/kugookirin/vehicle/VehicleFragment$49;
.super Ljava/lang/Object;
.source "VehicleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->showShareBar(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

.field final synthetic val$barDialog:Landroid/app/Dialog;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Ljava/io/File;Landroid/app/Dialog;)V
    .locals 0

    .line 3278
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$49;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$49;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$49;->val$barDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 3281
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$49;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$6400(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$49;->val$file:Ljava/io/File;

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/utils/ScreenShot;->shareImge02(Landroid/app/Activity;Ljava/io/File;)V

    .line 3282
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$49;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$6500(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)V

    .line 3283
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$49;->val$barDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 3285
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$49;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3286
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$49;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$6200(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    goto :goto_0

    .line 3288
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$49;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$6300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    :goto_0
    return-void
.end method
