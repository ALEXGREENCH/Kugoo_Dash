.class Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$6;
.super Ljava/lang/Object;
.source "VehicleListAdapter.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->delVehicleInfo(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$6;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 259
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$6;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3

    const-string v0, "stringRequest_s="

    .line 262
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    .line 265
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const-string v2, "result"

    if-eqz p1, :cond_0

    .line 267
    :try_start_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$6;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->access$900(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 269
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$6;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->access$900(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 271
    :goto_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$6;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 273
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method
