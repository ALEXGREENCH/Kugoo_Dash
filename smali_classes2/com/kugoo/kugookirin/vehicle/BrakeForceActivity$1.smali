.class Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BrakeForceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 126
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_CODE_OK:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 129
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;

    invoke-static {p1, v1}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->access$002(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;Z)Z

    goto :goto_0

    .line 130
    :cond_1
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 131
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;

    invoke-static {p1, v2}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->access$002(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;Z)Z

    goto :goto_0

    .line 132
    :cond_2
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;

    invoke-static {p1, v2}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->access$002(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;Z)Z

    goto :goto_0

    .line 134
    :cond_3
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 135
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;

    invoke-static {p1, v1}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->access$002(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;Z)Z

    .line 137
    sget-object p1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->EXTRA_DATA:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    const-string p2, "code_ok_rawValue="

    .line 138
    invoke-static {p1}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->BytesToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    .line 140
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;

    invoke-static {p1, p2}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->access$100(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
