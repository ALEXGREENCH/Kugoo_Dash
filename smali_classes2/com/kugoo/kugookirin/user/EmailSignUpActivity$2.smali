.class Lcom/kugoo/kugookirin/user/EmailSignUpActivity$2;
.super Ljava/lang/Object;
.source "EmailSignUpActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->postSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

.field final synthetic val$email:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/EmailSignUpActivity;Ljava/lang/String;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$2;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$2;->val$email:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 272
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$2;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3

    const-string v0, "status"

    .line 276
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const-string p1, "testAllMsg"

    .line 278
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$2;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    const-string v0, "result"

    .line 280
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 280
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 281
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$2;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->access$200(Lcom/kugoo/kugookirin/user/EmailSignUpActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_EMAIL:Ljava/lang/String;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$2;->val$email:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 282
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$2;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->access$200(Lcom/kugoo/kugookirin/user/EmailSignUpActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PASSWORD:Ljava/lang/String;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$2;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->access$300(Lcom/kugoo/kugookirin/user/EmailSignUpActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 283
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$2;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->access$200(Lcom/kugoo/kugookirin/user/EmailSignUpActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 284
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$2;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$2;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    const-class v2, Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->startActivity(Landroid/content/Intent;)V

    .line 285
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$2;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->finish()V

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 288
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$2;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    const v0, 0x7f1200ba

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 290
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$2;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    const v0, 0x7f1201f3

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 294
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
