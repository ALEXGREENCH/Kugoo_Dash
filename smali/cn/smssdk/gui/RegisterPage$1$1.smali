.class Lcn/smssdk/gui/RegisterPage$1$1;
.super Ljava/lang/Object;
.source "RegisterPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/RegisterPage$1;->afterEvent(IILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/smssdk/gui/RegisterPage$1;

.field final synthetic val$data:Ljava/lang/Object;

.field final synthetic val$event:I

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcn/smssdk/gui/RegisterPage$1;IILjava/lang/Object;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcn/smssdk/gui/RegisterPage$1$1;->this$1:Lcn/smssdk/gui/RegisterPage$1;

    iput p2, p0, Lcn/smssdk/gui/RegisterPage$1$1;->val$result:I

    iput p3, p0, Lcn/smssdk/gui/RegisterPage$1$1;->val$event:I

    iput-object p4, p0, Lcn/smssdk/gui/RegisterPage$1$1;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 145
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage$1$1;->this$1:Lcn/smssdk/gui/RegisterPage$1;

    iget-object v0, v0, Lcn/smssdk/gui/RegisterPage$1;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-static {v0}, Lcn/smssdk/gui/RegisterPage;->access$000(Lcn/smssdk/gui/RegisterPage;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage$1$1;->this$1:Lcn/smssdk/gui/RegisterPage$1;

    iget-object v0, v0, Lcn/smssdk/gui/RegisterPage$1;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-static {v0}, Lcn/smssdk/gui/RegisterPage;->access$000(Lcn/smssdk/gui/RegisterPage;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage$1$1;->this$1:Lcn/smssdk/gui/RegisterPage$1;

    iget-object v0, v0, Lcn/smssdk/gui/RegisterPage$1;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-static {v0}, Lcn/smssdk/gui/RegisterPage;->access$000(Lcn/smssdk/gui/RegisterPage;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 148
    :cond_0
    iget v0, p0, Lcn/smssdk/gui/RegisterPage$1$1;->val$result:I

    const/4 v1, -0x1

    const/16 v2, 0xa

    const/16 v3, 0x9

    const/4 v4, 0x2

    if-ne v0, v1, :cond_3

    .line 149
    iget v0, p0, Lcn/smssdk/gui/RegisterPage$1$1;->val$event:I

    if-ne v0, v4, :cond_1

    .line 151
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage$1$1;->val$data:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 152
    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage$1$1;->this$1:Lcn/smssdk/gui/RegisterPage$1;

    iget-object v1, v1, Lcn/smssdk/gui/RegisterPage$1;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-static {v1, v0}, Lcn/smssdk/gui/RegisterPage;->access$100(Lcn/smssdk/gui/RegisterPage;Z)V

    goto/16 :goto_1

    :cond_1
    if-ne v0, v3, :cond_2

    .line 154
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage$1$1;->this$1:Lcn/smssdk/gui/RegisterPage$1;

    iget-object v0, v0, Lcn/smssdk/gui/RegisterPage$1;->this$0:Lcn/smssdk/gui/RegisterPage;

    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage$1$1;->val$data:Ljava/lang/Object;

    check-cast v1, Lcn/smssdk/wrapper/TokenVerifyResult;

    invoke-static {v0, v1}, Lcn/smssdk/gui/RegisterPage;->access$202(Lcn/smssdk/gui/RegisterPage;Lcn/smssdk/wrapper/TokenVerifyResult;)Lcn/smssdk/wrapper/TokenVerifyResult;

    goto/16 :goto_1

    :cond_2
    if-ne v0, v2, :cond_9

    .line 156
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage$1$1;->this$1:Lcn/smssdk/gui/RegisterPage$1;

    iget-object v0, v0, Lcn/smssdk/gui/RegisterPage$1;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-static {v0}, Lcn/smssdk/gui/RegisterPage;->access$300(Lcn/smssdk/gui/RegisterPage;)V

    goto/16 :goto_1

    .line 159
    :cond_3
    iget v0, p0, Lcn/smssdk/gui/RegisterPage$1$1;->val$event:I

    if-ne v0, v4, :cond_7

    .line 160
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage$1$1;->val$data:Ljava/lang/Object;

    if-eqz v0, :cond_4

    instance-of v0, v0, Lcn/smssdk/UserInterruptException;

    if-eqz v0, :cond_4

    return-void

    .line 167
    :cond_4
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage$1$1;->this$1:Lcn/smssdk/gui/RegisterPage$1;

    iget-object v0, v0, Lcn/smssdk/gui/RegisterPage$1;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-virtual {v0}, Lcn/smssdk/gui/RegisterPage;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage$1$1;->this$1:Lcn/smssdk/gui/RegisterPage$1;

    iget-object v1, v1, Lcn/smssdk/gui/RegisterPage$1;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-virtual {v1}, Lcn/smssdk/gui/RegisterPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "smssdk_confirm"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 170
    :try_start_0
    iget-object v2, p0, Lcn/smssdk/gui/RegisterPage$1$1;->val$data:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 171
    iget-object v2, p0, Lcn/smssdk/gui/RegisterPage$1$1;->val$data:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    .line 173
    new-instance v3, Lorg/json/JSONObject;

    .line 174
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "detail"

    .line 175
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "status"

    .line 176
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 177
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 179
    new-instance v6, Lcn/smssdk/gui/RegisterPage$1$1$1;

    invoke-direct {v6, p0}, Lcn/smssdk/gui/RegisterPage$1$1$1;-><init>(Lcn/smssdk/gui/RegisterPage$1$1;)V

    .line 185
    iget-object v2, p0, Lcn/smssdk/gui/RegisterPage$1$1;->this$1:Lcn/smssdk/gui/RegisterPage$1;

    iget-object v2, v2, Lcn/smssdk/gui/RegisterPage$1;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-virtual {v2}, Lcn/smssdk/gui/RegisterPage;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v5, v0

    invoke-static/range {v2 .. v11}, Lcn/smssdk/gui/PopupDialog;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZZZ)Lcn/smssdk/gui/PopupDialog;

    move-result-object v2

    .line 186
    invoke-virtual {v2}, Lcn/smssdk/gui/PopupDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 190
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_5
    const/16 v2, 0x190

    if-lt v1, v2, :cond_6

    .line 195
    iget-object v2, p0, Lcn/smssdk/gui/RegisterPage$1$1;->this$1:Lcn/smssdk/gui/RegisterPage$1;

    iget-object v2, v2, Lcn/smssdk/gui/RegisterPage$1;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-static {v2}, Lcn/smssdk/gui/RegisterPage;->access$400(Lcn/smssdk/gui/RegisterPage;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "smssdk_error_desc_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 197
    :cond_6
    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage$1$1;->this$1:Lcn/smssdk/gui/RegisterPage$1;

    iget-object v1, v1, Lcn/smssdk/gui/RegisterPage$1;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-static {v1}, Lcn/smssdk/gui/RegisterPage;->access$500(Lcn/smssdk/gui/RegisterPage;)Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "smssdk_network_error"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    :goto_0
    if-lez v1, :cond_9

    .line 203
    new-instance v6, Lcn/smssdk/gui/RegisterPage$1$1$2;

    invoke-direct {v6, p0}, Lcn/smssdk/gui/RegisterPage$1$1$2;-><init>(Lcn/smssdk/gui/RegisterPage$1$1;)V

    .line 209
    iget-object v2, p0, Lcn/smssdk/gui/RegisterPage$1$1;->this$1:Lcn/smssdk/gui/RegisterPage$1;

    iget-object v2, v2, Lcn/smssdk/gui/RegisterPage$1;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-virtual {v2}, Lcn/smssdk/gui/RegisterPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 210
    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage$1$1;->this$1:Lcn/smssdk/gui/RegisterPage$1;

    iget-object v1, v1, Lcn/smssdk/gui/RegisterPage$1;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-virtual {v1}, Lcn/smssdk/gui/RegisterPage;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v5, v0

    invoke-static/range {v2 .. v11}, Lcn/smssdk/gui/PopupDialog;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZZZ)Lcn/smssdk/gui/PopupDialog;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lcn/smssdk/gui/PopupDialog;->show()V

    goto :goto_1

    :cond_7
    if-ne v0, v3, :cond_8

    .line 214
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage$1$1;->this$1:Lcn/smssdk/gui/RegisterPage$1;

    iget-object v0, v0, Lcn/smssdk/gui/RegisterPage$1;->this$0:Lcn/smssdk/gui/RegisterPage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/smssdk/gui/RegisterPage;->access$202(Lcn/smssdk/gui/RegisterPage;Lcn/smssdk/wrapper/TokenVerifyResult;)Lcn/smssdk/wrapper/TokenVerifyResult;

    goto :goto_1

    :cond_8
    if-ne v0, v2, :cond_9

    .line 216
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage$1$1;->this$1:Lcn/smssdk/gui/RegisterPage$1;

    iget-object v0, v0, Lcn/smssdk/gui/RegisterPage$1;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-static {v0}, Lcn/smssdk/gui/RegisterPage;->access$600(Lcn/smssdk/gui/RegisterPage;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s*"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage$1$1;->this$1:Lcn/smssdk/gui/RegisterPage$1;

    iget-object v1, v1, Lcn/smssdk/gui/RegisterPage$1;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-static {v1}, Lcn/smssdk/gui/RegisterPage;->access$700(Lcn/smssdk/gui/RegisterPage;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 218
    iget-object v2, p0, Lcn/smssdk/gui/RegisterPage$1$1;->this$1:Lcn/smssdk/gui/RegisterPage$1;

    iget-object v2, v2, Lcn/smssdk/gui/RegisterPage$1;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-virtual {v2, v0, v1}, Lcn/smssdk/gui/RegisterPage;->confirmSend(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_1
    return-void
.end method
