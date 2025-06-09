.class public Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ChangeUserPwdActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;

.field private view7f0a0550:Landroid/view/View;

.field private view7f0a05a2:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;)V
    .locals 1

    .line 24
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;Landroid/view/View;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;

    const-string v0, "field \'topBackTitle\'"

    .line 32
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05a3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->topBackTitle:Landroid/widget/TextView;

    const-string v0, "field \'oldPwdEt\'"

    .line 33
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a041b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->oldPwdEt:Landroid/widget/TextView;

    const-string v0, "field \'newPwdEt\'"

    .line 34
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a03ed

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->newPwdEt:Landroid/widget/TextView;

    const-string v0, "field \'confirmPwdEt\'"

    .line 35
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0144

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->confirmPwdEt:Landroid/widget/TextView;

    const v0, 0x7f0a05a2

    const-string v1, "method \'onClick\'"

    .line 36
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    .line 38
    new-instance v2, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity_ViewBinding$1;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity_ViewBinding;Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0550

    .line 44
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 45
    iput-object p2, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity_ViewBinding;->view7f0a0550:Landroid/view/View;

    .line 46
    new-instance v0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity_ViewBinding$2;-><init>(Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity_ViewBinding;Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 59
    iput-object v1, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;

    .line 61
    iput-object v1, v0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->topBackTitle:Landroid/widget/TextView;

    .line 62
    iput-object v1, v0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->oldPwdEt:Landroid/widget/TextView;

    .line 63
    iput-object v1, v0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->newPwdEt:Landroid/widget/TextView;

    .line 64
    iput-object v1, v0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->confirmPwdEt:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iput-object v1, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity_ViewBinding;->view7f0a0550:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iput-object v1, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity_ViewBinding;->view7f0a0550:Landroid/view/View;

    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
