.class public Lcom/kugoo/kugookirin/more/TrackRecordActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TrackRecordActivity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;
.implements Lcom/kugoo/kugookirin/more/NaviFragment$onNavAdapterSizeListener;
.implements Lcom/kugoo/kugookirin/more/TrackFragment$onTrajAdapterSizeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/more/TrackRecordActivity$FragAdapter;
    }
.end annotation


# instance fields
.field private currentPage:I

.field private fragmentArr:[Landroidx/fragment/app/Fragment;

.field img_more:Landroid/widget/ImageView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a02d2
    .end annotation
.end field

.field layout:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0305
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private naviFragment:Lcom/kugoo/kugookirin/more/NaviFragment;

.field recordTab:Lcom/kugoo/kugookirin/view/MyTabLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0481
    .end annotation
.end field

.field private tabName:[Ljava/lang/String;

.field private trajectFragment:Lcom/kugoo/kugookirin/more/TrackFragment;

.field tvRight:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a05df
    .end annotation
.end field

.field tvTitle:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a05e8
    .end annotation
.end field

.field viewPager:Lcom/kugoo/kugookirin/view/MyViewPager;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0482
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->currentPage:I

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/more/TrackRecordActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->currentPage:I

    return p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/more/TrackRecordActivity;)Lcom/kugoo/kugookirin/more/NaviFragment;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->naviFragment:Lcom/kugoo/kugookirin/more/NaviFragment;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/more/TrackRecordActivity;)Lcom/kugoo/kugookirin/more/TrackFragment;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->trajectFragment:Lcom/kugoo/kugookirin/more/TrackFragment;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/more/TrackRecordActivity;)[Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->tabName:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/more/TrackRecordActivity;)[Landroidx/fragment/app/Fragment;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->fragmentArr:[Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/more/TrackRecordActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->hideDialog()V

    return-void
.end method

.method private dp2px(F)I
    .locals 2

    .line 230
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private hideDialog()V
    .locals 4

    .line 319
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->viewPager:Lcom/kugoo/kugookirin/view/MyViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/MyViewPager;->setSlideAble(Z)V

    .line 320
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->recordTab:Lcom/kugoo/kugookirin/view/MyTabLayout;

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/MyTabLayout;->setTouchAble(Z)V

    .line 321
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "translationY"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1c2

    .line 322
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 323
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 324
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/kugoo/kugookirin/more/TrackRecordActivity$5;

    invoke-direct {v3, p0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity$5;-><init>(Lcom/kugoo/kugookirin/more/TrackRecordActivity;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data
.end method

.method private initAdapter()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const v2, 0x7f120384

    .line 102
    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->tabName:[Ljava/lang/String;

    new-array v0, v0, [Landroidx/fragment/app/Fragment;

    .line 103
    iget-object v1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->naviFragment:Lcom/kugoo/kugookirin/more/NaviFragment;

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->fragmentArr:[Landroidx/fragment/app/Fragment;

    .line 104
    new-instance v0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$FragAdapter;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kugoo/kugookirin/more/TrackRecordActivity$FragAdapter;-><init>(Lcom/kugoo/kugookirin/more/TrackRecordActivity;Landroidx/fragment/app/FragmentManager;)V

    .line 105
    iget-object v1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->viewPager:Lcom/kugoo/kugookirin/view/MyViewPager;

    invoke-virtual {v1, v0}, Lcom/kugoo/kugookirin/view/MyViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 106
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->recordTab:Lcom/kugoo/kugookirin/view/MyTabLayout;

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->viewPager:Lcom/kugoo/kugookirin/view/MyViewPager;

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/MyTabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 108
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->recordTab:Lcom/kugoo/kugookirin/view/MyTabLayout;

    invoke-virtual {v0, p0}, Lcom/kugoo/kugookirin/view/MyTabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 109
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->recordTab:Lcom/kugoo/kugookirin/view/MyTabLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/MyTabLayout;->setVisibility(I)V

    return-void
.end method

.method private initEvent()V
    .locals 1

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->mHandler:Landroid/os/Handler;

    .line 97
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->naviFragment:Lcom/kugoo/kugookirin/more/NaviFragment;

    invoke-virtual {v0, p0}, Lcom/kugoo/kugookirin/more/NaviFragment;->setOnNavAdapterSizeListener(Lcom/kugoo/kugookirin/more/NaviFragment$onNavAdapterSizeListener;)V

    .line 98
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->trajectFragment:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-virtual {v0, p0}, Lcom/kugoo/kugookirin/more/TrackFragment;->setOnTrajAdapterSizeListener(Lcom/kugoo/kugookirin/more/TrackFragment$onTrajAdapterSizeListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->tvTitle:Landroid/widget/TextView;

    const v1, 0x7f120124

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    new-instance v0, Lcom/kugoo/kugookirin/more/NaviFragment;

    invoke-direct {v0}, Lcom/kugoo/kugookirin/more/NaviFragment;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->naviFragment:Lcom/kugoo/kugookirin/more/NaviFragment;

    .line 121
    new-instance v0, Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-direct {v0}, Lcom/kugoo/kugookirin/more/TrackFragment;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->trajectFragment:Lcom/kugoo/kugookirin/more/TrackFragment;

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 87
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method private showDeleteDialog()V
    .locals 3

    .line 333
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f13046d

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d00bd

    .line 334
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const/4 v1, 0x0

    .line 335
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const v1, 0x7f0a0177

    .line 337
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/more/TrackRecordActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity$6;-><init>(Lcom/kugoo/kugookirin/more/TrackRecordActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0176

    .line 363
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/more/TrackRecordActivity$7;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity$7;-><init>(Lcom/kugoo/kugookirin/more/TrackRecordActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showDialog()V
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "translationY"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1c2

    .line 314
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 315
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x43340000    # 180.0f
        0x0
    .end array-data
.end method

.method private showSelectDialog()V
    .locals 4

    .line 195
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f13046e

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 196
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d007f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 199
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 200
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x28

    .line 201
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v2, 0x78

    .line 202
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/high16 v2, 0x42c80000    # 100.0f

    .line 204
    invoke-direct {p0, v2}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->dp2px(F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 205
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const v2, 0x800035

    .line 206
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v1, 0x7f0a03a5

    .line 208
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/more/TrackRecordActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity$3;-><init>(Lcom/kugoo/kugookirin/more/TrackRecordActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a03b5

    .line 217
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/more/TrackRecordActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity$4;-><init>(Lcom/kugoo/kugookirin/more/TrackRecordActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    .line 225
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 226
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public getNavAdapterCount(I)V
    .locals 1

    .line 269
    iget v0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->currentPage:I

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    .line 271
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->tvRight:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 273
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->tvRight:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getTrajAdapterSize(I)V
    .locals 2

    .line 280
    iget v0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->currentPage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_0

    .line 282
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->tvRight:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 284
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->tvRight:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 374
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    const/4 v0, 0x0

    .line 375
    sput-boolean v0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;->isSelecting:Z

    .line 376
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f0a02d3,
            0x7f0a05df,
            0x7f0a02b4,
            0x7f0a02b5,
            0x7f0a02d2
        }
    .end annotation

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-wide/16 v0, 0x1c2

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 138
    :sswitch_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->tvRight:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const v3, 0x7f12036e

    invoke-virtual {p0, v3}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 140
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->viewPager:Lcom/kugoo/kugookirin/view/MyViewPager;

    invoke-virtual {p1, v2}, Lcom/kugoo/kugookirin/view/MyViewPager;->setSlideAble(Z)V

    .line 141
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->recordTab:Lcom/kugoo/kugookirin/view/MyTabLayout;

    invoke-virtual {p1, v2}, Lcom/kugoo/kugookirin/view/MyTabLayout;->setTouchAble(Z)V

    .line 143
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->showDialog()V

    .line 146
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/kugoo/kugookirin/more/TrackRecordActivity$1;

    invoke-direct {v2, p0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity$1;-><init>(Lcom/kugoo/kugookirin/more/TrackRecordActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->tvRight:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f12035f

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 158
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->tvRight:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f12004e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->currentPage:I

    if-nez p1, :cond_1

    .line 160
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->naviFragment:Lcom/kugoo/kugookirin/more/NaviFragment;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/more/NaviFragment;->addAllData()V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_4

    .line 162
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->trajectFragment:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/more/TrackFragment;->addAllData()V

    goto :goto_0

    .line 165
    :cond_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->tvRight:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->currentPage:I

    if-nez p1, :cond_3

    .line 167
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->naviFragment:Lcom/kugoo/kugookirin/more/NaviFragment;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/more/NaviFragment;->clearAllData()V

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_4

    .line 169
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->trajectFragment:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/more/TrackFragment;->clearAllData()V

    goto :goto_0

    .line 134
    :sswitch_1
    sput-boolean v2, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;->isSelecting:Z

    .line 135
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->finish()V

    goto :goto_0

    :sswitch_2
    const-string p1, "kakakak"

    const-string v0, "img_more"

    .line 130
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->showSelectDialog()V

    goto :goto_0

    .line 188
    :sswitch_3
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->showDeleteDialog()V

    goto :goto_0

    .line 174
    :sswitch_4
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->hideDialog()V

    .line 175
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/kugoo/kugookirin/more/TrackRecordActivity$2;

    invoke-direct {v2, p0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity$2;-><init>(Lcom/kugoo/kugookirin/more/TrackRecordActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a02b4 -> :sswitch_4
        0x7f0a02b5 -> :sswitch_3
        0x7f0a02d2 -> :sswitch_2
        0x7f0a02d3 -> :sswitch_1
        0x7f0a05df -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0030

    .line 75
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->setContentView(I)V

    .line 77
    invoke-static {p0}, Lcom/lidroid/xutils/ViewUtils;->inject(Landroid/app/Activity;)V

    .line 78
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/MyApplication;->addActivity(Landroid/app/Activity;)V

    .line 79
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->initView()V

    .line 80
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->initAdapter()V

    .line 81
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->initEvent()V

    .line 82
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->showDefaultUi()V

    return-void
.end method

.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1

    const-string p1, "currentpos=="

    const-string v0, "pos==trajetory"

    .line 260
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 3

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTabSelected=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "currentpos=="

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    iput p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->currentPage:I

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 239
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->naviFragment:Lcom/kugoo/kugookirin/more/NaviFragment;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/more/NaviFragment;->getNavAdapterSize()I

    move-result p1

    if-nez p1, :cond_0

    .line 240
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->tvRight:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 242
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->tvRight:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 245
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->trajectFragment:Lcom/kugoo/kugookirin/more/TrackFragment;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/more/TrackFragment;->getTrajAdapterSize()I

    move-result p1

    if-nez p1, :cond_2

    .line 246
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->tvRight:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 248
    :cond_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->tvRight:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pos=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "currentpos=="

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
