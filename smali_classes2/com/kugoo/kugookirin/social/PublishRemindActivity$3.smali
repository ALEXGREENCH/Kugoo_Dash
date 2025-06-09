.class Lcom/kugoo/kugookirin/social/PublishRemindActivity$3;
.super Landroid/os/Handler;
.source "PublishRemindActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/PublishRemindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/PublishRemindActivity;Landroid/os/Looper;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$3;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 246
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 247
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x6e

    if-ne p1, v0, :cond_0

    .line 248
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "size=="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$3;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->access$200(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nearbySearchResult"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
