.class Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$7;
.super Ljava/lang/Object;
.source "NewNfcActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$7;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 395
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$7;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->access$800(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x3e8

    .line 397
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 399
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 401
    :goto_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$7;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->access$908(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 403
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$7;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$7$1;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$7$1;-><init>(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$7;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
