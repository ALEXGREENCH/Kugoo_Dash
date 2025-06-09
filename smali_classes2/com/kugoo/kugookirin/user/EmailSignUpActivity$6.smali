.class Lcom/kugoo/kugookirin/user/EmailSignUpActivity$6;
.super Ljava/lang/Object;
.source "EmailSignUpActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getVerifyCode(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/EmailSignUpActivity;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$6;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "verifyCode002=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "verifyCode0001"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
