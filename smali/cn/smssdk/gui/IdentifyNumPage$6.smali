.class Lcn/smssdk/gui/IdentifyNumPage$6;
.super Ljava/lang/Object;
.source "IdentifyNumPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/IdentifyNumPage;->afterSubmit(ILjava/lang/Object;)V
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

    .line 319
    iput-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage$6;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    iput p2, p0, Lcn/smssdk/gui/IdentifyNumPage$6;->val$result:I

    iput-object p3, p0, Lcn/smssdk/gui/IdentifyNumPage$6;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const-string/jumbo v0, "smssdk_error_detail_"

    .line 321
    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage$6;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v1}, Lcn/smssdk/gui/IdentifyNumPage;->access$700(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage$6;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v1}, Lcn/smssdk/gui/IdentifyNumPage;->access$700(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage$6;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v1}, Lcn/smssdk/gui/IdentifyNumPage;->access$700(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 325
    :cond_0
    iget v1, p0, Lcn/smssdk/gui/IdentifyNumPage$6;->val$result:I

    const/4 v2, -0x1

    const-string/jumbo v3, "smssdk_confirm"

    if-ne v1, v2, :cond_1

    .line 327
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$6;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v0}, Lcn/smssdk/gui/IdentifyNumPage;->access$1100(Lcn/smssdk/gui/IdentifyNumPage;)V

    .line 329
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$6;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-virtual {v0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage$6;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-virtual {v1}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "smssdk_identify_success"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 330
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$6;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-virtual {v0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage$6;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-virtual {v1}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 331
    new-instance v8, Lcn/smssdk/gui/IdentifyNumPage$6$1;

    invoke-direct {v8, p0}, Lcn/smssdk/gui/IdentifyNumPage$6$1;-><init>(Lcn/smssdk/gui/IdentifyNumPage$6;)V

    .line 342
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$6;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-virtual {v0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v4 .. v13}, Lcn/smssdk/gui/PopupDialog;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZZZ)Lcn/smssdk/gui/PopupDialog;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Lcn/smssdk/gui/PopupDialog;->show()V

    goto/16 :goto_1

    .line 345
    :cond_1
    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage$6;->val$data:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 347
    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage$6;->val$data:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 350
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "status"

    .line 351
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 352
    iget-object v2, p0, Lcn/smssdk/gui/IdentifyNumPage$6;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v2}, Lcn/smssdk/gui/IdentifyNumPage;->access$1200(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 355
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 358
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$6;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v0}, Lcn/smssdk/gui/IdentifyNumPage;->access$1300(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "smssdk_virificaition_code_wrong"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    .line 362
    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage$6;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-virtual {v1}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 363
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$6;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-virtual {v0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage$6;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-virtual {v1}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 364
    new-instance v8, Lcn/smssdk/gui/IdentifyNumPage$6$2;

    invoke-direct {v8, p0}, Lcn/smssdk/gui/IdentifyNumPage$6$2;-><init>(Lcn/smssdk/gui/IdentifyNumPage$6;)V

    .line 370
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$6;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-virtual {v0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static/range {v4 .. v13}, Lcn/smssdk/gui/PopupDialog;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZZZ)Lcn/smssdk/gui/PopupDialog;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Lcn/smssdk/gui/PopupDialog;->show()V

    :cond_3
    :goto_1
    return-void
.end method
