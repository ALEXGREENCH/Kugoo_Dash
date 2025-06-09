.class Lcom/kugoo/kugookirin/vehicle/VehicleFragment$30;
.super Ljava/lang/Object;
.source "VehicleFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

.field final synthetic val$gear:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;I)V
    .locals 0

    .line 2096
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$30;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iput p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$30;->val$gear:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2099
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$30;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget-object v1, v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->kgkrn05GearValue:[Ljava/lang/String;

    iget v2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$30;->val$gear:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendHexString(Ljava/lang/String;)V

    return-void
.end method
