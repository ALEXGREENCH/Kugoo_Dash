.class Lcn/smssdk/gui/AvatarPage$1;
.super Lcn/smssdk/EventHandler;
.source "AvatarPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/AvatarPage;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/AvatarPage;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/AvatarPage;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcn/smssdk/gui/AvatarPage$1;->this$0:Lcn/smssdk/gui/AvatarPage;

    invoke-direct {p0}, Lcn/smssdk/EventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public afterEvent(IILjava/lang/Object;)V
    .locals 2

    .line 60
    invoke-super {p0, p1, p2, p3}, Lcn/smssdk/EventHandler;->afterEvent(IILjava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcn/smssdk/gui/AvatarPage$1;->this$0:Lcn/smssdk/gui/AvatarPage;

    invoke-static {v0}, Lcn/smssdk/gui/AvatarPage;->access$000(Lcn/smssdk/gui/AvatarPage;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/smssdk/gui/AvatarPage$1;->this$0:Lcn/smssdk/gui/AvatarPage;

    invoke-static {v0}, Lcn/smssdk/gui/AvatarPage;->access$000(Lcn/smssdk/gui/AvatarPage;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcn/smssdk/gui/AvatarPage$1;->this$0:Lcn/smssdk/gui/AvatarPage;

    invoke-static {v0}, Lcn/smssdk/gui/AvatarPage;->access$000(Lcn/smssdk/gui/AvatarPage;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x5

    if-ne p2, v0, :cond_1

    if-ne p1, v1, :cond_2

    .line 69
    iget-object p1, p0, Lcn/smssdk/gui/AvatarPage$1;->this$0:Lcn/smssdk/gui/AvatarPage;

    invoke-static {p1}, Lcn/smssdk/gui/AvatarPage;->access$100(Lcn/smssdk/gui/AvatarPage;)Lcn/smssdk/gui/entity/Profile;

    move-result-object p1

    invoke-static {p1}, Lcn/smssdk/gui/util/GUISPDB;->setProfile(Lcn/smssdk/gui/entity/Profile;)V

    .line 71
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 p2, 0x1

    .line 72
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string/jumbo p3, "res"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object p2, p0, Lcn/smssdk/gui/AvatarPage$1;->this$0:Lcn/smssdk/gui/AvatarPage;

    invoke-virtual {p2, p1}, Lcn/smssdk/gui/AvatarPage;->setResult(Ljava/util/HashMap;)V

    .line 74
    iget-object p1, p0, Lcn/smssdk/gui/AvatarPage$1;->this$0:Lcn/smssdk/gui/AvatarPage;

    invoke-virtual {p1}, Lcn/smssdk/gui/AvatarPage;->finish()V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 80
    :try_start_0
    move-object p1, p3

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    check-cast p3, Ljava/lang/Throwable;

    .line 83
    new-instance p1, Lorg/json/JSONObject;

    .line 84
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "detail"

    .line 85
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "status"

    .line 86
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 87
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 88
    iget-object p1, p0, Lcn/smssdk/gui/AvatarPage$1;->this$0:Lcn/smssdk/gui/AvatarPage;

    invoke-static {p1}, Lcn/smssdk/gui/AvatarPage;->access$200(Lcn/smssdk/gui/AvatarPage;)Landroid/app/Activity;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 92
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method
