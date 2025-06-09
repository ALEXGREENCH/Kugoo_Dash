.class public Lcom/yancy/imageselector/ImageSelectorFragment;
.super Landroidx/fragment/app/Fragment;
.source "ImageSelectorFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yancy/imageselector/ImageSelectorFragment$Callback;
    }
.end annotation


# static fields
.field private static final LOADER_ALL:I = 0x0

.field private static final LOADER_CATEGORY:I = 0x1

.field private static final REQUEST_CAMERA:I = 0x64


# instance fields
.field private callback:Lcom/yancy/imageselector/ImageSelectorFragment$Callback;

.field private category_button:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private folderAdapter:Lcom/yancy/imageselector/adapter/FolderAdapter;

.field private folderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yancy/imageselector/bean/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

.field private gridHeight:I

.field private gridWidth:I

.field private grid_image:Landroid/widget/GridView;

.field private hasFolderGened:Z

.field private imageAdapter:Lcom/yancy/imageselector/adapter/ImageAdapter;

.field private imageConfig:Lcom/yancy/imageselector/ImageConfig;

.field private imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yancy/imageselector/bean/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private popupAnchorView:Landroid/view/View;

.field private resultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tempFile:Ljava/io/File;

.field private time_text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->folderList:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->imageList:Ljava/util/List;

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->hasFolderGened:Z

    .line 378
    new-instance v0, Lcom/yancy/imageselector/ImageSelectorFragment$7;

    invoke-direct {v0, p0}, Lcom/yancy/imageselector/ImageSelectorFragment$7;-><init>(Lcom/yancy/imageselector/ImageSelectorFragment;)V

    iput-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->mLoaderCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/yancy/imageselector/ImageSelectorFragment;)Landroidx/appcompat/widget/ListPopupWindow;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yancy/imageselector/ImageSelectorFragment;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->gridWidth:I

    return p0
.end method

.method static synthetic access$1000(Lcom/yancy/imageselector/ImageSelectorFragment;Lcom/yancy/imageselector/bean/Image;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/yancy/imageselector/ImageSelectorFragment;->selectImageFromGrid(Lcom/yancy/imageselector/bean/Image;Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/yancy/imageselector/ImageSelectorFragment;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->gridWidth:I

    return p1
.end method

.method static synthetic access$1100(Lcom/yancy/imageselector/ImageSelectorFragment;)Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->mLoaderCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/yancy/imageselector/ImageSelectorFragment;)Landroid/widget/TextView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->category_button:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/yancy/imageselector/ImageSelectorFragment;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->imageList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/yancy/imageselector/ImageSelectorFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/yancy/imageselector/ImageSelectorFragment;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->hasFolderGened:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/yancy/imageselector/ImageSelectorFragment;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->hasFolderGened:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/yancy/imageselector/ImageSelectorFragment;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->folderList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yancy/imageselector/ImageSelectorFragment;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->gridHeight:I

    return p0
.end method

.method static synthetic access$202(Lcom/yancy/imageselector/ImageSelectorFragment;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->gridHeight:I

    return p1
.end method

.method static synthetic access$300(Lcom/yancy/imageselector/ImageSelectorFragment;II)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/yancy/imageselector/ImageSelectorFragment;->createPopupFolderList(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/yancy/imageselector/ImageSelectorFragment;)Lcom/yancy/imageselector/adapter/FolderAdapter;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->folderAdapter:Lcom/yancy/imageselector/adapter/FolderAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yancy/imageselector/ImageSelectorFragment;)Landroid/widget/TextView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->time_text:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yancy/imageselector/ImageSelectorFragment;)Landroid/widget/GridView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->grid_image:Landroid/widget/GridView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yancy/imageselector/ImageSelectorFragment;)Lcom/yancy/imageselector/adapter/ImageAdapter;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->imageAdapter:Lcom/yancy/imageselector/adapter/ImageAdapter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yancy/imageselector/ImageSelectorFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/yancy/imageselector/ImageSelectorFragment;->showCameraAction()V

    return-void
.end method

.method static synthetic access$900(Lcom/yancy/imageselector/ImageSelectorFragment;)Lcom/yancy/imageselector/ImageConfig;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    return-object p0
.end method

.method private createPopupFolderList(II)V
    .locals 3

    .line 223
    new-instance v0, Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/yancy/imageselector/ImageSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    .line 224
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->folderAdapter:Lcom/yancy/imageselector/adapter/FolderAdapter;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 226
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setContentWidth(I)V

    .line 227
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setWidth(I)V

    .line 228
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    mul-int/lit8 p2, p2, 0x5

    div-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ListPopupWindow;->setHeight(I)V

    .line 229
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object p2, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->popupAnchorView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 230
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ListPopupWindow;->setModal(Z)V

    .line 231
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    new-instance p2, Lcom/yancy/imageselector/ImageSelectorFragment$5;

    invoke-direct {p2, p0}, Lcom/yancy/imageselector/ImageSelectorFragment$5;-><init>(Lcom/yancy/imageselector/ImageSelectorFragment;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private init()V
    .locals 4

    .line 119
    invoke-static {}, Lcom/yancy/imageselector/ImageSelector;->getImageConfig()Lcom/yancy/imageselector/ImageConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    .line 121
    new-instance v0, Lcom/yancy/imageselector/adapter/FolderAdapter;

    iget-object v1, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-direct {v0, v1, v2}, Lcom/yancy/imageselector/adapter/FolderAdapter;-><init>(Landroid/content/Context;Lcom/yancy/imageselector/ImageConfig;)V

    iput-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->folderAdapter:Lcom/yancy/imageselector/adapter/FolderAdapter;

    .line 123
    new-instance v0, Lcom/yancy/imageselector/adapter/ImageAdapter;

    iget-object v1, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->imageList:Ljava/util/List;

    iget-object v3, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-direct {v0, v1, v2, v3}, Lcom/yancy/imageselector/adapter/ImageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/yancy/imageselector/ImageConfig;)V

    iput-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->imageAdapter:Lcom/yancy/imageselector/adapter/ImageAdapter;

    .line 125
    iget-object v1, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-virtual {v1}, Lcom/yancy/imageselector/ImageConfig;->isShowCamera()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yancy/imageselector/adapter/ImageAdapter;->setShowCamera(Z)V

    .line 126
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->imageAdapter:Lcom/yancy/imageselector/adapter/ImageAdapter;

    iget-object v1, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-virtual {v1}, Lcom/yancy/imageselector/ImageConfig;->isMutiSelect()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yancy/imageselector/adapter/ImageAdapter;->setShowSelectIndicator(Z)V

    .line 127
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->grid_image:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->imageAdapter:Lcom/yancy/imageselector/adapter/ImageAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-virtual {v0}, Lcom/yancy/imageselector/ImageConfig;->getPathList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    .line 131
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->category_button:Landroid/widget/TextView;

    sget v1, Lcom/yancy/imageselector/R$string;->all_folder:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 132
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->category_button:Landroid/widget/TextView;

    new-instance v1, Lcom/yancy/imageselector/ImageSelectorFragment$1;

    invoke-direct {v1, p0}, Lcom/yancy/imageselector/ImageSelectorFragment$1;-><init>(Lcom/yancy/imageselector/ImageSelectorFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->grid_image:Landroid/widget/GridView;

    new-instance v1, Lcom/yancy/imageselector/ImageSelectorFragment$2;

    invoke-direct {v1, p0}, Lcom/yancy/imageselector/ImageSelectorFragment$2;-><init>(Lcom/yancy/imageselector/ImageSelectorFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 173
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->grid_image:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/yancy/imageselector/ImageSelectorFragment$3;

    invoke-direct {v1, p0}, Lcom/yancy/imageselector/ImageSelectorFragment$3;-><init>(Lcom/yancy/imageselector/ImageSelectorFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 198
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->grid_image:Landroid/widget/GridView;

    new-instance v1, Lcom/yancy/imageselector/ImageSelectorFragment$4;

    invoke-direct {v1, p0}, Lcom/yancy/imageselector/ImageSelectorFragment$4;-><init>(Lcom/yancy/imageselector/ImageSelectorFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private selectImageFromGrid(Lcom/yancy/imageselector/bean/Image;Z)V
    .locals 1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 335
    iget-object p2, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/yancy/imageselector/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 336
    iget-object p2, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/yancy/imageselector/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 337
    iget-object p2, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->callback:Lcom/yancy/imageselector/ImageSelectorFragment$Callback;

    if-eqz p2, :cond_2

    .line 338
    iget-object v0, p1, Lcom/yancy/imageselector/bean/Image;->path:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/yancy/imageselector/ImageSelectorFragment$Callback;->onImageUnselected(Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_0
    iget-object p2, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-virtual {p2}, Lcom/yancy/imageselector/ImageConfig;->getMaxSize()I

    move-result p2

    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 342
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->context:Landroid/content/Context;

    sget p2, Lcom/yancy/imageselector/R$string;->msg_amount_limit:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 346
    :cond_1
    iget-object p2, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/yancy/imageselector/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object p2, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->callback:Lcom/yancy/imageselector/ImageSelectorFragment$Callback;

    if-eqz p2, :cond_2

    .line 348
    iget-object v0, p1, Lcom/yancy/imageselector/bean/Image;->path:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/yancy/imageselector/ImageSelectorFragment$Callback;->onImageSelected(Ljava/lang/String;)V

    .line 351
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->imageAdapter:Lcom/yancy/imageselector/adapter/ImageAdapter;

    invoke-virtual {p2, p1}, Lcom/yancy/imageselector/adapter/ImageAdapter;->select(Lcom/yancy/imageselector/bean/Image;)V

    goto :goto_1

    .line 353
    :cond_3
    iget-object p2, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->callback:Lcom/yancy/imageselector/ImageSelectorFragment$Callback;

    if-eqz p2, :cond_4

    .line 354
    iget-object p1, p1, Lcom/yancy/imageselector/bean/Image;->path:Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/yancy/imageselector/ImageSelectorFragment$Callback;->onSingleImageSelected(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private showCameraAction()V
    .locals 3

    .line 320
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/yancy/imageselector/ImageSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/yancy/imageselector/ImageSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-virtual {v2}, Lcom/yancy/imageselector/ImageConfig;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yancy/imageselector/utils/FileUtils;->createTmpFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->tempFile:Ljava/io/File;

    const-string v2, "output"

    .line 325
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x64

    .line 326
    invoke-virtual {p0, v0, v1}, Lcom/yancy/imageselector/ImageSelectorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->context:Landroid/content/Context;

    sget v1, Lcom/yancy/imageselector/R$string;->msg_no_camera:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 98
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/yancy/imageselector/ImageSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->mLoaderCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->tempFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 365
    iget-object v1, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->callback:Lcom/yancy/imageselector/ImageSelectorFragment$Callback;

    if-eqz v1, :cond_1

    .line 366
    invoke-interface {v1, v0}, Lcom/yancy/imageselector/ImageSelectorFragment$Callback;->onCameraShot(Ljava/io/File;)V

    goto :goto_0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->tempFile:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 375
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 84
    :try_start_0
    check-cast p1, Lcom/yancy/imageselector/ImageSelectorFragment$Callback;

    iput-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->callback:Lcom/yancy/imageselector/ImageSelectorFragment$Callback;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 86
    :catch_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "The Activity must implement ImageSelectorFragment.Callback interface..."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->grid_image:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/yancy/imageselector/ImageSelectorFragment$6;

    invoke-direct {v1, p0}, Lcom/yancy/imageselector/ImageSelectorFragment$6;-><init>(Lcom/yancy/imageselector/ImageSelectorFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 312
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 93
    sget p3, Lcom/yancy/imageselector/R$layout;->imageselector_main_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 104
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/yancy/imageselector/ImageSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->context:Landroid/content/Context;

    .line 108
    sget p2, Lcom/yancy/imageselector/R$id;->time_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->time_text:Landroid/widget/TextView;

    .line 109
    sget p2, Lcom/yancy/imageselector/R$id;->category_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->category_button:Landroid/widget/TextView;

    .line 110
    sget p2, Lcom/yancy/imageselector/R$id;->grid_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    iput-object p2, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->grid_image:Landroid/widget/GridView;

    .line 111
    sget p2, Lcom/yancy/imageselector/R$id;->footer_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->popupAnchorView:Landroid/view/View;

    .line 113
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment;->time_text:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    invoke-direct {p0}, Lcom/yancy/imageselector/ImageSelectorFragment;->init()V

    return-void
.end method
