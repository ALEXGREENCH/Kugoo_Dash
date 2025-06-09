.class public Lcom/kugoo/kugookirin/social/ImagePagerActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "ImagePagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/ImagePagerActivity$ImagePagerAdapter;
    }
.end annotation


# static fields
.field public static final EXTRA_IMAGE_INDEX:Ljava/lang/String; = "image_index"

.field public static final EXTRA_IMAGE_URLS:Ljava/lang/String; = "image_urls"

.field private static final STATE_POSITION:Ljava/lang/String; = "STATE_POSITION"


# instance fields
.field private indicator:Landroid/widget/TextView;

.field private mPager:Lcom/kugoo/kugookirin/social/HackyViewPager;

.field private pagerPosition:I

.field saveImageBtn:Landroid/widget/Button;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a04b1
    .end annotation
.end field

.field saveImageCancelBtn:Landroid/widget/Button;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a04b2
    .end annotation
.end field

.field saveImageLiner:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a04b3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/social/ImagePagerActivity;)Lcom/kugoo/kugookirin/social/HackyViewPager;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/ImagePagerActivity;->mPager:Lcom/kugoo/kugookirin/social/HackyViewPager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/social/ImagePagerActivity;)Landroid/widget/TextView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/ImagePagerActivity;->indicator:Landroid/widget/TextView;

    return-object p0
.end method

.method private initView(Landroid/os/Bundle;)V
    .locals 5

    .line 53
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/ImagePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "image_index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/social/ImagePagerActivity;->pagerPosition:I

    .line 54
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/ImagePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "image_urls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const v1, 0x7f0a042c

    .line 55
    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/social/ImagePagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kugoo/kugookirin/social/HackyViewPager;

    iput-object v1, p0, Lcom/kugoo/kugookirin/social/ImagePagerActivity;->mPager:Lcom/kugoo/kugookirin/social/HackyViewPager;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "pagerPosition="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/kugoo/kugookirin/social/ImagePagerActivity;->pagerPosition:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  urls="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "tag"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v1, Lcom/kugoo/kugookirin/social/ImagePagerActivity$ImagePagerAdapter;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/ImagePagerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-direct {v1, p0, v4, v0}, Lcom/kugoo/kugookirin/social/ImagePagerActivity$ImagePagerAdapter;-><init>(Lcom/kugoo/kugookirin/social/ImagePagerActivity;Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;)V

    .line 59
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ImagePagerActivity;->mPager:Lcom/kugoo/kugookirin/social/HackyViewPager;

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/social/HackyViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const v0, 0x7f0a02d6

    .line 60
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/social/ImagePagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/ImagePagerActivity;->indicator:Landroid/widget/TextView;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/ImagePagerActivity;->mPager:Lcom/kugoo/kugookirin/social/HackyViewPager;

    .line 63
    invoke-virtual {v2}, Lcom/kugoo/kugookirin/social/HackyViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v2

    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const v2, 0x7f1203b4

    invoke-virtual {p0, v2, v0}, Lcom/kugoo/kugookirin/social/ImagePagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "text=="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/ImagePagerActivity;->mPager:Lcom/kugoo/kugookirin/social/HackyViewPager;

    invoke-virtual {v2}, Lcom/kugoo/kugookirin/social/HackyViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ImagePagerActivity;->indicator:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/kugoo/kugookirin/social/ImagePagerActivity;->pagerPosition:I

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/ImagePagerActivity;->mPager:Lcom/kugoo/kugookirin/social/HackyViewPager;

    invoke-virtual {v2}, Lcom/kugoo/kugookirin/social/HackyViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ImagePagerActivity;->mPager:Lcom/kugoo/kugookirin/social/HackyViewPager;

    new-instance v1, Lcom/kugoo/kugookirin/social/ImagePagerActivity$1;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/social/ImagePagerActivity$1;-><init>(Lcom/kugoo/kugookirin/social/ImagePagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/social/HackyViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    if-eqz p1, :cond_0

    const-string v0, "STATE_POSITION"

    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/kugoo/kugookirin/social/ImagePagerActivity;->pagerPosition:I

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ImagePagerActivity;->mPager:Lcom/kugoo/kugookirin/social/HackyViewPager;

    iget v0, p0, Lcom/kugoo/kugookirin/social/ImagePagerActivity;->pagerPosition:I

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/social/HackyViewPager;->setCurrentItem(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f0a04b1,
            0x7f0a04b2
        }
    .end annotation

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0032

    .line 43
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/social/ImagePagerActivity;->setContentView(I)V

    .line 44
    invoke-static {p0}, Lcom/lidroid/xutils/ViewUtils;->inject(Landroid/app/Activity;)V

    .line 45
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/MyApplication;->addActivity(Landroid/app/Activity;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/social/ImagePagerActivity;->initView(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 95
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 96
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ImagePagerActivity;->mPager:Lcom/kugoo/kugookirin/social/HackyViewPager;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/HackyViewPager;->getCurrentItem()I

    move-result v0

    const-string v1, "STATE_POSITION"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
