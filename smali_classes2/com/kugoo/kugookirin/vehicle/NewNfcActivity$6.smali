.class Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$6;
.super Ljava/lang/Object;
.source "NewNfcActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->commandSender(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

.field final synthetic val$command:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;Ljava/lang/String;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$6;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$6;->val$command:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$6;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->access$700(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$6;->val$command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    return-void
.end method
