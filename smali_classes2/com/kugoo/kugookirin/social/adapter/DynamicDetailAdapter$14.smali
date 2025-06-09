.class Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$14;
.super Ljava/lang/Object;
.source "DynamicDetailAdapter.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->postShareData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

.field final synthetic val$method:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Ljava/lang/String;)V
    .locals 0

    .line 823
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$14;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$14;->val$method:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 823
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$14;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3

    const-string v0, "result0002=="

    .line 827
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    .line 828
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "serchPost"

    .line 829
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "sharingDynamics"

    .line 831
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$14;->val$method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    .line 832
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 833
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$14;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$600(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    move-result-object p1

    const-string v0, "Y"

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->setIfShare(Ljava/lang/String;)V

    .line 834
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$14;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$600(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getShareTimes()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 835
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$14;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$600(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->setShareTimes(Ljava/lang/String;)V

    .line 836
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$14;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    const v0, 0x7f0a01ac

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 837
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$14;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$500(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120232

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 841
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
