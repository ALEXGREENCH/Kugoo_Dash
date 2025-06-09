.class Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$15;
.super Lcom/android/volley/toolbox/StringRequest;
.source "HomePagePostsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->postDynamicData(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

.field final synthetic val$map:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$15;->this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

    iput-object p6, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$15;->val$map:Ljava/util/HashMap;

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

    .line 440
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$15;->val$map:Ljava/util/HashMap;

    return-object v0
.end method
