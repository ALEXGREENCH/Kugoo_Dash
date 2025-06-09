.class public Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding;
.super Ljava/lang/Object;
.source "TemptureUnitActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;

.field private view7f0a00da:Landroid/view/View;

.field private view7f0a00db:Landroid/view/View;

.field private view7f0a0323:Landroid/view/View;

.field private view7f0a0324:Landroid/view/View;

.field private view7f0a05a2:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;)V
    .locals 1

    .line 32
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;Landroid/view/View;)V
    .locals 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;

    const-string v0, "field \'topBackBtn\' and method \'onClick\'"

    const v1, 0x7f0a05a2

    .line 40
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'topBackBtn\'"

    .line 41
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->topBackBtn:Landroid/widget/ImageView;

    .line 42
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    .line 43
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'topBackTitle\'"

    .line 49
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05a3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->topBackTitle:Landroid/widget/TextView;

    const-string v0, "field \'cbKmh\' and method \'onClick\'"

    const v1, 0x7f0a00da

    .line 50
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'cbKmh\'"

    .line 51
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->cbKmh:Landroid/widget/ImageView;

    .line 52
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding;->view7f0a00da:Landroid/view/View;

    .line 53
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding$2;-><init>(Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'lineKmh\' and method \'onClick\'"

    const v1, 0x7f0a0323

    .line 59
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'lineKmh\'"

    .line 60
    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->lineKmh:Landroid/widget/LinearLayout;

    .line 61
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding;->view7f0a0323:Landroid/view/View;

    .line 62
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding$3;-><init>(Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'cbMph\' and method \'onClick\'"

    const v1, 0x7f0a00db

    .line 68
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'cbMph\'"

    .line 69
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->cbMph:Landroid/widget/ImageView;

    .line 70
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding;->view7f0a00db:Landroid/view/View;

    .line 71
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding$4;-><init>(Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'lineMph\' and method \'onClick\'"

    const v1, 0x7f0a0324

    .line 77
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    const-string v0, "field \'lineMph\'"

    .line 78
    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->lineMph:Landroid/widget/LinearLayout;

    .line 79
    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding;->view7f0a0324:Landroid/view/View;

    .line 80
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding$5;-><init>(Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;

    .line 95
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->topBackBtn:Landroid/widget/ImageView;

    .line 96
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->topBackTitle:Landroid/widget/TextView;

    .line 97
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->cbKmh:Landroid/widget/ImageView;

    .line 98
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->lineKmh:Landroid/widget/LinearLayout;

    .line 99
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->cbMph:Landroid/widget/ImageView;

    .line 100
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->lineMph:Landroid/widget/LinearLayout;

    .line 102
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding;->view7f0a00da:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding;->view7f0a00da:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding;->view7f0a0323:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding;->view7f0a0323:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding;->view7f0a00db:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding;->view7f0a00db:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding;->view7f0a0324:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity_ViewBinding;->view7f0a0324:Landroid/view/View;

    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
