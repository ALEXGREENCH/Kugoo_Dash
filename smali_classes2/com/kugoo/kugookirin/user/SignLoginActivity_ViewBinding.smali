.class public Lcom/kugoo/kugookirin/user/SignLoginActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SignLoginActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/user/SignLoginActivity;

.field private view7f0a0352:Landroid/view/View;

.field private view7f0a0354:Landroid/view/View;

.field private view7f0a04de:Landroid/view/View;

.field private view7f0a04df:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/user/SignLoginActivity;)V
    .locals 1

    .line 30
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/user/SignLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/user/SignLoginActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/user/SignLoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/user/SignLoginActivity;Landroid/view/View;)V
    .locals 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/SignLoginActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/user/SignLoginActivity;

    const-string v0, "field \'selectLogin\' and method \'onClick\'"

    const v1, 0x7f0a04de

    .line 38
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'selectLogin\'"

    .line 39
    const-class v3, Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/kugoo/kugookirin/user/SignLoginActivity;->selectLogin:Landroid/widget/Button;

    .line 40
    iput-object v0, p0, Lcom/kugoo/kugookirin/user/SignLoginActivity_ViewBinding;->view7f0a04de:Landroid/view/View;

    .line 41
    new-instance v1, Lcom/kugoo/kugookirin/user/SignLoginActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/user/SignLoginActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/user/SignLoginActivity_ViewBinding;Lcom/kugoo/kugookirin/user/SignLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'selectSign\' and method \'onClick\'"

    const v1, 0x7f0a04df

    .line 47
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'selectSign\'"

    .line 48
    const-class v3, Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/kugoo/kugookirin/user/SignLoginActivity;->selectSign:Landroid/widget/Button;

    .line 49
    iput-object v0, p0, Lcom/kugoo/kugookirin/user/SignLoginActivity_ViewBinding;->view7f0a04df:Landroid/view/View;

    .line 50
    new-instance v1, Lcom/kugoo/kugookirin/user/SignLoginActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/user/SignLoginActivity_ViewBinding$2;-><init>(Lcom/kugoo/kugookirin/user/SignLoginActivity_ViewBinding;Lcom/kugoo/kugookirin/user/SignLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'loginSignBack\' and method \'onClick\'"

    const v1, 0x7f0a0352

    .line 56
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'loginSignBack\'"

    .line 57
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/user/SignLoginActivity;->loginSignBack:Landroid/widget/ImageView;

    .line 58
    iput-object v0, p0, Lcom/kugoo/kugookirin/user/SignLoginActivity_ViewBinding;->view7f0a0352:Landroid/view/View;

    .line 59
    new-instance v1, Lcom/kugoo/kugookirin/user/SignLoginActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/user/SignLoginActivity_ViewBinding$3;-><init>(Lcom/kugoo/kugookirin/user/SignLoginActivity_ViewBinding;Lcom/kugoo/kugookirin/user/SignLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'loginSkipBtn\' and method \'onClick\'"

    const v1, 0x7f0a0354

    .line 65
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    const-string v0, "field \'loginSkipBtn\'"

    .line 66
    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/user/SignLoginActivity;->loginSkipBtn:Landroid/widget/TextView;

    .line 67
    iput-object p2, p0, Lcom/kugoo/kugookirin/user/SignLoginActivity_ViewBinding;->view7f0a0354:Landroid/view/View;

    .line 68
    new-instance v0, Lcom/kugoo/kugookirin/user/SignLoginActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/kugoo/kugookirin/user/SignLoginActivity_ViewBinding$4;-><init>(Lcom/kugoo/kugookirin/user/SignLoginActivity_ViewBinding;Lcom/kugoo/kugookirin/user/SignLoginActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/SignLoginActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/user/SignLoginActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 81
    iput-object v1, p0, Lcom/kugoo/kugookirin/user/SignLoginActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/user/SignLoginActivity;

    .line 83
    iput-object v1, v0, Lcom/kugoo/kugookirin/user/SignLoginActivity;->selectLogin:Landroid/widget/Button;

    .line 84
    iput-object v1, v0, Lcom/kugoo/kugookirin/user/SignLoginActivity;->selectSign:Landroid/widget/Button;

    .line 85
    iput-object v1, v0, Lcom/kugoo/kugookirin/user/SignLoginActivity;->loginSignBack:Landroid/widget/ImageView;

    .line 86
    iput-object v1, v0, Lcom/kugoo/kugookirin/user/SignLoginActivity;->loginSkipBtn:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/SignLoginActivity_ViewBinding;->view7f0a04de:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iput-object v1, p0, Lcom/kugoo/kugookirin/user/SignLoginActivity_ViewBinding;->view7f0a04de:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/SignLoginActivity_ViewBinding;->view7f0a04df:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iput-object v1, p0, Lcom/kugoo/kugookirin/user/SignLoginActivity_ViewBinding;->view7f0a04df:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/SignLoginActivity_ViewBinding;->view7f0a0352:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iput-object v1, p0, Lcom/kugoo/kugookirin/user/SignLoginActivity_ViewBinding;->view7f0a0352:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/SignLoginActivity_ViewBinding;->view7f0a0354:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iput-object v1, p0, Lcom/kugoo/kugookirin/user/SignLoginActivity_ViewBinding;->view7f0a0354:Landroid/view/View;

    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
