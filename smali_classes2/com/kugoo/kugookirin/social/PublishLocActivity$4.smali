.class Lcom/kugoo/kugookirin/social/PublishLocActivity$4;
.super Landroid/os/Handler;
.source "PublishLocActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/PublishLocActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/PublishLocActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/PublishLocActivity;Landroid/os/Looper;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity$4;->this$0:Lcom/kugoo/kugookirin/social/PublishLocActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 328
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 329
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x6e

    if-ne p1, v0, :cond_0

    .line 331
    new-instance p1, Lcom/kugoo/kugookirin/bean/PublishLocBean;

    invoke-direct {p1}, Lcom/kugoo/kugookirin/bean/PublishLocBean;-><init>()V

    const/4 v0, 0x1

    .line 332
    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/bean/PublishLocBean;->setCheck(Z)V

    .line 333
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity$4;->this$0:Lcom/kugoo/kugookirin/social/PublishLocActivity;

    const v1, 0x7f1201e4

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/bean/PublishLocBean;->setDetailLoc(Ljava/lang/String;)V

    const-string v0, ""

    .line 334
    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/bean/PublishLocBean;->setRougeLoc(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity$4;->this$0:Lcom/kugoo/kugookirin/social/PublishLocActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->access$700(Lcom/kugoo/kugookirin/social/PublishLocActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 338
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "size=="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity$4;->this$0:Lcom/kugoo/kugookirin/social/PublishLocActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->access$700(Lcom/kugoo/kugookirin/social/PublishLocActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nearbySearchResult"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity$4;->this$0:Lcom/kugoo/kugookirin/social/PublishLocActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->access$800(Lcom/kugoo/kugookirin/social/PublishLocActivity;)V

    .line 340
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity$4;->this$0:Lcom/kugoo/kugookirin/social/PublishLocActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/PublishLocActivity;->loadLinear:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
