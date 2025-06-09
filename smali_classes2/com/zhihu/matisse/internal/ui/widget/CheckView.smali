.class public Lcom/zhihu/matisse/internal/ui/widget/CheckView;
.super Landroid/view/View;
.source "CheckView.java"


# static fields
.field private static final BG_RADIUS:F = 11.0f

.field private static final CONTENT_SIZE:I = 0x10

.field private static final SHADOW_WIDTH:F = 6.0f

.field private static final SIZE:I = 0x30

.field private static final STROKE_RADIUS:F = 11.5f

.field private static final STROKE_WIDTH:F = 3.0f

.field public static final UNCHECKED:I = -0x80000000


# instance fields
.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mCheckDrawable:Landroid/graphics/drawable/Drawable;

.field private mCheckRect:Landroid/graphics/Rect;

.field private mChecked:Z

.field private mCheckedNum:I

.field private mCountable:Z

.field private mDensity:F

.field private mEnabled:Z

.field private mShadowPaint:Landroid/graphics/Paint;

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 59
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mEnabled:Z

    .line 60
    invoke-direct {p0, p1}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 56
    iput-boolean p2, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mEnabled:Z

    .line 65
    invoke-direct {p0, p1}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 56
    iput-boolean p2, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mEnabled:Z

    .line 70
    invoke-direct {p0, p1}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getCheckRect()Landroid/graphics/Rect;
    .locals 6

    .line 221
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mCheckRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 222
    iget v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mDensity:F

    const/high16 v1, 0x42400000    # 48.0f

    mul-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v4, 0x41800000    # 16.0f

    mul-float/2addr v0, v4

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    float-to-int v0, v2

    .line 223
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mDensity:F

    mul-float v4, v3, v1

    int-to-float v5, v0

    sub-float/2addr v4, v5

    float-to-int v4, v4

    mul-float/2addr v3, v1

    sub-float/2addr v3, v5

    float-to-int v1, v3

    invoke-direct {v2, v0, v0, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mCheckRect:Landroid/graphics/Rect;

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mCheckRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mDensity:F

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 84
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mStrokePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 87
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    iget v3, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mDensity:F

    mul-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, v1, [I

    sget v2, Lcom/zhihu/matisse/R$attr;->item_checkCircle_borderColor:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zhihu/matisse/R$color;->zhihu_item_checkCircle_borderColor:I

    .line 91
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 89
    invoke-static {v1, v2, v4}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 92
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 93
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zhihu/matisse/R$drawable;->ic_check_white_18dp:I

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    .line 96
    invoke-static {v0, v1, p1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mCheckDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private initBackgroundPaint()V
    .locals 5

    .line 194
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mBackgroundPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 196
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 197
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 198
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, v1, [I

    sget v2, Lcom/zhihu/matisse/R$attr;->item_checkCircle_backgroundColor:I

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 199
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 201
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zhihu/matisse/R$color;->zhihu_item_checkCircle_backgroundColor:I

    .line 202
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 200
    invoke-static {v1, v2, v4}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 203
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 204
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 205
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method private initShadowPaint()V
    .locals 13

    .line 171
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mShadowPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mShadowPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 173
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 182
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/RadialGradient;

    iget v2, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mDensity:F

    const/high16 v3, 0x42400000    # 48.0f

    mul-float v4, v2, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    mul-float/2addr v3, v2

    div-float v5, v3, v5

    const/high16 v3, 0x41980000    # 19.0f

    mul-float v6, v3, v2

    const/4 v2, 0x4

    new-array v7, v2, [I

    const-string v3, "#00000000"

    .line 186
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const/4 v10, 0x0

    aput v8, v7, v10

    const-string v8, "#0D000000"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    aput v11, v7, v1

    .line 187
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const/4 v11, 0x2

    aput v8, v7, v11

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/4 v8, 0x3

    aput v3, v7, v8

    new-array v12, v2, [F

    const v2, 0x3e579436

    aput v2, v12, v10

    const v2, 0x3f06bca2

    aput v2, v12, v1

    const v1, 0x3f2f286c

    aput v1, v12, v11

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v12, v8

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v9

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v12

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 182
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    return-void
.end method

.method private initTextPaint()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mTextPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    .line 212
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 213
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 214
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 215
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41400000    # 12.0f

    iget v2, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mDensity:F

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 132
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 135
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->initShadowPaint()V

    .line 136
    iget v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mDensity:F

    const/high16 v1, 0x42400000    # 48.0f

    mul-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    mul-float v4, v0, v1

    div-float/2addr v4, v3

    const/high16 v5, 0x41980000    # 19.0f

    mul-float/2addr v0, v5

    iget-object v5, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 140
    iget v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mDensity:F

    mul-float v2, v0, v1

    div-float/2addr v2, v3

    mul-float v4, v0, v1

    div-float/2addr v4, v3

    const/high16 v5, 0x41380000    # 11.5f

    mul-float/2addr v0, v5

    iget-object v5, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 144
    iget-boolean v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mCountable:Z

    const/high16 v2, 0x41300000    # 11.0f

    if-eqz v0, :cond_0

    .line 145
    iget v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mCheckedNum:I

    const/high16 v4, -0x80000000

    if-eq v0, v4, :cond_1

    .line 146
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->initBackgroundPaint()V

    .line 147
    iget v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mDensity:F

    mul-float v4, v0, v1

    div-float/2addr v4, v3

    mul-float/2addr v1, v0

    div-float/2addr v1, v3

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 149
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->initTextPaint()V

    .line 150
    iget v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mCheckedNum:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    .line 152
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v1

    int-to-float v2, v2

    .line 153
    iget-object v3, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 156
    :cond_0
    iget-boolean v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mChecked:Z

    if-eqz v0, :cond_1

    .line 157
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->initBackgroundPaint()V

    .line 158
    iget v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mDensity:F

    mul-float v4, v0, v1

    div-float/2addr v4, v3

    mul-float/2addr v1, v0

    div-float/2addr v1, v3

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 161
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->getCheckRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 162
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 167
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mEnabled:Z

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {p0, p1}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setAlpha(F)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    const/high16 p1, 0x42400000    # 48.0f

    .line 76
    iget p2, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mDensity:F

    mul-float/2addr p2, p1

    float-to-int p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 77
    invoke-super {p0, p1, p1}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mCountable:Z

    if-nez v0, :cond_0

    .line 104
    iput-boolean p1, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mChecked:Z

    .line 105
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->invalidate()V

    return-void

    .line 102
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CheckView is countable, call setCheckedNum() instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCheckedNum(I)V
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mCountable:Z

    if-eqz v0, :cond_2

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "checked num can\'t be negative."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_1
    :goto_0
    iput p1, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mCheckedNum:I

    .line 120
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->invalidate()V

    return-void

    .line 114
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CheckView is not countable, call setChecked() instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCountable(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mCountable:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 125
    iput-boolean p1, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->mEnabled:Z

    .line 126
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->invalidate()V

    :cond_0
    return-void
.end method
