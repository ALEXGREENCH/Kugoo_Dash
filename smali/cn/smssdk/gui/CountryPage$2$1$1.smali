.class Lcn/smssdk/gui/CountryPage$2$1$1;
.super Ljava/lang/Object;
.source "CountryPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/CountryPage$2$1;->afterEvent(IILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcn/smssdk/gui/CountryPage$2$1;

.field final synthetic val$data:Ljava/lang/Object;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcn/smssdk/gui/CountryPage$2$1;ILjava/lang/Object;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->this$2:Lcn/smssdk/gui/CountryPage$2$1;

    iput p2, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->val$result:I

    iput-object p3, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 92
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->this$2:Lcn/smssdk/gui/CountryPage$2$1;

    iget-object v0, v0, Lcn/smssdk/gui/CountryPage$2$1;->this$1:Lcn/smssdk/gui/CountryPage$2;

    iget-object v0, v0, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    invoke-static {v0}, Lcn/smssdk/gui/CountryPage;->access$500(Lcn/smssdk/gui/CountryPage;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->this$2:Lcn/smssdk/gui/CountryPage$2$1;

    iget-object v0, v0, Lcn/smssdk/gui/CountryPage$2$1;->this$1:Lcn/smssdk/gui/CountryPage$2;

    iget-object v0, v0, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    invoke-static {v0}, Lcn/smssdk/gui/CountryPage;->access$500(Lcn/smssdk/gui/CountryPage;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->this$2:Lcn/smssdk/gui/CountryPage$2$1;

    iget-object v0, v0, Lcn/smssdk/gui/CountryPage$2$1;->this$1:Lcn/smssdk/gui/CountryPage$2;

    iget-object v0, v0, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    invoke-static {v0}, Lcn/smssdk/gui/CountryPage;->access$500(Lcn/smssdk/gui/CountryPage;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 96
    :cond_0
    iget v0, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->val$result:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 97
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->this$2:Lcn/smssdk/gui/CountryPage$2$1;

    iget-object v0, v0, Lcn/smssdk/gui/CountryPage$2$1;->this$1:Lcn/smssdk/gui/CountryPage$2;

    iget-object v0, v0, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    iget-object v1, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->val$data:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcn/smssdk/gui/CountryPage;->access$600(Lcn/smssdk/gui/CountryPage;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->val$data:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->val$data:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    .line 105
    new-instance v2, Lorg/json/JSONObject;

    .line 106
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "detail"

    .line 107
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "status"

    .line 108
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 110
    iget-object v3, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->this$2:Lcn/smssdk/gui/CountryPage$2$1;

    iget-object v3, v3, Lcn/smssdk/gui/CountryPage$2$1;->this$1:Lcn/smssdk/gui/CountryPage$2;

    iget-object v3, v3, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    invoke-static {v3}, Lcn/smssdk/gui/CountryPage;->access$700(Lcn/smssdk/gui/CountryPage;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 111
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->this$2:Lcn/smssdk/gui/CountryPage$2$1;

    iget-object v1, v1, Lcn/smssdk/gui/CountryPage$2$1;->this$1:Lcn/smssdk/gui/CountryPage$2;

    iget-object v1, v1, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    invoke-virtual {v1}, Lcn/smssdk/gui/CountryPage;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move v2, v0

    .line 115
    :goto_0
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_2
    const/16 v1, 0x190

    if-lt v2, v1, :cond_3

    .line 120
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->this$2:Lcn/smssdk/gui/CountryPage$2$1;

    iget-object v1, v1, Lcn/smssdk/gui/CountryPage$2$1;->this$1:Lcn/smssdk/gui/CountryPage$2;

    iget-object v1, v1, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage;->access$800(Lcn/smssdk/gui/CountryPage;)Landroid/app/Activity;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "smssdk_error_desc_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 122
    :cond_3
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->this$2:Lcn/smssdk/gui/CountryPage$2$1;

    iget-object v1, v1, Lcn/smssdk/gui/CountryPage$2$1;->this$1:Lcn/smssdk/gui/CountryPage$2;

    iget-object v1, v1, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage;->access$900(Lcn/smssdk/gui/CountryPage;)Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "smssdk_network_error"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    :goto_1
    if-lez v1, :cond_4

    .line 127
    iget-object v2, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->this$2:Lcn/smssdk/gui/CountryPage$2$1;

    iget-object v2, v2, Lcn/smssdk/gui/CountryPage$2$1;->this$1:Lcn/smssdk/gui/CountryPage$2;

    iget-object v2, v2, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    invoke-static {v2}, Lcn/smssdk/gui/CountryPage;->access$1000(Lcn/smssdk/gui/CountryPage;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 129
    :cond_4
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->this$2:Lcn/smssdk/gui/CountryPage$2$1;

    iget-object v0, v0, Lcn/smssdk/gui/CountryPage$2$1;->this$1:Lcn/smssdk/gui/CountryPage$2;

    iget-object v0, v0, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    invoke-virtual {v0}, Lcn/smssdk/gui/CountryPage;->finish()V

    :goto_2
    return-void
.end method
