.class Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$3;
.super Ljava/lang/Object;
.source "DiscoverActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$3;->this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 259
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$3;->this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->access$000(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "countTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$3;->this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->access$100(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "countTime"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x3e8

    .line 262
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 266
    :goto_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$3;->this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->access$108(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;)I

    move-result v0

    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$3;->this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->access$100(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$3;->this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

    new-instance v1, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$3$1;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$3$1;-><init>(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
