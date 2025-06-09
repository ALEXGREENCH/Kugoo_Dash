.class public Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "NewNfcActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/kugoo/kugookirin/utils/SwipeMenuBuilder;


# static fields
.field private static final TAG:Ljava/lang/String; = "NewNfcActivity"


# instance fields
.field private final RFAD_0:Ljava/lang/String;

.field private final RFAD_1:Ljava/lang/String;

.field private final RFDL:Ljava/lang/String;

.field private final RFRP_00:Ljava/lang/String;

.field private adapter:Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;

.field private bindCardId:Ljava/lang/String;

.field private bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

.field private count_time:I

.field dateFormat:Ljava/text/SimpleDateFormat;

.field emptyViewLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01ff
    .end annotation
.end field

.field private isBound:Ljava/lang/Boolean;

.field private isConnect:Ljava/lang/Boolean;

.field private isRun:Z

.field private isSearchSuccess:Ljava/lang/Boolean;

.field private isSearching:Ljava/lang/Boolean;

.field private mHandler:Landroid/os/Handler;

.field private mOnSwipeItemClickListener:Lcom/kugoo/kugookirin/view/SwipeMenuView$OnMenuItemClickListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private nfcCardItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/vehicle/bean/NfcCard;",
            ">;"
        }
    .end annotation
.end field

.field private nfcCardsIdSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field nfcFramelayout:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03f7
    .end annotation
.end field

.field nfcFunBtn:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03f8
    .end annotation
.end field

.field private operatingAnim:Landroid/view/animation/Animation;

.field private pos:I

.field private preferences:Landroid/content/SharedPreferences;

.field recyclerView:Lcom/kugoo/kugookirin/view/SwapRecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03f6
    .end annotation
.end field

.field searchLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04ca
    .end annotation
.end field

.field searchResultBtn:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04d0
    .end annotation
.end field

.field searchResultImage:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04d1
    .end annotation
.end field

.field searchResultLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04d2
    .end annotation
.end field

.field searchResultTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04d3
    .end annotation
.end field

.field searchingImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04d7
    .end annotation
.end field

.field searchingLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04d8
    .end annotation
.end field

.field selectAllBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04dc
    .end annotation
.end field

.field private thread:Ljava/lang/Thread;

.field topBar:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0101
    .end annotation
.end field

.field topBarBack:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0102
    .end annotation
.end field

.field topBarTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0103
    .end annotation
.end field

.field topBarTvBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0115
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 111
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->isSearching:Ljava/lang/Boolean;

    .line 112
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->isSearchSuccess:Ljava/lang/Boolean;

    .line 113
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->isBound:Ljava/lang/Boolean;

    .line 114
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->isConnect:Ljava/lang/Boolean;

    const/4 v1, 0x1

    .line 115
    iput-boolean v1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->isRun:Z

    .line 117
    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->count_time:I

    const-string v0, ""

    .line 119
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->bindCardId:Ljava/lang/String;

    const-string v0, "+RFAD=0"

    .line 121
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->RFAD_0:Ljava/lang/String;

    const-string v0, "+RFAD=1"

    .line 122
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->RFAD_1:Ljava/lang/String;

    const-string v0, "+RFDL="

    .line 123
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->RFDL:Ljava/lang/String;

    const-string v0, "+RFRP=?"

    .line 124
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->RFRP_00:Ljava/lang/String;

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->mHandler:Landroid/os/Handler;

    .line 128
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 220
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$3;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$3;-><init>(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->mOnSwipeItemClickListener:Lcom/kugoo/kugookirin/view/SwipeMenuView$OnMenuItemClickListener;

    .line 392
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$7;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$7;-><init>(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->thread:Ljava/lang/Thread;

    .line 470
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$9;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$9;-><init>(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->pos:I

    return p0
.end method

.method static synthetic access$002(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->pos:I

    return p1
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->deleteNfcCardDialog(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchSuccessOrNot()V

    return-void
.end method

.method static synthetic access$1100(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->refreshView()V

    return-void
.end method

.method static synthetic access$1202(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->isConnect:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->bindCardId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->isSearchSuccess:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->isBound:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->adapter:Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;Ljava/lang/String;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->commandSender(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)Ljava/util/HashSet;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->nfcCardsIdSet:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)Ljava/util/List;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->nfcCardItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->showResultDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    return-object p0
.end method

.method static synthetic access$800(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->isRun:Z

    return p0
.end method

.method static synthetic access$908(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)I
    .locals 2

    .line 63
    iget v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->count_time:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->count_time:I

    return v0
.end method

.method private commandSender(Ljava/lang/String;I)V
    .locals 4

    .line 353
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$6;-><init>(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;Ljava/lang/String;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send to ble: delayMillis=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " / command=="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NewNfcActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private deleteNfcCardDialog(I)V
    .locals 3

    .line 235
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f13046f

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d0064

    .line 236
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const/4 v1, 0x0

    .line 237
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 238
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const v1, 0x7f0a00d4

    .line 239
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$4;-><init>(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0419

    .line 245
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$5;-><init>(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;ILandroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private dp2px(I)I
    .locals 2

    int-to-float p1, p1

    .line 293
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 292
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private initEvent()V
    .locals 4

    .line 169
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 170
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->preferences:Landroid/content/SharedPreferences;

    .line 172
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->nfcCardsIdSet:Ljava/util/HashSet;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->nfcCardItems:Ljava/util/List;

    .line 176
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->nfcCardItems:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->adapter:Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;

    .line 179
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->recyclerView:Lcom/kugoo/kugookirin/view/SwapRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 180
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->recyclerView:Lcom/kugoo/kugookirin/view/SwapRecyclerView;

    new-instance v1, Lcom/kugoo/kugookirin/utils/DividerItemDecoration;

    invoke-direct {v1, p0, v3}, Lcom/kugoo/kugookirin/utils/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 182
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->recyclerView:Lcom/kugoo/kugookirin/view/SwapRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 183
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->recyclerView:Lcom/kugoo/kugookirin/view/SwapRecyclerView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->adapter:Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 185
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->recyclerView:Lcom/kugoo/kugookirin/view/SwapRecyclerView;

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$1;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$1;-><init>(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->setOnSwipeListener(Lcom/kugoo/kugookirin/view/SwapRecyclerView$OnSwipeListener;)V

    .line 198
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->adapter:Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$2;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$2;-><init>(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;->setOnItemClickListener(Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$OnItemClickListener;)V

    const v0, 0x7f01000c

    .line 212
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->operatingAnim:Landroid/view/animation/Animation;

    .line 213
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 214
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->operatingAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->topBarTvBtn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private refreshView()V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->nfcCardItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    const/16 v2, 0x8

    if-lt v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->nfcFunBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->emptyViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->nfcCardItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->nfcFunBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->emptyViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->emptyViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->nfcFunBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->adapter:Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private registerBroadcast()V
    .locals 3

    .line 526
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    .line 528
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 529
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 531
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_CODE_OK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 532
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 533
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 534
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private resetSearchData()V
    .locals 2

    const/4 v0, 0x0

    .line 375
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->isBound:Ljava/lang/Boolean;

    .line 376
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->isSearching:Ljava/lang/Boolean;

    .line 377
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->isSearchSuccess:Ljava/lang/Boolean;

    const-string v0, ""

    .line 378
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->bindCardId:Ljava/lang/String;

    .line 379
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchResultTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private searchSuccessOrNot()V
    .locals 6

    .line 415
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->isSearchSuccess:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x8

    const/16 v2, 0xa

    const/4 v3, 0x0

    .line 426
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v0, :cond_0

    .line 416
    iput v2, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->count_time:I

    .line 418
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchResultTv:Landroid/widget/TextView;

    const v2, 0x7f12002d

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 420
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchingImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 421
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchResultImage:Landroid/widget/ImageView;

    const v2, 0x7f0f011a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 422
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchResultBtn:Landroid/widget/Button;

    const v2, 0x7f1201ac

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 423
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchResultBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f08015d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 424
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 426
    iput-object v4, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->isSearching:Ljava/lang/Boolean;

    goto :goto_1

    .line 428
    :cond_0
    iget v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->count_time:I

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->isBound:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 429
    :cond_1
    iput v2, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->count_time:I

    .line 430
    iput-object v4, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->isSearchSuccess:Ljava/lang/Boolean;

    .line 431
    iput-object v4, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->isSearching:Ljava/lang/Boolean;

    .line 433
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->isBound:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchResultTv:Landroid/widget/TextView;

    const v2, 0x7f1201ab

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 435
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchResultImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchResultTv:Landroid/widget/TextView;

    const v2, 0x7f120202

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 438
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchResultImage:Landroid/widget/ImageView;

    const v2, 0x7f08015e

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 440
    :goto_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchingImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 442
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchResultBtn:Landroid/widget/Button;

    const v2, 0x7f120200

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 443
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 144
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method private showResultDialog(Ljava/lang/String;)V
    .locals 3

    .line 363
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d007b

    const/4 v2, 0x0

    .line 364
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a049a

    .line 365
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 366
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    new-instance p1, Lcom/kugoo/kugookirin/view/AutoDismissDialog;

    const v1, 0x7f13046f

    invoke-direct {p1, p0, v1}, Lcom/kugoo/kugookirin/view/AutoDismissDialog;-><init>(Landroid/content/Context;I)V

    .line 368
    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/view/AutoDismissDialog;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 370
    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/view/AutoDismissDialog;->setCanceledOnTouchOutside(Z)V

    .line 371
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/view/AutoDismissDialog;->show()V

    return-void
.end method

.method private startSearch()V
    .locals 2

    const/4 v0, 0x1

    .line 383
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->isSearching:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 384
    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->count_time:I

    .line 386
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 387
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchResultLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchingImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->operatingAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/kugoo/kugookirin/view/SwipeMenuView;
    .locals 5

    .line 267
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;-><init>(Landroid/content/Context;)V

    .line 268
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;-><init>(Landroid/content/Context;)V

    .line 277
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x3c

    .line 279
    invoke-direct {p0, v2}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->dp2px(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->setWidth(I)Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, 0x7f0602ae

    .line 280
    invoke-virtual {p0, v4}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;

    move-result-object v2

    const v3, 0x7f0f011b

    .line 281
    invoke-virtual {p0, v3}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;

    .line 282
    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;->addMenuItem(Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;)V

    .line 284
    new-instance v1, Lcom/kugoo/kugookirin/view/SwipeMenuView;

    invoke-direct {v1, v0}, Lcom/kugoo/kugookirin/view/SwipeMenuView;-><init>(Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;)V

    .line 286
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->mOnSwipeItemClickListener:Lcom/kugoo/kugookirin/view/SwipeMenuView$OnMenuItemClickListener;

    invoke-virtual {v1, v0}, Lcom/kugoo/kugookirin/view/SwipeMenuView;->setOnMenuItemClickListener(Lcom/kugoo/kugookirin/view/SwipeMenuView$OnMenuItemClickListener;)V

    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a03f8,
            0x7f0a0102,
            0x7f0a00d3,
            0x7f0a04d0
        }
    .end annotation

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "+RFAD=1"

    const-string v1, "+RFRP=?"

    const-string v2, "NewNfcActivity"

    const/16 v3, 0x64

    const-string v4, "+RFAD=0"

    const/4 v5, 0x0

    const/16 v6, 0x8

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 315
    :sswitch_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->isSearchSuccess:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->isSearching:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "click to search again"

    .line 316
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-direct {p0, v4, v5}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->commandSender(Ljava/lang/String;I)V

    .line 318
    invoke-direct {p0, v0, v3}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->commandSender(Ljava/lang/String;I)V

    .line 319
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->resetSearchData()V

    .line 320
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->startSearch()V

    goto :goto_0

    .line 321
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->isSearchSuccess:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->isSearching:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "click to close"

    .line 322
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-direct {p0, v4, v5}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->commandSender(Ljava/lang/String;I)V

    .line 324
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->nfcCardsIdSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 325
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->nfcCardItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 326
    invoke-direct {p0, v1, v3}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->commandSender(Ljava/lang/String;I)V

    .line 328
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->resetSearchData()V

    .line 329
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 330
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 331
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 308
    :sswitch_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->isSearching:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "click to start search"

    .line 309
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->startSearch()V

    .line 311
    invoke-direct {p0, v0, v5}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->commandSender(Ljava/lang/String;I)V

    goto :goto_0

    .line 347
    :sswitch_2
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->finish()V

    goto :goto_0

    .line 335
    :sswitch_3
    invoke-direct {p0, v4, v5}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->commandSender(Ljava/lang/String;I)V

    .line 336
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->nfcCardsIdSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 337
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->nfcCardItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 338
    invoke-direct {p0, v1, v3}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->commandSender(Ljava/lang/String;I)V

    .line 340
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->resetSearchData()V

    .line 341
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 342
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 343
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->searchResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a00d3 -> :sswitch_3
        0x7f0a0102 -> :sswitch_2
        0x7f0a03f8 -> :sswitch_1
        0x7f0a04d0 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 132
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d003c

    .line 133
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->setContentView(I)V

    .line 134
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 135
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->topBarTitle:Landroid/widget/TextView;

    const v0, 0x7f1201af

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 136
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->initView()V

    .line 137
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->initEvent()V

    .line 138
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->registerBroadcast()V

    .line 139
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->showDefaultUi()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 540
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 541
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->isRun:Z

    .line 542
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 450
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 453
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "+RFRP=?"

    const/4 v1, 0x0

    .line 454
    invoke-direct {p0, v0, v1}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->commandSender(Ljava/lang/String;I)V

    .line 455
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 461
    :cond_0
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$8;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$8;-><init>(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)V

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
