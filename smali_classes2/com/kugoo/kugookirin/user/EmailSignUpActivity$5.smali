.class Lcom/kugoo/kugookirin/user/EmailSignUpActivity$5;
.super Ljava/lang/Object;
.source "EmailSignUpActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getVerifyCode(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/EmailSignUpActivity;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$5;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 327
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$5;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 5

    const-string v0, "verifyCode0001"

    const-string v1, "verifyCode=="

    const-string v2, "s=="

    .line 332
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    .line 334
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "0"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const-string v4, "result"

    if-eqz p1, :cond_0

    .line 335
    :try_start_1
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 336
    iget-object v2, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$5;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    const-string v4, "code"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->access$502(Lcom/kugoo/kugookirin/user/EmailSignUpActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 337
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$5;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    const v2, 0x7f12011e

    invoke-virtual {p1, v2}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 338
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$5;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->access$500(Lcom/kugoo/kugookirin/user/EmailSignUpActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 340
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$5;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    const/16 v0, 0x258

    iput v0, p1, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->countDown:I

    .line 341
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$5;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->access$000(Lcom/kugoo/kugookirin/user/EmailSignUpActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 342
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$5;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getVerifyTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$5;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    const v1, 0x7f06020f

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 343
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$5;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getVerifyTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$5;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    const v1, 0x7f1203b3

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$5;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    .line 345
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 345
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 348
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
