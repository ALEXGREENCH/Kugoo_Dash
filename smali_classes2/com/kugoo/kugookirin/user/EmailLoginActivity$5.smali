.class Lcom/kugoo/kugookirin/user/EmailLoginActivity$5;
.super Lcom/android/volley/toolbox/StringRequest;
.source "EmailLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/EmailLoginActivity;->postLogin(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

.field final synthetic val$mapLogin:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/EmailLoginActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity$5;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    iput-object p6, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity$5;->val$mapLogin:Ljava/util/Map;

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

    .line 457
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity$5;->val$mapLogin:Ljava/util/Map;

    return-object v0
.end method
