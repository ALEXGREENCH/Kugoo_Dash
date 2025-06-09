.class public Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity_ViewBinding;
.super Ljava/lang/Object;
.source "CycleInfoActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;

.field private view7f0a05a2:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;)V
    .locals 1

    .line 22
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;

    const-string v0, "field \'topBarTitle\'"

    .line 30
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05a3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->topBarTitle:Landroid/widget/TextView;

    const-string v0, "field \'singleMileage\'"

    .line 31
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0510

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->singleMileage:Landroid/widget/TextView;

    const-string v0, "field \'rideMileage\'"

    .line 32
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a049c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->rideMileage:Landroid/widget/TextView;

    const-string v0, "field \'singleRide\'"

    .line 33
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0511

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->singleRide:Landroid/widget/TextView;

    const-string v0, "field \'totalRide\'"

    .line 34
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05aa

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->totalRide:Landroid/widget/TextView;

    const-string v0, "field \'maximumSpeed\'"

    .line 35
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a038f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->maximumSpeed:Landroid/widget/TextView;

    const-string v0, "field \'averageSpeed\'"

    .line 36
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0082

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->averageSpeed:Landroid/widget/TextView;

    const v0, 0x7f0a05a2

    const-string v1, "method \'onViewClicked\'"

    .line 37
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 38
    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    .line 39
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;

    .line 54
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->topBarTitle:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->singleMileage:Landroid/widget/TextView;

    .line 56
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->rideMileage:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->singleRide:Landroid/widget/TextView;

    .line 58
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->totalRide:Landroid/widget/TextView;

    .line 59
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->maximumSpeed:Landroid/widget/TextView;

    .line 60
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->averageSpeed:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
