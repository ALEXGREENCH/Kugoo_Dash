.class public Lcom/kugoo/kugookirin/view/SwipeMenuView;
.super Landroid/widget/LinearLayout;
.source "SwipeMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/view/SwipeMenuView$OnMenuItemClickListener;
    }
.end annotation


# instance fields
.field private mLayout:Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

.field private mMenu:Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;

.field private mOnMenuItemClickListener:Lcom/kugoo/kugookirin/view/SwipeMenuView$OnMenuItemClickListener;

.field private position:I


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;)V
    .locals 3

    .line 35
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/view/SwipeMenuView;->setOrientation(I)V

    .line 37
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/SwipeMenuView;->mMenu:Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;

    .line 38
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object p1

    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;

    add-int/lit8 v2, v0, 0x1

    .line 41
    invoke-direct {p0, v1, v0}, Lcom/kugoo/kugookirin/view/SwipeMenuView;->addItem(Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;I)V

    move v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addItem(Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;I)V
    .locals 3

    .line 46
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->getWidth()I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SwipeMenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setId(I)V

    const/16 p2, 0x11

    .line 50
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 p2, 0x1

    .line 51
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/view/SwipeMenuView;->addView(Landroid/view/View;)V

    .line 57
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 58
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/view/SwipeMenuView;->createIcon(Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 61
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/view/SwipeMenuView;->createTitle(Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private createIcon(Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;)Landroid/widget/ImageView;
    .locals 2

    .line 67
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SwipeMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private createTitle(Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;)Landroid/widget/TextView;
    .locals 2

    .line 73
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SwipeMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 76
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->getTitleSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 77
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->getTitleColor()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuView;->position:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuView;->mOnMenuItemClickListener:Lcom/kugoo/kugookirin/view/SwipeMenuView$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuView;->mLayout:Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuView;->mOnMenuItemClickListener:Lcom/kugoo/kugookirin/view/SwipeMenuView$OnMenuItemClickListener;

    iget v1, p0, Lcom/kugoo/kugookirin/view/SwipeMenuView;->position:I

    iget-object v2, p0, Lcom/kugoo/kugookirin/view/SwipeMenuView;->mMenu:Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/kugoo/kugookirin/view/SwipeMenuView$OnMenuItemClickListener;->onMenuItemClick(ILcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;I)V

    :cond_0
    return-void
.end method

.method public setLayout(Lcom/kugoo/kugookirin/view/SwipeMenuLayout;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/SwipeMenuView;->mLayout:Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/kugoo/kugookirin/view/SwipeMenuView$OnMenuItemClickListener;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/SwipeMenuView;->mOnMenuItemClickListener:Lcom/kugoo/kugookirin/view/SwipeMenuView$OnMenuItemClickListener;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/kugoo/kugookirin/view/SwipeMenuView;->position:I

    return-void
.end method
