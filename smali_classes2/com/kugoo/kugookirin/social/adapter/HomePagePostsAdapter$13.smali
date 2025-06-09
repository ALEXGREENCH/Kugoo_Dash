.class Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$13;
.super Ljava/lang/Object;
.source "HomePagePostsAdapter.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->postDynamicData(Ljava/lang/String;I)V
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
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;I)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$13;->this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

    iput p2, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$13;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 420
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$13;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3

    .line 424
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    .line 425
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 427
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$13;->this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

    iget v2, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$13;->val$position:I

    invoke-static {v1, v0, p1, v2}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->access$2900(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;Lorg/json/JSONObject;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 429
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
