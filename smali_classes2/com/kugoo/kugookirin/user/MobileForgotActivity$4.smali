.class Lcom/kugoo/kugookirin/user/MobileForgotActivity$4;
.super Landroid/os/Handler;
.source "MobileForgotActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/user/MobileForgotActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/MobileForgotActivity;Landroid/os/Looper;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$4;->this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 255
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 256
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 257
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$4;->this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->access$000(Lcom/kugoo/kugookirin/user/MobileForgotActivity;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 258
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$4;->this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->access$010(Lcom/kugoo/kugookirin/user/MobileForgotActivity;)I

    .line 259
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$4;->this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->btnCode:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$4;->this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->access$000(Lcom/kugoo/kugookirin/user/MobileForgotActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$4;->this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->mhandler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 262
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$4;->this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->btnCode:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 263
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$4;->this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    const/16 v0, 0x3c

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->access$002(Lcom/kugoo/kugookirin/user/MobileForgotActivity;I)I

    .line 264
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$4;->this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->btnCode:Landroid/widget/TextView;

    const v0, 0x7f12011c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 265
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$4;->this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    invoke-static {p1, v1}, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->access$102(Lcom/kugoo/kugookirin/user/MobileForgotActivity;Z)Z

    .line 266
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$4;->this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->mhandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 269
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 270
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 271
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, -0x1

    if-ne v2, p1, :cond_3

    const/4 p1, 0x3

    if-ne v0, p1, :cond_2

    .line 275
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$4;->this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->access$200(Lcom/kugoo/kugookirin/user/MobileForgotActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$4;->this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->access$300(Lcom/kugoo/kugookirin/user/MobileForgotActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->access$400(Lcom/kugoo/kugookirin/user/MobileForgotActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    if-ne v0, p1, :cond_4

    .line 277
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$4;->this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    const v0, 0x7f120219

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    .line 280
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$4;->this$0:Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    const v0, 0x7f12009b

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_0
    return-void
.end method
