.class Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$24;
.super Ljava/lang/Object;
.source "DiscoverPageAdapter.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->postTipOff(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$24;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 555
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$24;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3

    .line 559
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    .line 560
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    .line 561
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 562
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$24;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->access$2400(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$24;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->access$2400(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f1201f6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_0
    const-string v0, "1"

    .line 563
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "3"

    .line 565
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 566
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$24;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->access$2400(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$24;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->access$2400(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f120120

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 564
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$24;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->access$2400(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$24;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->access$2400(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f1201f4

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 569
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method
