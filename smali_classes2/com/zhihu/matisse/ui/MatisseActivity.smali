.class public Lcom/zhihu/matisse/ui/MatisseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MatisseActivity.java"

# interfaces
.implements Lcom/zhihu/matisse/internal/model/AlbumCollection$AlbumCallbacks;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment$SelectionProvider;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;
.implements Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;
.implements Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$OnPhotoCapture;


# static fields
.field public static final CHECK_STATE:Ljava/lang/String; = "checkState"

.field public static final EXTRA_RESULT_ORIGINAL_ENABLE:Ljava/lang/String; = "extra_result_original_enable"

.field public static final EXTRA_RESULT_SELECTION:Ljava/lang/String; = "extra_result_selection"

.field public static final EXTRA_RESULT_SELECTION_PATH:Ljava/lang/String; = "extra_result_selection_path"

.field private static final REQUEST_CODE_CAPTURE:I = 0x18

.field private static final REQUEST_CODE_PREVIEW:I = 0x17


# instance fields
.field private final mAlbumCollection:Lcom/zhihu/matisse/internal/model/AlbumCollection;

.field private mAlbumsAdapter:Lcom/zhihu/matisse/internal/ui/adapter/AlbumsAdapter;

.field private mAlbumsSpinner:Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;

.field private mButtonApply:Landroid/widget/TextView;

.field private mButtonPreview:Landroid/widget/TextView;

.field private mContainer:Landroid/view/View;

.field private mEmptyView:Landroid/view/View;

.field private mMediaStoreCompat:Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;

.field private mOriginal:Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

.field private mOriginalEnable:Z

.field private mOriginalLayout:Landroid/widget/LinearLayout;

.field private mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

.field private mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 80
    new-instance v0, Lcom/zhihu/matisse/internal/model/AlbumCollection;

    invoke-direct {v0}, Lcom/zhihu/matisse/internal/model/AlbumCollection;-><init>()V

    iput-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mAlbumCollection:Lcom/zhihu/matisse/internal/model/AlbumCollection;

    .line 82
    new-instance v0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-direct {v0, p0}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    return-void
.end method

.method static synthetic access$000(Lcom/zhihu/matisse/ui/MatisseActivity;)Lcom/zhihu/matisse/internal/model/AlbumCollection;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mAlbumCollection:Lcom/zhihu/matisse/internal/model/AlbumCollection;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zhihu/matisse/ui/MatisseActivity;)Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mAlbumsSpinner:Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zhihu/matisse/ui/MatisseActivity;Lcom/zhihu/matisse/internal/entity/Album;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/zhihu/matisse/ui/MatisseActivity;->onAlbumSelected(Lcom/zhihu/matisse/internal/entity/Album;)V

    return-void
.end method

.method private countOverMaxSize()I
    .locals 5

    .line 298
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->count()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 300
    iget-object v3, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v3}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->asList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhihu/matisse/internal/entity/Item;

    .line 302
    invoke-virtual {v3}, Lcom/zhihu/matisse/internal/entity/Item;->isImage()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 303
    iget-wide v3, v3, Lcom/zhihu/matisse/internal/entity/Item;->size:J

    invoke-static {v3, v4}, Lcom/zhihu/matisse/internal/utils/PhotoMetadataUtils;->getSizeInMB(J)F

    move-result v3

    .line 304
    iget-object v4, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

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

.method private onAlbumSelected(Lcom/zhihu/matisse/internal/entity/Album;)V
    .locals 3

    .line 390
    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/entity/Album;->isAll()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/entity/Album;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object p1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget-object p1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 396
    invoke-static {p1}, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->newInstance(Lcom/zhihu/matisse/internal/entity/Album;)Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;

    move-result-object p1

    .line 397
    invoke-virtual {p0}, Lcom/zhihu/matisse/ui/MatisseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 398
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/zhihu/matisse/R$id;->container:I

    const-class v2, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;

    const-string v2, "MediaSelectionFragment"

    .line 399
    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 400
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_0
    return-void
.end method

.method private updateBottomToolbar()V
    .locals 5

    .line 252
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->count()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mButtonPreview:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 255
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mButtonApply:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 256
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mButtonApply:Landroid/widget/TextView;

    sget v2, Lcom/zhihu/matisse/R$string;->button_apply_default:I

    invoke-virtual {p0, v2}, Lcom/zhihu/matisse/ui/MatisseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 257
    iget-object v3, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    invoke-virtual {v3}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->singleSelectionModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 258
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mButtonPreview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 259
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mButtonApply:Landroid/widget/TextView;

    sget v3, Lcom/zhihu/matisse/R$string;->button_apply_default:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 260
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mButtonApply:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 262
    :cond_1
    iget-object v3, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mButtonPreview:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 263
    iget-object v3, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mButtonApply:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 264
    iget-object v3, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mButtonApply:Landroid/widget/TextView;

    sget v4, Lcom/zhihu/matisse/R$string;->button_apply:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-virtual {p0, v4, v2}, Lcom/zhihu/matisse/ui/MatisseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    :goto_0
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget-boolean v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->originalable:Z

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mOriginalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 270
    invoke-direct {p0}, Lcom/zhihu/matisse/ui/MatisseActivity;->updateOriginalState()V

    goto :goto_1

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mOriginalLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private updateOriginalState()V
    .locals 4

    .line 280
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mOriginal:Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

    iget-boolean v1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mOriginalEnable:Z

    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->setChecked(Z)V

    .line 281
    invoke-direct {p0}, Lcom/zhihu/matisse/ui/MatisseActivity;->countOverMaxSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 283
    iget-boolean v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mOriginalEnable:Z

    if-eqz v0, :cond_0

    .line 284
    sget v0, Lcom/zhihu/matisse/R$string;->error_over_original_size:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget v2, v2, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->originalMaxSize:I

    .line 285
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/zhihu/matisse/ui/MatisseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 284
    invoke-static {v1, v0}, Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog;

    move-result-object v0

    .line 286
    invoke-virtual {p0}, Lcom/zhihu/matisse/ui/MatisseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog;

    .line 287
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-virtual {v0, v1, v2}, Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mOriginal:Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

    invoke-virtual {v0, v3}, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->setChecked(Z)V

    .line 290
    iput-boolean v3, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mOriginalEnable:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public capture()V
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mMediaStoreCompat:Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;

    if-eqz v0, :cond_0

    const/16 v1, 0x18

    .line 433
    invoke-virtual {v0, p0, v1}, Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;->dispatchCaptureIntent(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 191
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const/16 p2, 0x17

    const-string v1, "extra_result_selection_path"

    const-string v2, "extra_result_selection"

    if-ne p1, p2, :cond_4

    const-string p1, "extra_result_bundle"

    .line 196
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "state_selection"

    .line 197
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    const-string v3, "extra_result_original_enable"

    const/4 v4, 0x0

    .line 198
    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mOriginalEnable:Z

    const-string v5, "state_collection_type"

    .line 199
    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v5, "extra_result_apply"

    .line 201
    invoke-virtual {p3, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 202
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 203
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 204
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    .line 206
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zhihu/matisse/internal/entity/Item;

    .line 207
    invoke-virtual {v5}, Lcom/zhihu/matisse/internal/entity/Item;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {v5}, Lcom/zhihu/matisse/internal/entity/Item;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/zhihu/matisse/internal/utils/PathUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {p1, v2, p3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 213
    iget-boolean p2, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mOriginalEnable:Z

    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v0, p1}, Lcom/zhihu/matisse/ui/MatisseActivity;->setResult(ILandroid/content/Intent;)V

    .line 215
    invoke-virtual {p0}, Lcom/zhihu/matisse/ui/MatisseActivity;->finish()V

    goto :goto_1

    .line 217
    :cond_2
    iget-object p3, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {p3, p2, p1}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->overwrite(Ljava/util/ArrayList;I)V

    .line 218
    invoke-virtual {p0}, Lcom/zhihu/matisse/ui/MatisseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class p2, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;

    const-string p2, "MediaSelectionFragment"

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 220
    instance-of p2, p1, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;

    if-eqz p2, :cond_3

    .line 221
    check-cast p1, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;

    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->refreshMediaGrid()V

    .line 223
    :cond_3
    invoke-direct {p0}, Lcom/zhihu/matisse/ui/MatisseActivity;->updateBottomToolbar()V

    goto :goto_1

    :cond_4
    const/16 p2, 0x18

    if-ne p1, p2, :cond_5

    .line 227
    iget-object p1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mMediaStoreCompat:Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;

    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;->getCurrentPhotoUri()Landroid/net/Uri;

    move-result-object p1

    .line 228
    iget-object p2, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mMediaStoreCompat:Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;

    invoke-virtual {p2}, Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;->getCurrentPhotoPath()Ljava/lang/String;

    move-result-object p2

    .line 229
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 230
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 234
    invoke-virtual {v3, v2, p3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 235
    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 236
    invoke-virtual {p0, v0, v3}, Lcom/zhihu/matisse/ui/MatisseActivity;->setResult(ILandroid/content/Intent;)V

    .line 241
    new-instance p1, Lcom/zhihu/matisse/internal/utils/SingleMediaScanner;

    invoke-virtual {p0}, Lcom/zhihu/matisse/ui/MatisseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance v0, Lcom/zhihu/matisse/ui/MatisseActivity$1;

    invoke-direct {v0, p0}, Lcom/zhihu/matisse/ui/MatisseActivity$1;-><init>(Lcom/zhihu/matisse/ui/MatisseActivity;)V

    invoke-direct {p1, p3, p2, v0}, Lcom/zhihu/matisse/internal/utils/SingleMediaScanner;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/zhihu/matisse/internal/utils/SingleMediaScanner$ScanListener;)V

    .line 246
    invoke-virtual {p0}, Lcom/zhihu/matisse/ui/MatisseActivity;->finish()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onAlbumLoad(Landroid/database/Cursor;)V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mAlbumsAdapter:Lcom/zhihu/matisse/internal/ui/adapter/AlbumsAdapter;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 367
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 368
    new-instance v1, Lcom/zhihu/matisse/ui/MatisseActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/zhihu/matisse/ui/MatisseActivity$2;-><init>(Lcom/zhihu/matisse/ui/MatisseActivity;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAlbumReset()V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mAlbumsAdapter:Lcom/zhihu/matisse/internal/ui/adapter/AlbumsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0, v0}, Lcom/zhihu/matisse/ui/MatisseActivity;->setResult(I)V

    .line 186
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/zhihu/matisse/R$id;->button_preview:I

    const-string v2, "extra_result_original_enable"

    if-ne v0, v1, :cond_0

    .line 315
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/zhihu/matisse/internal/ui/SelectedPreviewActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 316
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->getDataWithBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_default_bundle"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 317
    iget-boolean v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mOriginalEnable:Z

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x17

    .line 318
    invoke-virtual {p0, p1, v0}, Lcom/zhihu/matisse/ui/MatisseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 319
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/zhihu/matisse/R$id;->button_apply:I

    if-ne v0, v1, :cond_1

    .line 320
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 321
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->asListOfUri()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "extra_result_selection"

    .line 322
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 323
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->asListOfString()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "extra_result_selection_path"

    .line 324
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 325
    iget-boolean v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mOriginalEnable:Z

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 326
    invoke-virtual {p0, v0, p1}, Lcom/zhihu/matisse/ui/MatisseActivity;->setResult(ILandroid/content/Intent;)V

    .line 327
    invoke-virtual {p0}, Lcom/zhihu/matisse/ui/MatisseActivity;->finish()V

    goto :goto_0

    .line 328
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/zhihu/matisse/R$id;->originalLayout:I

    if-ne p1, v0, :cond_3

    .line 329
    invoke-direct {p0}, Lcom/zhihu/matisse/ui/MatisseActivity;->countOverMaxSize()I

    move-result p1

    const/4 v0, 0x1

    if-lez p1, :cond_2

    .line 331
    sget v1, Lcom/zhihu/matisse/R$string;->error_over_original_count:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 332
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    iget-object p1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget p1, p1, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->originalMaxSize:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/zhihu/matisse/ui/MatisseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 331
    invoke-static {v0, p1}, Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog;

    move-result-object p1

    .line 333
    invoke-virtual {p0}, Lcom/zhihu/matisse/ui/MatisseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog;

    .line 334
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-virtual {p1, v0, v1}, Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 338
    :cond_2
    iget-boolean p1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mOriginalEnable:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mOriginalEnable:Z

    .line 339
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mOriginal:Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->setChecked(Z)V

    .line 341
    iget-object p1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget-object p1, p1, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->onCheckedListener:Lcom/zhihu/matisse/listener/OnCheckedListener;

    if-eqz p1, :cond_3

    .line 342
    iget-object p1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget-object p1, p1, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->onCheckedListener:Lcom/zhihu/matisse/listener/OnCheckedListener;

    iget-boolean v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mOriginalEnable:Z

    invoke-interface {p1, v0}, Lcom/zhihu/matisse/listener/OnCheckedListener;->onCheck(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 99
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    .line 100
    iget v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->themeId:I

    invoke-virtual {p0, v0}, Lcom/zhihu/matisse/ui/MatisseActivity;->setTheme(I)V

    .line 101
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget-boolean v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->hasInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0, v1}, Lcom/zhihu/matisse/ui/MatisseActivity;->setResult(I)V

    .line 104
    invoke-virtual {p0}, Lcom/zhihu/matisse/ui/MatisseActivity;->finish()V

    return-void

    .line 107
    :cond_0
    sget v0, Lcom/zhihu/matisse/R$layout;->activity_matisse:I

    invoke-virtual {p0, v0}, Lcom/zhihu/matisse/ui/MatisseActivity;->setContentView(I)V

    .line 109
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->needOrientationRestriction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->orientation:I

    invoke-virtual {p0, v0}, Lcom/zhihu/matisse/ui/MatisseActivity;->setRequestedOrientation(I)V

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget-boolean v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->capture:Z

    if-eqz v0, :cond_3

    .line 114
    new-instance v0, Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;

    invoke-direct {v0, p0}, Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mMediaStoreCompat:Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;

    .line 115
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget-object v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->captureStrategy:Lcom/zhihu/matisse/internal/entity/CaptureStrategy;

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mMediaStoreCompat:Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;

    iget-object v2, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget-object v2, v2, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->captureStrategy:Lcom/zhihu/matisse/internal/entity/CaptureStrategy;

    invoke-virtual {v0, v2}, Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;->setCaptureStrategy(Lcom/zhihu/matisse/internal/entity/CaptureStrategy;)V

    goto :goto_0

    .line 116
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Don\'t forget to set CaptureStrategy."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_3
    :goto_0
    sget v0, Lcom/zhihu/matisse/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/zhihu/matisse/ui/MatisseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 121
    invoke-virtual {p0, v0}, Lcom/zhihu/matisse/ui/MatisseActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 122
    invoke-virtual {p0}, Lcom/zhihu/matisse/ui/MatisseActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    .line 123
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const/4 v3, 0x1

    .line 124
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 125
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lcom/zhihu/matisse/ui/MatisseActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    new-array v3, v3, [I

    sget v4, Lcom/zhihu/matisse/R$attr;->album_element_color:I

    aput v4, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 127
    invoke-virtual {v2, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 128
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 131
    sget v0, Lcom/zhihu/matisse/R$id;->button_preview:I

    invoke-virtual {p0, v0}, Lcom/zhihu/matisse/ui/MatisseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mButtonPreview:Landroid/widget/TextView;

    .line 132
    sget v0, Lcom/zhihu/matisse/R$id;->button_apply:I

    invoke-virtual {p0, v0}, Lcom/zhihu/matisse/ui/MatisseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mButtonApply:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mButtonPreview:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mButtonApply:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    sget v0, Lcom/zhihu/matisse/R$id;->container:I

    invoke-virtual {p0, v0}, Lcom/zhihu/matisse/ui/MatisseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mContainer:Landroid/view/View;

    .line 136
    sget v0, Lcom/zhihu/matisse/R$id;->empty_view:I

    invoke-virtual {p0, v0}, Lcom/zhihu/matisse/ui/MatisseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mEmptyView:Landroid/view/View;

    .line 137
    sget v0, Lcom/zhihu/matisse/R$id;->originalLayout:I

    invoke-virtual {p0, v0}, Lcom/zhihu/matisse/ui/MatisseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mOriginalLayout:Landroid/widget/LinearLayout;

    .line 138
    sget v0, Lcom/zhihu/matisse/R$id;->original:I

    invoke-virtual {p0, v0}, Lcom/zhihu/matisse/ui/MatisseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

    iput-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mOriginal:Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

    .line 139
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mOriginalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_4

    const-string v0, "checkState"

    .line 143
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mOriginalEnable:Z

    .line 145
    :cond_4
    invoke-direct {p0}, Lcom/zhihu/matisse/ui/MatisseActivity;->updateBottomToolbar()V

    .line 147
    new-instance v0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumsAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mAlbumsAdapter:Lcom/zhihu/matisse/internal/ui/adapter/AlbumsAdapter;

    .line 148
    new-instance v0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;

    invoke-direct {v0, p0}, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mAlbumsSpinner:Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;

    .line 149
    invoke-virtual {v0, p0}, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 150
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mAlbumsSpinner:Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;

    sget v1, Lcom/zhihu/matisse/R$id;->selected_album:I

    invoke-virtual {p0, v1}, Lcom/zhihu/matisse/ui/MatisseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->setSelectedTextView(Landroid/widget/TextView;)V

    .line 151
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mAlbumsSpinner:Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;

    sget v1, Lcom/zhihu/matisse/R$id;->toolbar:I

    invoke-virtual {p0, v1}, Lcom/zhihu/matisse/ui/MatisseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->setPopupAnchorView(Landroid/view/View;)V

    .line 152
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mAlbumsSpinner:Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;

    iget-object v1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mAlbumsAdapter:Lcom/zhihu/matisse/internal/ui/adapter/AlbumsAdapter;

    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->setAdapter(Landroid/widget/CursorAdapter;)V

    .line 153
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mAlbumCollection:Lcom/zhihu/matisse/internal/model/AlbumCollection;

    invoke-virtual {v0, p0, p0}, Lcom/zhihu/matisse/internal/model/AlbumCollection;->onCreate(Landroidx/fragment/app/FragmentActivity;Lcom/zhihu/matisse/internal/model/AlbumCollection$AlbumCallbacks;)V

    .line 154
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mAlbumCollection:Lcom/zhihu/matisse/internal/model/AlbumCollection;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/model/AlbumCollection;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 155
    iget-object p1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mAlbumCollection:Lcom/zhihu/matisse/internal/model/AlbumCollection;

    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/model/AlbumCollection;->loadAlbums()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 168
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 169
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mAlbumCollection:Lcom/zhihu/matisse/internal/model/AlbumCollection;

    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/model/AlbumCollection;->onDestroy()V

    .line 170
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->onCheckedListener:Lcom/zhihu/matisse/listener/OnCheckedListener;

    .line 171
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iput-object v1, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->onSelectedListener:Lcom/zhihu/matisse/listener/OnSelectedListener;

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 349
    iget-object p1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mAlbumCollection:Lcom/zhihu/matisse/internal/model/AlbumCollection;

    invoke-virtual {p1, p3}, Lcom/zhihu/matisse/internal/model/AlbumCollection;->setStateCurrentSelection(I)V

    .line 350
    iget-object p1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mAlbumsAdapter:Lcom/zhihu/matisse/internal/ui/adapter/AlbumsAdapter;

    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 351
    iget-object p1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mAlbumsAdapter:Lcom/zhihu/matisse/internal/ui/adapter/AlbumsAdapter;

    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    invoke-static {p1}, Lcom/zhihu/matisse/internal/entity/Album;->valueOf(Landroid/database/Cursor;)Lcom/zhihu/matisse/internal/entity/Album;

    move-result-object p1

    .line 352
    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/entity/Album;->isAll()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    move-result-object p2

    iget-boolean p2, p2, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->capture:Z

    if-eqz p2, :cond_0

    .line 353
    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/entity/Album;->addCaptureCount()V

    .line 355
    :cond_0
    invoke-direct {p0, p1}, Lcom/zhihu/matisse/ui/MatisseActivity;->onAlbumSelected(Lcom/zhihu/matisse/internal/entity/Album;)V

    return-void
.end method

.method public onMediaClick(Lcom/zhihu/matisse/internal/entity/Album;Lcom/zhihu/matisse/internal/entity/Item;I)V
    .locals 1

    .line 417
    new-instance p3, Landroid/content/Intent;

    const-class v0, Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;

    invoke-direct {p3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "extra_album"

    .line 418
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "extra_item"

    .line 419
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 420
    iget-object p1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->getDataWithBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "extra_default_bundle"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, "extra_result_original_enable"

    .line 421
    iget-boolean p2, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mOriginalEnable:Z

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0x17

    .line 422
    invoke-virtual {p0, p3, p1}, Lcom/zhihu/matisse/ui/MatisseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 176
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/zhihu/matisse/ui/MatisseActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 180
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 160
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 161
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 162
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mAlbumCollection:Lcom/zhihu/matisse/internal/model/AlbumCollection;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/model/AlbumCollection;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "checkState"

    .line 163
    iget-boolean v1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mOriginalEnable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onUpdate()V
    .locals 3

    .line 407
    invoke-direct {p0}, Lcom/zhihu/matisse/ui/MatisseActivity;->updateBottomToolbar()V

    .line 409
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget-object v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->onSelectedListener:Lcom/zhihu/matisse/listener/OnSelectedListener;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget-object v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->onSelectedListener:Lcom/zhihu/matisse/listener/OnSelectedListener;

    iget-object v1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    .line 411
    invoke-virtual {v1}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->asListOfUri()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v2}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->asListOfString()Ljava/util/List;

    move-result-object v2

    .line 410
    invoke-interface {v0, v1, v2}, Lcom/zhihu/matisse/listener/OnSelectedListener;->onSelected(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public provideSelectedItemCollection()Lcom/zhihu/matisse/internal/model/SelectedItemCollection;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    return-object v0
.end method
