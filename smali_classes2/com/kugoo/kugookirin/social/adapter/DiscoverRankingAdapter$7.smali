.class Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$7;
.super Ljava/lang/Object;
.source "DiscoverRankingAdapter.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->followUser(Ljava/lang/String;I)V
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
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;I)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    iput p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$7;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 250
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$7;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 2

    .line 254
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    .line 255
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    .line 256
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "2"

    .line 264
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 265
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->access$400(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->DISCOVER_RAKING_ODO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "N"

    if-eqz p1, :cond_1

    .line 266
    :try_start_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->access$500(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget v1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$7;->val$position:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$OdoRankingBean;

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$OdoRankingBean;->setFollow(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 267
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->access$400(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->DISCOVER_RAKING_SOCIAL:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 268
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->access$500(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget v1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$7;->val$position:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;->setFollow(Ljava/lang/String;)V

    .line 269
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->access$500(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$7;->val$position:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;->getFollowers()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 270
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->access$500(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$7;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;->setFollowers(Ljava/lang/String;)V

    goto :goto_1

    .line 257
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->access$400(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->DISCOVER_RAKING_ODO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "Y"

    if-eqz p1, :cond_3

    .line 258
    :try_start_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->access$500(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget v1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$7;->val$position:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$OdoRankingBean;

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$OdoRankingBean;->setFollow(Ljava/lang/String;)V

    goto :goto_1

    .line 259
    :cond_3
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->access$400(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->DISCOVER_RAKING_SOCIAL:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 260
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->access$500(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget v1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$7;->val$position:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;->setFollow(Ljava/lang/String;)V

    .line 261
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->access$500(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$7;->val$position:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;->getFollowers()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 262
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->access$500(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$7;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;->setFollowers(Ljava/lang/String;)V

    .line 273
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    iget v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$7;->val$position:I

    const v1, 0x7f0a047a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->notifyItemChanged(ILjava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 275
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-void
.end method
