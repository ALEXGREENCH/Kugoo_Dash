.class Lcom/kugoo/kugookirin/social/DiscoverFragment$12;
.super Ljava/lang/Object;
.source "DiscoverFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/DiscoverFragment;->getNewMsg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/DiscoverFragment;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$12;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 532
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/DiscoverFragment$12;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 2

    .line 536
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 538
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$12;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->access$1202(Lcom/kugoo/kugookirin/social/DiscoverFragment;Z)Z

    .line 539
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$12;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/DiscoverFragment;->messageBtn:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$12;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->access$1200(Lcom/kugoo/kugookirin/social/DiscoverFragment;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 541
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
