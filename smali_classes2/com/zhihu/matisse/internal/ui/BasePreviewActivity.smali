.class public abstract Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BasePreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Lcom/zhihu/matisse/listener/OnFragmentInteractionListener;


# static fields
.field public static final CHECK_STATE:Ljava/lang/String; = "checkState"

.field public static final EXTRA_DEFAULT_BUNDLE:Ljava/lang/String; = "extra_default_bundle"

.field public static final EXTRA_RESULT_APPLY:Ljava/lang/String; = "extra_result_apply"

.field public static final EXTRA_RESULT_BUNDLE:Ljava/lang/String; = "extra_result_bundle"

.field public static final EXTRA_RESULT_ORIGINAL_ENABLE:Ljava/lang/String; = "extra_result_original_enable"


# instance fields
.field protected mAdapter:Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter;

.field private mBottomToolbar:Landroid/widget/FrameLayout;

.field protected mButtonApply:Landroid/widget/TextView;

.field protected mButtonBack:Landroid/widget/TextView;

.field protected mCheckView:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

.field private mIsToolbarHide:Z

.field private mOriginal:Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

.field protected mOriginalEnable:Z

.field private mOriginalLayout:Landroid/widget/LinearLayout;

.field protected mPager:Landroidx/viewpager/widget/ViewPager;

.field protected mPreviousPos:I

.field protected final mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

.field protected mSize:Landroid/widget/TextView;

.field protected mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

.field private mTopToolbar:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 54
    new-instance v0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-direct {v0, p0}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mPreviousPos:I

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mIsToolbarHide:Z

    return-void
.end method

.method static synthetic access$000(Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;Lcom/zhihu/matisse/internal/entity/Item;)Z
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->assertAddSelection(Lcom/zhihu/matisse/internal/entity/Item;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->updateApplyButton()V

    return-void
.end method

.method static synthetic access$200(Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;)I
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->countOverMaxSize()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;)Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mOriginal:Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

    return-object p0
.end method

.method private assertAddSelection(Lcom/zhihu/matisse/internal/entity/Item;)Z
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->isAcceptable(Lcom/zhihu/matisse/internal/entity/Item;)Lcom/zhihu/matisse/internal/entity/IncapableCause;

    move-result-object p1

    .line 355
    invoke-static {p0, p1}, Lcom/zhihu/matisse/internal/entity/IncapableCause;->handleCause(Landroid/content/Context;Lcom/zhihu/matisse/internal/entity/IncapableCause;)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private countOverMaxSize()I
    .locals 5

    .line 317
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->count()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 319
    iget-object v3, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v3}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->asList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhihu/matisse/internal/entity/Item;

    .line 320
    invoke-virtual {v3}, Lcom/zhihu/matisse/internal/entity/Item;->isImage()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 321
    iget-wide v3, v3, Lcom/zhihu/matisse/internal/entity/Item;->size:J

    invoke-static {v3, v4}, Lcom/zhihu/matisse/internal/utils/PhotoMetadataUtils;->getSizeInMB(J)F

    move-result v3

    .line 322
    iget-object v4, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget v4, v4, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->originalMaxSize:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private updateApplyButton()V
    .locals 5

    .line 272
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->count()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mButtonApply:Landroid/widget/TextView;

    sget v2, Lcom/zhihu/matisse/R$string;->button_apply_default:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 275
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mButtonApply:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 276
    iget-object v3, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    invoke-virtual {v3}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->singleSelectionModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mButtonApply:Landroid/widget/TextView;

    sget v3, Lcom/zhihu/matisse/R$string;->button_apply_default:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 278
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mButtonApply:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 280
    :cond_1
    iget-object v3, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mButtonApply:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 281
    iget-object v3, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mButtonApply:Landroid/widget/TextView;

    sget v4, Lcom/zhihu/matisse/R$string;->button_apply:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-virtual {p0, v4, v2}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :goto_0
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget-boolean v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->originalable:Z

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mOriginalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 286
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->updateOriginalState()V

    goto :goto_1

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mOriginalLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private updateOriginalState()V
    .locals 5

    .line 294
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mOriginal:Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

    iget-boolean v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mOriginalEnable:Z

    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->setChecked(Z)V

    .line 295
    iget-boolean v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mOriginalEnable:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mOriginal:Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->setColor(I)V

    .line 299
    :cond_0
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->countOverMaxSize()I

    move-result v0

    if-lez v0, :cond_1

    .line 301
    iget-boolean v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mOriginalEnable:Z

    if-eqz v0, :cond_1

    .line 302
    sget v0, Lcom/zhihu/matisse/R$string;->error_over_original_size:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget v3, v3, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->originalMaxSize:I

    .line 303
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    .line 302
    invoke-static {v2, v0}, Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog;

    move-result-object v0

    .line 304
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-class v3, Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog;

    .line 305
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 304
    invoke-virtual {v0, v2, v3}, Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mOriginal:Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

    invoke-virtual {v0, v4}, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->setChecked(Z)V

    .line 308
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mOriginal:Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->setColor(I)V

    .line 309
    iput-boolean v4, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mOriginalEnable:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 188
    invoke-virtual {p0, v0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->sendBackResult(Z)V

    .line 189
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public onClick()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget-boolean v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->autoHideToobar:Z

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    iget-boolean v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mIsToolbarHide:Z

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mTopToolbar:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 210
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mTopToolbar:Landroid/widget/FrameLayout;

    .line 211
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 213
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mBottomToolbar:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mBottomToolbar:Landroid/widget/FrameLayout;

    .line 214
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 215
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mTopToolbar:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 219
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mTopToolbar:Landroid/widget/FrameLayout;

    .line 220
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 222
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mBottomToolbar:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 223
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mBottomToolbar:Landroid/widget/FrameLayout;

    .line 224
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 228
    :goto_0
    iget-boolean v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mIsToolbarHide:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mIsToolbarHide:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/zhihu/matisse/R$id;->button_back:I

    if-ne v0, v1, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->onBackPressed()V

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/zhihu/matisse/R$id;->button_apply:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    .line 197
    invoke-virtual {p0, p1}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->sendBackResult(Z)V

    .line 198
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 77
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    iget v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->themeId:I

    invoke-virtual {p0, v0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->setTheme(I)V

    .line 78
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->hasInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0, v1}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->setResult(I)V

    .line 81
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->finish()V

    return-void

    .line 84
    :cond_0
    sget v0, Lcom/zhihu/matisse/R$layout;->activity_media_preview:I

    invoke-virtual {p0, v0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->setContentView(I)V

    .line 85
    invoke-static {}, Lcom/zhihu/matisse/internal/utils/Platform;->hasKitKat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 89
    :cond_1
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    .line 90
    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->needOrientationRestriction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->orientation:I

    invoke-virtual {p0, v0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->setRequestedOrientation(I)V

    :cond_2
    if-nez p1, :cond_3

    .line 95
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extra_default_bundle"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_result_original_enable"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mOriginalEnable:Z

    goto :goto_0

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "checkState"

    .line 99
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mOriginalEnable:Z

    .line 101
    :goto_0
    sget p1, Lcom/zhihu/matisse/R$id;->button_back:I

    invoke-virtual {p0, p1}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mButtonBack:Landroid/widget/TextView;

    .line 102
    sget p1, Lcom/zhihu/matisse/R$id;->button_apply:I

    invoke-virtual {p0, p1}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mButtonApply:Landroid/widget/TextView;

    .line 103
    sget p1, Lcom/zhihu/matisse/R$id;->size:I

    invoke-virtual {p0, p1}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSize:Landroid/widget/TextView;

    .line 104
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mButtonBack:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mButtonApply:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    sget p1, Lcom/zhihu/matisse/R$id;->pager:I

    invoke-virtual {p0, p1}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 108
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 109
    new-instance p1, Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter;

    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter$OnPrimaryItemSetListener;)V

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mAdapter:Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter;

    .line 110
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 111
    sget p1, Lcom/zhihu/matisse/R$id;->check_view:I

    invoke-virtual {p0, p1}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mCheckView:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    .line 112
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget-boolean v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->countable:Z

    invoke-virtual {p1, v0}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setCountable(Z)V

    .line 113
    sget p1, Lcom/zhihu/matisse/R$id;->bottom_toolbar:I

    invoke-virtual {p0, p1}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mBottomToolbar:Landroid/widget/FrameLayout;

    .line 114
    sget p1, Lcom/zhihu/matisse/R$id;->top_toolbar:I

    invoke-virtual {p0, p1}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mTopToolbar:Landroid/widget/FrameLayout;

    .line 116
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mCheckView:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    new-instance v0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$1;

    invoke-direct {v0, p0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$1;-><init>(Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;)V

    invoke-virtual {p1, v0}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    sget p1, Lcom/zhihu/matisse/R$id;->originalLayout:I

    invoke-virtual {p0, p1}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mOriginalLayout:Landroid/widget/LinearLayout;

    .line 149
    sget p1, Lcom/zhihu/matisse/R$id;->original:I

    invoke-virtual {p0, p1}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mOriginal:Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

    .line 150
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mOriginalLayout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$2;

    invoke-direct {v0, p0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$2;-><init>(Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->updateApplyButton()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter;

    .line 240
    iget v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mPreviousPos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    if-eq v1, p1, :cond_3

    .line 241
    iget-object v2, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v2, v1}, Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhihu/matisse/internal/ui/PreviewItemFragment;

    invoke-virtual {v1}, Lcom/zhihu/matisse/internal/ui/PreviewItemFragment;->resetView()V

    .line 243
    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter;->getMediaItem(I)Lcom/zhihu/matisse/internal/entity/Item;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget-boolean v1, v1, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->countable:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v1, v0}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->checkedNumOf(Lcom/zhihu/matisse/internal/entity/Item;)I

    move-result v1

    .line 246
    iget-object v3, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mCheckView:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    invoke-virtual {v3, v1}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setCheckedNum(I)V

    if-lez v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mCheckView:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    invoke-virtual {v1, v2}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setEnabled(Z)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mCheckView:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    iget-object v3, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v3}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->maxSelectableReached()Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setEnabled(Z)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v1, v0}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->isSelected(Lcom/zhihu/matisse/internal/entity/Item;)Z

    move-result v1

    .line 254
    iget-object v3, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mCheckView:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    invoke-virtual {v3, v1}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setChecked(Z)V

    if-eqz v1, :cond_2

    .line 256
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mCheckView:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    invoke-virtual {v1, v2}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setEnabled(Z)V

    goto :goto_0

    .line 258
    :cond_2
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mCheckView:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    iget-object v3, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v3}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->maxSelectableReached()Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setEnabled(Z)V

    .line 261
    :goto_0
    invoke-virtual {p0, v0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->updateSize(Lcom/zhihu/matisse/internal/entity/Item;)V

    .line 263
    :cond_3
    iput p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mPreviousPos:I

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "checkState"

    .line 182
    iget-boolean v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mOriginalEnable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 183
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected sendBackResult(Z)V
    .locals 3

    .line 346
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 347
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v1}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->getDataWithBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra_result_bundle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "extra_result_apply"

    .line 348
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "extra_result_original_enable"

    .line 349
    iget-boolean v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mOriginalEnable:Z

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 350
    invoke-virtual {p0, p1, v0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method protected updateSize(Lcom/zhihu/matisse/internal/entity/Item;)V
    .locals 6

    .line 331
    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/entity/Item;->isGif()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSize:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSize:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p1, Lcom/zhihu/matisse/internal/entity/Item;->size:J

    invoke-static {v4, v5}, Lcom/zhihu/matisse/internal/utils/PhotoMetadataUtils;->getSizeInMB(J)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSize:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    :goto_0
    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/entity/Item;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 339
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mOriginalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 340
    :cond_1
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget-boolean p1, p1, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->originalable:Z

    if-eqz p1, :cond_2

    .line 341
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mOriginalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method
