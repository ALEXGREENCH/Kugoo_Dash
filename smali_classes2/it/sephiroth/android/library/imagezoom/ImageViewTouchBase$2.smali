.class Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->scrollBy(FFD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field old_x:D

.field old_y:D

.field final synthetic this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

.field final synthetic val$durationMs:D

.field final synthetic val$dx:D

.field final synthetic val$dy:D

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;DJDD)V
    .locals 0

    .line 910
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iput-wide p2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$durationMs:D

    iput-wide p4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$startTime:J

    iput-wide p6, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$dx:D

    iput-wide p8, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$dy:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p1, 0x0

    .line 912
    iput-wide p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->old_x:D

    .line 913
    iput-wide p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->old_y:D

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 917
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 918
    iget-wide v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$durationMs:D

    iget-wide v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$startTime:J

    sub-long/2addr v0, v4

    long-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 919
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v4, v2, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mEasing:Lit/sephiroth/android/library/easing/Easing;

    const-wide/16 v7, 0x0

    iget-wide v9, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$dx:D

    iget-wide v11, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$durationMs:D

    move-wide v5, v0

    invoke-interface/range {v4 .. v12}, Lit/sephiroth/android/library/easing/Easing;->easeOut(DDDD)D

    move-result-wide v2

    .line 920
    iget-object v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v4, v4, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mEasing:Lit/sephiroth/android/library/easing/Easing;

    iget-wide v9, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$dy:D

    iget-wide v11, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$durationMs:D

    invoke-interface/range {v4 .. v12}, Lit/sephiroth/android/library/easing/Easing;->easeOut(DDDD)D

    move-result-wide v4

    .line 921
    iget-object v6, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-wide v7, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->old_x:D

    sub-double v7, v2, v7

    iget-wide v9, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->old_y:D

    sub-double v9, v4, v9

    invoke-virtual {v6, v7, v8, v9, v10}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->panBy(DD)V

    .line 922
    iput-wide v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->old_x:D

    .line 923
    iput-wide v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->old_y:D

    .line 924
    iget-wide v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$durationMs:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 925
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 927
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v1, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getCenter(Landroid/graphics/Matrix;ZZ)Landroid/graphics/RectF;

    move-result-object v0

    .line 928
    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->scrollBy(FF)V

    :cond_2
    :goto_0
    return-void
.end method
