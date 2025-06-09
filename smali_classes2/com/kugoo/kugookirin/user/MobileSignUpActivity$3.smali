.class Lcom/kugoo/kugookirin/user/MobileSignUpActivity$3;
.super Ljava/lang/Object;
.source "MobileSignUpActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->postSignUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/MobileSignUpActivity;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$phone:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/MobileSignUpActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileSignUpActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$3;->val$phone:Ljava/lang/String;

    iput-object p3, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$3;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 208
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$3;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3

    const-string v0, "status"

    .line 212
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 214
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileSignUpActivity;

    const-string v0, "result"

    .line 215
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 215
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 216
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileSignUpActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->access$600(Lcom/kugoo/kugookirin/user/MobileSignUpActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PHONE_NUMBER:Ljava/lang/String;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$3;->val$phone:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 217
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileSignUpActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->access$600(Lcom/kugoo/kugookirin/user/MobileSignUpActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PASSWORD:Ljava/lang/String;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$3;->val$password:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 218
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileSignUpActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileSignUpActivity;

    const-class v2, Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->startActivity(Landroid/content/Intent;)V

    .line 219
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileSignUpActivity;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->finish()V

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 222
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileSignUpActivity;

    const v0, 0x7f1201d8

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 224
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$3;->this$0:Lcom/kugoo/kugookirin/user/MobileSignUpActivity;

    const v0, 0x7f1201f3

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 228
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
