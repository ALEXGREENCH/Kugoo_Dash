.class public Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DarkModeActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/more/DarkModeActivity;

.field private view7f0a00d8:Landroid/view/View;

.field private view7f0a00dc:Landroid/view/View;

.field private view7f0a0322:Landroid/view/View;

.field private view7f0a0325:Landroid/view/View;

.field private view7f0a05a2:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/more/DarkModeActivity;)V
    .locals 1

    .line 33
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/more/DarkModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/more/DarkModeActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/more/DarkModeActivity;Landroid/view/View;)V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/more/DarkModeActivity;

    const-string v0, "field \'cbNormal\' and method \'onClick\'"

    const v1, 0x7f0a00dc

    .line 41
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'cbNormal\'"

    .line 42
    const-class v3, Landroid/widget/CheckBox;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p1, Lcom/kugoo/kugookirin/more/DarkModeActivity;->cbNormal:Landroid/widget/CheckBox;

    .line 43
    iput-object v0, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding;->view7f0a00dc:Landroid/view/View;

    .line 44
    new-instance v1, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding;Lcom/kugoo/kugookirin/more/DarkModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'lineNormal\' and method \'onClick\'"

    const v1, 0x7f0a0325

    .line 50
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'lineNormal\'"

    .line 51
    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/kugoo/kugookirin/more/DarkModeActivity;->lineNormal:Landroid/widget/LinearLayout;

    .line 52
    iput-object v0, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding;->view7f0a0325:Landroid/view/View;

    .line 53
    new-instance v1, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding$2;-><init>(Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding;Lcom/kugoo/kugookirin/more/DarkModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'cbDark\' and method \'onClick\'"

    const v1, 0x7f0a00d8

    .line 59
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'cbDark\'"

    .line 60
    const-class v3, Landroid/widget/CheckBox;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p1, Lcom/kugoo/kugookirin/more/DarkModeActivity;->cbDark:Landroid/widget/CheckBox;

    .line 61
    iput-object v0, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding;->view7f0a00d8:Landroid/view/View;

    .line 62
    new-instance v1, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding$3;-><init>(Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding;Lcom/kugoo/kugookirin/more/DarkModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'lineDark\' and method \'onClick\'"

    const v1, 0x7f0a0322

    .line 68
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'lineDark\'"

    .line 69
    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/kugoo/kugookirin/more/DarkModeActivity;->lineDark:Landroid/widget/LinearLayout;

    .line 70
    iput-object v0, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding;->view7f0a0322:Landroid/view/View;

    .line 71
    new-instance v1, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding$4;-><init>(Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding;Lcom/kugoo/kugookirin/more/DarkModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'topBackBtn\' and method \'onClick\'"

    const v1, 0x7f0a05a2

    .line 77
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'topBackBtn\'"

    .line 78
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/more/DarkModeActivity;->topBackBtn:Landroid/widget/ImageView;

    .line 79
    iput-object v0, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    .line 80
    new-instance v1, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding$5;-><init>(Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding;Lcom/kugoo/kugookirin/more/DarkModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'topBackTitle\'"

    .line 86
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05a3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/kugoo/kugookirin/more/DarkModeActivity;->topBackTitle:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/more/DarkModeActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 94
    iput-object v1, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/more/DarkModeActivity;

    .line 96
    iput-object v1, v0, Lcom/kugoo/kugookirin/more/DarkModeActivity;->cbNormal:Landroid/widget/CheckBox;

    .line 97
    iput-object v1, v0, Lcom/kugoo/kugookirin/more/DarkModeActivity;->lineNormal:Landroid/widget/LinearLayout;

    .line 98
    iput-object v1, v0, Lcom/kugoo/kugookirin/more/DarkModeActivity;->cbDark:Landroid/widget/CheckBox;

    .line 99
    iput-object v1, v0, Lcom/kugoo/kugookirin/more/DarkModeActivity;->lineDark:Landroid/widget/LinearLayout;

    .line 100
    iput-object v1, v0, Lcom/kugoo/kugookirin/more/DarkModeActivity;->topBackBtn:Landroid/widget/ImageView;

    .line 101
    iput-object v1, v0, Lcom/kugoo/kugookirin/more/DarkModeActivity;->topBackTitle:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding;->view7f0a00dc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iput-object v1, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding;->view7f0a00dc:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding;->view7f0a0325:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iput-object v1, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding;->view7f0a0325:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding;->view7f0a00d8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iput-object v1, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding;->view7f0a00d8:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding;->view7f0a0322:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iput-object v1, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding;->view7f0a0322:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iput-object v1, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
