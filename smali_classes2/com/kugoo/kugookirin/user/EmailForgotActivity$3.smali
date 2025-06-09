.class Lcom/kugoo/kugookirin/user/EmailForgotActivity$3;
.super Lcom/android/volley/toolbox/StringRequest;
.source "EmailForgotActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/EmailForgotActivity;->postForgot(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/EmailForgotActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/EmailForgotActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/EmailForgotActivity$3;->this$0:Lcom/kugoo/kugookirin/user/EmailForgotActivity;

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

    .line 136
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/EmailForgotActivity$3;->this$0:Lcom/kugoo/kugookirin/user/EmailForgotActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/EmailForgotActivity;->access$100(Lcom/kugoo/kugookirin/user/EmailForgotActivity;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
