.class public Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DynamicSettingActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/social/DynamicSettingActivity;

.field private view7f0a02d3:Landroid/view/View;

.field private view7f0a0487:Landroid/view/View;

.field private view7f0a0489:Landroid/view/View;

.field private view7f0a048a:Landroid/view/View;

.field private view7f0a05df:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/social/DynamicSettingActivity;)V
    .locals 1

    .line 32
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/social/DynamicSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/social/DynamicSettingActivity;Landroid/view/View;)V
    .locals 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/social/DynamicSettingActivity;

    const-string v0, "field \'topBackBtn\' and method \'onClick\'"

    const v1, 0x7f0a02d3

    .line 40
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'topBackBtn\'"

    .line 41
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->topBackBtn:Landroid/widget/ImageView;

    .line 42
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding;->view7f0a02d3:Landroid/view/View;

    .line 43
    new-instance v1, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding;Lcom/kugoo/kugookirin/social/DynamicSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'imgRight\'"

    .line 49
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a02d2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->imgRight:Landroid/widget/ImageView;

    const-string v0, "field \'txtTitle\'"

    .line 50
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05e8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->txtTitle:Landroid/widget/TextView;

    const-string v0, "field \'tvRight\' and method \'onClick\'"

    const v1, 0x7f0a05df

    .line 51
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'tvRight\'"

    .line 52
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->tvRight:Landroid/widget/TextView;

    .line 53
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding;->view7f0a05df:Landroid/view/View;

    .line 54
    new-instance v1, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding$2;-><init>(Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding;Lcom/kugoo/kugookirin/social/DynamicSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'relaOpen\' and method \'onClick\'"

    const v1, 0x7f0a0489

    .line 60
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'relaOpen\'"

    .line 61
    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->relaOpen:Landroid/widget/RelativeLayout;

    .line 62
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding;->view7f0a0489:Landroid/view/View;

    .line 63
    new-instance v1, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding$3;-><init>(Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding;Lcom/kugoo/kugookirin/social/DynamicSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'relaPrivate\' and method \'onClick\'"

    const v1, 0x7f0a048a

    .line 69
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'relaPrivate\'"

    .line 70
    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->relaPrivate:Landroid/widget/RelativeLayout;

    .line 71
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding;->view7f0a048a:Landroid/view/View;

    .line 72
    new-instance v1, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding$4;-><init>(Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding;Lcom/kugoo/kugookirin/social/DynamicSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'relaFriend\' and method \'onClick\'"

    const v1, 0x7f0a0487

    .line 78
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'relaFriend\'"

    .line 79
    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->relaFriend:Landroid/widget/RelativeLayout;

    .line 80
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding;->view7f0a0487:Landroid/view/View;

    .line 81
    new-instance v1, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding$5;-><init>(Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding;Lcom/kugoo/kugookirin/social/DynamicSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'cbOpen\'"

    .line 87
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a00dd

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->cbOpen:Landroid/widget/ImageView;

    const-string v0, "field \'cbFriend\'"

    .line 88
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a00d9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->cbFriend:Landroid/widget/ImageView;

    const-string v0, "field \'cbPrivate\'"

    .line 89
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a00de

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->cbPrivate:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/social/DynamicSettingActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 97
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/social/DynamicSettingActivity;

    .line 99
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->topBackBtn:Landroid/widget/ImageView;

    .line 100
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->imgRight:Landroid/widget/ImageView;

    .line 101
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->txtTitle:Landroid/widget/TextView;

    .line 102
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->tvRight:Landroid/widget/TextView;

    .line 103
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->relaOpen:Landroid/widget/RelativeLayout;

    .line 104
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->relaPrivate:Landroid/widget/RelativeLayout;

    .line 105
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->relaFriend:Landroid/widget/RelativeLayout;

    .line 106
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->cbOpen:Landroid/widget/ImageView;

    .line 107
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->cbFriend:Landroid/widget/ImageView;

    .line 108
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->cbPrivate:Landroid/widget/ImageView;

    .line 110
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding;->view7f0a02d3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding;->view7f0a02d3:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding;->view7f0a05df:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding;->view7f0a05df:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding;->view7f0a0489:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding;->view7f0a0489:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding;->view7f0a048a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding;->view7f0a048a:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding;->view7f0a0487:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding;->view7f0a0487:Landroid/view/View;

    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
