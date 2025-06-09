.class Lcom/kugoo/kugookirin/MainActivity$7;
.super Lcom/android/volley/toolbox/StringRequest;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/MainActivity;->postSignPlatform()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/MainActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/MainActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/kugoo/kugookirin/MainActivity$7;->this$0:Lcom/kugoo/kugookirin/MainActivity;

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

    .line 439
    iget-object v0, p0, Lcom/kugoo/kugookirin/MainActivity$7;->this$0:Lcom/kugoo/kugookirin/MainActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/MainActivity;->access$300(Lcom/kugoo/kugookirin/MainActivity;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
