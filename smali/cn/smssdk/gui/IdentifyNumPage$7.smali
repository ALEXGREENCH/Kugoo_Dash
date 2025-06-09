.class Lcn/smssdk/gui/IdentifyNumPage$7;
.super Ljava/lang/Object;
.source "IdentifyNumPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/IdentifyNumPage;->afterGet(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/IdentifyNumPage;

.field final synthetic val$data:Ljava/lang/Object;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcn/smssdk/gui/IdentifyNumPage;ILjava/lang/Object;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage$7;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    iput p2, p0, Lcn/smssdk/gui/IdentifyNumPage$7;->val$result:I

    iput-object p3, p0, Lcn/smssdk/gui/IdentifyNumPage$7;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 387
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$7;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v0}, Lcn/smssdk/gui/IdentifyNumPage;->access$700(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$7;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v0}, Lcn/smssdk/gui/IdentifyNumPage;->access$700(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$7;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v0}, Lcn/smssdk/gui/IdentifyNumPage;->access$700(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 391
    :cond_0
    iget v0, p0, Lcn/smssdk/gui/IdentifyNumPage$7;->val$result:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 392
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$7;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v0}, Lcn/smssdk/gui/IdentifyNumPage;->access$1400(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "smssdk_virificaition_code_sent"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 395
    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage$7;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v1}, Lcn/smssdk/gui/IdentifyNumPage;->access$1500(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 397
    :cond_1
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$7;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcn/smssdk/gui/IdentifyNumPage;->access$402(Lcn/smssdk/gui/IdentifyNumPage;I)I

    .line 398
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$7;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v0}, Lcn/smssdk/gui/IdentifyNumPage;->access$1600(Lcn/smssdk/gui/IdentifyNumPage;)V

    goto/16 :goto_2

    .line 400
    :cond_2
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$7;->val$data:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 401
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$7;->val$data:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    .line 405
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "detail"

    .line 406
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "status"

    .line 407
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 408
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 409
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage$7;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v3}, Lcn/smssdk/gui/IdentifyNumPage;->access$1700(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move v1, v2

    .line 413
    :goto_0
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_3
    const/16 v0, 0x190

    if-lt v1, v0, :cond_4

    .line 418
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$7;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v0}, Lcn/smssdk/gui/IdentifyNumPage;->access$1800(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "smssdk_error_desc_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 420
    :cond_4
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$7;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v0}, Lcn/smssdk/gui/IdentifyNumPage;->access$1900(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "smssdk_network_error"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    :goto_1
    if-lez v0, :cond_5

    .line 424
    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage$7;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v1}, Lcn/smssdk/gui/IdentifyNumPage;->access$2000(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_5
    :goto_2
    return-void
.end method
