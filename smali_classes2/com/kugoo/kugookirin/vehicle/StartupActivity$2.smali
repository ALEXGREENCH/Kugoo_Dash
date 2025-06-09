.class Lcom/kugoo/kugookirin/vehicle/StartupActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "StartupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/vehicle/StartupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/StartupActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/StartupActivity;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/StartupActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 130
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_CODE_OK:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 132
    :cond_0
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 133
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/StartupActivity;

    invoke-static {p1, v1}, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->access$002(Lcom/kugoo/kugookirin/vehicle/StartupActivity;Z)Z

    goto/16 :goto_3

    .line 134
    :cond_1
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 135
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/StartupActivity;

    invoke-static {p1, v2}, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->access$002(Lcom/kugoo/kugookirin/vehicle/StartupActivity;Z)Z

    goto/16 :goto_3

    .line 136
    :cond_2
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/StartupActivity;

    invoke-static {p1, v2}, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->access$002(Lcom/kugoo/kugookirin/vehicle/StartupActivity;Z)Z

    goto/16 :goto_3

    .line 138
    :cond_3
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 139
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/StartupActivity;

    invoke-static {p1, v1}, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->access$002(Lcom/kugoo/kugookirin/vehicle/StartupActivity;Z)Z

    .line 141
    sget-object p1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->EXTRA_DATA:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    const-string p2, "code_ok_rawValue="

    .line 142
    invoke-static {p1}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->BytesToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    .line 145
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/StartupActivity;

    invoke-static {v0, p2}, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->access$100(Lcom/kugoo/kugookirin/vehicle/StartupActivity;Ljava/lang/String;)V

    .line 147
    array-length p2, p1

    const/16 v0, 0xa

    if-ne p2, v0, :cond_10

    aget-byte p2, p1, v2

    and-int/lit16 p2, p2, 0xff

    const/16 v0, 0xaa

    if-ne p2, v0, :cond_10

    const/16 p2, 0x9

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    const/16 v0, 0xbb

    if-ne p2, v0, :cond_10

    .line 150
    aget-byte p2, p1, v1

    and-int/lit16 p2, p2, 0xff

    const/4 v0, 0x6

    .line 151
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "0"

    const/4 v5, 0x2

    if-ge v3, v5, :cond_4

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    const/16 v3, 0xa3

    if-eq p2, v3, :cond_5

    goto/16 :goto_3

    .line 158
    :cond_5
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 159
    sget-object p2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v6, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    move v0, v6

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "kug20"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "kug19"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_2
    const-string v3, "kug11"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto :goto_0

    :sswitch_3
    const-string v0, "kug03"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "b205"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "b17"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_6
    const-string v0, "b11"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_0

    :cond_b
    move v0, v5

    goto :goto_1

    :sswitch_7
    const-string v0, "b2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_0

    :cond_c
    move v0, v1

    goto :goto_1

    :sswitch_8
    const-string v0, "b1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto :goto_0

    :cond_d
    move v0, v2

    :cond_e
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 169
    :pswitch_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 170
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/StartupActivity;

    invoke-static {p1, v1}, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->access$202(Lcom/kugoo/kugookirin/vehicle/StartupActivity;Z)Z

    goto :goto_2

    .line 172
    :cond_f
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/StartupActivity;

    invoke-static {p1, v2}, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->access$202(Lcom/kugoo/kugookirin/vehicle/StartupActivity;Z)Z

    .line 174
    :goto_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity$2;->this$0:Lcom/kugoo/kugookirin/vehicle/StartupActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->access$200(Lcom/kugoo/kugookirin/vehicle/StartupActivity;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->access$300(Lcom/kugoo/kugookirin/vehicle/StartupActivity;Z)V

    :cond_10
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0xc0f -> :sswitch_8
        0xc10 -> :sswitch_7
        0x17602 -> :sswitch_6
        0x17608 -> :sswitch_5
        0x2d4e15 -> :sswitch_4
        0x61a8b00 -> :sswitch_3
        0x61a8b1d -> :sswitch_2
        0x61a8b25 -> :sswitch_1
        0x61a8b3b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
