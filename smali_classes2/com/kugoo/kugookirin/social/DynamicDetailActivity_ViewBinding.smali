.class public Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DynamicDetailActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

.field private view7f0a0106:Landroid/view/View;

.field private view7f0a0178:Landroid/view/View;

.field private view7f0a02e0:Landroid/view/View;

.field private view7f0a02e3:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)V
    .locals 1

    .line 33
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Landroid/view/View;)V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    const-string v0, "field \'circleGoBack\' and method \'onClick\'"

    const v1, 0x7f0a0106

    .line 41
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'circleGoBack\'"

    .line 42
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->circleGoBack:Landroid/widget/ImageView;

    .line 43
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding;->view7f0a0106:Landroid/view/View;

    .line 44
    new-instance v1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding;Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'deleteDynBtn\' and method \'onClick\'"

    const v1, 0x7f0a0178

    .line 50
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'deleteDynBtn\'"

    .line 51
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->deleteDynBtn:Landroid/widget/ImageView;

    .line 52
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding;->view7f0a0178:Landroid/view/View;

    .line 53
    new-instance v1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding$2;-><init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding;Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'commentRv\'"

    .line 59
    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0a0133

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->commentRv:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "field \'inputImg\' and method \'onClick\'"

    const v1, 0x7f0a02e3

    .line 60
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'inputImg\'"

    .line 61
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->inputImg:Landroid/widget/ImageView;

    .line 62
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding;->view7f0a02e3:Landroid/view/View;

    .line 63
    new-instance v1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding$3;-><init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding;Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'inputEt\'"

    .line 69
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0a02e2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->inputEt:Landroid/widget/EditText;

    const-string v0, "field \'inputConfirmBtn\' and method \'onClick\'"

    const v1, 0x7f0a02e0

    .line 70
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'inputConfirmBtn\'"

    .line 71
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->inputConfirmBtn:Landroid/widget/TextView;

    .line 72
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding;->view7f0a02e0:Landroid/view/View;

    .line 73
    new-instance v1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding$4;-><init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding;Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'inputLiner\'"

    .line 79
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a02e4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->inputLiner:Landroid/widget/LinearLayout;

    const-string v0, "field \'noSearchItem\'"

    .line 80
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0406

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->noSearchItem:Landroid/widget/TextView;

    const-string v0, "field \'detailRefreshLayout\'"

    .line 81
    const-class v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const v2, 0x7f0a01a9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object p2, p1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->detailRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    .line 91
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->circleGoBack:Landroid/widget/ImageView;

    .line 92
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->deleteDynBtn:Landroid/widget/ImageView;

    .line 93
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->commentRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 94
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->inputImg:Landroid/widget/ImageView;

    .line 95
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->inputEt:Landroid/widget/EditText;

    .line 96
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->inputConfirmBtn:Landroid/widget/TextView;

    .line 97
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->inputLiner:Landroid/widget/LinearLayout;

    .line 98
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->noSearchItem:Landroid/widget/TextView;

    .line 99
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->detailRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 101
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding;->view7f0a0106:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding;->view7f0a0106:Landroid/view/View;

    .line 103
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding;->view7f0a0178:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding;->view7f0a0178:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding;->view7f0a02e3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding;->view7f0a02e3:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding;->view7f0a02e0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding;->view7f0a02e0:Landroid/view/View;

    return-void

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
