.class Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

.field final synthetic val$deltaScale:F

.field final synthetic val$destX:F

.field final synthetic val$destY:F

.field final synthetic val$durationMs:F

.field final synthetic val$oldScale:F

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;FJFFFF)V
    .locals 0

    .line 949
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iput p2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->val$durationMs:F

    iput-wide p3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->val$startTime:J

    iput p5, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->val$deltaScale:F

    iput p6, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->val$oldScale:F

    iput p7, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->val$destX:F

    iput p8, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->val$destY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 953
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 954
    iget v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->val$durationMs:F

    iget-wide v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->val$startTime:J

    sub-long/2addr v0, v3

    long-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 955
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v2, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mEasing:Lit/sephiroth/android/library/easing/Easing;

    float-to-double v3, v0

    const-wide/16 v5, 0x0

    iget v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->val$deltaScale:F

    float-to-double v7, v1

    iget v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->val$durationMs:F

    float-to-double v9, v1

    invoke-interface/range {v2 .. v10}, Lit/sephiroth/android/library/easing/Easing;->easeInOut(DDDD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 956
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->val$oldScale:F

    add-float/2addr v3, v1

    iget v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->val$destX:F

    iget v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->val$destY:F

    invoke-virtual {v2, v3, v1, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(FFF)V

    .line 957
    iget v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->val$durationMs:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 958
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 960
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onZoomAnimationCompleted(F)V

    .line 961
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->center(ZZ)V

    :goto_0
    return-void
.end method
