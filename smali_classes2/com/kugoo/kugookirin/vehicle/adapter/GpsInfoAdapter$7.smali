.class Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$7;
.super Lcom/android/volley/toolbox/StringRequest;
.source "GpsInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;->DeleteTrackInfo(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

.field final synthetic val$mHashMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$7;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

    iput-object p6, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$7;->val$mHashMap:Ljava/util/HashMap;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$7;->val$mHashMap:Ljava/util/HashMap;

    return-object v0
.end method
