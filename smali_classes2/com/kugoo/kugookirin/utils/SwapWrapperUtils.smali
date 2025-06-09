.class public Lcom/kugoo/kugookirin/utils/SwapWrapperUtils;
.super Ljava/lang/Object;
.source "SwapWrapperUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrap(Landroid/view/ViewGroup;ILcom/kugoo/kugookirin/view/SwipeMenuView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)Lcom/kugoo/kugookirin/view/SwipeMenuLayout;
    .locals 2

    .line 28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 29
    new-instance p1, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;-><init>(Landroid/view/View;Lcom/kugoo/kugookirin/view/SwipeMenuView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    return-object p1
.end method
