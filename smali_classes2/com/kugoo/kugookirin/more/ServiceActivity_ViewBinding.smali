.class public Lcom/kugoo/kugookirin/more/ServiceActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ServiceActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/more/ServiceActivity;

.field private view7f0a0246:Landroid/view/View;

.field private view7f0a05a2:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/more/ServiceActivity;)V
    .locals 1

    .line 27
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/more/ServiceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/more/ServiceActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/more/ServiceActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/more/ServiceActivity;Landroid/view/View;)V
    .locals 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/ServiceActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/more/ServiceActivity;

    const-string v0, "field \'topBackBtn\' and method \'onClick\'"

    const v1, 0x7f0a05a2

    .line 35
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'topBackBtn\'"

    .line 36
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/more/ServiceActivity;->topBackBtn:Landroid/widget/ImageView;

    .line 37
    iput-object v0, p0, Lcom/kugoo/kugookirin/more/ServiceActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    .line 38
    new-instance v1, Lcom/kugoo/kugookirin/more/ServiceActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/more/ServiceActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/more/ServiceActivity_ViewBinding;Lcom/kugoo/kugookirin/more/ServiceActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'topBackTitle\'"

    .line 44
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05a3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/more/ServiceActivity;->topBackTitle:Landroid/widget/TextView;

    const-string v0, "field \'feedBackEmaiaddress\'"

    .line 45
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0244

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/more/ServiceActivity;->feedBackEmaiaddress:Landroid/widget/TextView;

    const-string v0, "field \'feedBackSubject\'"

    .line 46
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0a0245

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kugoo/kugookirin/more/ServiceActivity;->feedBackSubject:Landroid/widget/EditText;

    const-string v0, "field \'feedBackDescribe\'"

    .line 47
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0a0243

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kugoo/kugookirin/more/ServiceActivity;->feedBackDescribe:Landroid/widget/EditText;

    const-string v0, "field \'feedbackSubmit\' and method \'onClick\'"

    const v1, 0x7f0a0246

    .line 48
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'feedbackSubmit\'"

    .line 49
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/more/ServiceActivity;->feedbackSubmit:Landroid/widget/TextView;

    .line 50
    iput-object v0, p0, Lcom/kugoo/kugookirin/more/ServiceActivity_ViewBinding;->view7f0a0246:Landroid/view/View;

    .line 51
    new-instance v1, Lcom/kugoo/kugookirin/more/ServiceActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/more/ServiceActivity_ViewBinding$2;-><init>(Lcom/kugoo/kugookirin/more/ServiceActivity_ViewBinding;Lcom/kugoo/kugookirin/more/ServiceActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'senderEmail\'"

    .line 57
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0a04e4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kugoo/kugookirin/more/ServiceActivity;->senderEmail:Landroid/widget/EditText;

    const-string v0, "field \'mainView\'"

    .line 58
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0363

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/kugoo/kugookirin/more/ServiceActivity;->mainView:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ServiceActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/more/ServiceActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 66
    iput-object v1, p0, Lcom/kugoo/kugookirin/more/ServiceActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/more/ServiceActivity;

    .line 68
    iput-object v1, v0, Lcom/kugoo/kugookirin/more/ServiceActivity;->topBackBtn:Landroid/widget/ImageView;

    .line 69
    iput-object v1, v0, Lcom/kugoo/kugookirin/more/ServiceActivity;->topBackTitle:Landroid/widget/TextView;

    .line 70
    iput-object v1, v0, Lcom/kugoo/kugookirin/more/ServiceActivity;->feedBackEmaiaddress:Landroid/widget/TextView;

    .line 71
    iput-object v1, v0, Lcom/kugoo/kugookirin/more/ServiceActivity;->feedBackSubject:Landroid/widget/EditText;

    .line 72
    iput-object v1, v0, Lcom/kugoo/kugookirin/more/ServiceActivity;->feedBackDescribe:Landroid/widget/EditText;

    .line 73
    iput-object v1, v0, Lcom/kugoo/kugookirin/more/ServiceActivity;->feedbackSubmit:Landroid/widget/TextView;

    .line 74
    iput-object v1, v0, Lcom/kugoo/kugookirin/more/ServiceActivity;->senderEmail:Landroid/widget/EditText;

    .line 75
    iput-object v1, v0, Lcom/kugoo/kugookirin/more/ServiceActivity;->mainView:Landroid/widget/LinearLayout;

    .line 77
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ServiceActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iput-object v1, p0, Lcom/kugoo/kugookirin/more/ServiceActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ServiceActivity_ViewBinding;->view7f0a0246:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iput-object v1, p0, Lcom/kugoo/kugookirin/more/ServiceActivity_ViewBinding;->view7f0a0246:Landroid/view/View;

    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
