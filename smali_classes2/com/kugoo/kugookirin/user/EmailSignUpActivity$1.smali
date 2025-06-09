.class Lcom/kugoo/kugookirin/user/EmailSignUpActivity$1;
.super Landroid/os/Handler;
.source "EmailSignUpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/user/EmailSignUpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/EmailSignUpActivity;Landroid/os/Looper;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$1;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 225
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 226
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 228
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$1;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    iget p1, p1, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->countDown:I

    if-nez p1, :cond_1

    .line 230
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$1;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->access$000(Lcom/kugoo/kugookirin/user/EmailSignUpActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 231
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$1;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    const/16 v0, 0x258

    iput v0, p1, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->countDown:I

    .line 232
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$1;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getVerifyTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$1;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    const v1, 0x7f120347

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$1;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getVerifyTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$1;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    const v1, 0x7f06020f

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 234
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$1;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    const v0, 0x7f120349

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 238
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$1;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    iget v1, p1, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->countDown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->countDown:I

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "countDown=="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$1;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    iget v1, v1, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->countDown:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "verifyCode0001"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$1;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->access$100(Lcom/kugoo/kugookirin/user/EmailSignUpActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 242
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$1;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    iget p1, p1, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->countDown:I

    const/16 v1, 0xb4

    if-le p1, v1, :cond_2

    .line 243
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$1;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getVerifyTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$1;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    const v2, 0x7f0600c5

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$1;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getVerifyTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$1;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    iget v2, v2, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->countDown:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/kugoo/kugookirin/utils/ChangeToHour;->SecondToMin(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$1;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    const v3, 0x7f120346

    invoke-virtual {v2, v3}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 246
    :cond_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$1;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getVerifyTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$1;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    const v2, 0x7f0602c2

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$1;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getVerifyTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$1;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    iget v2, v2, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->countDown:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$1;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    const v3, 0x7f120348

    invoke-virtual {v2, v3}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$1;->this$0:Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->access$000(Lcom/kugoo/kugookirin/user/EmailSignUpActivity;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void
.end method
