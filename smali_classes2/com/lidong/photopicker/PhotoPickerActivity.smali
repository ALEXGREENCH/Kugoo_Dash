.class public Lcom/lidong/photopicker/PhotoPickerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PhotoPickerActivity.java"


# static fields
.field public static final DEFAULT_MAX_TOTAL:I = 0x9

.field public static final EXTRA_DEFAULT_SELECTED_LIST:Ljava/lang/String; = "default_result"

.field public static final EXTRA_IMAGE_CONFIG:Ljava/lang/String; = "image_config"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "select_result"

.field public static final EXTRA_SELECT_COUNT:Ljava/lang/String; = "max_select_count"

.field public static final EXTRA_SELECT_MODE:Ljava/lang/String; = "select_count_mode"

.field public static final EXTRA_SHOW_CAMERA:Ljava/lang/String; = "show_camera"

.field private static final LOADER_ALL:I = 0x0

.field private static final LOADER_CATEGORY:I = 0x1

.field public static final MODE_MULTI:I = 0x1

.field public static final MODE_SINGLE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "com.lidong.photopicker.PhotoPickerActivity"


# instance fields
.field private btnAlbum:Landroid/widget/Button;

.field private btnPreview:Landroid/widget/Button;

.field private captureManager:Lcom/lidong/photopicker/ImageCaptureManager;

.field private hasFolderGened:Z

.field private imageConfig:Lcom/lidong/photopicker/ImageConfig;

.field private mCxt:Landroid/content/Context;

.field private mDesireImageCount:I

.field private mFolderAdapter:Lcom/lidong/photopicker/FolderAdapter;

.field private mFolderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

.field private mGridView:Landroid/widget/GridView;

.field private mImageAdapter:Lcom/lidong/photopicker/ImageGridAdapter;

.field private mIsShowCamera:Z

.field private mLoaderCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupAnchorView:Landroid/view/View;

.field private mResultFolder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lidong/photopicker/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private menuDoneItem:Landroid/view/MenuItem;

.field private resultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->resultList:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mResultFolder:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->hasFolderGened:Z

    .line 84
    iput-boolean v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mIsShowCamera:Z

    .line 400
    new-instance v0, Lcom/lidong/photopicker/PhotoPickerActivity$5;

    invoke-direct {v0, p0}, Lcom/lidong/photopicker/PhotoPickerActivity$5;-><init>(Lcom/lidong/photopicker/PhotoPickerActivity;)V

    iput-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mLoaderCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/lidong/photopicker/PhotoPickerActivity;)Lcom/lidong/photopicker/ImageGridAdapter;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mImageAdapter:Lcom/lidong/photopicker/ImageGridAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lidong/photopicker/PhotoPickerActivity;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mDesireImageCount:I

    return p0
.end method

.method static synthetic access$1000(Lcom/lidong/photopicker/PhotoPickerActivity;)Landroid/widget/Button;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->btnAlbum:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/lidong/photopicker/PhotoPickerActivity;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mIsShowCamera:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/lidong/photopicker/PhotoPickerActivity;)Landroid/widget/GridView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mGridView:Landroid/widget/GridView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/lidong/photopicker/PhotoPickerActivity;)Lcom/lidong/photopicker/ImageConfig;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->imageConfig:Lcom/lidong/photopicker/ImageConfig;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/lidong/photopicker/PhotoPickerActivity;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->hasFolderGened:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/lidong/photopicker/PhotoPickerActivity;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->hasFolderGened:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/lidong/photopicker/PhotoPickerActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mResultFolder:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lidong/photopicker/PhotoPickerActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->resultList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/lidong/photopicker/PhotoPickerActivity;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mCxt:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/lidong/photopicker/PhotoPickerActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->showCameraAction()V

    return-void
.end method

.method static synthetic access$500(Lcom/lidong/photopicker/PhotoPickerActivity;Lcom/lidong/photopicker/Image;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/lidong/photopicker/PhotoPickerActivity;->selectImageFromGrid(Lcom/lidong/photopicker/Image;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/lidong/photopicker/PhotoPickerActivity;)Landroidx/appcompat/widget/ListPopupWindow;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mFolderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    return-object p0
.end method

.method static synthetic access$700(Lcom/lidong/photopicker/PhotoPickerActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->createPopupFolderList()V

    return-void
.end method

.method static synthetic access$800(Lcom/lidong/photopicker/PhotoPickerActivity;)Lcom/lidong/photopicker/FolderAdapter;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mFolderAdapter:Lcom/lidong/photopicker/FolderAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/lidong/photopicker/PhotoPickerActivity;)Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mLoaderCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    return-object p0
.end method

.method private complete()V
    .locals 3

    .line 565
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "select_result"

    .line 566
    iget-object v2, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 567
    invoke-virtual {p0, v1, v0}, Lcom/lidong/photopicker/PhotoPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 568
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->finish()V

    return-void
.end method

.method private createPopupFolderList()V
    .locals 3

    .line 203
    new-instance v0, Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mCxt:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mFolderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    .line 204
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mFolderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mFolderAdapter:Lcom/lidong/photopicker/FolderAdapter;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 206
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mFolderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setContentWidth(I)V

    .line 207
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mFolderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setWidth(I)V

    .line 212
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lidong/photopicker/R$dimen;->folder_cover_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 214
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lidong/photopicker/R$dimen;->folder_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 216
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lidong/photopicker/R$dimen;->folder_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 217
    iget-object v1, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mFolderAdapter:Lcom/lidong/photopicker/FolderAdapter;

    invoke-virtual {v1}, Lcom/lidong/photopicker/FolderAdapter;->getCount()I

    move-result v1

    mul-int/2addr v1, v0

    .line 219
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v1, v0, :cond_0

    .line 221
    iget-object v1, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mFolderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    int-to-float v0, v0

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ListPopupWindow;->setHeight(I)V

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mFolderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setHeight(I)V

    .line 226
    :goto_0
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mFolderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mPopupAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 227
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mFolderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setModal(Z)V

    .line 228
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mFolderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    sget v1, Lcom/lidong/photopicker/R$style;->Animation_AppCompat_DropDownUp:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setAnimationStyle(I)V

    .line 229
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mFolderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    new-instance v1, Lcom/lidong/photopicker/PhotoPickerActivity$4;

    invoke-direct {v1, p0}, Lcom/lidong/photopicker/PhotoPickerActivity$4;-><init>(Lcom/lidong/photopicker/PhotoPickerActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private getItemImageWidth()I
    .locals 4

    .line 522
    invoke-direct {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->getNumColnums()I

    move-result v0

    .line 523
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 524
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lidong/photopicker/R$dimen;->space_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 525
    div-int/2addr v1, v0

    return v1
.end method

.method private getNumColnums()I
    .locals 2

    .line 533
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/2addr v0, v1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private initViews()V
    .locals 2

    .line 185
    iput-object p0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mCxt:Landroid/content/Context;

    .line 186
    new-instance v0, Lcom/lidong/photopicker/ImageCaptureManager;

    iget-object v1, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mCxt:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lidong/photopicker/ImageCaptureManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->captureManager:Lcom/lidong/photopicker/ImageCaptureManager;

    .line 188
    sget v0, Lcom/lidong/photopicker/R$id;->pickerToolbar:I

    invoke-virtual {p0, v0}, Lcom/lidong/photopicker/PhotoPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 189
    invoke-virtual {p0, v0}, Lcom/lidong/photopicker/PhotoPickerActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 190
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 193
    sget v0, Lcom/lidong/photopicker/R$id;->grid:I

    invoke-virtual {p0, v0}, Lcom/lidong/photopicker/PhotoPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mGridView:Landroid/widget/GridView;

    .line 194
    invoke-direct {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->getNumColnums()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 196
    sget v0, Lcom/lidong/photopicker/R$id;->photo_picker_footer:I

    invoke-virtual {p0, v0}, Lcom/lidong/photopicker/PhotoPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mPopupAnchorView:Landroid/view/View;

    .line 197
    sget v0, Lcom/lidong/photopicker/R$id;->btnAlbum:I

    invoke-virtual {p0, v0}, Lcom/lidong/photopicker/PhotoPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->btnAlbum:Landroid/widget/Button;

    .line 198
    sget v0, Lcom/lidong/photopicker/R$id;->btnPreview:I

    invoke-virtual {p0, v0}, Lcom/lidong/photopicker/PhotoPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->btnPreview:Landroid/widget/Button;

    return-void
.end method

.method private refreshActionStatus()V
    .locals 5

    .line 385
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->resultList:Ljava/util/ArrayList;

    const-string v1, "000000"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 388
    :cond_0
    sget v0, Lcom/lidong/photopicker/R$string;->done_with_count:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mDesireImageCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/lidong/photopicker/PhotoPickerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->menuDoneItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 390
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v3, v4

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->menuDoneItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 392
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->btnPreview:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz v3, :cond_2

    .line 394
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->btnPreview:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lidong/photopicker/R$string;->preview:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 396
    :cond_2
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->btnPreview:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lidong/photopicker/R$string;->preview:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private selectImageFromGrid(Lcom/lidong/photopicker/Image;I)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 361
    iget-object p2, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->resultList:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/lidong/photopicker/Image;->path:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 362
    iget-object p2, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->resultList:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/lidong/photopicker/Image;->path:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 363
    iget-object p2, p1, Lcom/lidong/photopicker/Image;->path:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/lidong/photopicker/PhotoPickerActivity;->onImageUnselected(Ljava/lang/String;)V

    goto :goto_0

    .line 366
    :cond_0
    iget p2, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mDesireImageCount:I

    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 367
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mCxt:Landroid/content/Context;

    sget p2, Lcom/lidong/photopicker/R$string;->msg_amount_limit:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 370
    :cond_1
    iget-object p2, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->resultList:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/lidong/photopicker/Image;->path:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object p2, p1, Lcom/lidong/photopicker/Image;->path:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/lidong/photopicker/PhotoPickerActivity;->onImageSelected(Ljava/lang/String;)V

    .line 373
    :goto_0
    iget-object p2, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mImageAdapter:Lcom/lidong/photopicker/ImageGridAdapter;

    invoke-virtual {p2, p1}, Lcom/lidong/photopicker/ImageGridAdapter;->select(Lcom/lidong/photopicker/Image;)V

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    .line 376
    iget-object p1, p1, Lcom/lidong/photopicker/Image;->path:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lidong/photopicker/PhotoPickerActivity;->onSingleImageSelected(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private showCameraAction()V
    .locals 4

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->captureManager:Lcom/lidong/photopicker/ImageCaptureManager;

    invoke-virtual {v0}, Lcom/lidong/photopicker/ImageCaptureManager;->dispatchTakePictureIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    .line 346
    invoke-virtual {p0, v0, v1}, Lcom/lidong/photopicker/PhotoPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 348
    iget-object v1, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mCxt:Landroid/content/Context;

    sget v2, Lcom/lidong/photopicker/R$string;->msg_no_camera:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 349
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 292
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/16 p2, 0x63

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "preview_result"

    .line 306
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 308
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-object p3, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eq p2, p3, :cond_3

    .line 309
    iput-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->resultList:Ljava/util/ArrayList;

    .line 310
    invoke-direct {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->refreshActionStatus()V

    .line 311
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mImageAdapter:Lcom/lidong/photopicker/ImageGridAdapter;

    iget-object p2, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/lidong/photopicker/ImageGridAdapter;->setDefaultSelected(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 298
    :cond_1
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->captureManager:Lcom/lidong/photopicker/ImageCaptureManager;

    invoke-virtual {p1}, Lcom/lidong/photopicker/ImageCaptureManager;->getCurrentPhotoPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 299
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->captureManager:Lcom/lidong/photopicker/ImageCaptureManager;

    invoke-virtual {p1}, Lcom/lidong/photopicker/ImageCaptureManager;->galleryAddPic()V

    .line 300
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->resultList:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->captureManager:Lcom/lidong/photopicker/ImageCaptureManager;

    invoke-virtual {p2}, Lcom/lidong/photopicker/ImageCaptureManager;->getCurrentPhotoPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_2
    invoke-direct {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->complete()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 320
    sget-object v0, Lcom/lidong/photopicker/PhotoPickerActivity;->TAG:Ljava/lang/String;

    const-string v1, "on change"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mGridView:Landroid/widget/GridView;

    invoke-direct {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->getNumColnums()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 325
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mImageAdapter:Lcom/lidong/photopicker/ImageGridAdapter;

    invoke-direct {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->getItemImageWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lidong/photopicker/ImageGridAdapter;->setItemSize(I)V

    .line 327
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mFolderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mFolderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 334
    iget-object v1, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mFolderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    int-to-float v0, v0

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ListPopupWindow;->setHeight(I)V

    .line 337
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 88
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    sget p1, Lcom/lidong/photopicker/R$layout;->activity_photopicker:I

    invoke-virtual {p0, p1}, Lcom/lidong/photopicker/PhotoPickerActivity;->setContentView(I)V

    .line 91
    invoke-direct {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->initViews()V

    .line 94
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "image_config"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/lidong/photopicker/ImageConfig;

    iput-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->imageConfig:Lcom/lidong/photopicker/ImageConfig;

    .line 97
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mLoaderCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 100
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "max_select_count"

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mDesireImageCount:I

    .line 103
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "select_count_mode"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "default_result"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "paizhao"

    .line 109
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 112
    :cond_0
    iget-object v3, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "show_camera"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mIsShowCamera:Z

    .line 118
    new-instance v1, Lcom/lidong/photopicker/ImageGridAdapter;

    iget-object v3, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mCxt:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mIsShowCamera:Z

    invoke-direct {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->getItemImageWidth()I

    move-result v5

    invoke-direct {v1, v3, v4, v5}, Lcom/lidong/photopicker/ImageGridAdapter;-><init>(Landroid/content/Context;ZI)V

    iput-object v1, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mImageAdapter:Lcom/lidong/photopicker/ImageGridAdapter;

    if-ne p1, v0, :cond_2

    move v2, v0

    .line 120
    :cond_2
    invoke-virtual {v1, v2}, Lcom/lidong/photopicker/ImageGridAdapter;->showSelectIndicator(Z)V

    .line 121
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mImageAdapter:Lcom/lidong/photopicker/ImageGridAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/lidong/photopicker/PhotoPickerActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/lidong/photopicker/PhotoPickerActivity$1;-><init>(Lcom/lidong/photopicker/PhotoPickerActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 150
    new-instance p1, Lcom/lidong/photopicker/FolderAdapter;

    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mCxt:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/lidong/photopicker/FolderAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->mFolderAdapter:Lcom/lidong/photopicker/FolderAdapter;

    .line 153
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->btnAlbum:Landroid/widget/Button;

    new-instance v0, Lcom/lidong/photopicker/PhotoPickerActivity$2;

    invoke-direct {v0, p0}, Lcom/lidong/photopicker/PhotoPickerActivity$2;-><init>(Lcom/lidong/photopicker/PhotoPickerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->btnPreview:Landroid/widget/Button;

    new-instance v0, Lcom/lidong/photopicker/PhotoPickerActivity$3;

    invoke-direct {v0, p0}, Lcom/lidong/photopicker/PhotoPickerActivity$3;-><init>(Lcom/lidong/photopicker/PhotoPickerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 539
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/lidong/photopicker/R$menu;->menu_picker:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 541
    sget v0, Lcom/lidong/photopicker/R$id;->action_picker_done:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->menuDoneItem:Landroid/view/MenuItem;

    const/4 v0, 0x0

    .line 542
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 543
    invoke-direct {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->refreshActionStatus()V

    const/4 p1, 0x1

    return p1
.end method

.method public onImageSelected(Ljava/lang/String;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_0
    invoke-direct {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->refreshActionStatus()V

    return-void
.end method

.method public onImageUnselected(Ljava/lang/String;)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 287
    :cond_0
    invoke-direct {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->refreshActionStatus()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 550
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->finish()V

    return v2

    .line 555
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/lidong/photopicker/R$id;->action_picker_done:I

    if-ne v0, v1, :cond_1

    .line 556
    invoke-direct {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->complete()V

    return v2

    .line 560
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->captureManager:Lcom/lidong/photopicker/ImageCaptureManager;

    invoke-virtual {v0, p1}, Lcom/lidong/photopicker/ImageCaptureManager;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 580
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->captureManager:Lcom/lidong/photopicker/ImageCaptureManager;

    invoke-virtual {v0, p1}, Lcom/lidong/photopicker/ImageCaptureManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 574
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSingleImageSelected(Ljava/lang/String;)V
    .locals 2

    .line 269
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 270
    iget-object v1, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "select_result"

    .line 271
    iget-object v1, p0, Lcom/lidong/photopicker/PhotoPickerActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 272
    invoke-virtual {p0, p1, v0}, Lcom/lidong/photopicker/PhotoPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 273
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPickerActivity;->finish()V

    return-void
.end method
