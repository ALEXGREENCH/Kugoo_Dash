.class Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ChangeUnitActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;
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

    .line 112
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 116
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 118
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_CODE_OK:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 120
    :cond_0
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 121
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;

    invoke-static {p1, v1}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->access$002(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;Z)Z

    goto/16 :goto_1

    .line 122
    :cond_1
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 123
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;

    invoke-static {p1, v2}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->access$002(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;Z)Z

    goto/16 :goto_1

    .line 124
    :cond_2
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;

    invoke-static {p1, v2}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->access$002(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;Z)Z

    goto/16 :goto_1

    .line 126
    :cond_3
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 127
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;

    invoke-static {p1, v1}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->access$002(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;Z)Z

    .line 129
    sget-object p1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->EXTRA_DATA:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    const-string v0, "code_ok_rawValue="

    .line 130
    invoke-static {p1}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->BytesToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 132
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->access$100(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;Ljava/lang/String;)V

    .line 134
    sget-object p1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->EXTRA_DATA:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    .line 135
    array-length p2, p1

    const/16 v0, 0x9

    if-ne p2, v0, :cond_8

    aget-byte p2, p1, v2

    and-int/lit16 p2, p2, 0xff

    const/16 v0, 0xaa

    if-ne p2, v0, :cond_8

    const/16 p2, 0x8

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    const/16 v0, 0xbb

    if-ne p2, v0, :cond_8

    .line 142
    aget-byte p2, p1, v1

    and-int/lit16 p2, p2, 0xff

    const/4 v0, 0x3

    .line 143
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x5

    .line 145
    aget-byte p1, p1, v4

    and-int/lit16 p1, p1, 0xff

    .line 146
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "0"

    const/4 v6, 0x2

    if-ge v4, v6, :cond_4

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    if-eq p2, v0, :cond_5

    goto :goto_1

    :cond_5
    if-ne v3, v0, :cond_8

    .line 153
    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    .line 159
    :cond_6
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;

    invoke-static {p1, v2}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->access$202(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;Z)Z

    goto :goto_0

    .line 156
    :cond_7
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;

    invoke-static {p1, v1}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->access$202(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;Z)Z

    .line 162
    :goto_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->access$200(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->access$300(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;Z)V

    :cond_8
    :goto_1
    return-void
.end method
