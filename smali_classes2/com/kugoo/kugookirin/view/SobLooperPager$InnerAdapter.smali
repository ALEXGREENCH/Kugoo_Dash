.class public abstract Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SobLooperPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/view/SobLooperPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InnerAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 142
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method protected abstract getDataSize()I
.end method

.method protected abstract getSubView(Landroid/view/ViewGroup;I)Landroid/view/View;
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;->getDataSize()I

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;->getDataSize()I

    move-result v0

    rem-int/2addr p2, v0

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;->getSubView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    .line 152
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
