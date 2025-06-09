.class public Lcom/kugoo/kugookirin/social/PublishLocActivity_ViewBinding;
.super Ljava/lang/Object;
.source "PublishLocActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/social/PublishLocActivity;

.field private view7f0a02d3:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/social/PublishLocActivity;)V
    .locals 1

    .line 25
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/social/PublishLocActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/social/PublishLocActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/social/PublishLocActivity;Landroid/view/View;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/social/PublishLocActivity;

    const-string v0, "field \'imgTopBack\' and method \'onClick\'"

    const v1, 0x7f0a02d3

    .line 33
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'imgTopBack\'"

    .line 34
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/social/PublishLocActivity;->imgTopBack:Landroid/widget/ImageView;

    .line 35
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity_ViewBinding;->view7f0a02d3:Landroid/view/View;

    .line 36
    new-instance v1, Lcom/kugoo/kugookirin/social/PublishLocActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/social/PublishLocActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/social/PublishLocActivity_ViewBinding;Lcom/kugoo/kugookirin/social/PublishLocActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'txtTitle\'"

    .line 42
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05e8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/PublishLocActivity;->txtTitle:Landroid/widget/TextView;

    const-string v0, "field \'tvRight\'"

    .line 43
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05df

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/PublishLocActivity;->tvRight:Landroid/widget/TextView;

    const-string v0, "field \'imgRight\'"

    .line 44
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a02d2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/PublishLocActivity;->imgRight:Landroid/widget/ImageView;

    const-string v0, "field \'locRv\'"

    .line 45
    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0a0346

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/PublishLocActivity;->locRv:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "field \'loadLinear\'"

    .line 46
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0341

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/kugoo/kugookirin/social/PublishLocActivity;->loadLinear:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/social/PublishLocActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/social/PublishLocActivity;

    .line 56
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->imgTopBack:Landroid/widget/ImageView;

    .line 57
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->txtTitle:Landroid/widget/TextView;

    .line 58
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->tvRight:Landroid/widget/TextView;

    .line 59
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->imgRight:Landroid/widget/ImageView;

    .line 60
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->locRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->loadLinear:Landroid/widget/LinearLayout;

    .line 63
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity_ViewBinding;->view7f0a02d3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity_ViewBinding;->view7f0a02d3:Landroid/view/View;

    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
