.class Lcom/kugoo/kugookirin/social/ForYouFragment$4;
.super Landroid/os/Handler;
.source "ForYouFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/ForYouFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/ForYouFragment;Landroid/os/Looper;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$4;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 270
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 271
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$4;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$700(Lcom/kugoo/kugookirin/social/ForYouFragment;)Landroid/content/SharedPreferences;

    move-result-object p1

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 274
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$4;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$800(Lcom/kugoo/kugookirin/social/ForYouFragment;)V

    .line 275
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment$4;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/ForYouFragment;->access$900(Lcom/kugoo/kugookirin/social/ForYouFragment;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method
