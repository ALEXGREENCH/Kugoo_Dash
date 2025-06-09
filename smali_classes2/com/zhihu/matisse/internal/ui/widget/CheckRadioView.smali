.class public Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "CheckRadioView.java"


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mSelectedColor:I

.field private mUnSelectUdColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 33
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zhihu/matisse/R$color;->zhihu_item_checkCircle_backgroundColor:I

    .line 34
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 32
    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->mSelectedColor:I

    .line 36
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zhihu/matisse/R$color;->zhihu_check_original_radio_disable:I

    .line 37
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 35
    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->mUnSelectUdColor:I

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0}, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 43
    sget p1, Lcom/zhihu/matisse/R$drawable;->ic_preview_radio_on:I

    invoke-virtual {p0, p1}, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->setImageResource(I)V

    .line 44
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    iget v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->mSelectedColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 47
    :cond_0
    sget p1, Lcom/zhihu/matisse/R$drawable;->ic_preview_radio_off:I

    invoke-virtual {p0, p1}, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->setImageResource(I)V

    .line 48
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 49
    iget v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->mUnSelectUdColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_0
    return-void
.end method

.method public setColor(I)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->mDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
