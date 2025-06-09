.class public Lcom/kugoo/kugookirin/MainActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MainActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/MainActivity;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/MainActivity;)V
    .locals 1

    .line 19
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/MainActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/MainActivity;Landroid/view/View;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/kugoo/kugookirin/MainActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/MainActivity;

    const-string v0, "field \'fragmentVp\'"

    .line 26
    const-class v1, Lcom/kugoo/kugookirin/view/NoSwipeViewPager;

    const v2, 0x7f0a027d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/view/NoSwipeViewPager;

    iput-object v0, p1, Lcom/kugoo/kugookirin/MainActivity;->fragmentVp:Lcom/kugoo/kugookirin/view/NoSwipeViewPager;

    const-string v0, "field \'bottomTabLayout\'"

    .line 27
    const-class v1, Lcom/kugoo/kugookirin/view/MyTabLayout;

    const v2, 0x7f0a00a2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kugoo/kugookirin/view/MyTabLayout;

    iput-object p2, p1, Lcom/kugoo/kugookirin/MainActivity;->bottomTabLayout:Lcom/kugoo/kugookirin/view/MyTabLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/kugoo/kugookirin/MainActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/MainActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/kugoo/kugookirin/MainActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/MainActivity;

    .line 37
    iput-object v1, v0, Lcom/kugoo/kugookirin/MainActivity;->fragmentVp:Lcom/kugoo/kugookirin/view/NoSwipeViewPager;

    .line 38
    iput-object v1, v0, Lcom/kugoo/kugookirin/MainActivity;->bottomTabLayout:Lcom/kugoo/kugookirin/view/MyTabLayout;

    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
