.class Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$18;
.super Ljava/lang/Object;
.source "DiscoverPageAdapter.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->blockPost(Ljava/lang/String;I)V
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

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;I)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$18;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    iput p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$18;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 467
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$18;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3

    .line 471
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    .line 472
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    .line 473
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 474
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$18;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->access$2400(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$18;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->access$2400(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120038

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 475
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$18;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->access$2000(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$18;->val$index:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 476
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$18;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 479
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$18;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->access$2400(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$18;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->access$2400(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120035

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 481
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
