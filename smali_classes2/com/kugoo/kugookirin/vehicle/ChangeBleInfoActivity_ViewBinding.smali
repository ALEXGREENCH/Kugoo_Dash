.class public Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ChangeBleInfoActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;

.field private view7f0a0550:Landroid/view/View;

.field private view7f0a05a2:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;)V
    .locals 1

    .line 26
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;Landroid/view/View;)V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;

    const-string v0, "field \'topBartitle\'"

    .line 34
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05a3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->topBartitle:Landroid/widget/TextView;

    const-string v0, "field \'newName\'"

    .line 35
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a03ea

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->newName:Landroid/widget/TextView;

    const-string v0, "field \'newNameEt\'"

    .line 36
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0a03eb

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->newNameEt:Landroid/widget/EditText;

    const-string v0, "field \'oldPwd\'"

    .line 37
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a041a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->oldPwd:Landroid/widget/TextView;

    const-string v0, "field \'oldPwdEt\'"

    .line 38
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0a041b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->oldPwdEt:Landroid/widget/EditText;

    const-string v0, "field \'newPwdEt\'"

    .line 39
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0a03ed

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->newPwdEt:Landroid/widget/EditText;

    const-string v0, "field \'confirmPwdEt\'"

    .line 40
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0a0144

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->confirmPwdEt:Landroid/widget/EditText;

    const-string v0, "field \'changePwdLayout\'"

    .line 41
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a00ee

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->changePwdLayout:Landroid/widget/LinearLayout;

    const-string v0, "field \'old_pwd_layout\'"

    .line 42
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a041c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->old_pwd_layout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0550

    const-string v1, "method \'onClick\'"

    .line 43
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity_ViewBinding;->view7f0a0550:Landroid/view/View;

    .line 45
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity_ViewBinding$1;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a05a2

    .line 51
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 52
    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    .line 53
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity_ViewBinding$2;-><init>(Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 66
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;

    .line 68
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->topBartitle:Landroid/widget/TextView;

    .line 69
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->newName:Landroid/widget/TextView;

    .line 70
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->newNameEt:Landroid/widget/EditText;

    .line 71
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->oldPwd:Landroid/widget/TextView;

    .line 72
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->oldPwdEt:Landroid/widget/EditText;

    .line 73
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->newPwdEt:Landroid/widget/EditText;

    .line 74
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->confirmPwdEt:Landroid/widget/EditText;

    .line 75
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->changePwdLayout:Landroid/widget/LinearLayout;

    .line 76
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->old_pwd_layout:Landroid/widget/LinearLayout;

    .line 78
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity_ViewBinding;->view7f0a0550:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity_ViewBinding;->view7f0a0550:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
