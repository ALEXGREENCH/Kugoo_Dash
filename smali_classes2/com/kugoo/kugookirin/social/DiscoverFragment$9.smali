.class Lcom/kugoo/kugookirin/social/DiscoverFragment$9;
.super Landroid/os/Handler;
.source "DiscoverFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/DiscoverFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/DiscoverFragment;Landroid/os/Looper;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$9;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 392
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 393
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$9;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->access$300(Lcom/kugoo/kugookirin/social/DiscoverFragment;)Landroid/content/SharedPreferences;

    move-result-object p1

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 396
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$9;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->access$400(Lcom/kugoo/kugookirin/social/DiscoverFragment;)V

    .line 397
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$9;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->access$500(Lcom/kugoo/kugookirin/social/DiscoverFragment;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method
