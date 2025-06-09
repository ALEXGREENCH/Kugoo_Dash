.class public Lcom/mob/tools/gui/ScaledImageView;
.super Landroid/widget/ImageView;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;
    }
.end annotation


# static fields
.field private static final DRAG_1:I = 0x1

.field private static final DRAG_2:I = 0x2

.field private static final NONE:I = 0x0

.field private static final ZOOM:I = 0x3


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private distSquare:F

.field private downPoint:[F

.field private dragScrollMinDistSquare:I

.field private listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

.field private matrix:Landroid/graphics/Matrix;

.field private mode:I

.field private savedMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/ScaledImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/ScaledImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/ScaledImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/2addr p1, p1

    .line 48
    iput p1, p0, Lcom/mob/tools/gui/ScaledImageView;->dragScrollMinDistSquare:I

    .line 49
    invoke-virtual {p0, p0}, Lcom/mob/tools/gui/ScaledImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public getCropedBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    .line 272
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getHeight()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/mob/tools/utils/BitmapHelper;->captureView(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 274
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    const-string v1, "ivPhoto.getDrawingCache() returns null"

    invoke-virtual {p1, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    return-object v0

    .line 278
    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v1, v2, v3, v4, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 279
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 284
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 p1, 0x1

    .line 90
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    if-eq v0, p1, :cond_7

    const/4 v3, 0x3

    if-eq v0, v1, :cond_4

    const/4 v4, 0x5

    if-eq v0, v4, :cond_3

    const/4 v4, 0x6

    if-eq v0, v4, :cond_2

    const/16 v4, 0x105

    if-eq v0, v4, :cond_1

    const/16 v3, 0x106

    if-eq v0, v3, :cond_0

    return v2

    :cond_0
    new-array v0, v1, [F

    .line 133
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    aput p2, v0, p1

    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    .line 134
    iget-object p2, p0, Lcom/mob/tools/gui/ScaledImageView;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 135
    iput p1, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    goto/16 :goto_0

    :cond_1
    new-array v0, v1, [F

    .line 125
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    aput v4, v0, v2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    aput v4, v0, p1

    new-array v1, v1, [F

    .line 126
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    aput v4, v1, v2

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    aput p2, v1, p1

    aget v4, v0, v2

    aget v1, v1, v2

    sub-float/2addr v4, v1

    aget v0, v0, p1

    sub-float/2addr v0, p2

    mul-float/2addr v4, v4

    mul-float/2addr v0, v0

    add-float/2addr v4, v0

    .line 129
    iput v4, p0, Lcom/mob/tools/gui/ScaledImageView;->distSquare:F

    .line 130
    iput v3, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    goto/16 :goto_0

    :cond_2
    new-array v0, v1, [F

    .line 120
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v0, v2

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    aput p2, v0, p1

    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    .line 121
    iget-object p2, p0, Lcom/mob/tools/gui/ScaledImageView;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 122
    iput v1, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    goto/16 :goto_0

    :cond_3
    new-array v0, v1, [F

    .line 112
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    aput v4, v0, v2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    aput v4, v0, p1

    new-array v1, v1, [F

    .line 113
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    aput v4, v1, v2

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    aput p2, v1, p1

    aget v4, v0, v2

    aget v1, v1, v2

    sub-float/2addr v4, v1

    aget v0, v0, p1

    sub-float/2addr v0, p2

    mul-float/2addr v4, v4

    mul-float/2addr v0, v0

    add-float/2addr v4, v0

    .line 116
    iput v4, p0, Lcom/mob/tools/gui/ScaledImageView;->distSquare:F

    .line 117
    iput v3, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    goto/16 :goto_0

    .line 138
    :cond_4
    iget v0, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    if-ne v0, p1, :cond_5

    new-array v0, v1, [F

    .line 139
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    aput p2, v0, p1

    .line 140
    iget-object p2, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 141
    iget-object p2, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    aget v1, v0, v2

    iget-object v3, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    aget v2, v3, v2

    sub-float/2addr v1, v2

    aget v0, v0, p1

    aget v2, v3, p1

    sub-float/2addr v0, v2

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    :cond_5
    if-ne v0, v1, :cond_6

    new-array v0, v1, [F

    .line 143
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    aput p2, v0, p1

    .line 144
    iget-object p2, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 145
    iget-object p2, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    aget v1, v0, v2

    iget-object v3, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    aget v2, v3, v2

    sub-float/2addr v1, v2

    aget v0, v0, p1

    aget v2, v3, p1

    sub-float/2addr v0, v2

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    :cond_6
    if-ne v0, v3, :cond_b

    new-array v0, v1, [F

    .line 147
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v0, v2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v0, p1

    new-array v1, v1, [F

    .line 148
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v1, v2

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    aput p2, v1, p1

    aget v3, v0, v2

    aget v4, v1, v2

    sub-float/2addr v3, v4

    aget v4, v0, p1

    sub-float/2addr v4, p2

    mul-float/2addr v3, v3

    mul-float/2addr v4, v4

    add-float/2addr v3, v4

    .line 152
    iget-object p2, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/mob/tools/gui/ScaledImageView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 153
    iget p2, p0, Lcom/mob/tools/gui/ScaledImageView;->distSquare:F

    div-float/2addr v3, p2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float p2, v3

    aget v3, v0, v2

    aget v2, v1, v2

    add-float/2addr v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v3, v2

    aget v0, v0, p1

    aget v1, v1, p1

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    .line 155
    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p2, p2, v3, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_0

    .line 100
    :cond_7
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    if-eqz v0, :cond_8

    .line 101
    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v0, v1}, Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;->onMactrixChage(Landroid/graphics/Matrix;)V

    .line 103
    :cond_8
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    aget v1, v1, v2

    sub-float/2addr v0, v1

    .line 104
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    aget v1, v1, p1

    sub-float/2addr p2, v1

    .line 105
    iget v1, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    if-ne v1, p1, :cond_9

    mul-float/2addr v0, v0

    mul-float/2addr p2, p2

    add-float/2addr v0, p2

    iget p2, p0, Lcom/mob/tools/gui/ScaledImageView;->dragScrollMinDistSquare:I

    int-to-float p2, p2

    cmpg-float p2, v0, p2

    if-gtz p2, :cond_9

    .line 107
    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->performClick()Z

    .line 109
    :cond_9
    iput v2, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    goto :goto_0

    .line 92
    :cond_a
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 93
    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 94
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->savedMatrix:Landroid/graphics/Matrix;

    .line 95
    iget-object v3, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    new-array v0, v1, [F

    .line 96
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    aput p2, v0, p1

    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    .line 97
    iput p1, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    .line 162
    :cond_b
    :goto_0
    iget-object p2, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p2}, Lcom/mob/tools/gui/ScaledImageView;->setImageMatrix(Landroid/graphics/Matrix;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 164
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_1
    return p1
.end method

.method public rotateLeft()V
    .locals 17

    move-object/from16 v1, p0

    .line 172
    :try_start_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v1, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    const/16 v2, 0x9

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    aput v5, v2, v6

    const/4 v7, 0x2

    aput v3, v2, v7

    const/4 v8, 0x3

    const/high16 v9, -0x40800000    # -1.0f

    aput v9, v2, v8

    const/4 v8, 0x4

    aput v3, v2, v8

    const/4 v9, 0x5

    aput v3, v2, v9

    const/4 v10, 0x6

    aput v3, v2, v10

    const/4 v10, 0x7

    aput v3, v2, v10

    const/16 v3, 0x8

    aput v5, v2, v3

    .line 178
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 179
    iget-object v10, v1, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 180
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    iget-object v0, v1, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    iget-object v15, v1, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    const/16 v16, 0x1

    .line 179
    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 182
    iget-object v3, v1, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 183
    iput-object v0, v1, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 185
    :cond_0
    iget-object v0, v1, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/mob/tools/gui/ScaledImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 187
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v1, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/mob/tools/gui/ScaledImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 189
    iget-object v0, v1, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->getValues([F)V

    new-array v0, v7, [I

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/mob/tools/gui/ScaledImageView;->getWidth()I

    move-result v3

    aput v3, v0, v4

    invoke-virtual/range {p0 .. p0}, Lcom/mob/tools/gui/ScaledImageView;->getHeight()I

    move-result v3

    aput v3, v0, v6

    new-array v3, v7, [F

    aget v5, v2, v4

    .line 191
    iget-object v10, v1, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v5, v10

    aput v5, v3, v4

    aget v5, v2, v8

    iget-object v8, v1, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v5, v8

    aput v5, v3, v6

    aget v8, v0, v4

    int-to-float v8, v8

    aget v3, v3, v4

    sub-float/2addr v8, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v8, v3

    aget v0, v0, v6

    int-to-float v0, v0

    sub-float/2addr v0, v5

    div-float/2addr v0, v3

    aput v8, v2, v7

    aput v0, v2, v9

    .line 198
    iget-object v0, v1, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 199
    iget-object v0, v1, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    if-eqz v0, :cond_1

    .line 200
    iget-object v2, v1, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v0, v2}, Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;->onMactrixChage(Landroid/graphics/Matrix;)V

    .line 202
    :cond_1
    iget-object v0, v1, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Lcom/mob/tools/gui/ScaledImageView;->setImageMatrix(Landroid/graphics/Matrix;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 204
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public rotateRight()V
    .locals 17

    move-object/from16 v1, p0

    .line 211
    :try_start_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v1, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    const/16 v2, 0x9

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x1

    aput v5, v2, v6

    const/4 v5, 0x2

    aput v3, v2, v5

    const/4 v7, 0x3

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v2, v7

    const/4 v7, 0x4

    aput v3, v2, v7

    const/4 v9, 0x5

    aput v3, v2, v9

    const/4 v10, 0x6

    aput v3, v2, v10

    const/4 v10, 0x7

    aput v3, v2, v10

    const/16 v3, 0x8

    aput v8, v2, v3

    .line 217
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 218
    iget-object v10, v1, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 219
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    iget-object v0, v1, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    iget-object v15, v1, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    const/16 v16, 0x1

    .line 218
    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 221
    iget-object v3, v1, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 222
    iput-object v0, v1, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 224
    :cond_0
    iget-object v0, v1, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/mob/tools/gui/ScaledImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 226
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v1, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/mob/tools/gui/ScaledImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 228
    iget-object v0, v1, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->getValues([F)V

    new-array v0, v5, [I

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/mob/tools/gui/ScaledImageView;->getWidth()I

    move-result v3

    aput v3, v0, v4

    invoke-virtual/range {p0 .. p0}, Lcom/mob/tools/gui/ScaledImageView;->getHeight()I

    move-result v3

    aput v3, v0, v6

    new-array v3, v5, [F

    aget v8, v2, v4

    .line 230
    iget-object v10, v1, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v8, v10

    aput v8, v3, v4

    aget v7, v2, v7

    iget-object v8, v1, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    aput v7, v3, v6

    aget v8, v0, v4

    int-to-float v8, v8

    aget v3, v3, v4

    sub-float/2addr v8, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v8, v3

    aget v0, v0, v6

    int-to-float v0, v0

    sub-float/2addr v0, v7

    div-float/2addr v0, v3

    aput v8, v2, v5

    aput v0, v2, v9

    .line 237
    iget-object v0, v1, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 238
    iget-object v0, v1, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    if-eqz v0, :cond_1

    .line 239
    iget-object v2, v1, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v0, v2}, Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;->onMactrixChage(Landroid/graphics/Matrix;)V

    .line 241
    :cond_1
    iget-object v0, v1, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Lcom/mob/tools/gui/ScaledImageView;->setImageMatrix(Landroid/graphics/Matrix;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 243
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 8

    .line 53
    iput-object p1, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 54
    invoke-virtual {p0, p1}, Lcom/mob/tools/gui/ScaledImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x2

    new-array v0, p1, [I

    .line 55
    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getHeight()I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    new-array v1, p1, [I

    .line 56
    iget-object v4, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    aput v4, v1, v2

    iget-object v4, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    aput v4, v1, v3

    .line 57
    invoke-static {v1, v0}, Lcom/mob/tools/utils/BitmapHelper;->fixRect([I[I)[I

    move-result-object v4

    new-array v5, p1, [I

    aget v6, v0, v2

    .line 58
    aget v7, v4, v2

    sub-int/2addr v6, v7

    div-int/2addr v6, p1

    aput v6, v5, v2

    aget v0, v0, v3

    aget v6, v4, v3

    sub-int/2addr v0, v6

    div-int/2addr v0, p1

    aput v0, v5, v3

    new-array p1, p1, [F

    .line 62
    aget v0, v4, v2

    int-to-float v0, v0

    aget v6, v1, v2

    int-to-float v6, v6

    div-float/2addr v0, v6

    aput v0, p1, v2

    aget v0, v4, v3

    int-to-float v0, v0

    aget v1, v1, v3

    int-to-float v1, v1

    div-float/2addr v0, v1

    aput v0, p1, v3

    .line 67
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 68
    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 69
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    aget v1, p1, v2

    aget p1, p1, v3

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 70
    iget-object p1, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    aget v0, v5, v2

    int-to-float v0, v0

    aget v1, v5, v3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 71
    iget-object p1, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-interface {p1, v0}, Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;->onMactrixChage(Landroid/graphics/Matrix;)V

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/mob/tools/gui/ScaledImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setOnMatrixChangedListener(Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;)V
    .locals 1

    .line 78
    iput-object p1, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    .line 79
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 81
    invoke-interface {p1, v0}, Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;->onMactrixChage(Landroid/graphics/Matrix;)V

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/mob/tools/gui/ScaledImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method public zoomIn()V
    .locals 2

    .line 249
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 250
    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 251
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    const v1, 0x3f89374c    # 1.072f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 252
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    if-eqz v0, :cond_0

    .line 253
    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v0, v1}, Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;->onMactrixChage(Landroid/graphics/Matrix;)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/ScaledImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public zoomOut()V
    .locals 2

    .line 260
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 261
    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 262
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    const v1, 0x3f6ed917    # 0.933f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 263
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    if-eqz v0, :cond_0

    .line 264
    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v0, v1}, Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;->onMactrixChage(Landroid/graphics/Matrix;)V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/ScaledImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
