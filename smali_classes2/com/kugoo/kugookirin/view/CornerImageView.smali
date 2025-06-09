.class public Lcom/kugoo/kugookirin/view/CornerImageView;
.super Landroid/widget/ImageView;
.source "CornerImageView.java"


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final COLORDRAWABLE_DIMENSION:I = 0x2

.field private static final DEFAULT_BORDER_COLOR:I

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

    .line 47
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lcom/kugoo/kugookirin/view/CornerImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    .line 49
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/kugoo/kugookirin/view/CornerImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    const-string v0, "#ff6602"

    .line 53
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/kugoo/kugookirin/view/CornerImageView;->DEFAULT_BORDER_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 58
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 60
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 61
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 62
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 63
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mFillPaint:Landroid/graphics/Paint;

    .line 65
    sget p1, Lcom/kugoo/kugookirin/view/CornerImageView;->DEFAULT_BORDER_COLOR:I

    iput p1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderColor:I

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderWidth:I

    .line 67
    iput p1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mFillColor:I

    const/16 p1, 0x14

    .line 74
    iput p1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mDrawableRadius:I

    .line 87
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, p2, v0}, Lcom/kugoo/kugookirin/view/CornerImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 58
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 60
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mFillPaint:Landroid/graphics/Paint;

    .line 65
    sget v0, Lcom/kugoo/kugookirin/view/CornerImageView;->DEFAULT_BORDER_COLOR:I

    iput v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderColor:I

    const/4 v1, 0x0

    .line 66
    iput v1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderWidth:I

    .line 67
    iput v1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mFillColor:I

    const/16 v2, 0x14

    .line 74
    iput v2, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mDrawableRadius:I

    .line 97
    sget-object v3, Lcom/kugoo/kugookirin/R$styleable;->GridImageView:[I

    invoke-virtual {p1, p2, v3, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    .line 99
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderWidth:I

    const/4 p2, 0x1

    .line 100
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderColor:I

    const/4 p2, 0x2

    .line 101
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderOverlay:Z

    const/4 p2, 0x4

    .line 102
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mFillColor:I

    .line 103
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mDrawableRadius:I

    .line 105
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->init()V

    return-void
.end method

.method private applyColorFilter()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBitmapPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 310
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    return-void
.end method

.method private calculateBounds()Landroid/graphics/RectF;
    .locals 5

    .line 399
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 400
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 404
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    .line 405
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    .line 407
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v0, v0

    add-float/2addr v0, v2

    int-to-float v1, v1

    add-float/2addr v1, v3

    invoke-direct {v4, v2, v3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 319
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 320
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 326
    :cond_1
    :try_start_0
    instance-of v1, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    .line 327
    sget-object v1, Lcom/kugoo/kugookirin/view/CornerImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x2

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 329
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Lcom/kugoo/kugookirin/view/CornerImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 332
    :goto_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 333
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 334
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 337
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private init()V
    .locals 1

    .line 111
    sget-object v0, Lcom/kugoo/kugookirin/view/CornerImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mReady:Z

    .line 114
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mSetupPending:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->setup()V

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mSetupPending:Z

    :cond_0
    return-void
.end method

.method private initializeBitmap()V
    .locals 1

    .line 343
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mDisableCircularTransformation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 344
    iput-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/view/CornerImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 348
    :goto_0
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->setup()V

    return-void
.end method

.method private setup()V
    .locals 5

    .line 352
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 353
    iput-boolean v1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mSetupPending:Z

    return-void

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 362
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->invalidate()V

    return-void

    .line 366
    :cond_2
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 368
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 369
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 371
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 372
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 373
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 374
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 376
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mFillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 377
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 378
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mFillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 380
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBitmapHeight:I

    .line 381
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBitmapWidth:I

    .line 383
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->calculateBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 384
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderRadius:F

    .line 387
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 388
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderOverlay:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderWidth:I

    if-lez v0, :cond_3

    .line 389
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mDrawableRect:Landroid/graphics/RectF;

    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    int-to-float v0, v0

    sub-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 393
    :cond_3
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->applyColorFilter()V

    .line 394
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->updateShaderMatrix()V

    .line 395
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->invalidate()V

    return-void
.end method

.method private updateShaderMatrix()V
    .locals 6

    .line 415
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 417
    iget v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBitmapWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBitmapHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v3, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBitmapHeight:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 419
    iget-object v3, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    move v5, v3

    move v3, v2

    move v2, v5

    goto :goto_0

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v3, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBitmapWidth:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 422
    iget-object v3, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    .line 425
    :goto_0
    iget-object v4, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 426
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float/2addr v2, v1

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v4

    add-float/2addr v3, v1

    float-to-int v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 428
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderColor:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .line 230
    iget v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderWidth:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getFillColor()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mFillColor:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 122
    sget-object v0, Lcom/kugoo/kugookirin/view/CornerImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public isBorderOverlay()Z
    .locals 1

    .line 243
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderOverlay:Z

    return v0
.end method

.method public isDisableCircularTransformation()Z
    .locals 1

    .line 256
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mDisableCircularTransformation:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 141
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mDisableCircularTransformation:Z

    if-eqz v0, :cond_0

    .line 142
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    return-void

    .line 150
    :cond_1
    iget v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mFillColor:I

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mDrawableRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mDrawableRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 154
    iget v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderWidth:I

    if-lez v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mDrawableRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 162
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->setup()V

    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 135
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "adjustViewBounds not supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 170
    iget v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderColor:I

    if-ne p1, v0, :cond_0

    return-void

    .line 174
    :cond_0
    iput p1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderColor:I

    .line 175
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->invalidate()V

    return-void
.end method

.method public setBorderColorResource(I)V
    .locals 1

    .line 184
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/view/CornerImageView;->setBorderColor(I)V

    return-void
.end method

.method public setBorderOverlay(Z)V
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderOverlay:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 251
    :cond_0
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderOverlay:Z

    .line 252
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->setup()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 234
    iget v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderWidth:I

    if-ne p1, v0, :cond_0

    return-void

    .line 238
    :cond_0
    iput p1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mBorderWidth:I

    .line 239
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->setup()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_0

    return-void

    .line 298
    :cond_0
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 299
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->applyColorFilter()V

    .line 300
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->invalidate()V

    return-void
.end method

.method public setDisableCircularTransformation(Z)V
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mDisableCircularTransformation:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 264
    :cond_0
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mDisableCircularTransformation:Z

    .line 265
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->initializeBitmap()V

    return-void
.end method

.method public setFillColor(I)V
    .locals 1

    .line 207
    iget v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mFillColor:I

    if-ne p1, v0, :cond_0

    return-void

    .line 211
    :cond_0
    iput p1, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mFillColor:I

    .line 212
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CornerImageView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->invalidate()V

    return-void
.end method

.method public setFillColorResource(I)V
    .locals 1

    .line 226
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/view/CornerImageView;->setFillColor(I)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 270
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 271
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 276
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 282
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 288
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 289
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/CornerImageView;->initializeBitmap()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    return-void
.end method
