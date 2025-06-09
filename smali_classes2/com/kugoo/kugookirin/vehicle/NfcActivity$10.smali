.class Lcom/kugoo/kugookirin/vehicle/NfcActivity$10;
.super Ljava/lang/Object;
.source "NfcActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/vehicle/NfcActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$10;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 463
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$10;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$1000(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x3e8

    .line 465
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 467
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 469
    :goto_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$10;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$1108(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 471
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$10;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/NfcActivity$10$1;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity$10$1;-><init>(Lcom/kugoo/kugookirin/vehicle/NfcActivity$10;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
