.class Lcom/kugoo/kugookirin/vehicle/NfcActivity$9;
.super Ljava/lang/Object;
.source "NfcActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/NfcActivity;->commandSender(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

.field final synthetic val$command:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/String;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$9;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$9;->val$command:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$9;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$900(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$9;->val$command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    return-void
.end method
