.class public Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding;
.super Ljava/lang/Object;
.source "StartupActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/vehicle/StartupActivity;

.field private view7f0a00df:Landroid/view/View;

.field private view7f0a00e0:Landroid/view/View;

.field private view7f0a0326:Landroid/view/View;

.field private view7f0a0327:Landroid/view/View;

.field private view7f0a05a2:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/StartupActivity;)V
    .locals 1

    .line 33
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/vehicle/StartupActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/StartupActivity;Landroid/view/View;)V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/StartupActivity;

    const-string v0, "field \'topBackBtn\' and method \'onClick\'"

    const v1, 0x7f0a05a2

    .line 41
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'topBackBtn\'"

    .line 42
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->topBackBtn:Landroid/widget/ImageView;

    .line 43
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    .line 44
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/StartupActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'topBackTitle\'"

    .line 50
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05a3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->topBackTitle:Landroid/widget/TextView;

    const-string v0, "field \'cbZero\' and method \'onClick\'"

    const v1, 0x7f0a00e0

    .line 51
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'cbZero\'"

    .line 52
    const-class v3, Landroid/widget/CheckBox;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->cbZero:Landroid/widget/CheckBox;

    .line 53
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding;->view7f0a00e0:Landroid/view/View;

    .line 54
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding$2;-><init>(Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/StartupActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'lineZero\' and method \'onClick\'"

    const v1, 0x7f0a0327

    .line 60
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'lineZero\'"

    .line 61
    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->lineZero:Landroid/widget/LinearLayout;

    .line 62
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding;->view7f0a0327:Landroid/view/View;

    .line 63
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding$3;-><init>(Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/StartupActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'cbPush\' and method \'onClick\'"

    const v1, 0x7f0a00df

    .line 69
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'cbPush\'"

    .line 70
    const-class v3, Landroid/widget/CheckBox;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->cbPush:Landroid/widget/CheckBox;

    .line 71
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding;->view7f0a00df:Landroid/view/View;

    .line 72
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding$4;-><init>(Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/StartupActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'linePush\' and method \'onClick\'"

    const v1, 0x7f0a0326

    .line 78
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    const-string v0, "field \'linePush\'"

    .line 79
    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->linePush:Landroid/widget/LinearLayout;

    .line 80
    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding;->view7f0a0326:Landroid/view/View;

    .line 81
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding$5;-><init>(Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/StartupActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/StartupActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 94
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/StartupActivity;

    .line 96
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->topBackBtn:Landroid/widget/ImageView;

    .line 97
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->topBackTitle:Landroid/widget/TextView;

    .line 98
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->cbZero:Landroid/widget/CheckBox;

    .line 99
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->lineZero:Landroid/widget/LinearLayout;

    .line 100
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->cbPush:Landroid/widget/CheckBox;

    .line 101
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->linePush:Landroid/widget/LinearLayout;

    .line 103
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding;->view7f0a00e0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding;->view7f0a00e0:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding;->view7f0a0327:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding;->view7f0a0327:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding;->view7f0a00df:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding;->view7f0a00df:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding;->view7f0a0326:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding;->view7f0a0326:Landroid/view/View;

    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
