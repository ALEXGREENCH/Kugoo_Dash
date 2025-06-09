.class public Lcom/lidong/photopicker/PhotoPreviewActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PhotoPreviewActivity.java"

# interfaces
.implements Lcom/lidong/photopicker/PhotoPagerAdapter$PhotoViewClickListener;


# static fields
.field public static final EXTRA_CURRENT_ITEM:Ljava/lang/String; = "extra_current_item"

.field public static final EXTRA_PHOTOS:Ljava/lang/String; = "extra_photos"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "preview_result"

.field public static final REQUEST_PREVIEW:I = 0x63


# instance fields
.field private currentItem:I

.field private mPagerAdapter:Lcom/lidong/photopicker/PhotoPagerAdapter;

.field private mViewPager:Lcom/lidong/photopicker/widget/ViewPagerFixed;

.field private paths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/lidong/photopicker/PhotoPreviewActivity;->currentItem:I

    return-void
.end method

.method static synthetic access$000(Lcom/lidong/photopicker/PhotoPreviewActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/lidong/photopicker/PhotoPreviewActivity;->paths:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lidong/photopicker/PhotoPreviewActivity;)Lcom/lidong/photopicker/PhotoPagerAdapter;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/lidong/photopicker/PhotoPreviewActivity;->mPagerAdapter:Lcom/lidong/photopicker/PhotoPagerAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lidong/photopicker/PhotoPreviewActivity;)Lcom/lidong/photopicker/widget/ViewPagerFixed;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/lidong/photopicker/PhotoPreviewActivity;->mViewPager:Lcom/lidong/photopicker/widget/ViewPagerFixed;

    return-object p0
.end method

.method private initViews()V
    .locals 2

    .line 81
    sget v0, Lcom/lidong/photopicker/R$id;->vp_photos:I

    invoke-virtual {p0, v0}, Lcom/lidong/photopicker/PhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lidong/photopicker/widget/ViewPagerFixed;

    iput-object v0, p0, Lcom/lidong/photopicker/PhotoPreviewActivity;->mViewPager:Lcom/lidong/photopicker/widget/ViewPagerFixed;

    .line 82
    sget v0, Lcom/lidong/photopicker/R$id;->pickerToolbar:I

    invoke-virtual {p0, v0}, Lcom/lidong/photopicker/PhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 83
    invoke-virtual {p0, v0}, Lcom/lidong/photopicker/PhotoPreviewActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 84
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPreviewActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method


# virtual methods
.method public OnPhotoTapListener(Landroid/view/View;FF)V
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPreviewActivity;->onBackPressed()V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "preview_result"

    .line 100
    iget-object v2, p0, Lcom/lidong/photopicker/PhotoPreviewActivity;->paths:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 101
    invoke-virtual {p0, v1, v0}, Lcom/lidong/photopicker/PhotoPreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 102
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPreviewActivity;->finish()V

    .line 103
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget p1, Lcom/lidong/photopicker/R$layout;->activity_image_preview:I

    invoke-virtual {p0, p1}, Lcom/lidong/photopicker/PhotoPreviewActivity;->setContentView(I)V

    .line 41
    invoke-direct {p0}, Lcom/lidong/photopicker/PhotoPreviewActivity;->initViews()V

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/lidong/photopicker/PhotoPreviewActivity;->paths:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_photos"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "paizhao"

    .line 46
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPreviewActivity;->paths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_current_item"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/lidong/photopicker/PhotoPreviewActivity;->currentItem:I

    .line 55
    new-instance p1, Lcom/lidong/photopicker/PhotoPagerAdapter;

    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPreviewActivity;->paths:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0}, Lcom/lidong/photopicker/PhotoPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/lidong/photopicker/PhotoPreviewActivity;->mPagerAdapter:Lcom/lidong/photopicker/PhotoPagerAdapter;

    .line 56
    invoke-virtual {p1, p0}, Lcom/lidong/photopicker/PhotoPagerAdapter;->setPhotoViewClickListener(Lcom/lidong/photopicker/PhotoPagerAdapter$PhotoViewClickListener;)V

    .line 57
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPreviewActivity;->mViewPager:Lcom/lidong/photopicker/widget/ViewPagerFixed;

    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPreviewActivity;->mPagerAdapter:Lcom/lidong/photopicker/PhotoPagerAdapter;

    invoke-virtual {p1, v0}, Lcom/lidong/photopicker/widget/ViewPagerFixed;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 58
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPreviewActivity;->mViewPager:Lcom/lidong/photopicker/widget/ViewPagerFixed;

    iget v0, p0, Lcom/lidong/photopicker/PhotoPreviewActivity;->currentItem:I

    invoke-virtual {p1, v0}, Lcom/lidong/photopicker/widget/ViewPagerFixed;->setCurrentItem(I)V

    .line 59
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPreviewActivity;->mViewPager:Lcom/lidong/photopicker/widget/ViewPagerFixed;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/lidong/photopicker/widget/ViewPagerFixed;->setOffscreenPageLimit(I)V

    .line 61
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPreviewActivity;->mViewPager:Lcom/lidong/photopicker/widget/ViewPagerFixed;

    new-instance v0, Lcom/lidong/photopicker/PhotoPreviewActivity$1;

    invoke-direct {v0, p0}, Lcom/lidong/photopicker/PhotoPreviewActivity$1;-><init>(Lcom/lidong/photopicker/PhotoPreviewActivity;)V

    invoke-virtual {p1, v0}, Lcom/lidong/photopicker/widget/ViewPagerFixed;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 77
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPreviewActivity;->updateActionBarTitle()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPreviewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/lidong/photopicker/R$menu;->menu_preview:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPreviewActivity;->onBackPressed()V

    return v2

    .line 121
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/lidong/photopicker/R$id;->action_discard:I

    if-ne v0, v1, :cond_2

    .line 122
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPreviewActivity;->mViewPager:Lcom/lidong/photopicker/widget/ViewPagerFixed;

    invoke-virtual {v0}, Lcom/lidong/photopicker/widget/ViewPagerFixed;->getCurrentItem()I

    move-result v0

    .line 123
    iget-object v1, p0, Lcom/lidong/photopicker/PhotoPreviewActivity;->paths:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 124
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/lidong/photopicker/R$string;->deleted_a_photo:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v3

    .line 126
    iget-object v4, p0, Lcom/lidong/photopicker/PhotoPreviewActivity;->paths:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v2, :cond_1

    .line 129
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/lidong/photopicker/R$string;->confirm_to_delete:I

    .line 130
    invoke-virtual {v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    sget v4, Lcom/lidong/photopicker/R$string;->yes:I

    new-instance v5, Lcom/lidong/photopicker/PhotoPreviewActivity$3;

    invoke-direct {v5, p0, v0}, Lcom/lidong/photopicker/PhotoPreviewActivity$3;-><init>(Lcom/lidong/photopicker/PhotoPreviewActivity;I)V

    .line 131
    invoke-virtual {v2, v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    sget v4, Lcom/lidong/photopicker/R$string;->cancel:I

    new-instance v5, Lcom/lidong/photopicker/PhotoPreviewActivity$2;

    invoke-direct {v5, p0}, Lcom/lidong/photopicker/PhotoPreviewActivity$2;-><init>(Lcom/lidong/photopicker/PhotoPreviewActivity;)V

    .line 138
    invoke-virtual {v2, v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 143
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 146
    iget-object v2, p0, Lcom/lidong/photopicker/PhotoPreviewActivity;->paths:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 147
    iget-object v2, p0, Lcom/lidong/photopicker/PhotoPreviewActivity;->mPagerAdapter:Lcom/lidong/photopicker/PhotoPagerAdapter;

    invoke-virtual {v2}, Lcom/lidong/photopicker/PhotoPagerAdapter;->notifyDataSetChanged()V

    .line 150
    :goto_0
    sget v2, Lcom/lidong/photopicker/R$string;->undo:I

    new-instance v4, Lcom/lidong/photopicker/PhotoPreviewActivity$4;

    invoke-direct {v4, p0, v0, v1}, Lcom/lidong/photopicker/PhotoPreviewActivity$4;-><init>(Lcom/lidong/photopicker/PhotoPreviewActivity;ILjava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 163
    :cond_2
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public updateActionBarTitle()V
    .locals 6

    .line 93
    invoke-virtual {p0}, Lcom/lidong/photopicker/PhotoPreviewActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/lidong/photopicker/R$string;->image_index:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lidong/photopicker/PhotoPreviewActivity;->mViewPager:Lcom/lidong/photopicker/widget/ViewPagerFixed;

    .line 94
    invoke-virtual {v3}, Lcom/lidong/photopicker/widget/ViewPagerFixed;->getCurrentItem()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/lidong/photopicker/PhotoPreviewActivity;->paths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/lidong/photopicker/PhotoPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
