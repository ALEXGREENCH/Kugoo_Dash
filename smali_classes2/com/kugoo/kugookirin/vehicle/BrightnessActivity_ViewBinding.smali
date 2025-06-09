.class public Lcom/kugoo/kugookirin/vehicle/BrightnessActivity_ViewBinding;
.super Ljava/lang/Object;
.source "BrightnessActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;

.field private view7f0a05a2:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;)V
    .locals 1

    .line 24
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;Landroid/view/View;)V
    .locals 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;

    const-string v0, "field \'topBackBtn\' and method \'onClick\'"

    const v1, 0x7f0a05a2

    .line 32
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'topBackBtn\'"

    .line 33
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->topBackBtn:Landroid/widget/ImageView;

    .line 34
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    .line 35
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/vehicle/BrightnessActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'topBackTitle\'"

    .line 41
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05a3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->topBackTitle:Landroid/widget/TextView;

    const-string v0, "field \'instrumentImg\'"

    .line 42
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a02e5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->instrumentImg:Landroid/widget/ImageView;

    const-string v0, "field \'level01\'"

    .line 43
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a030f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->level01:Landroid/widget/ImageView;

    const-string v0, "field \'level02\'"

    .line 44
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0310

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->level02:Landroid/widget/ImageView;

    const-string v0, "field \'level03\'"

    .line 45
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0311

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->level03:Landroid/widget/ImageView;

    const-string v0, "field \'brightBar\'"

    .line 46
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a00b0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->brightBar:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;

    .line 56
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->topBackBtn:Landroid/widget/ImageView;

    .line 57
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->topBackTitle:Landroid/widget/TextView;

    .line 58
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->instrumentImg:Landroid/widget/ImageView;

    .line 59
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->level01:Landroid/widget/ImageView;

    .line 60
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->level02:Landroid/widget/ImageView;

    .line 61
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->level03:Landroid/widget/ImageView;

    .line 62
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->brightBar:Landroid/widget/LinearLayout;

    .line 64
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
