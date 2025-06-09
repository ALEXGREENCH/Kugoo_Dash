.class public Lcom/kugoo/kugookirin/view/MyTabLayout;
.super Lcom/google/android/material/tabs/TabLayout;
.source "MyTabLayout.java"


# instance fields
.field private touchAble:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/view/MyTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, p2, v0}, Lcom/kugoo/kugookirin/view/MyTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/view/MyTabLayout;->touchAble:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/view/MyTabLayout;->touchAble:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 33
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setTouchAble(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/view/MyTabLayout;->touchAble:Z

    return-void
.end method
