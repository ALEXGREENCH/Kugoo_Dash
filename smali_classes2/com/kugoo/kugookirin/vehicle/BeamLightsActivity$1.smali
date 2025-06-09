.class Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$1;
.super Ljava/lang/Object;
.source "BeamLightsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 120
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->access$000(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    return-void
.end method
