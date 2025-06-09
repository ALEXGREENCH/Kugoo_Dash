.class Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ThrottleStartingForceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 133
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 135
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_CODE_OK:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 138
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;

    invoke-static {p1, v1}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->access$002(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;Z)Z

    goto :goto_0

    .line 139
    :cond_1
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 140
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;

    invoke-static {p1, v2}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->access$002(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;Z)Z

    goto :goto_0

    .line 141
    :cond_2
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;

    invoke-static {p1, v2}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->access$002(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;Z)Z

    goto :goto_0

    .line 143
    :cond_3
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 144
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;

    invoke-static {p1, v1}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->access$002(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;Z)Z

    .line 146
    sget-object p1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->EXTRA_DATA:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    const-string p2, "code_ok_rawValue="

    .line 147
    invoke-static {p1}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->BytesToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    .line 149
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;

    invoke-static {p1, p2}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->access$100(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
