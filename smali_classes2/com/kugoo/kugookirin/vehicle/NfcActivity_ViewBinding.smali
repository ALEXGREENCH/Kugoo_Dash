.class public Lcom/kugoo/kugookirin/vehicle/NfcActivity_ViewBinding;
.super Ljava/lang/Object;
.source "NfcActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

.field private view7f0a00d3:Landroid/view/View;

.field private view7f0a0102:Landroid/view/View;

.field private view7f0a03f8:Landroid/view/View;

.field private view7f0a04d0:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)V
    .locals 1

    .line 33
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Landroid/view/View;)V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    const-string v0, "field \'circleBarTitle\'"

    .line 41
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0103

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->circleBarTitle:Landroid/widget/TextView;

    const-string v0, "field \'recyclerView\'"

    .line 42
    const-class v1, Lcom/kugoo/kugookirin/view/SwapRecyclerView;

    const v2, 0x7f0a03f6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->recyclerView:Lcom/kugoo/kugookirin/view/SwapRecyclerView;

    const-string v0, "field \'nfcFunBtn\' and method \'onClick\'"

    const v1, 0x7f0a03f8

    .line 43
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'nfcFunBtn\'"

    .line 44
    const-class v3, Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->nfcFunBtn:Landroid/widget/Button;

    .line 45
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity_ViewBinding;->view7f0a03f8:Landroid/view/View;

    .line 46
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/NfcActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/vehicle/NfcActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/NfcActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'searchLayout\'"

    .line 52
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a04ca

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchLayout:Landroid/widget/LinearLayout;

    const-string v0, "field \'searchingLayout\'"

    .line 53
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a04d8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchingLayout:Landroid/widget/LinearLayout;

    const-string v0, "field \'searchResultLayout\'"

    .line 54
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a04d2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchResultLayout:Landroid/widget/LinearLayout;

    const-string v0, "field \'nfcFramelayout\'"

    .line 55
    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0a03f7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->nfcFramelayout:Landroid/widget/FrameLayout;

    const-string v0, "field \'searchingImg\'"

    .line 56
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a04d7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchingImg:Landroid/widget/ImageView;

    const-string v0, "field \'searchResultTv\'"

    .line 57
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04d3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchResultTv:Landroid/widget/TextView;

    const-string v0, "field \'searchResultImage\'"

    .line 58
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a04d1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchResultImage:Landroid/widget/ImageView;

    const-string v0, "field \'searchResultBtn\' and method \'onClick\'"

    const v1, 0x7f0a04d0

    .line 59
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'searchResultBtn\'"

    .line 60
    const-class v3, Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchResultBtn:Landroid/widget/Button;

    .line 61
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity_ViewBinding;->view7f0a04d0:Landroid/view/View;

    .line 62
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/NfcActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity_ViewBinding$2;-><init>(Lcom/kugoo/kugookirin/vehicle/NfcActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/NfcActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'emptyViewLayout\'"

    .line 68
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a01ff

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->emptyViewLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0102

    const-string v1, "method \'onClick\'"

    .line 69
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity_ViewBinding;->view7f0a0102:Landroid/view/View;

    .line 71
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/NfcActivity_ViewBinding$3;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity_ViewBinding$3;-><init>(Lcom/kugoo/kugookirin/vehicle/NfcActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/NfcActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00d3

    .line 77
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 78
    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity_ViewBinding;->view7f0a00d3:Landroid/view/View;

    .line 79
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity_ViewBinding$4;-><init>(Lcom/kugoo/kugookirin/vehicle/NfcActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/NfcActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 92
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    .line 94
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->circleBarTitle:Landroid/widget/TextView;

    .line 95
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->recyclerView:Lcom/kugoo/kugookirin/view/SwapRecyclerView;

    .line 96
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->nfcFunBtn:Landroid/widget/Button;

    .line 97
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchLayout:Landroid/widget/LinearLayout;

    .line 98
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchingLayout:Landroid/widget/LinearLayout;

    .line 99
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchResultLayout:Landroid/widget/LinearLayout;

    .line 100
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->nfcFramelayout:Landroid/widget/FrameLayout;

    .line 101
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchingImg:Landroid/widget/ImageView;

    .line 102
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchResultTv:Landroid/widget/TextView;

    .line 103
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchResultImage:Landroid/widget/ImageView;

    .line 104
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchResultBtn:Landroid/widget/Button;

    .line 105
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->emptyViewLayout:Landroid/widget/LinearLayout;

    .line 107
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity_ViewBinding;->view7f0a03f8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity_ViewBinding;->view7f0a03f8:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity_ViewBinding;->view7f0a04d0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity_ViewBinding;->view7f0a04d0:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity_ViewBinding;->view7f0a0102:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity_ViewBinding;->view7f0a0102:Landroid/view/View;

    .line 113
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity_ViewBinding;->view7f0a00d3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity_ViewBinding;->view7f0a00d3:Landroid/view/View;

    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
