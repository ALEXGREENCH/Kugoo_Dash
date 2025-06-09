.class public Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity_ViewBinding;
.super Ljava/lang/Object;
.source "VehicleInfoActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;

.field private view7f0a05a2:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;)V
    .locals 1

    .line 22
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;

    const-string v0, "field \'topBarTitle\'"

    .line 30
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05a3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->topBarTitle:Landroid/widget/TextView;

    const-string v0, "field \'currentVoltage\'"

    .line 31
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0165

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->currentVoltage:Landroid/widget/TextView;

    const-string v0, "field \'currentElectricity\'"

    .line 32
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0162

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->currentElectricity:Landroid/widget/TextView;

    const-string v0, "field \'currentPower\'"

    .line 33
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0164

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->currentPower:Landroid/widget/TextView;

    const-string v0, "field \'chargeCycles\'"

    .line 34
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a00f0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->chargeCycles:Landroid/widget/TextView;

    const v0, 0x7f0a05a2

    const-string v1, "method \'onViewClicked\'"

    .line 35
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 36
    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    .line 37
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;

    .line 52
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->topBarTitle:Landroid/widget/TextView;

    .line 53
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->currentVoltage:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->currentElectricity:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->currentPower:Landroid/widget/TextView;

    .line 56
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity;->chargeCycles:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleInfoActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
