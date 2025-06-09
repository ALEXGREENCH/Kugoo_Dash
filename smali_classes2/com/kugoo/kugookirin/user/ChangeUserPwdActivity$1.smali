.class Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity$1;
.super Lrx/Subscriber;
.source "ChangeUserPwdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->changUserPwd(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lcom/kugoo/kugookirin/bean/ResultResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity$1;->this$0:Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 104
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity$1;->this$0:Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;

    const v0, 0x7f1201c4

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onNext(Lcom/kugoo/kugookirin/bean/ResultResponse;)V
    .locals 2

    .line 109
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/ResultResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity$1;->this$0:Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;

    const v0, 0x7f1201c4

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity$1;->this$0:Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;

    const v0, 0x7f1201bc

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 111
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity$1;->this$0:Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;

    const v0, 0x7f1201c5

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 112
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity$1;->this$0:Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->access$000(Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;)V

    .line 113
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity$1;->this$0:Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;

    const-class v1, Lcom/kugoo/kugookirin/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    .line 114
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity$1;->this$0:Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 96
    check-cast p1, Lcom/kugoo/kugookirin/bean/ResultResponse;

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity$1;->onNext(Lcom/kugoo/kugookirin/bean/ResultResponse;)V

    return-void
.end method
