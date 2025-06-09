.class public Lcom/kugoo/kugookirin/social/DiscoverSearchActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DiscoverSearchActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;

.field private view7f0a01da:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;)V
    .locals 1

    .line 25
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;Landroid/view/View;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;

    const-string v0, "field \'discoverSearchTab\'"

    .line 33
    const-class v1, Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f0a01de

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->discoverSearchTab:Lcom/google/android/material/tabs/TabLayout;

    const-string v0, "field \'discoverSearchViewPager\'"

    .line 34
    const-class v1, Landroidx/viewpager/widget/ViewPager;

    const v2, 0x7f0a01dd

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->discoverSearchViewPager:Landroidx/viewpager/widget/ViewPager;

    const-string v0, "field \'discoverSearchBackBtn\' and method \'onClick\'"

    const v1, 0x7f0a01da

    .line 35
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'discoverSearchBackBtn\'"

    .line 36
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->discoverSearchBackBtn:Landroid/widget/TextView;

    .line 37
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity_ViewBinding;->view7f0a01da:Landroid/view/View;

    .line 38
    new-instance v1, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/social/DiscoverSearchActivity_ViewBinding;Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'searchEt\'"

    .line 44
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0a01db

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p1, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->searchEt:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;

    .line 54
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->discoverSearchTab:Lcom/google/android/material/tabs/TabLayout;

    .line 55
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->discoverSearchViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 56
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->discoverSearchBackBtn:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->searchEt:Landroid/widget/EditText;

    .line 59
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity_ViewBinding;->view7f0a01da:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity_ViewBinding;->view7f0a01da:Landroid/view/View;

    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
