.class public Lcom/kugoo/kugookirin/user/country/CountryActivity_ViewBinding;
.super Ljava/lang/Object;
.source "CountryActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/user/country/CountryActivity;

.field private view7f0a02d3:Landroid/view/View;

.field private view7f0a05df:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/user/country/CountryActivity;)V
    .locals 1

    .line 25
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/user/country/CountryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/user/country/CountryActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/user/country/CountryActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/user/country/CountryActivity;Landroid/view/View;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/user/country/CountryActivity;

    const-string v0, "field \'txtTitle\'"

    .line 33
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05e8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/user/country/CountryActivity;->txtTitle:Landroid/widget/TextView;

    const-string v0, "field \'tvRight\' and method \'onViewClicked\'"

    const v1, 0x7f0a05df

    .line 34
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'tvRight\'"

    .line 35
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/user/country/CountryActivity;->tvRight:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity_ViewBinding;->view7f0a05df:Landroid/view/View;

    .line 37
    new-instance v1, Lcom/kugoo/kugookirin/user/country/CountryActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/user/country/CountryActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/user/country/CountryActivity_ViewBinding;Lcom/kugoo/kugookirin/user/country/CountryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'imgMore\'"

    .line 43
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a02d2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/user/country/CountryActivity;->imgMore:Landroid/widget/ImageView;

    const v0, 0x7f0a02d3

    const-string v1, "method \'onViewClicked\'"

    .line 44
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 45
    iput-object p2, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity_ViewBinding;->view7f0a02d3:Landroid/view/View;

    .line 46
    new-instance v0, Lcom/kugoo/kugookirin/user/country/CountryActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kugoo/kugookirin/user/country/CountryActivity_ViewBinding$2;-><init>(Lcom/kugoo/kugookirin/user/country/CountryActivity_ViewBinding;Lcom/kugoo/kugookirin/user/country/CountryActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/user/country/CountryActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 59
    iput-object v1, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/user/country/CountryActivity;

    .line 61
    iput-object v1, v0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->txtTitle:Landroid/widget/TextView;

    .line 62
    iput-object v1, v0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->tvRight:Landroid/widget/TextView;

    .line 63
    iput-object v1, v0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->imgMore:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity_ViewBinding;->view7f0a05df:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iput-object v1, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity_ViewBinding;->view7f0a05df:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity_ViewBinding;->view7f0a02d3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iput-object v1, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity_ViewBinding;->view7f0a02d3:Landroid/view/View;

    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
