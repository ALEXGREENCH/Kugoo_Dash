.class Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$5;
.super Ljava/lang/Object;
.source "GpsInfoAdapter.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;->DeleteTrackInfo(Ljava/lang/String;Ljava/lang/String;I)V
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
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;I)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$5;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

    iput p2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 225
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$5;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "s====="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "message1010"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    .line 231
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 233
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$5;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;->access$1100(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$5;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 234
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$5;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 237
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
