.class public Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity_ViewBinding;
.super Ljava/lang/Object;
.source "NavigationalSearchActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity;

.field private view7f0a00d1:Landroid/view/View;

.field private view7f0a00d2:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity;)V
    .locals 1

    .line 24
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity;Landroid/view/View;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity;

    const-string v0, "field \'searchInputEt\'"

    .line 33
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0a04c9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity;->searchInputEt:Landroid/widget/EditText;

    const v0, 0x7f0a00d1

    const-string v1, "method \'onClick\'"

    .line 34
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity_ViewBinding;->view7f0a00d1:Landroid/view/View;

    .line 36
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity_ViewBinding$1;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00d2

    .line 42
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 43
    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity_ViewBinding;->view7f0a00d2:Landroid/view/View;

    .line 44
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity_ViewBinding$2;-><init>(Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 57
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity;

    .line 59
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity;->searchInputEt:Landroid/widget/EditText;

    .line 61
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity_ViewBinding;->view7f0a00d1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity_ViewBinding;->view7f0a00d1:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity_ViewBinding;->view7f0a00d2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity_ViewBinding;->view7f0a00d2:Landroid/view/View;

    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
