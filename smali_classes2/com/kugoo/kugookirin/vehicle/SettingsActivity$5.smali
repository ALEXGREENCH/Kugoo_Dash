.class Lcom/kugoo/kugookirin/vehicle/SettingsActivity$5;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$5;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 422
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    const-string v1, "+ZSST=?"

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SettingsActivity$5;->this$0:Lcom/kugoo/kugookirin/vehicle/SettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/vehicle/SettingsActivity;->access$002(Lcom/kugoo/kugookirin/vehicle/SettingsActivity;Z)Z

    return-void
.end method
