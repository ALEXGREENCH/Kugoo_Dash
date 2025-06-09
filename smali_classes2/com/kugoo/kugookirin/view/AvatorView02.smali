.class public Lcom/kugoo/kugookirin/view/AvatorView02;
.super Landroid/view/View;
.source "AvatorView02.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapShader:Landroid/graphics/BitmapShader;

.field private mPaint:Landroid/graphics/Paint;

.field private matrix:Landroid/graphics/Matrix;

.field private options:Landroid/graphics/BitmapFactory$Options;

.field private scale:F

.field private viewBottom:I

.field private viewRight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/view/AvatorView02;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/kugoo/kugookirin/view/AvatorView02;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/AvatorView02;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 43
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/AvatorView02;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 p2, 0x0

    .line 47
    iput-boolean p2, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 48
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/AvatorView02;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f0125

    iget-object p3, p0, Lcom/kugoo/kugookirin/view/AvatorView02;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/AvatorView02;->bitmap:Landroid/graphics/Bitmap;

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "width=="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kugoo/kugookirin/view/AvatorView02;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  height=="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/kugoo/kugookirin/view/AvatorView02;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  minetype=="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/kugoo/kugookirin/view/AvatorView02;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "bitmapdata"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object p2, p0, Lcom/kugoo/kugookirin/view/AvatorView02;->bitmap:Landroid/graphics/Bitmap;

    sget-object p3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p2, p3, v0}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/AvatorView02;->bitmapShader:Landroid/graphics/BitmapShader;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 65
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 66
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/AvatorView02;->matrix:Landroid/graphics/Matrix;

    .line 67
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/AvatorView02;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/view/AvatorView02;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/kugoo/kugookirin/view/AvatorView02;->scale:F

    .line 68
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/AvatorView02;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 69
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/AvatorView02;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/kugoo/kugookirin/view/AvatorView02;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 71
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/AvatorView02;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/kugoo/kugookirin/view/AvatorView02;->bitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 74
    iget v0, p0, Lcom/kugoo/kugookirin/view/AvatorView02;->viewRight:I

    int-to-float v5, v0

    iget v0, p0, Lcom/kugoo/kugookirin/view/AvatorView02;->viewBottom:I

    int-to-float v6, v0

    const/high16 v7, 0x41700000    # 15.0f

    const/high16 v8, 0x41700000    # 15.0f

    iget-object v9, p0, Lcom/kugoo/kugookirin/view/AvatorView02;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 55
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 56
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/AvatorView02;->getMeasuredHeight()I

    move-result p1

    .line 57
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/AvatorView02;->getMeasuredWidth()I

    move-result p2

    .line 58
    iput p1, p0, Lcom/kugoo/kugookirin/view/AvatorView02;->viewBottom:I

    .line 59
    iput p2, p0, Lcom/kugoo/kugookirin/view/AvatorView02;->viewRight:I

    return-void
.end method

.method public setImageDrawable(I)V
    .locals 3

    .line 78
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/AvatorView02;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/view/AvatorView02;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/AvatorView02;->bitmap:Landroid/graphics/Bitmap;

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "width=="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kugoo/kugookirin/view/AvatorView02;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  height=="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/view/AvatorView02;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  minetype=="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/view/AvatorView02;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bitmapdata"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/kugoo/kugookirin/view/AvatorView02;->bitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, v0, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/AvatorView02;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 81
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/AvatorView02;->invalidate()V

    return-void
.end method
