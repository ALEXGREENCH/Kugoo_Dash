.class Lcom/kugoo/kugookirin/user/MobileForgotActivity$5;
.super Ljava/lang/Object;
.source "MobileForgotActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/MobileForgotActivity;->postChangePwd(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

.field final synthetic val$newPassword:Ljava/lang/String;

.field final synthetic val$phone:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/MobileForgotActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$5;->this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$5;->val$phone:Ljava/lang/String;

    iput-object p3, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$5;->val$newPassword:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 301
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/MobileForgotActivity$5;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3

    const-string v0, "stringRequest_s="

    .line 304
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    .line 307
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

    .line 308
    :try_start_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$5;->this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 309
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$5;->this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->access$500(Lcom/kugoo/kugookirin/user/MobileForgotActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PHONE_NUMBER:Ljava/lang/String;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$5;->val$phone:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 310
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$5;->this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->access$500(Lcom/kugoo/kugookirin/user/MobileForgotActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PASSWORD:Ljava/lang/String;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$5;->val$newPassword:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 311
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$5;->this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->access$500(Lcom/kugoo/kugookirin/user/MobileForgotActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 312
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$5;->this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->finish()V

    goto :goto_0

    .line 314
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$5;->this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 318
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
