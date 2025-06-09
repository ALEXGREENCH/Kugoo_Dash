.class public Lcom/kugoo/kugookirin/user/country/SideBar;
.super Landroid/view/View;
.source "SideBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/user/country/SideBar$OnTouchingLetterChangedListener;
    }
.end annotation


# static fields
.field public static b:[Ljava/lang/String;


# instance fields
.field private choose:I

.field private mTextDialog:Landroid/widget/TextView;

.field private onTouchingLetterChangedListener:Lcom/kugoo/kugookirin/user/country/SideBar$OnTouchingLetterChangedListener;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    const-string v0, "*"

    const-string v1, "A"

    const-string v2, "B"

    const-string v3, "C"

    const-string v4, "D"

    const-string v5, "E"

    const-string v6, "F"

    const-string v7, "G"

    const-string v8, "H"

    const-string v9, "I"

    const-string v10, "J"

    const-string v11, "K"

    const-string v12, "L"

    const-string v13, "M"

    const-string v14, "N"

    const-string v15, "O"

    const-string v16, "P"

    const-string v17, "Q"

    const-string v18, "R"

    const-string v19, "S"

    const-string v20, "T"

    const-string v21, "U"

    const-string v22, "V"

    const-string v23, "W"

    const-string v24, "X"

    const-string v25, "Y"

    const-string v26, "Z"

    const-string v27, "#"

    .line 22
    filled-new-array/range {v0 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kugoo/kugookirin/user/country/SideBar;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/kugoo/kugookirin/user/country/SideBar;->choose:I

    .line 28
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/country/SideBar;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/kugoo/kugookirin/user/country/SideBar;->choose:I

    .line 28
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/country/SideBar;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/kugoo/kugookirin/user/country/SideBar;->choose:I

    .line 28
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/country/SideBar;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method private dp2px(F)I
    .locals 2

    .line 130
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/country/SideBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 83
    iget v1, p0, Lcom/kugoo/kugookirin/user/country/SideBar;->choose:I

    .line 85
    iget-object v2, p0, Lcom/kugoo/kugookirin/user/country/SideBar;->onTouchingLetterChangedListener:Lcom/kugoo/kugookirin/user/country/SideBar$OnTouchingLetterChangedListener;

    .line 86
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/country/SideBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    sget-object v3, Lcom/kugoo/kugookirin/user/country/SideBar;->b:[Ljava/lang/String;

    array-length v4, v3

    int-to-float v4, v4

    mul-float/2addr p1, v4

    float-to-int p1, p1

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    if-eq v1, p1, :cond_3

    if-ltz p1, :cond_3

    .line 101
    array-length v0, v3

    if-ge p1, v0, :cond_3

    if-eqz v2, :cond_0

    .line 103
    aget-object v0, v3, p1

    invoke-interface {v2, v0}, Lcom/kugoo/kugookirin/user/country/SideBar$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/SideBar;->mTextDialog:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 106
    sget-object v1, Lcom/kugoo/kugookirin/user/country/SideBar;->b:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/SideBar;->mTextDialog:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    :cond_1
    iput p1, p0, Lcom/kugoo/kugookirin/user/country/SideBar;->choose:I

    .line 110
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/country/SideBar;->invalidate()V

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    .line 91
    iput p1, p0, Lcom/kugoo/kugookirin/user/country/SideBar;->choose:I

    .line 92
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/country/SideBar;->invalidate()V

    .line 93
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/country/SideBar;->mTextDialog:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const/4 v0, 0x4

    .line 94
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_0
    return v4
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 51
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 53
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/country/SideBar;->getHeight()I

    move-result v0

    .line 54
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/country/SideBar;->getWidth()I

    move-result v1

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    .line 57
    sget-object v2, Lcom/kugoo/kugookirin/user/country/SideBar;->b:[Ljava/lang/String;

    array-length v2, v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/4 v2, 0x0

    .line 58
    :goto_0
    sget-object v3, Lcom/kugoo/kugookirin/user/country/SideBar;->b:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 59
    iget-object v3, p0, Lcom/kugoo/kugookirin/user/country/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/country/SideBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600c5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v3, p0, Lcom/kugoo/kugookirin/user/country/SideBar;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 62
    iget-object v3, p0, Lcom/kugoo/kugookirin/user/country/SideBar;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    iget-object v3, p0, Lcom/kugoo/kugookirin/user/country/SideBar;->paint:Landroid/graphics/Paint;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-direct {p0, v5}, Lcom/kugoo/kugookirin/user/country/SideBar;->dp2px(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 65
    iget v3, p0, Lcom/kugoo/kugookirin/user/country/SideBar;->choose:I

    if-ne v2, v3, :cond_0

    .line 66
    iget-object v3, p0, Lcom/kugoo/kugookirin/user/country/SideBar;->paint:Landroid/graphics/Paint;

    const v5, -0xffff01

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v3, p0, Lcom/kugoo/kugookirin/user/country/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 71
    :cond_0
    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/kugoo/kugookirin/user/country/SideBar;->paint:Landroid/graphics/Paint;

    sget-object v5, Lcom/kugoo/kugookirin/user/country/SideBar;->b:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v4, v0

    add-float/2addr v4, v0

    .line 73
    sget-object v5, Lcom/kugoo/kugookirin/user/country/SideBar;->b:[Ljava/lang/String;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/kugoo/kugookirin/user/country/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 75
    iget-object v3, p0, Lcom/kugoo/kugookirin/user/country/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setOnTouchingLetterChangedListener(Lcom/kugoo/kugookirin/user/country/SideBar$OnTouchingLetterChangedListener;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/country/SideBar;->onTouchingLetterChangedListener:Lcom/kugoo/kugookirin/user/country/SideBar$OnTouchingLetterChangedListener;

    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/country/SideBar;->mTextDialog:Landroid/widget/TextView;

    return-void
.end method
