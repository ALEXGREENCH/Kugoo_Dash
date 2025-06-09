.class Lcom/kugoo/kugookirin/vehicle/VehicleFragment$24;
.super Ljava/lang/Object;
.source "VehicleFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->enableGPS()V
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

    .line 997
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$24;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1001
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1002
    iget-object p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$24;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
