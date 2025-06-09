.class Lcn/smssdk/gui/RegisterPage$3;
.super Ljava/lang/Object;
.source "RegisterPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/RegisterPage;->confirmSend(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/RegisterPage;

.field final synthetic val$code:Ljava/lang/String;

.field final synthetic val$phone:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/RegisterPage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcn/smssdk/gui/RegisterPage$3;->this$0:Lcn/smssdk/gui/RegisterPage;

    iput-object p2, p0, Lcn/smssdk/gui/RegisterPage$3;->val$phone:Ljava/lang/String;

    iput-object p3, p0, Lcn/smssdk/gui/RegisterPage$3;->val$code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 408
    iget-object p1, p0, Lcn/smssdk/gui/RegisterPage$3;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-static {p1}, Lcn/smssdk/gui/RegisterPage;->access$000(Lcn/smssdk/gui/RegisterPage;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/smssdk/gui/RegisterPage$3;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-static {p1}, Lcn/smssdk/gui/RegisterPage;->access$000(Lcn/smssdk/gui/RegisterPage;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 409
    iget-object p1, p0, Lcn/smssdk/gui/RegisterPage$3;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-static {p1}, Lcn/smssdk/gui/RegisterPage;->access$000(Lcn/smssdk/gui/RegisterPage;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 411
    :cond_0
    iget-object p1, p0, Lcn/smssdk/gui/RegisterPage$3;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-static {p1}, Lcn/smssdk/gui/RegisterPage;->access$800(Lcn/smssdk/gui/RegisterPage;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/smssdk/gui/CommonDialog;->ProgressDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/smssdk/gui/RegisterPage;->access$002(Lcn/smssdk/gui/RegisterPage;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 412
    iget-object p1, p0, Lcn/smssdk/gui/RegisterPage$3;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-static {p1}, Lcn/smssdk/gui/RegisterPage;->access$000(Lcn/smssdk/gui/RegisterPage;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 413
    iget-object p1, p0, Lcn/smssdk/gui/RegisterPage$3;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-static {p1}, Lcn/smssdk/gui/RegisterPage;->access$000(Lcn/smssdk/gui/RegisterPage;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 416
    :cond_1
    iget-object p1, p0, Lcn/smssdk/gui/RegisterPage$3;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-static {p1}, Lcn/smssdk/gui/RegisterPage;->access$900(Lcn/smssdk/gui/RegisterPage;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 417
    iget-object p1, p0, Lcn/smssdk/gui/RegisterPage$3;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-static {}, Lcn/smssdk/gui/util/GUISPDB;->getTempCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/smssdk/gui/RegisterPage;->access$902(Lcn/smssdk/gui/RegisterPage;Ljava/lang/String;)Ljava/lang/String;

    .line 419
    :cond_2
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "verification phone ==>>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage$3;->val$phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/String;)I

    .line 420
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "verification tempCode ==>>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage$3;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-static {v1}, Lcn/smssdk/gui/RegisterPage;->access$900(Lcn/smssdk/gui/RegisterPage;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/String;)I

    .line 421
    iget-object p1, p0, Lcn/smssdk/gui/RegisterPage$3;->val$code:Ljava/lang/String;

    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage$3;->val$phone:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage$3;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-static {v1}, Lcn/smssdk/gui/RegisterPage;->access$900(Lcn/smssdk/gui/RegisterPage;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/smssdk/gui/RegisterPage$3;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-static {v2}, Lcn/smssdk/gui/RegisterPage;->access$1000(Lcn/smssdk/gui/RegisterPage;)Lcn/smssdk/OnSendMessageHandler;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcn/smssdk/SMSSDK;->getVerificationCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/smssdk/OnSendMessageHandler;)V

    return-void
.end method
