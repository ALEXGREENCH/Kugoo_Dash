.class Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity$4;
.super Ljava/lang/Object;
.source "ChangeUnitActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity$4;->this$0:Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 262
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    const-string v1, "AA03040388010027BB"

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendHexString(Ljava/lang/String;)V

    return-void
.end method
