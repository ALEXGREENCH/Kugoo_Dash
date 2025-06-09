.class Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$3;
.super Ljava/lang/Object;
.source "BeamLightsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->sendString(Ljava/lang/String;)V
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

    .line 204
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$3;->this$0:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$3;->this$0:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->access$102(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;Z)Z

    return-void
.end method
