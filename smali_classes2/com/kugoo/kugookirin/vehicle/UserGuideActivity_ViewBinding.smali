.class public Lcom/kugoo/kugookirin/vehicle/UserGuideActivity_ViewBinding;
.super Ljava/lang/Object;
.source "UserGuideActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/vehicle/UserGuideActivity;

.field private view7f0a0042:Landroid/view/View;

.field private view7f0a05f0:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/UserGuideActivity;)V
    .locals 1

    .line 23
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/UserGuideActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/vehicle/UserGuideActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/vehicle/UserGuideActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/UserGuideActivity;Landroid/view/View;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/UserGuideActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/UserGuideActivity;

    const v0, 0x7f0a0042

    const-string v1, "method \'onClick\'"

    .line 31
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/UserGuideActivity_ViewBinding;->view7f0a0042:Landroid/view/View;

    .line 33
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/UserGuideActivity_ViewBinding$1;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/UserGuideActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/vehicle/UserGuideActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/UserGuideActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a05f0

    .line 39
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 40
    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/UserGuideActivity_ViewBinding;->view7f0a05f0:Landroid/view/View;

    .line 41
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/UserGuideActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kugoo/kugookirin/vehicle/UserGuideActivity_ViewBinding$2;-><init>(Lcom/kugoo/kugookirin/vehicle/UserGuideActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/UserGuideActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/UserGuideActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/UserGuideActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/UserGuideActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/UserGuideActivity;

    .line 56
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/UserGuideActivity_ViewBinding;->view7f0a0042:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/UserGuideActivity_ViewBinding;->view7f0a0042:Landroid/view/View;

    .line 58
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/UserGuideActivity_ViewBinding;->view7f0a05f0:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/UserGuideActivity_ViewBinding;->view7f0a05f0:Landroid/view/View;

    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
