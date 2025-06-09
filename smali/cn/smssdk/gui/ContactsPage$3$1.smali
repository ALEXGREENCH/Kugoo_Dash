.class Lcn/smssdk/gui/ContactsPage$3$1;
.super Ljava/lang/Object;
.source "ContactsPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/ContactsPage$3;->afterEvent(IILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/smssdk/gui/ContactsPage$3;

.field final synthetic val$data:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/ContactsPage$3;Ljava/lang/Object;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcn/smssdk/gui/ContactsPage$3$1;->this$1:Lcn/smssdk/gui/ContactsPage$3;

    iput-object p2, p0, Lcn/smssdk/gui/ContactsPage$3$1;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 162
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage$3$1;->this$1:Lcn/smssdk/gui/ContactsPage$3;

    iget-object v0, v0, Lcn/smssdk/gui/ContactsPage$3;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsPage;->access$900(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage$3$1;->this$1:Lcn/smssdk/gui/ContactsPage$3;

    iget-object v0, v0, Lcn/smssdk/gui/ContactsPage$3;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsPage;->access$900(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage$3$1;->this$1:Lcn/smssdk/gui/ContactsPage$3;

    iget-object v0, v0, Lcn/smssdk/gui/ContactsPage$3;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsPage;->access$900(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage$3$1;->val$data:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 170
    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage$3$1;->val$data:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    .line 172
    new-instance v2, Lorg/json/JSONObject;

    .line 173
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "detail"

    .line 174
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "status"

    .line 175
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 176
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    iget-object v2, p0, Lcn/smssdk/gui/ContactsPage$3$1;->this$1:Lcn/smssdk/gui/ContactsPage$3;

    iget-object v2, v2, Lcn/smssdk/gui/ContactsPage$3;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v2}, Lcn/smssdk/gui/ContactsPage;->access$1000(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 189
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 192
    :cond_1
    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage$3$1;->this$1:Lcn/smssdk/gui/ContactsPage$3;

    iget-object v1, v1, Lcn/smssdk/gui/ContactsPage$3;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v1}, Lcn/smssdk/gui/ContactsPage;->access$1100(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "smssdk_network_error"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    .line 194
    iget-object v2, p0, Lcn/smssdk/gui/ContactsPage$3$1;->this$1:Lcn/smssdk/gui/ContactsPage$3;

    iget-object v2, v2, Lcn/smssdk/gui/ContactsPage$3;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v2}, Lcn/smssdk/gui/ContactsPage;->access$1200(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 198
    :cond_2
    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage$3$1;->this$1:Lcn/smssdk/gui/ContactsPage$3;

    iget-object v1, v1, Lcn/smssdk/gui/ContactsPage$3;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v1}, Lcn/smssdk/gui/ContactsPage;->access$1300(Lcn/smssdk/gui/ContactsPage;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
