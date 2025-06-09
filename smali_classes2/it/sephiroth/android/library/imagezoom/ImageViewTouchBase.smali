.class public abstract Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"

# interfaces
.implements Lit/sephiroth/android/library/imagezoom/utils/IDisposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;,
        Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnLayoutChangeListener;,
        Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnDrawableChangeListener;
    }
.end annotation


# static fields
.field protected static final LOG_ENABLED:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "ImageViewTouchBase"

.field public static final VERSION:Ljava/lang/String; = "1.0.4"

.field public static final ZOOM_INVALID:F = -1.0f


# instance fields
.field protected final DEFAULT_ANIMATION_DURATION:I

.field protected mBaseMatrix:Landroid/graphics/Matrix;

.field private mBitmapChanged:Z

.field protected mBitmapRect:Landroid/graphics/RectF;

.field private mCenter:Landroid/graphics/PointF;

.field protected mCenterRect:Landroid/graphics/RectF;

.field protected final mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDrawableChangeListener:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnDrawableChangeListener;

.field protected mEasing:Lit/sephiroth/android/library/easing/Easing;

.field protected mHandler:Landroid/os/Handler;

.field protected mLayoutRunnable:Ljava/lang/Runnable;

.field protected final mMatrixValues:[F

.field private mMaxZoom:F

.field private mMaxZoomDefined:Z

.field private mMinZoom:F

.field private mMinZoomDefined:Z

.field protected mNextMatrix:Landroid/graphics/Matrix;

.field private mOnLayoutChangeListener:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnLayoutChangeListener;

.field protected mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

.field private mScaleTypeChanged:Z

.field protected mScrollRect:Landroid/graphics/RectF;

.field protected mSuppMatrix:Landroid/graphics/Matrix;

.field private mThisHeight:I

.field private mThisWidth:I

.field protected mUserScaled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, p2, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    new-instance v0, Lit/sephiroth/android/library/easing/Cubic;

    invoke-direct {v0}, Lit/sephiroth/android/library/easing/Cubic;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mEasing:Lit/sephiroth/android/library/easing/Easing;

    .line 73
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 74
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mLayoutRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mUserScaled:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 80
    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    .line 81
    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoom:F

    .line 87
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 88
    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMatrixValues:[F

    const/4 v0, -0x1

    .line 90
    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisWidth:I

    .line 91
    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    .line 92
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mCenter:Landroid/graphics/PointF;

    .line 94
    sget-object v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;->NONE:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    const/16 v0, 0xc8

    .line 98
    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->DEFAULT_ANIMATION_DURATION:I

    .line 100
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapRect:Landroid/graphics/RectF;

    .line 101
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mCenterRect:Landroid/graphics/RectF;

    .line 102
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScrollRect:Landroid/graphics/RectF;

    .line 117
    invoke-virtual {p0, p1, p2, p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected _setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V
    .locals 3

    if-eqz p1, :cond_0

    .line 445
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 447
    :cond_0
    iget-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    const/4 p1, 0x0

    .line 448
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float v0, p3, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    cmpl-float v0, p4, p1

    if-eqz v0, :cond_3

    .line 452
    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 453
    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 455
    iput p3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoom:F

    .line 456
    iput p4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    .line 458
    iput-boolean v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoomDefined:Z

    .line 459
    iput-boolean v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoomDefined:Z

    .line 461
    iget-object p3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    sget-object p4, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;->FIT_TO_SCREEN:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    if-eq p3, p4, :cond_1

    iget-object p3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    sget-object p4, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;->FIT_IF_BIGGER:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    if-ne p3, p4, :cond_4

    .line 463
    :cond_1
    iget p3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoom:F

    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float p3, p3, p4

    if-ltz p3, :cond_2

    .line 464
    iput-boolean v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoomDefined:Z

    .line 465
    iput p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoom:F

    .line 468
    :cond_2
    iget p3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    cmpg-float p3, p3, p4

    if-gtz p3, :cond_4

    .line 469
    iput-boolean v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoomDefined:Z

    .line 470
    iput p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    goto :goto_1

    .line 474
    :cond_3
    iput p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoom:F

    .line 475
    iput p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    .line 477
    iput-boolean v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoomDefined:Z

    .line 478
    iput-boolean v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoomDefined:Z

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    .line 482
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1, p2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mNextMatrix:Landroid/graphics/Matrix;

    .line 485
    :cond_5
    iput-boolean v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapChanged:Z

    .line 486
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->requestLayout()V

    return-void
.end method

.method protected center(ZZ)V
    .locals 1

    .line 762
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 765
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, p1, p2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getCenter(Landroid/graphics/Matrix;ZZ)Landroid/graphics/RectF;

    move-result-object p1

    .line 767
    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_1

    iget p2, p1, Landroid/graphics/RectF;->top:F

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_2

    .line 772
    :cond_1
    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, p2, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->postTranslate(FF)V

    :cond_2
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected computeMaxZoom()F
    .locals 3

    .line 531
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 537
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 538
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 539
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method protected computeMinZoom()F
    .locals 2

    .line 548
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    .line 554
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    div-float v0, v1, v0

    .line 555
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 0

    .line 969
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->clear()V

    return-void
.end method

.method protected fireOnDrawableChangeListener(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 508
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mDrawableChangeListener:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnDrawableChangeListener;

    if-eqz v0, :cond_0

    .line 509
    invoke-interface {v0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnDrawableChangeListener;->onDrawableChanged(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected fireOnLayoutChangeListener(IIII)V
    .locals 6

    .line 502
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mOnLayoutChangeListener:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 503
    invoke-interface/range {v0 .. v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnLayoutChangeListener;->onLayoutChanged(ZIIII)V

    :cond_0
    return-void
.end method

.method public getBaseScale()F
    .locals 1

    .line 758
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method public getBitmapRect()Landroid/graphics/RectF;
    .locals 1

    .line 726
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getBitmapRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method protected getBitmapRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    .line 730
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 733
    :cond_0
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    .line 734
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 735
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 736
    iget-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapRect:Landroid/graphics/RectF;

    return-object p1
.end method

.method protected getCenter()Landroid/graphics/PointF;
    .locals 1

    .line 829
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mCenter:Landroid/graphics/PointF;

    return-object v0
.end method

.method protected getCenter(Landroid/graphics/Matrix;ZZ)Landroid/graphics/RectF;
    .locals 5

    .line 777
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 779
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p1

    .line 781
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 782
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getBitmapRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p1

    .line 783
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 784
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p3, :cond_3

    .line 787
    iget p3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    int-to-float p3, p3

    cmpg-float v4, v0, p3

    if-gez v4, :cond_1

    sub-float/2addr p3, v0

    div-float/2addr p3, v3

    .line 789
    iget v0, p1, Landroid/graphics/RectF;->top:F

    :goto_0
    sub-float/2addr p3, v0

    goto :goto_1

    .line 790
    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 791
    iget p3, p1, Landroid/graphics/RectF;->top:F

    neg-float p3, p3

    goto :goto_1

    .line 792
    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float p3, v0, p3

    if-gez p3, :cond_3

    .line 793
    iget p3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    int-to-float p3, p3

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_3
    move p3, v1

    :goto_1
    if-eqz p2, :cond_6

    .line 797
    iget p2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisWidth:I

    int-to-float p2, p2

    cmpg-float v0, v2, p2

    if-gez v0, :cond_4

    sub-float/2addr p2, v2

    div-float/2addr p2, v3

    .line 799
    iget p1, p1, Landroid/graphics/RectF;->left:F

    :goto_2
    sub-float/2addr p2, p1

    goto :goto_3

    .line 800
    :cond_4
    iget v0, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 801
    iget p1, p1, Landroid/graphics/RectF;->left:F

    neg-float p2, p1

    goto :goto_3

    .line 802
    :cond_5
    iget v0, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, p2

    if-gez v0, :cond_6

    .line 803
    iget p1, p1, Landroid/graphics/RectF;->right:F

    goto :goto_2

    :cond_6
    move p2, v1

    .line 806
    :goto_3
    iget-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mCenterRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, p3, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 807
    iget-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mCenterRect:Landroid/graphics/RectF;

    return-object p1
.end method

.method protected getDefaultScale(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)F
    .locals 2

    .line 355
    sget-object v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;->FIT_TO_SCREEN:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p1, v0, :cond_0

    return v1

    .line 358
    :cond_0
    sget-object v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;->FIT_IF_BIGGER:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    if-ne p1, v0, :cond_1

    .line 360
    iget-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result p1

    div-float p1, v1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    .line 363
    :cond_1
    iget-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result p1

    div-float/2addr v1, p1

    return v1
.end method

.method public getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 639
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getDisplayType()Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;
    .locals 1

    .line 164
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    return-object v0
.end method

.method public getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 594
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getImageViewMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 2

    .line 598
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 599
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 600
    iget-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object p1
.end method

.method public getMaxScale()F
    .locals 2

    .line 570
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 571
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->computeMaxZoom()F

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    .line 573
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    return v0
.end method

.method public getMinScale()F
    .locals 2

    .line 582
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoom:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 583
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->computeMinZoom()F

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoom:F

    .line 585
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoom:F

    return v0
.end method

.method protected getProperBaseMatrix(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V
    .locals 6

    .line 649
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisWidth:I

    int-to-float v0, v0

    .line 650
    iget v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    int-to-float v1, v1

    .line 656
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 657
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    .line 659
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    cmpl-float v3, v2, v0

    const/high16 v4, 0x40000000    # 2.0f

    if-gtz v3, :cond_1

    cmpl-float v3, p1, v1

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    div-float v3, v0, v2

    div-float v5, v1, p1

    .line 674
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 675
    invoke-virtual {p2, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v4

    mul-float/2addr p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v4

    .line 679
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    :cond_1
    :goto_0
    div-float v3, v0, v2

    div-float v5, v1, p1

    .line 664
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 665
    invoke-virtual {p2, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v4

    mul-float/2addr p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v4

    .line 669
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_1
    return-void
.end method

.method protected getProperBaseMatrix2(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V
    .locals 5

    .line 695
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisWidth:I

    int-to-float v0, v0

    .line 696
    iget v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    int-to-float v1, v1

    .line 698
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 699
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    .line 701
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    div-float v3, v0, v2

    div-float v4, v1, p1

    .line 706
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 708
    invoke-virtual {p2, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    mul-float/2addr p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v2

    .line 709
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public getRotation()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 754
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1

    const/4 v0, 0x0

    .line 740
    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result p1

    return p1
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1

    .line 713
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 714
    iget-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMatrixValues:[F

    aget p1, p1, p2

    return p1
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 129
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method protected onDrawableChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 498
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->fireOnDrawableChangeListener(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onImageMatrixChanged()V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    .line 189
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    .line 195
    iget v6, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisWidth:I

    .line 196
    iget v7, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    sub-int v8, v3, v1

    .line 198
    iput v8, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisWidth:I

    sub-int v9, v4, v2

    .line 199
    iput v9, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    sub-int v6, v8, v6

    sub-int/2addr v9, v7

    .line 205
    iget-object v7, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mCenter:Landroid/graphics/PointF;

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 206
    iget-object v7, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mCenter:Landroid/graphics/PointF;

    iget v8, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    int-to-float v8, v8

    div-float/2addr v8, v10

    iput v8, v7, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_0
    move v6, v5

    move v9, v6

    .line 209
    :goto_0
    iget-object v7, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mLayoutRunnable:Ljava/lang/Runnable;

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    .line 212
    iput-object v8, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 213
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 216
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_11

    if-nez p1, :cond_2

    .line 220
    iget-boolean v10, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleTypeChanged:Z

    if-nez v10, :cond_2

    iget-boolean v10, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapChanged:Z

    if-eqz v10, :cond_16

    .line 225
    :cond_2
    iget-object v10, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    invoke-virtual {v0, v10}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDefaultScale(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)F

    .line 226
    iget-object v10, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v10}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v10

    .line 227
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    div-float v13, v12, v10

    .line 228
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 230
    iget-object v14, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v7, v14}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getProperBaseMatrix(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V

    .line 232
    iget-object v14, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v14}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v14

    .line 242
    iget-boolean v15, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapChanged:Z

    if-nez v15, :cond_8

    iget-boolean v15, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleTypeChanged:Z

    if-eqz v15, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_a

    .line 268
    iget-boolean v8, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoomDefined:Z

    const/high16 v15, -0x40800000    # -1.0f

    if-nez v8, :cond_4

    iput v15, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoom:F

    .line 269
    :cond_4
    iget-boolean v8, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoomDefined:Z

    if-nez v8, :cond_5

    iput v15, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    .line 271
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v0, v8}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    neg-int v6, v6

    int-to-float v6, v6

    neg-int v8, v9

    int-to-float v8, v8

    .line 272
    invoke-virtual {v0, v6, v8}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->postTranslate(FF)V

    .line 275
    iget-boolean v6, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mUserScaled:Z

    if-nez v6, :cond_6

    .line 276
    iget-object v6, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    invoke-virtual {v0, v6}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDefaultScale(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)F

    move-result v12

    .line 277
    invoke-virtual {v0, v12}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(F)V

    goto :goto_3

    :cond_6
    sub-float v6, v11, v13

    .line 279
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v8, v6

    const-wide v15, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v6, v8, v15

    if-lez v6, :cond_7

    div-float/2addr v10, v14

    mul-float/2addr v10, v11

    move v12, v10

    .line 282
    :cond_7
    invoke-virtual {v0, v12}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(F)V

    goto :goto_3

    .line 249
    :cond_8
    :goto_1
    iget-object v6, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mNextMatrix:Landroid/graphics/Matrix;

    if-eqz v6, :cond_9

    .line 250
    iget-object v9, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 251
    iput-object v8, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mNextMatrix:Landroid/graphics/Matrix;

    .line 252
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v6

    goto :goto_2

    .line 254
    :cond_9
    iget-object v6, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 255
    iget-object v6, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    invoke-virtual {v0, v6}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDefaultScale(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)F

    move-result v6

    :goto_2
    move v12, v6

    .line 258
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v0, v6}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 260
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v6

    cmpl-float v6, v12, v6

    if-eqz v6, :cond_a

    .line 261
    invoke-virtual {v0, v12}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(F)V

    .line 294
    :cond_a
    :goto_3
    iput-boolean v5, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mUserScaled:Z

    .line 296
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result v6

    cmpl-float v6, v12, v6

    if-gtz v6, :cond_b

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMinScale()F

    move-result v6

    cmpg-float v6, v12, v6

    if-gez v6, :cond_c

    .line 299
    :cond_b
    invoke-virtual {v0, v12}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(F)V

    :cond_c
    const/4 v6, 0x1

    .line 302
    invoke-virtual {v0, v6, v6}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->center(ZZ)V

    .line 304
    iget-boolean v6, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapChanged:Z

    if-eqz v6, :cond_d

    invoke-virtual {v0, v7}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onDrawableChanged(Landroid/graphics/drawable/Drawable;)V

    :cond_d
    if-nez p1, :cond_e

    .line 305
    iget-boolean v6, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapChanged:Z

    if-nez v6, :cond_e

    iget-boolean v6, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleTypeChanged:Z

    if-eqz v6, :cond_f

    :cond_e
    invoke-virtual {v0, v1, v2, v3, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onLayoutChanged(IIII)V

    .line 307
    :cond_f
    iget-boolean v1, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleTypeChanged:Z

    if-eqz v1, :cond_10

    iput-boolean v5, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleTypeChanged:Z

    .line 308
    :cond_10
    iget-boolean v1, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapChanged:Z

    if-eqz v1, :cond_16

    iput-boolean v5, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapChanged:Z

    goto :goto_4

    .line 316
    :cond_11
    iget-boolean v6, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapChanged:Z

    if-eqz v6, :cond_12

    invoke-virtual {v0, v7}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onDrawableChanged(Landroid/graphics/drawable/Drawable;)V

    :cond_12
    if-nez p1, :cond_13

    .line 317
    iget-boolean v6, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapChanged:Z

    if-nez v6, :cond_13

    iget-boolean v6, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleTypeChanged:Z

    if-eqz v6, :cond_14

    :cond_13
    invoke-virtual {v0, v1, v2, v3, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onLayoutChanged(IIII)V

    .line 319
    :cond_14
    iget-boolean v1, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapChanged:Z

    if-eqz v1, :cond_15

    iput-boolean v5, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapChanged:Z

    .line 320
    :cond_15
    iget-boolean v1, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleTypeChanged:Z

    if-eqz v1, :cond_16

    iput-boolean v5, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleTypeChanged:Z

    :cond_16
    :goto_4
    return-void
.end method

.method protected onLayoutChanged(IIII)V
    .locals 0

    .line 527
    invoke-virtual {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->fireOnLayoutChangeListener(IIII)V

    return-void
.end method

.method protected onZoom(F)V
    .locals 0

    return-void
.end method

.method protected onZoomAnimationCompleted(F)V
    .locals 0

    return-void
.end method

.method protected panBy(DD)V
    .locals 2

    .line 887
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 888
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScrollRect:Landroid/graphics/RectF;

    double-to-float p1, p1

    double-to-float p2, p3

    const/4 p3, 0x0

    invoke-virtual {v1, p1, p2, p3, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 889
    iget-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScrollRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->updateRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 890
    iget-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScrollRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget-object p2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScrollRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->postTranslate(FF)V

    const/4 p1, 0x1

    .line 891
    invoke-virtual {p0, p1, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->center(ZZ)V

    return-void
.end method

.method protected postScale(FFF)V
    .locals 1

    .line 824
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 825
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected postTranslate(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 815
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 816
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method public printMatrix(Landroid/graphics/Matrix;)V
    .locals 5

    const/4 v0, 0x0

    .line 718
    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    const/4 v1, 0x4

    .line 719
    invoke-virtual {p0, p1, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v1

    const/4 v2, 0x2

    .line 720
    invoke-virtual {p0, p1, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v2

    const/4 v3, 0x5

    .line 721
    invoke-virtual {p0, p1, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result p1

    .line 722
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "matrix: { x: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", y: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", scalex: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", scaley: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " }"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImageViewTouchBase"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resetDisplay()V
    .locals 1

    const/4 v0, 0x1

    .line 330
    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapChanged:Z

    .line 331
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->requestLayout()V

    return-void
.end method

.method public resetMatrix()V
    .locals 2

    .line 338
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 340
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDefaultScale(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)F

    move-result v0

    .line 341
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 347
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 348
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(F)V

    .line 351
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->postInvalidate()V

    return-void
.end method

.method public scrollBy(FF)V
    .locals 2

    float-to-double v0, p1

    float-to-double p1, p2

    .line 883
    invoke-virtual {p0, v0, v1, p1, p2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->panBy(DD)V

    return-void
.end method

.method protected scrollBy(FFD)V
    .locals 10

    float-to-double v6, p1

    float-to-double v8, p2

    .line 909
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 910
    iget-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance p2, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;

    move-object v0, p2

    move-object v1, p0

    move-wide v2, p3

    invoke-direct/range {v0 .. v9}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;DJDD)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDisplayType(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mUserScaled:Z

    .line 157
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    const/4 p1, 0x1

    .line 158
    iput-boolean p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleTypeChanged:Z

    .line 159
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 381
    invoke-virtual {p0, p1, v0, v1, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;FF)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;FF)V
    .locals 1

    if-eqz p1, :cond_0

    .line 394
    new-instance v0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;

    invoke-direct {v0, p1}, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 396
    invoke-virtual {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    :goto_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 401
    invoke-virtual {p0, p1, v0, v1, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V
    .locals 7

    .line 419
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    .line 422
    new-instance v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mLayoutRunnable:Ljava/lang/Runnable;

    return-void

    .line 431
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->_setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 2

    .line 606
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-nez p1, :cond_0

    .line 609
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 613
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    if-eqz v0, :cond_3

    .line 615
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onImageMatrixChanged()V

    :cond_3
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 369
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected setMaxScale(F)V
    .locals 0

    .line 179
    iput p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    return-void
.end method

.method protected setMinScale(F)V
    .locals 0

    .line 172
    iput p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoom:F

    return-void
.end method

.method public setOnDrawableChangedListener(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnDrawableChangeListener;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mDrawableChangeListener:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnDrawableChangeListener;

    return-void
.end method

.method public setOnLayoutChangeListener(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnLayoutChangeListener;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mOnLayoutChangeListener:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnLayoutChangeListener;

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 134
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    .line 135
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :cond_0
    const-string p1, "ImageViewTouchBase"

    const-string v0, "Unsupported scaletype. Only MATRIX can be used"

    .line 137
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected updateRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 897
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->top:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 898
    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisWidth:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 899
    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float v0, v1, v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 900
    :cond_3
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v2

    iget v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    add-int/lit8 v2, v2, 0x0

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_4

    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 901
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    add-int/lit8 v0, v0, 0x0

    int-to-float v0, v0

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 902
    :cond_4
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v0

    float-to-int v0, v1

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 903
    :cond_5
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iget v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisWidth:I

    add-int/lit8 v2, v1, 0x0

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_6

    add-int/lit8 v1, v1, 0x0

    int-to-float v0, v1

    iget p1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p1

    float-to-int p1, v0

    int-to-float p1, p1

    iput p1, p2, Landroid/graphics/RectF;->left:F

    :cond_6
    return-void
.end method

.method protected zoomTo(F)V
    .locals 2

    .line 837
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result p1

    .line 838
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMinScale()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMinScale()F

    move-result p1

    .line 845
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    .line 846
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1, v1, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(FFF)V

    return-void
.end method

.method public zoomTo(FF)V
    .locals 2

    .line 858
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    .line 859
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1, v1, v0, p2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(FFFF)V

    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 1

    .line 863
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result p1

    .line 865
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v0

    div-float/2addr p1, v0

    .line 867
    invoke-virtual {p0, p1, p2, p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->postScale(FFF)V

    .line 868
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result p1

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onZoom(F)V

    const/4 p1, 0x1

    .line 869
    invoke-virtual {p0, p1, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->center(ZZ)V

    return-void
.end method

.method protected zoomTo(FFFF)V
    .locals 9

    .line 935
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result p1

    .line 937
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 938
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v6

    sub-float v5, p1, v6

    .line 942
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 943
    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    const/4 v1, 0x1

    .line 944
    invoke-virtual {p0, v0, v1, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getCenter(Landroid/graphics/Matrix;ZZ)Landroid/graphics/RectF;

    move-result-object v0

    .line 946
    iget v1, v0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v1, p1

    add-float v7, p2, v1

    .line 947
    iget p2, v0, Landroid/graphics/RectF;->top:F

    mul-float/2addr p2, p1

    add-float v8, p3, p2

    .line 949
    iget-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance p2, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;

    move-object v0, p2

    move-object v1, p0

    move v2, p4

    invoke-direct/range {v0 .. v8}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
