.class public Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ChangeMottoActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;

.field private view7f0a02d3:Landroid/view/View;

.field private view7f0a05df:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;)V
    .locals 1

    .line 26
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;Landroid/view/View;)V
    .locals 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;

    const-string v0, "field \'imgTopBack\' and method \'onClick\'"

    const v1, 0x7f0a02d3

    .line 34
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'imgTopBack\'"

    .line 35
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->imgTopBack:Landroid/widget/ImageView;

    .line 36
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity_ViewBinding;->view7f0a02d3:Landroid/view/View;

    .line 37
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'txtTitle\'"

    .line 43
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05e8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->txtTitle:Landroid/widget/TextView;

    const-string v0, "field \'tip_tv\'"

    .line 44
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0591

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->tip_tv:Landroid/widget/TextView;

    const-string v0, "field \'tvRight\' and method \'onClick\'"

    const v1, 0x7f0a05df

    .line 45
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'tvRight\'"

    .line 46
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->tvRight:Landroid/widget/TextView;

    .line 47
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity_ViewBinding;->view7f0a05df:Landroid/view/View;

    .line 48
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity_ViewBinding$2;-><init>(Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'imgMore\'"

    .line 54
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a02d2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->imgMore:Landroid/widget/ImageView;

    const-string v0, "field \'nameEt\'"

    .line 55
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0a03d9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p1, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->nameEt:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 63
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;

    .line 65
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->imgTopBack:Landroid/widget/ImageView;

    .line 66
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->txtTitle:Landroid/widget/TextView;

    .line 67
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->tip_tv:Landroid/widget/TextView;

    .line 68
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->tvRight:Landroid/widget/TextView;

    .line 69
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->imgMore:Landroid/widget/ImageView;

    .line 70
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->nameEt:Landroid/widget/EditText;

    .line 72
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity_ViewBinding;->view7f0a02d3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity_ViewBinding;->view7f0a02d3:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity_ViewBinding;->view7f0a05df:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity_ViewBinding;->view7f0a05df:Landroid/view/View;

    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
