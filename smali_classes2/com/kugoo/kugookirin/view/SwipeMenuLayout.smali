.class public Lcom/kugoo/kugookirin/view/SwipeMenuLayout;
.super Landroid/widget/FrameLayout;
.source "SwipeMenuLayout.java"


# static fields
.field private static final DURATION:I = 0x15e

.field private static final STATE_CLOSE:I = 0x0

.field private static final STATE_OPEN:I = 0x1


# instance fields
.field private isFling:Z

.field private mBaseX:I

.field private mCloseInterpolator:Landroid/view/animation/Interpolator;

.field private mCloseScroller:Landroidx/core/widget/ScrollerCompat;

.field private mContentView:Landroid/view/View;

.field private mDownX:I

.field private mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field private mMenuView:Lcom/kugoo/kugookirin/view/SwipeMenuView;

.field private mMinimumVelocity:I

.field private mOpenInterpolator:Landroid/view/animation/Interpolator;

.field private mOpenScroller:Landroidx/core/widget/ScrollerCompat;

.field private mTouchSlop:I

.field private state:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/kugoo/kugookirin/view/SwipeMenuView;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;-><init>(Landroid/view/View;Lcom/kugoo/kugookirin/view/SwipeMenuView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/kugoo/kugookirin/view/SwipeMenuView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->state:I

    .line 46
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mContentView:Landroid/view/View;

    .line 47
    iput-object p2, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mMenuView:Lcom/kugoo/kugookirin/view/SwipeMenuView;

    .line 48
    invoke-virtual {p2, p0}, Lcom/kugoo/kugookirin/view/SwipeMenuView;->setLayout(Lcom/kugoo/kugookirin/view/SwipeMenuLayout;)V

    .line 49
    iput-object p3, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mCloseInterpolator:Landroid/view/animation/Interpolator;

    .line 50
    iput-object p4, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    .line 51
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/kugoo/kugookirin/view/SwipeMenuLayout;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->isFling:Z

    return p1
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/view/SwipeMenuLayout;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mTouchSlop:I

    return p0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/view/SwipeMenuLayout;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mMinimumVelocity:I

    return p0
.end method

.method private init()V
    .locals 3

    .line 55
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mTouchSlop:I

    .line 56
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x400ccccd    # 2.2f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mMinimumVelocity:I

    .line 59
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mMenuView:Lcom/kugoo/kugookirin/view/SwipeMenuView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/SwipeMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->addView(Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mMenuView:Lcom/kugoo/kugookirin/view/SwipeMenuView;

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->addView(Landroid/view/View;)V

    .line 65
    new-instance v0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout$1;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout$1;-><init>(Lcom/kugoo/kugookirin/view/SwipeMenuLayout;)V

    .line 81
    new-instance v1, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 83
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mCloseInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mCloseInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1}, Landroidx/core/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroidx/core/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mCloseScroller:Landroidx/core/widget/ScrollerCompat;

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/widget/ScrollerCompat;->create(Landroid/content/Context;)Landroidx/core/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mCloseScroller:Landroidx/core/widget/ScrollerCompat;

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1}, Landroidx/core/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroidx/core/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mOpenScroller:Landroidx/core/widget/ScrollerCompat;

    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/widget/ScrollerCompat;->create(Landroid/content/Context;)Landroidx/core/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mOpenScroller:Landroidx/core/widget/ScrollerCompat;

    :goto_1
    return-void
.end method

.method private swipe(I)V
    .locals 5

    .line 153
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mMenuView:Lcom/kugoo/kugookirin/view/SwipeMenuView;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/view/SwipeMenuView;->getWidth()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 154
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mMenuView:Lcom/kugoo/kugookirin/view/SwipeMenuView;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/view/SwipeMenuView;->getWidth()I

    move-result p1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mContentView:Landroid/view/View;

    neg-int v1, p1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mContentView:Landroid/view/View;

    .line 164
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->getMeasuredHeight()I

    move-result v4

    .line 163
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 165
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mMenuView:Lcom/kugoo/kugookirin/view/SwipeMenuView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mMenuView:Lcom/kugoo/kugookirin/view/SwipeMenuView;

    invoke-virtual {v2}, Lcom/kugoo/kugookirin/view/SwipeMenuView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mContentView:Landroid/view/View;

    .line 166
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mMenuView:Lcom/kugoo/kugookirin/view/SwipeMenuView;

    invoke-virtual {v4}, Lcom/kugoo/kugookirin/view/SwipeMenuView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, p1

    iget-object p1, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mMenuView:Lcom/kugoo/kugookirin/view/SwipeMenuView;

    .line 167
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/view/SwipeMenuView;->getBottom()I

    move-result p1

    .line 165
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/kugoo/kugookirin/view/SwipeMenuView;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public closeMenu()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mCloseScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mCloseScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->abortAnimation()V

    .line 222
    :cond_0
    iget v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 223
    iput v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->state:I

    .line 224
    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->swipe(I)V

    :cond_1
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .line 173
    iget v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mOpenScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mOpenScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->getCurrX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->swipe(I)V

    .line 178
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->postInvalidate()V

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mCloseScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mBaseX:I

    iget-object v1, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mCloseScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroidx/core/widget/ScrollerCompat;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->swipe(I)V

    .line 185
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->postInvalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCloseInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mCloseInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getOpenInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getmMenuView()Lcom/kugoo/kugookirin/view/SwipeMenuView;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mMenuView:Lcom/kugoo/kugookirin/view/SwipeMenuView;

    return-object v0
.end method

.method public isOpen()Z
    .locals 2

    .line 238
    iget v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 109
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mContentView:Landroid/view/View;

    .line 110
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    const/4 p4, 0x0

    .line 109
    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/view/View;->layout(IIII)V

    .line 112
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mMenuView:Lcom/kugoo/kugookirin/view/SwipeMenuView;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->getMeasuredWidth()I

    move-result p2

    .line 113
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->getMeasuredWidth()I

    move-result p3

    iget-object p5, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mMenuView:Lcom/kugoo/kugookirin/view/SwipeMenuView;

    invoke-virtual {p5}, Lcom/kugoo/kugookirin/view/SwipeMenuView;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p3, p5

    iget-object p5, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mContentView:Landroid/view/View;

    .line 114
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    .line 112
    invoke-virtual {p1, p2, p4, p3, p5}, Lcom/kugoo/kugookirin/view/SwipeMenuView;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 99
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 101
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mMenuView:Lcom/kugoo/kugookirin/view/SwipeMenuView;

    const/4 p2, 0x0

    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 103
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 102
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 101
    invoke-virtual {p1, p2, v0}, Lcom/kugoo/kugookirin/view/SwipeMenuView;->measure(II)V

    return-void
.end method

.method public onSwipe(Landroid/view/MotionEvent;)V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 127
    :cond_0
    iget v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mDownX:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    .line 129
    iget v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->state:I

    if-ne v0, v2, :cond_1

    .line 130
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mMenuView:Lcom/kugoo/kugookirin/view/SwipeMenuView;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/view/SwipeMenuView;->getWidth()I

    move-result v0

    add-int/2addr p1, v0

    .line 132
    :cond_1
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->swipe(I)V

    goto :goto_1

    .line 136
    :cond_2
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->isFling:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mDownX:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr v0, p1

    iget-object p1, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mMenuView:Lcom/kugoo/kugookirin/view/SwipeMenuView;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/view/SwipeMenuView;->getWidth()I

    move-result p1

    div-int/2addr p1, v1

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_3

    goto :goto_0

    .line 140
    :cond_3
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->closeMenu()V

    goto :goto_1

    .line 137
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->smoothOpenMenu()V

    goto :goto_1

    .line 122
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mDownX:I

    const/4 p1, 0x0

    .line 123
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->isFling:Z

    :goto_1
    return-void
.end method

.method public openMenu()V
    .locals 1

    .line 231
    iget v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 232
    iput v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->state:I

    .line 233
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mMenuView:Lcom/kugoo/kugookirin/view/SwipeMenuView;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/view/SwipeMenuView;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->swipe(I)V

    :cond_0
    return-void
.end method

.method public setCloseInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mCloseInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setOpenInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public smoothCloseMenu()V
    .locals 7

    const/4 v0, 0x0

    .line 194
    iput v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->state:I

    .line 195
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v4, v0

    iput v4, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mBaseX:I

    .line 198
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mCloseScroller:Landroidx/core/widget/ScrollerCompat;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x15e

    invoke-virtual/range {v1 .. v6}, Landroidx/core/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 199
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->postInvalidate()V

    return-void
.end method

.method public smoothOpenMenu()V
    .locals 7

    const/4 v0, 0x1

    .line 205
    iput v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->state:I

    .line 211
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mOpenScroller:Landroidx/core/widget/ScrollerCompat;

    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v2, v0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->mMenuView:Lcom/kugoo/kugookirin/view/SwipeMenuView;

    .line 212
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/view/SwipeMenuView;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x15e

    .line 211
    invoke-virtual/range {v1 .. v6}, Landroidx/core/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 213
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->postInvalidate()V

    return-void
.end method
