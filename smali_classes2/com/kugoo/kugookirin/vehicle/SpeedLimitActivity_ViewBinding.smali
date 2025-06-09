.class public Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SpeedLimitActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

.field private view7f0a0284:Landroid/view/View;

.field private view7f0a0288:Landroid/view/View;

.field private view7f0a028d:Landroid/view/View;

.field private view7f0a0290:Landroid/view/View;

.field private view7f0a05a2:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)V
    .locals 1

    .line 32
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;Landroid/view/View;)V
    .locals 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

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

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->topBackBtn:Landroid/widget/ImageView;

    .line 42
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    .line 43
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'topBackTitle\'"

    .line 49
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05a3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->topBackTitle:Landroid/widget/TextView;

    const-string v0, "field \'gearOneLimitValue\'"

    .line 50
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a028a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearOneLimitValue:Landroid/widget/TextView;

    const-string v0, "field \'gearOneLimitUnit\'"

    .line 51
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0289

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearOneLimitUnit:Landroid/widget/TextView;

    const-string v0, "field \'gearOneLimit\' and method \'onClick\'"

    const v1, 0x7f0a0288

    .line 52
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'gearOneLimit\'"

    .line 53
    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearOneLimit:Landroid/widget/RelativeLayout;

    .line 54
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding;->view7f0a0288:Landroid/view/View;

    .line 55
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding$2;-><init>(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'gearTwoLimitValue\'"

    .line 61
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0292

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearTwoLimitValue:Landroid/widget/TextView;

    const-string v0, "field \'gearTwoLimitUnit\'"

    .line 62
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0291

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearTwoLimitUnit:Landroid/widget/TextView;

    const-string v0, "field \'gearTwoLimit\' and method \'onClick\'"

    const v1, 0x7f0a0290

    .line 63
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'gearTwoLimit\'"

    .line 64
    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearTwoLimit:Landroid/widget/RelativeLayout;

    .line 65
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding;->view7f0a0290:Landroid/view/View;

    .line 66
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding$3;-><init>(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'gearThreeLimitValue\'"

    .line 72
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a028f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearThreeLimitValue:Landroid/widget/TextView;

    const-string v0, "field \'gearThreeLimitUnit\'"

    .line 73
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a028e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearThreeLimitUnit:Landroid/widget/TextView;

    const-string v0, "field \'gearThreeLimit\' and method \'onClick\'"

    const v1, 0x7f0a028d

    .line 74
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'gearThreeLimit\'"

    .line 75
    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearThreeLimit:Landroid/widget/RelativeLayout;

    .line 76
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding;->view7f0a028d:Landroid/view/View;

    .line 77
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding$4;-><init>(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'gearFourLimitValue\'"

    .line 83
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0286

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearFourLimitValue:Landroid/widget/TextView;

    const-string v0, "field \'gearFourLimitUnit\'"

    .line 84
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0285

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearFourLimitUnit:Landroid/widget/TextView;

    const-string v0, "field \'gearFourLimit\' and method \'onClick\'"

    const v1, 0x7f0a0284

    .line 85
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    const-string v0, "field \'gearFourLimit\'"

    .line 86
    const-class v2, Landroid/widget/RelativeLayout;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearFourLimit:Landroid/widget/RelativeLayout;

    .line 87
    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding;->view7f0a0284:Landroid/view/View;

    .line 88
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding$5;-><init>(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 101
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    .line 103
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->topBackBtn:Landroid/widget/ImageView;

    .line 104
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->topBackTitle:Landroid/widget/TextView;

    .line 105
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearOneLimitValue:Landroid/widget/TextView;

    .line 106
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearOneLimitUnit:Landroid/widget/TextView;

    .line 107
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearOneLimit:Landroid/widget/RelativeLayout;

    .line 108
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearTwoLimitValue:Landroid/widget/TextView;

    .line 109
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearTwoLimitUnit:Landroid/widget/TextView;

    .line 110
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearTwoLimit:Landroid/widget/RelativeLayout;

    .line 111
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearThreeLimitValue:Landroid/widget/TextView;

    .line 112
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearThreeLimitUnit:Landroid/widget/TextView;

    .line 113
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearThreeLimit:Landroid/widget/RelativeLayout;

    .line 114
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearFourLimitValue:Landroid/widget/TextView;

    .line 115
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearFourLimitUnit:Landroid/widget/TextView;

    .line 116
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->gearFourLimit:Landroid/widget/RelativeLayout;

    .line 118
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding;->view7f0a0288:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding;->view7f0a0288:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding;->view7f0a0290:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding;->view7f0a0290:Landroid/view/View;

    .line 124
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding;->view7f0a028d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding;->view7f0a028d:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding;->view7f0a0284:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding;->view7f0a0284:Landroid/view/View;

    return-void

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
