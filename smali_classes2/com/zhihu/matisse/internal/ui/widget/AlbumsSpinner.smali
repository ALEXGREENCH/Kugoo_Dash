.class public Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;
.super Ljava/lang/Object;
.source "AlbumsSpinner.java"


# static fields
.field private static final MAX_SHOWN_COUNT:I = 0x6


# instance fields
.field private mAdapter:Landroid/widget/CursorAdapter;

.field private mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mSelected:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroidx/appcompat/widget/ListPopupWindow;

    const/4 v1, 0x0

    sget v2, Lcom/zhihu/matisse/R$attr;->listPopupWindowStyle:I

    invoke-direct {v0, p1, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setModal(Z)V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 46
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    const/high16 v1, 0x43580000    # 216.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setContentWidth(I)V

    .line 47
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 48
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    const/high16 v1, -0x3dc00000    # -48.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 50
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    new-instance v0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner$1;

    invoke-direct {v0, p0}, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner$1;-><init>(Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;Landroid/content/Context;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->onItemSelected(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;)Landroid/widget/CursorAdapter;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->mAdapter:Landroid/widget/CursorAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;)Landroidx/appcompat/widget/ListPopupWindow;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    return-object p0
.end method

.method private onItemSelected(Landroid/content/Context;I)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 73
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 74
    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 75
    invoke-static {v0}, Lcom/zhihu/matisse/internal/entity/Album;->valueOf(Landroid/database/Cursor;)Lcom/zhihu/matisse/internal/entity/Album;

    move-result-object p2

    .line 76
    invoke-virtual {p2, p1}, Lcom/zhihu/matisse/internal/entity/Album;->getDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 77
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->mSelected:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->mSelected:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {}, Lcom/zhihu/matisse/internal/utils/Platform;->hasICS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->mSelected:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 82
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->mSelected:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->mSelected:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object p2, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->mSelected:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0002

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->mSelected:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->mSelected:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public setAdapter(Landroid/widget/CursorAdapter;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->mAdapter:Landroid/widget/CursorAdapter;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setPopupAnchorView(Landroid/view/View;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    return-void
.end method

.method public setSelectedTextView(Landroid/widget/TextView;)V
    .locals 4

    .line 100
    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->mSelected:Landroid/widget/TextView;

    .line 102
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x2

    .line 103
    aget-object p1, p1, v0

    .line 104
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->mSelected:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    sget v2, Lcom/zhihu/matisse/R$attr;->album_element_color:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 107
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 110
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->mSelected:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->mSelected:Landroid/widget/TextView;

    new-instance v0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner$2;

    invoke-direct {v0, p0}, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner$2;-><init>(Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->mSelected:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setSelection(Landroid/content/Context;I)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/ListPopupWindow;->setSelection(I)V

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->onItemSelected(Landroid/content/Context;I)V

    return-void
.end method
