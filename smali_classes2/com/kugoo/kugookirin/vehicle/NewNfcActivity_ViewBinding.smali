.class public Lcom/kugoo/kugookirin/vehicle/NewNfcActivity_ViewBinding;
.super Ljava/lang/Object;
.source "NewNfcActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

.field private view7f0a00d3:Landroid/view/View;

.field private view7f0a0102:Landroid/view/View;

.field private view7f0a03f8:Landroid/view/View;

.field private view7f0a04d0:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)V
    .locals 1

    .line 34
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;Landroid/view/View;)V
    .locals 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    const-string v0, "field \'topBar\'"

    .line 42
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a0101

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->topBar:Landroid/widget/RelativeLayout;

    const-string v0, "field \'topBarTitle\'"

    .line 43
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0103

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->topBarTitle:Landroid/widget/TextView;

    const-string v0, "field \'topBarBack\' and method \'onClick\'"

    const v1, 0x7f0a0102

    .line 44
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'topBarBack\'"

    .line 45
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->topBarBack:Landroid/widget/ImageView;

    .line 46
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity_ViewBinding;->view7f0a0102:Landroid/view/View;

    .line 47
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'topBarTvBtn\'"

    .line 53
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0115

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->topBarTvBtn:Landroid/widget/TextView;

    const-string v0, "field \'selectAllBtn\'"

    .line 54
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04dc

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->selectAllBtn:Landroid/widget/TextView;

    const-string v0, "field \'recyclerView\'"

    .line 55
    const-class v1, Lcom/kugoo/kugookirin/view/SwapRecyclerView;

    const v2, 0x7f0a03f6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->recyclerView:Lcom/kugoo/kugookirin/view/SwapRecyclerView;

    const-string v0, "field \'nfcFunBtn\' and method \'onClick\'"

    const v1, 0x7f0a03f8

    .line 56
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'nfcFunBtn\'"

    .line 57
    const-class v3, Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->nfcFunBtn:Landroid/widget/Button;

    .line 58
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity_ViewBinding;->view7f0a03f8:Landroid/view/View;

    .line 59
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity_ViewBinding$2;-><init>(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'searchLayout\'"

    .line 65
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a04ca

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchLayout:Landroid/widget/LinearLayout;

    const-string v0, "field \'searchingLayout\'"

    .line 66
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a04d8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchingLayout:Landroid/widget/LinearLayout;

    const-string v0, "field \'searchResultLayout\'"

    .line 67
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a04d2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchResultLayout:Landroid/widget/LinearLayout;

    const-string v0, "field \'nfcFramelayout\'"

    .line 68
    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0a03f7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->nfcFramelayout:Landroid/widget/FrameLayout;

    const-string v0, "field \'searchingImg\'"

    .line 69
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a04d7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchingImg:Landroid/widget/ImageView;

    const-string v0, "field \'searchResultTv\'"

    .line 70
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04d3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchResultTv:Landroid/widget/TextView;

    const-string v0, "field \'searchResultImage\'"

    .line 71
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a04d1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchResultImage:Landroid/widget/ImageView;

    const-string v0, "field \'searchResultBtn\' and method \'onClick\'"

    const v1, 0x7f0a04d0

    .line 72
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'searchResultBtn\'"

    .line 73
    const-class v3, Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchResultBtn:Landroid/widget/Button;

    .line 74
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity_ViewBinding;->view7f0a04d0:Landroid/view/View;

    .line 75
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity_ViewBinding$3;-><init>(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'emptyViewLayout\'"

    .line 81
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a01ff

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->emptyViewLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00d3

    const-string v1, "method \'onClick\'"

    .line 82
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 83
    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity_ViewBinding;->view7f0a00d3:Landroid/view/View;

    .line 84
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity_ViewBinding$4;-><init>(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 97
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    .line 99
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->topBar:Landroid/widget/RelativeLayout;

    .line 100
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->topBarTitle:Landroid/widget/TextView;

    .line 101
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->topBarBack:Landroid/widget/ImageView;

    .line 102
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->topBarTvBtn:Landroid/widget/TextView;

    .line 103
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->selectAllBtn:Landroid/widget/TextView;

    .line 104
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->recyclerView:Lcom/kugoo/kugookirin/view/SwapRecyclerView;

    .line 105
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->nfcFunBtn:Landroid/widget/Button;

    .line 106
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchLayout:Landroid/widget/LinearLayout;

    .line 107
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchingLayout:Landroid/widget/LinearLayout;

    .line 108
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchResultLayout:Landroid/widget/LinearLayout;

    .line 109
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->nfcFramelayout:Landroid/widget/FrameLayout;

    .line 110
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchingImg:Landroid/widget/ImageView;

    .line 111
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchResultTv:Landroid/widget/TextView;

    .line 112
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchResultImage:Landroid/widget/ImageView;

    .line 113
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchResultBtn:Landroid/widget/Button;

    .line 114
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->emptyViewLayout:Landroid/widget/LinearLayout;

    .line 116
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity_ViewBinding;->view7f0a0102:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity_ViewBinding;->view7f0a0102:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity_ViewBinding;->view7f0a03f8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity_ViewBinding;->view7f0a03f8:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity_ViewBinding;->view7f0a04d0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity_ViewBinding;->view7f0a04d0:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity_ViewBinding;->view7f0a00d3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity_ViewBinding;->view7f0a00d3:Landroid/view/View;

    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
