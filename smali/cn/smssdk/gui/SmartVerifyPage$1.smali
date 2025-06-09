.class Lcn/smssdk/gui/SmartVerifyPage$1;
.super Ljava/lang/Object;
.source "SmartVerifyPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/SmartVerifyPage;->countDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/SmartVerifyPage;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/SmartVerifyPage;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcn/smssdk/gui/SmartVerifyPage$1;->this$0:Lcn/smssdk/gui/SmartVerifyPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage$1;->this$0:Lcn/smssdk/gui/SmartVerifyPage;

    invoke-static {v0}, Lcn/smssdk/gui/SmartVerifyPage;->access$010(Lcn/smssdk/gui/SmartVerifyPage;)I

    .line 97
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage$1;->this$0:Lcn/smssdk/gui/SmartVerifyPage;

    invoke-static {v0}, Lcn/smssdk/gui/SmartVerifyPage;->access$000(Lcn/smssdk/gui/SmartVerifyPage;)I

    move-result v0

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_1

    .line 98
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage$1;->this$0:Lcn/smssdk/gui/SmartVerifyPage;

    invoke-static {v0}, Lcn/smssdk/gui/SmartVerifyPage;->access$100(Lcn/smssdk/gui/SmartVerifyPage;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage$1;->this$0:Lcn/smssdk/gui/SmartVerifyPage;

    invoke-static {v0}, Lcn/smssdk/gui/SmartVerifyPage;->access$200(Lcn/smssdk/gui/SmartVerifyPage;)Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v2, "smssdk_btn_enable"

    invoke-static {v0, v2}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 101
    iget-object v2, p0, Lcn/smssdk/gui/SmartVerifyPage$1;->this$0:Lcn/smssdk/gui/SmartVerifyPage;

    invoke-static {v2}, Lcn/smssdk/gui/SmartVerifyPage;->access$100(Lcn/smssdk/gui/SmartVerifyPage;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage$1;->this$0:Lcn/smssdk/gui/SmartVerifyPage;

    invoke-static {v0}, Lcn/smssdk/gui/SmartVerifyPage;->access$300(Lcn/smssdk/gui/SmartVerifyPage;)Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v2, "smssdk_smart_verify_already"

    invoke-static {v0, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 104
    iget-object v2, p0, Lcn/smssdk/gui/SmartVerifyPage$1;->this$0:Lcn/smssdk/gui/SmartVerifyPage;

    invoke-static {v2}, Lcn/smssdk/gui/SmartVerifyPage;->access$400(Lcn/smssdk/gui/SmartVerifyPage;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(I)V

    .line 105
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage$1;->this$0:Lcn/smssdk/gui/SmartVerifyPage;

    invoke-static {v0}, Lcn/smssdk/gui/SmartVerifyPage;->access$400(Lcn/smssdk/gui/SmartVerifyPage;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage$1;->this$0:Lcn/smssdk/gui/SmartVerifyPage;

    invoke-static {v0}, Lcn/smssdk/gui/SmartVerifyPage;->access$500(Lcn/smssdk/gui/SmartVerifyPage;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage$1;->this$0:Lcn/smssdk/gui/SmartVerifyPage;

    invoke-static {v0}, Lcn/smssdk/gui/SmartVerifyPage;->access$600(Lcn/smssdk/gui/SmartVerifyPage;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage$1;->this$0:Lcn/smssdk/gui/SmartVerifyPage;

    invoke-static {v0}, Lcn/smssdk/gui/SmartVerifyPage;->access$700(Lcn/smssdk/gui/SmartVerifyPage;)Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v2, "smssdk_smart_verify_tips"

    invoke-static {v0, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 111
    iget-object v2, p0, Lcn/smssdk/gui/SmartVerifyPage$1;->this$0:Lcn/smssdk/gui/SmartVerifyPage;

    invoke-static {v2}, Lcn/smssdk/gui/SmartVerifyPage;->access$800(Lcn/smssdk/gui/SmartVerifyPage;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 113
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage$1;->this$0:Lcn/smssdk/gui/SmartVerifyPage;

    invoke-static {v0, v1}, Lcn/smssdk/gui/SmartVerifyPage;->access$902(Lcn/smssdk/gui/SmartVerifyPage;Z)Z

    .line 114
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage$1;->this$0:Lcn/smssdk/gui/SmartVerifyPage;

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcn/smssdk/gui/SmartVerifyPage;->access$002(Lcn/smssdk/gui/SmartVerifyPage;I)I

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage$1;->this$0:Lcn/smssdk/gui/SmartVerifyPage;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Lcn/smssdk/gui/SmartVerifyPage;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method
