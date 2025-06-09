.class Lcom/kugoo/kugookirin/user/EmailLoginActivity$6;
.super Ljava/lang/Object;
.source "EmailLoginActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/EmailLoginActivity;->postThirdLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$thirdId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/EmailLoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity$6;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity$6;->val$email:Ljava/lang/String;

    iput-object p3, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity$6;->val$thirdId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 539
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/EmailLoginActivity$6;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 4

    const-string v0, "result0002=="

    .line 543
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    .line 544
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "thirdLogin"

    .line 545
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "0"

    .line 547
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 548
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity$6;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 549
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity$6;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USERNAME:Ljava/lang/String;

    const-string v2, "nickName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 550
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity$6;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_PORTRAIT:Ljava/lang/String;

    const-string v2, "portraitUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 551
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity$6;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    const-string v2, "token"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 552
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity$6;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 553
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity$6;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_EMAIL:Ljava/lang/String;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity$6;->val$email:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 556
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity$6;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_THIRD_ID:Ljava/lang/String;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity$6;->val$thirdId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 557
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity$6;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->access$000(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 559
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity$6;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity$6;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    const-class v2, Lcom/kugoo/kugookirin/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 560
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity$6;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->finish()V

    goto :goto_0

    .line 562
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity$6;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    const v0, 0x7f12034b

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 566
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
