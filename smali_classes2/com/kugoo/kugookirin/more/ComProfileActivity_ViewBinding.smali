.class public Lcom/kugoo/kugookirin/more/ComProfileActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ComProfileActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/more/ComProfileActivity;

.field private view7f0a05a2:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/more/ComProfileActivity;)V
    .locals 1

    .line 23
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/more/ComProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/more/ComProfileActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/more/ComProfileActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/more/ComProfileActivity;Landroid/view/View;)V
    .locals 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/ComProfileActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/more/ComProfileActivity;

    const-string v0, "field \'topBackBtn\' and method \'onClick\'"

    const v1, 0x7f0a05a2

    .line 31
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'topBackBtn\'"

    .line 32
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/more/ComProfileActivity;->topBackBtn:Landroid/widget/ImageView;

    .line 33
    iput-object v0, p0, Lcom/kugoo/kugookirin/more/ComProfileActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    .line 34
    new-instance v1, Lcom/kugoo/kugookirin/more/ComProfileActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/more/ComProfileActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/more/ComProfileActivity_ViewBinding;Lcom/kugoo/kugookirin/more/ComProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'topBackTitle\'"

    .line 40
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05a3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/kugoo/kugookirin/more/ComProfileActivity;->topBackTitle:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ComProfileActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/more/ComProfileActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lcom/kugoo/kugookirin/more/ComProfileActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/more/ComProfileActivity;

    .line 50
    iput-object v1, v0, Lcom/kugoo/kugookirin/more/ComProfileActivity;->topBackBtn:Landroid/widget/ImageView;

    .line 51
    iput-object v1, v0, Lcom/kugoo/kugookirin/more/ComProfileActivity;->topBackTitle:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ComProfileActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iput-object v1, p0, Lcom/kugoo/kugookirin/more/ComProfileActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
