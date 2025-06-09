.class Lcom/kugoo/kugookirin/vehicle/VehicleFragment$53;
.super Ljava/lang/Object;
.source "VehicleFragment.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->postConnectInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 3429
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$53;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 3432
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$53;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$6400(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$53;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    const v1, 0x7f120125

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
