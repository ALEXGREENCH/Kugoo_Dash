.class public Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;
.super Ljava/lang/Object;
.source "SwipeMenuItem.java"


# static fields
.field private static final TITLE_SIZE:I = 0x14

.field private static final WIDTH:I = 0x50


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private id:I

.field private mContext:Landroid/content/Context;

.field private title:Ljava/lang/String;

.field private titleColor:I

.field private titleSize:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->titleColor:I

    const/16 v0, 0x14

    .line 30
    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->titleSize:I

    const/4 v0, 0x1

    const/high16 v1, 0x42a00000    # 80.0f

    .line 31
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->width:I

    return-void
.end method


# virtual methods
.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->background:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->id:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleColor()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->titleColor:I

    return v0
.end method

.method public getTitleSize()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->titleSize:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->width:I

    return v0
.end method

.method public getmContext()Landroid/content/Context;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->background:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIcon(I)Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setId(I)Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;
    .locals 0

    .line 39
    iput p1, p0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->id:I

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setTitleColor(I)Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;
    .locals 0

    .line 89
    iput p1, p0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->titleColor:I

    return-object p0
.end method

.method public setTitleSize(I)Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;
    .locals 0

    .line 98
    iput p1, p0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->titleSize:I

    return-object p0
.end method

.method public setWidth(I)Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;
    .locals 0

    .line 107
    iput p1, p0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->width:I

    return-object p0
.end method

.method public setmContext(Landroid/content/Context;)Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->mContext:Landroid/content/Context;

    return-object p0
.end method
