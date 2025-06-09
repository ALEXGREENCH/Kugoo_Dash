.class Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "BeamLightsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;
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

    .line 248
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$4;->this$0:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 251
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 252
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "android.bluetooth.device.extra.BOND_STATE"

    const/4 v0, -0x1

    .line 254
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 263
    :pswitch_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$4;->this$0:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->access$200(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$4;->this$0:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->access$300(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothDevice bonded"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 260
    :pswitch_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$4;->this$0:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->access$200(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$4;->this$0:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->access$300(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothDevice bonding"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 257
    :pswitch_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$4;->this$0:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->access$200(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$4;->this$0:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->access$300(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothDevice not bonded"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 266
    :cond_0
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$4;->this$0:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->access$200(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$4;->this$0:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->access$300(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    :cond_1
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$4;->this$0:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->access$200(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$4;->this$0:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->access$300(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    :cond_2
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$4;->this$0:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->access$200(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$4;->this$0:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->access$300(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    :cond_3
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 275
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$4;->this$0:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->access$200(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$4;->this$0:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->access$300(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_4
    sget-object p1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->EXTRA_DATA:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    .line 277
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    .line 278
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$4;->this$0:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;

    invoke-static {p1, p2}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->access$400(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
