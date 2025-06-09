.class public Lcom/kugoo/kugookirin/view/GridImageView;
.super Landroid/widget/ImageView;
.source "GridImageView.java"


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final COLORDRAWABLE_DIMENSION:I = 0x2

.field private static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field private static final DEFAULT_BORDER_OVERLAY:Z = false

.field private static final DEFAULT_BORDER_WIDTH:I

.field private static final DEFAULT_FILL_COLOR:I

.field private static final SCALE_TYPE:Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mBorderColor:I

.field private mBorderOverlay:Z

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mBorderRadius:F

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDisableCircularTransformation:Z

.field private mDrawableRadius:I

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mFillColor:I

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mReady:Z

.field private mSetupPending:Z

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lcom/kugoo/kugookirin/view/GridImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    .line 48
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/kugoo/kugookirin/view/GridImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 57
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 59
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 60
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 61
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 62
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mFillPaint:Landroid/graphics/Paint;

    const/high16 p1, -0x1000000

    .line 64
    iput p1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderColor:I

    const/4 p1, 0x0

    .line 65
    iput p1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderWidth:I

    .line 66
    iput p1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mFillColor:I

    const/16 p1, 0x14

    .line 73
    iput p1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mDrawableRadius:I

    .line 86
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, v0}, Lcom/kugoo/kugookirin/view/GridImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 59
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mFillPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    .line 64
    iput v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderColor:I

    const/4 v1, 0x0

    .line 65
    iput v1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderWidth:I

    .line 66
    iput v1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mFillColor:I

    const/16 v2, 0x14

    .line 73
    iput v2, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mDrawableRadius:I

    .line 96
    sget-object v3, Lcom/kugoo/kugookirin/R$styleable;->GridImageView:[I

    invoke-virtual {p1, p2, v3, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    .line 98
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderWidth:I

    const/4 p2, 0x1

    .line 99
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderColor:I

    const/4 p2, 0x2

    .line 100
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderOverlay:Z

    const/4 p2, 0x4

    .line 101
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mFillColor:I

    .line 102
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mDrawableRadius:I

    .line 104
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->init()V

    return-void
.end method

.method private applyColorFilter()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBitmapPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 309
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    return-void
.end method

.method private calculateBounds()Landroid/graphics/RectF;
    .locals 5

    .line 397
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 398
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 400
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 402
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    add-float/2addr v3, v0

    .line 403
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    .line 405
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v2

    add-float v4, v3, v2

    add-float/2addr v2, v0

    invoke-direct {v1, v3, v0, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 318
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 319
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 325
    :cond_1
    :try_start_0
    instance-of v1, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    .line 326
    sget-object v1, Lcom/kugoo/kugookirin/view/GridImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x2

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 328
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Lcom/kugoo/kugookirin/view/GridImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 331
    :goto_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 332
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 333
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 336
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private init()V
    .locals 1

    .line 110
    sget-object v0, Lcom/kugoo/kugookirin/view/GridImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mReady:Z

    .line 113
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mSetupPending:Z

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->setup()V

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mSetupPending:Z

    :cond_0
    return-void
.end method

.method private initializeBitmap()V
    .locals 1

    .line 342
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mDisableCircularTransformation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 343
    iput-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/view/GridImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 347
    :goto_0
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->setup()V

    return-void
.end method

.method private setup()V
    .locals 5

    .line 351
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 352
    iput-boolean v1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mSetupPending:Z

    return-void

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 361
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->invalidate()V

    return-void

    .line 365
    :cond_2
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 367
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 368
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 370
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 371
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 372
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 373
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 375
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mFillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 376
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 377
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mFillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 379
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBitmapHeight:I

    .line 380
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBitmapWidth:I

    .line 382
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->calculateBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 383
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderRadius:F

    .line 385
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 386
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderOverlay:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderWidth:I

    if-lez v0, :cond_3

    .line 387
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mDrawableRect:Landroid/graphics/RectF;

    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    int-to-float v0, v0

    sub-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 391
    :cond_3
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->applyColorFilter()V

    .line 392
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->updateShaderMatrix()V

    .line 393
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->invalidate()V

    return-void
.end method

.method private updateShaderMatrix()V
    .locals 6

    .line 413
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 415
    iget v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBitmapWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBitmapHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v3, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBitmapHeight:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 417
    iget-object v3, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    move v5, v3

    move v3, v2

    move v2, v5

    goto :goto_0

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v3, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBitmapWidth:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 420
    iget-object v3, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    .line 423
    :goto_0
    iget-object v4, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 424
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float/2addr v2, v1

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v4

    add-float/2addr v3, v1

    float-to-int v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 426
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderColor:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .line 229
    iget v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderWidth:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getFillColor()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mFillColor:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 121
    sget-object v0, Lcom/kugoo/kugookirin/view/GridImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public isBorderOverlay()Z
    .locals 1

    .line 242
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderOverlay:Z

    return v0
.end method

.method public isDisableCircularTransformation()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mDisableCircularTransformation:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 140
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mDisableCircularTransformation:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    return-void

    .line 149
    :cond_1
    iget v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mFillColor:I

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mDrawableRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mDrawableRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 153
    iget v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderWidth:I

    if-lez v0, :cond_3

    .line 154
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mDrawableRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 161
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->setup()V

    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 134
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "adjustViewBounds not supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 169
    iget v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderColor:I

    if-ne p1, v0, :cond_0

    return-void

    .line 173
    :cond_0
    iput p1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderColor:I

    .line 174
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->invalidate()V

    return-void
.end method

.method public setBorderColorResource(I)V
    .locals 1

    .line 183
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/view/GridImageView;->setBorderColor(I)V

    return-void
.end method

.method public setBorderOverlay(Z)V
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderOverlay:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 250
    :cond_0
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderOverlay:Z

    .line 251
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->setup()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 233
    iget v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderWidth:I

    if-ne p1, v0, :cond_0

    return-void

    .line 237
    :cond_0
    iput p1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mBorderWidth:I

    .line 238
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->setup()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_0

    return-void

    .line 297
    :cond_0
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 298
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->applyColorFilter()V

    .line 299
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->invalidate()V

    return-void
.end method

.method public setDisableCircularTransformation(Z)V
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mDisableCircularTransformation:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 263
    :cond_0
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mDisableCircularTransformation:Z

    .line 264
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->initializeBitmap()V

    return-void
.end method

.method public setFillColor(I)V
    .locals 1

    .line 206
    iget v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mFillColor:I

    if-ne p1, v0, :cond_0

    return-void

    .line 210
    :cond_0
    iput p1, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mFillColor:I

    .line 211
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/GridImageView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->invalidate()V

    return-void
.end method

.method public setFillColorResource(I)V
    .locals 1

    .line 225
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/view/GridImageView;->setFillColor(I)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 269
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 270
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 275
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 281
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 282
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 287
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 288
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/GridImageView;->initializeBitmap()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 3

    .line 126
    sget-object v0, Lcom/kugoo/kugookirin/view/GridImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    return-void

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ScaleType %s not supported."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
