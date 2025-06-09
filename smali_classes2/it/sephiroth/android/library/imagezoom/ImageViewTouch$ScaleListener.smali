.class public Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ImageViewTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScaleListener"
.end annotation


# instance fields
.field protected mScaled:Z

.field final synthetic this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    const/4 p1, 0x0

    .line 286
    iput-boolean p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;->mScaled:Z

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .line 290
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v1

    sub-float/2addr v0, v1

    .line 291
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getScale()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float/2addr v1, v2

    .line 293
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-boolean v2, v2, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleEnabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 294
    iget-boolean v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;->mScaled:Z

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iput-boolean v3, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mUserScaled:Z

    .line 296
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMaxScale()F

    move-result v0

    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMinScale()F

    move-result v2

    const v4, 0x3dcccccd    # 0.1f

    sub-float/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 297
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-virtual {v1, v0, v2, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->zoomTo(FFF)V

    .line 298
    iget-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iput v3, p1, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mDoubleTapDirection:I

    .line 299
    iget-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->invalidate()V

    return v3

    :cond_0
    if-nez v2, :cond_1

    .line 305
    iput-boolean v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;->mScaled:Z

    :cond_1
    return v3
.end method
