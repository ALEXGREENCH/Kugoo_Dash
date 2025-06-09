.class public Lcom/mob/tools/gui/MobViewPager;
.super Landroid/view/ViewGroup;


# static fields
.field private static final DECELERATION:I = 0xa

.field private static final SNAP_VELOCITY:I = 0x1f4

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

.field private currentPage:Landroid/view/View;

.field private currentScreen:I

.field private flingVelocity:I

.field private lastMotionX:F

.field private lastMotionY:F

.field private maximumVelocity:I

.field private nextPage:Landroid/view/View;

.field private pageWidth:I

.field private previousPage:Landroid/view/View;

.field private screenCount:I

.field private scroller:Landroid/widget/Scroller;

.field private skipScreen:Z

.field private touchSlop:I

.field private touchState:I

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/mob/tools/gui/MobViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/mob/tools/gui/MobViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobViewPager;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mob/tools/gui/MobViewPager;IZ)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreenOnUIThread(IZ)V

    return-void
.end method

.method private adjustScroller()V
    .locals 8

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/mob/tools/gui/MobViewPager;->skipScreen:Z

    .line 150
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    if-ne v0, v1, :cond_0

    .line 151
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 153
    :cond_0
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    .line 154
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v1

    sub-int v5, v0, v1

    .line 155
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    if-eqz v5, :cond_1

    .line 157
    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 159
    :cond_1
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->invalidate()V

    return-void
.end method

.method private handleInterceptMove(Landroid/view/MotionEvent;)V
    .locals 3

    .line 385
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 387
    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionX:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    .line 388
    iget v2, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionY:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    if-ge p1, v1, :cond_0

    .line 390
    iget p1, p0, Lcom/mob/tools/gui/MobViewPager;->touchSlop:I

    if-le v1, p1, :cond_0

    const/4 p1, 0x1

    .line 391
    iput p1, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    .line 392
    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionX:F

    :cond_0
    return-void
.end method

.method private handleScrollMove(Landroid/view/MotionEvent;)V
    .locals 3

    .line 477
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-nez v0, :cond_0

    return-void

    .line 482
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 483
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionX:F

    sub-float/2addr v0, p1

    float-to-int v0, v0

    .line 484
    iput p1, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionX:F

    const/4 p1, 0x0

    if-gez v0, :cond_1

    .line 487
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v1

    if-lez v1, :cond_2

    .line 489
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v1

    neg-int v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/mob/tools/gui/MobViewPager;->scrollBy(II)V

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    .line 492
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_2

    .line 493
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/mob/tools/gui/MobViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 494
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_2

    .line 497
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/mob/tools/gui/MobViewPager;->scrollBy(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 52
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Lcom/mob/tools/gui/MobViewPager$1;

    invoke-direct {v1, p0}, Lcom/mob/tools/gui/MobViewPager$1;-><init>(Lcom/mob/tools/gui/MobViewPager;)V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    .line 59
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->touchSlop:I

    .line 61
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/mob/tools/gui/MobViewPager;->maximumVelocity:I

    return-void
.end method

.method private onScreenChange(I)V
    .locals 7

    .line 205
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz v0, :cond_8

    .line 206
    iget-boolean v0, p0, Lcom/mob/tools/gui/MobViewPager;->skipScreen:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v1, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->removeAllViews()V

    .line 209
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-lez v0, :cond_0

    .line 210
    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    invoke-virtual {v1, v0, v2, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    .line 211
    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    .line 214
    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;)V

    .line 215
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_7

    .line 216
    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    invoke-virtual {v1, v0, v2, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    .line 217
    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 220
    :cond_1
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-le v0, p1, :cond_4

    move v0, v3

    .line 221
    :goto_0
    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    sub-int/2addr v1, p1

    if-ge v0, v1, :cond_7

    add-int v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    .line 223
    iget-object v4, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    .line 224
    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    iput-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    .line 225
    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    iput-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    .line 227
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getChildCount()I

    move-result v5

    if-lt v5, v2, :cond_2

    .line 228
    invoke-virtual {p0, v3}, Lcom/mob/tools/gui/MobViewPager;->removeViewAt(I)V

    .line 230
    :cond_2
    iget v5, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 231
    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5, v1, v4, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    .line 232
    invoke-virtual {p0, v1}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 234
    :cond_3
    iput-object v4, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v3

    .line 238
    :goto_2
    iget v4, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    sub-int v4, p1, v4

    if-ge v0, v4, :cond_7

    sub-int v4, p1, v0

    add-int/lit8 v4, v4, -0x1

    .line 240
    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    .line 241
    iget-object v6, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    iput-object v6, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    .line 242
    iget-object v6, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    iput-object v6, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    .line 244
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getChildCount()I

    move-result v6

    if-lt v6, v2, :cond_5

    .line 245
    invoke-virtual {p0, v1}, Lcom/mob/tools/gui/MobViewPager;->removeViewAt(I)V

    :cond_5
    if-lez v4, :cond_6

    .line 248
    iget-object v6, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v6, v4, v5, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    .line 249
    invoke-virtual {p0, v4, v3}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;I)V

    goto :goto_3

    .line 251
    :cond_6
    iput-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 256
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/gui/ViewPagerAdapter;->onScreenChange(II)V

    :cond_8
    return-void
.end method

.method private scrollToScreenOnUIThread(IZ)V
    .locals 7

    .line 286
    iput-boolean p2, p0, Lcom/mob/tools/gui/MobViewPager;->skipScreen:Z

    .line 287
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    if-ne v0, v1, :cond_0

    .line 288
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getWidth()I

    move-result v0

    mul-int/2addr p1, v0

    .line 291
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v0

    sub-int v4, p1, v0

    .line 292
    iget-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    if-eqz v4, :cond_4

    const/4 p1, 0x0

    if-nez p2, :cond_3

    .line 296
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    .line 297
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->flingVelocity:I

    if-eqz v0, :cond_1

    .line 298
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 299
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v1, p1

    mul-int/2addr p1, p1

    mul-int/lit8 v0, v0, 0x14

    sub-int/2addr p1, v0

    int-to-double v5, p1

    .line 300
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    sub-double/2addr v1, v5

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v5

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    div-double/2addr v1, v5

    double-to-int p1, v1

    :cond_1
    if-eqz p1, :cond_2

    if-le p1, p2, :cond_3

    :cond_2
    move v6, p2

    goto :goto_0

    :cond_3
    move v6, p1

    .line 306
    :goto_0
    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 308
    :cond_4
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->invalidate()V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    if-gtz v0, :cond_0

    goto :goto_1

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/mob/tools/gui/MobViewPager;->scrollTo(II)V

    .line 184
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->postInvalidate()V

    goto :goto_0

    .line 186
    :cond_1
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    .line 187
    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    .line 188
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getWidth()I

    move-result v2

    .line 189
    div-int v3, v1, v2

    .line 190
    rem-int/2addr v1, v2

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 193
    :cond_2
    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-eq v0, v1, :cond_3

    .line 195
    invoke-direct {p0, v0}, Lcom/mob/tools/gui/MobViewPager;->onScreenChange(I)V

    .line 198
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz v0, :cond_4

    .line 199
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 200
    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    invoke-virtual {v1, v0}, Lcom/mob/tools/gui/ViewPagerAdapter;->onScreenChanging(F)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getDrawingTime()J

    move-result-wide v0

    .line 168
    iget v2, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-lez v2, :cond_1

    .line 169
    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/mob/tools/gui/MobViewPager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/mob/tools/gui/MobViewPager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 172
    iget v2, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 173
    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/mob/tools/gui/MobViewPager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-nez v0, :cond_0

    .line 313
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    return p1

    :cond_0
    const/16 v0, 0x11

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    .line 317
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-lez v0, :cond_2

    sub-int/2addr v0, v2

    .line 318
    invoke-direct {p0, v0, v1}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreenOnUIThread(IZ)V

    return v2

    :cond_1
    const/16 v0, 0x42

    if-ne p2, v0, :cond_2

    .line 322
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_2

    add-int/2addr v0, v2

    .line 323
    invoke-direct {p0, v0, v1}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreenOnUIThread(IZ)V

    return v2

    .line 327
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public getCurrentScreen()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 335
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 336
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    if-eqz v3, :cond_0

    return v1

    .line 340
    :cond_0
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_1

    .line 341
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    .line 343
    :cond_1
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    goto :goto_0

    .line 351
    :cond_2
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobViewPager;->handleInterceptMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 369
    :cond_3
    iget-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_4

    .line 370
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 371
    iput-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    .line 373
    :cond_4
    iput v3, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    goto :goto_0

    .line 355
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 357
    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionX:F

    .line 358
    iput p1, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionY:F

    .line 365
    iget-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v1

    iput p1, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    .line 381
    :goto_0
    iget p1, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    move v1, v3

    :goto_1
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 124
    iget-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 130
    iget p1, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    mul-int p2, p1, p4

    const/4 p3, 0x0

    if-lez p1, :cond_1

    .line 132
    iget-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    sub-int v0, p2, p4

    invoke-virtual {p1, v0, p3, p2, p5}, Landroid/view/View;->layout(IIII)V

    .line 134
    :cond_1
    iget-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    add-int v0, p2, p4

    invoke-virtual {p1, p2, p3, v0, p5}, Landroid/view/View;->layout(IIII)V

    .line 135
    iget p1, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget p2, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_2

    .line 136
    iget-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    add-int/2addr p4, v0

    invoke-virtual {p1, v0, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 139
    :cond_2
    iget p1, p0, Lcom/mob/tools/gui/MobViewPager;->pageWidth:I

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getWidth()I

    move-result p2

    if-eq p1, p2, :cond_3

    .line 140
    iget p1, p0, Lcom/mob/tools/gui/MobViewPager;->pageWidth:I

    .line 141
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/mob/tools/gui/MobViewPager;->pageWidth:I

    if-eqz p1, :cond_3

    .line 143
    invoke-direct {p0}, Lcom/mob/tools/gui/MobViewPager;->adjustScroller()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 108
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 109
    iget-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    if-gtz p1, :cond_0

    goto :goto_1

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getMeasuredWidth()I

    move-result p1

    .line 114
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getMeasuredHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    .line 115
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 116
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/4 v0, 0x0

    .line 117
    :goto_0
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 118
    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/MobViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 119
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 397
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 402
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 406
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 407
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v3, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v3, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto/16 :goto_1

    .line 469
    :cond_2
    iput v1, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    goto/16 :goto_1

    .line 431
    :cond_3
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    if-ne v0, v3, :cond_4

    .line 432
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobViewPager;->handleScrollMove(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 439
    :cond_4
    invoke-virtual {p0, p1}, Lcom/mob/tools/gui/MobViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    if-ne v0, v3, :cond_b

    .line 440
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobViewPager;->handleScrollMove(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 445
    :cond_5
    iget p1, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    if-ne p1, v3, :cond_8

    .line 446
    iget-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->maximumVelocity:I

    int-to-float v0, v0

    const/16 v2, 0x3e8

    invoke-virtual {p1, v2, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 447
    iget-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/mob/tools/gui/MobViewPager;->flingVelocity:I

    const/16 v0, 0x1f4

    if-le p1, v0, :cond_6

    .line 449
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-lez v0, :cond_6

    sub-int/2addr v0, v3

    .line 451
    invoke-direct {p0, v0, v1}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreenOnUIThread(IZ)V

    goto :goto_0

    :cond_6
    const/16 v0, -0x1f4

    if-ge p1, v0, :cond_7

    .line 452
    iget p1, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    sub-int/2addr v0, v3

    if-ge p1, v0, :cond_7

    add-int/2addr p1, v3

    .line 454
    invoke-direct {p0, p1, v1}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreenOnUIThread(IZ)V

    goto :goto_0

    .line 456
    :cond_7
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getWidth()I

    move-result p1

    .line 457
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v0

    div-int/lit8 v2, p1, 0x2

    add-int/2addr v0, v2

    div-int/2addr v0, p1

    .line 458
    invoke-direct {p0, v0, v1}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreenOnUIThread(IZ)V

    .line 461
    :goto_0
    iget-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_8

    .line 462
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 463
    iput-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    .line 466
    :cond_8
    iput v1, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    goto :goto_1

    .line 417
    :cond_9
    iget p1, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    if-eqz p1, :cond_b

    .line 422
    iget-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_a

    .line 423
    iget-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 427
    :cond_a
    iput v2, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionX:F

    :cond_b
    :goto_1
    return v3
.end method

.method public scrollLeft(Z)V
    .locals 1

    .line 261
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 262
    invoke-virtual {p0, v0, p1}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreen(IZ)V

    :cond_0
    return-void
.end method

.method public scrollRight(Z)V
    .locals 2

    .line 267
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 268
    invoke-virtual {p0, v0, p1}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreen(IZ)V

    :cond_0
    return-void
.end method

.method public scrollToScreen(IZ)V
    .locals 1

    .line 273
    new-instance v0, Lcom/mob/tools/gui/MobViewPager$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/mob/tools/gui/MobViewPager$2;-><init>(Lcom/mob/tools/gui/MobViewPager;IZ)V

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/MobViewPager;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scrollToScreen(IZZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 282
    invoke-virtual {p0, p1, p2}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreen(IZ)V

    return-void
.end method

.method public setAdapter(Lcom/mob/tools/gui/ViewPagerAdapter;)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/ViewPagerAdapter;->setMobViewPager(Lcom/mob/tools/gui/MobViewPager;)V

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz p1, :cond_1

    .line 70
    invoke-virtual {p1, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->setMobViewPager(Lcom/mob/tools/gui/MobViewPager;)V

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 74
    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    .line 75
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->removeAllViews()V

    return-void

    .line 79
    :cond_2
    invoke-virtual {p1}, Lcom/mob/tools/gui/ViewPagerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    if-gtz v1, :cond_3

    .line 81
    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    .line 82
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->removeAllViews()V

    return-void

    .line 86
    :cond_3
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    const/4 v2, 0x1

    if-gt v1, v0, :cond_4

    sub-int/2addr v1, v2

    .line 87
    invoke-direct {p0, v1, v2}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreenOnUIThread(IZ)V

    goto :goto_0

    .line 89
    :cond_4
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->removeAllViews()V

    .line 90
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-lez v0, :cond_5

    sub-int/2addr v0, v2

    .line 91
    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    invoke-virtual {p1, v0, v1, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    .line 92
    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;)V

    .line 94
    :cond_5
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    invoke-virtual {p1, v0, v1, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    .line 95
    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;)V

    .line 96
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_6

    add-int/2addr v0, v2

    .line 97
    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    invoke-virtual {p1, v0, v1, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    .line 98
    invoke-virtual {p0, p1}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;)V

    :cond_6
    :goto_0
    return-void
.end method
