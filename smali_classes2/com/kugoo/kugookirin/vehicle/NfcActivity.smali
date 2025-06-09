.class public Lcom/kugoo/kugookirin/vehicle/NfcActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "NfcActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/kugoo/kugookirin/utils/SwipeMenuBuilder;


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcActivityLog"


# instance fields
.field private final ADDCARD:Ljava/lang/String;

.field private final ADDCARD_0:Ljava/lang/String;

.field private final DELCARD:Ljava/lang/String;

.field private final DELCARD_0:Ljava/lang/String;

.field private final RFMD_0:Ljava/lang/String;

.field private final RFMD_3:Ljava/lang/String;

.field private final SCCARD_0:Ljava/lang/String;

.field private final SCCARD_1:Ljava/lang/String;

.field private adapter:Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;

.field private bindCardId:Ljava/lang/String;

.field private bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

.field circleBarTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0103
    .end annotation
.end field

.field private count_time:I

.field dateFormat:Ljava/text/SimpleDateFormat;

.field emptyPos:I

.field emptyViewLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01ff
    .end annotation
.end field

.field private isConnect:Ljava/lang/Boolean;

.field private isReadyToReceive:Ljava/lang/Boolean;

.field private isRun:Z

.field private isSearchSuccess:Ljava/lang/Boolean;

.field private isSearching:Ljava/lang/Boolean;

.field private mHandler:Landroid/os/Handler;

.field private mOnSwipeItemClickListener:Lcom/kugoo/kugookirin/view/SwipeMenuView$OnMenuItemClickListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private nfcCardInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/vehicle/bean/NfcCard;",
            ">;"
        }
    .end annotation
.end field

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

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 62
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 111
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->isSearching:Ljava/lang/Boolean;

    .line 112
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->isSearchSuccess:Ljava/lang/Boolean;

    .line 113
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->isReadyToReceive:Ljava/lang/Boolean;

    .line 115
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->isConnect:Ljava/lang/Boolean;

    const/4 v1, 0x1

    .line 116
    iput-boolean v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->isRun:Z

    .line 118
    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->count_time:I

    const-string v1, ""

    .line 120
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->bindCardId:Ljava/lang/String;

    const-string v1, "+SCCARD=0"

    .line 122
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->SCCARD_0:Ljava/lang/String;

    const-string v1, "+SCCARD=1"

    .line 123
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->SCCARD_1:Ljava/lang/String;

    const-string v1, "+RFMD=0"

    .line 124
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->RFMD_0:Ljava/lang/String;

    const-string v1, "+RFMD=3"

    .line 125
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->RFMD_3:Ljava/lang/String;

    const-string v1, "+ADDCARD="

    .line 126
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->ADDCARD:Ljava/lang/String;

    const-string v1, "+ADDCARD=0"

    .line 127
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->ADDCARD_0:Ljava/lang/String;

    const-string v1, "+DELCARD="

    .line 128
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->DELCARD:Ljava/lang/String;

    const-string v1, "+DELCARD=0"

    .line 129
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->DELCARD_0:Ljava/lang/String;

    .line 131
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->mHandler:Landroid/os/Handler;

    .line 133
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 135
    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->emptyPos:I

    .line 227
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$3;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity$3;-><init>(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->mOnSwipeItemClickListener:Lcom/kugoo/kugookirin/view/SwipeMenuView$OnMenuItemClickListener;

    .line 460
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/NfcActivity$10;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity$10;-><init>(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->thread:Ljava/lang/Thread;

    .line 524
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity$12;-><init>(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->pos:I

    return p0
.end method

.method static synthetic access$002(Lcom/kugoo/kugookirin/vehicle/NfcActivity;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->pos:I

    return p1
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/String;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->commandSender(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->isRun:Z

    return p0
.end method

.method static synthetic access$1108(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)I
    .locals 2

    .line 62
    iget v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->count_time:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->count_time:I

    return v0
.end method

.method static synthetic access$1200(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchSuccessOrNot()V

    return-void
.end method

.method static synthetic access$1302(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->isConnect:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Ljava/lang/Boolean;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->isSearching:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->bindCardId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->isSearchSuccess:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/vehicle/NfcActivity;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->deleteNfcCardDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->adapter:Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Ljava/util/HashSet;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->nfcCardsIdSet:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Ljava/util/List;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->nfcCardItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->showResultDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->refreshView()V

    return-void
.end method

.method static synthetic access$800(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Ljava/lang/Boolean;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->isReadyToReceive:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$802(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->isReadyToReceive:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$900(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    return-object p0
.end method

.method private commandSender(Ljava/lang/String;I)V
    .locals 4

    .line 421
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/NfcActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity$9;-><init>(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/String;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 427
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

    const-string p2, "NfcActivityLog"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private deleteNfcCardDialog(I)V
    .locals 3

    .line 245
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f13046f

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d0064

    .line 246
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const/4 v1, 0x0

    .line 247
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 248
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const v1, 0x7f0a00d4

    .line 249
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/NfcActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity$4;-><init>(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0419

    .line 255
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/NfcActivity$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity$5;-><init>(Lcom/kugoo/kugookirin/vehicle/NfcActivity;ILandroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private dp2px(I)I
    .locals 2

    int-to-float p1, p1

    .line 325
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 324
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private initEvent()V
    .locals 4

    .line 173
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 174
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->preferences:Landroid/content/SharedPreferences;

    .line 176
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->nfcCardsIdSet:Ljava/util/HashSet;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->nfcCardItems:Ljava/util/List;

    .line 180
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->nfcCardItems:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->adapter:Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->nfcCardInfoList:Ljava/util/List;

    .line 185
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->recyclerView:Lcom/kugoo/kugookirin/view/SwapRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 186
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->recyclerView:Lcom/kugoo/kugookirin/view/SwapRecyclerView;

    new-instance v1, Lcom/kugoo/kugookirin/utils/DividerItemDecoration;

    invoke-direct {v1, p0, v3}, Lcom/kugoo/kugookirin/utils/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 188
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->recyclerView:Lcom/kugoo/kugookirin/view/SwapRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 189
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->recyclerView:Lcom/kugoo/kugookirin/view/SwapRecyclerView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->adapter:Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 191
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->recyclerView:Lcom/kugoo/kugookirin/view/SwapRecyclerView;

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/NfcActivity$1;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity$1;-><init>(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->setOnSwipeListener(Lcom/kugoo/kugookirin/view/SwapRecyclerView$OnSwipeListener;)V

    .line 204
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->adapter:Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/NfcActivity$2;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity$2;-><init>(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;->setOnItemClickListener(Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$OnItemClickListener;)V

    const v0, 0x7f01000c

    .line 219
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->operatingAnim:Landroid/view/animation/Animation;

    .line 220
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 221
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->operatingAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->circleBarTitle:Landroid/widget/TextView;

    const v1, 0x7f1201af

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private refreshView()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->nfcCardItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->nfcFunBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->nfcFunBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private registerBroadcast()V
    .locals 3

    .line 629
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    .line 631
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 632
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 633
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 634
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_CODE_OK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 635
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 636
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 637
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 638
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private resetSearchData()V
    .locals 2

    const/4 v0, 0x0

    .line 443
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->isSearching:Ljava/lang/Boolean;

    .line 444
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->isSearchSuccess:Ljava/lang/Boolean;

    .line 445
    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->emptyPos:I

    const-string v0, ""

    .line 446
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->bindCardId:Ljava/lang/String;

    .line 447
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchResultTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private searchSuccessOrNot()V
    .locals 6

    .line 483
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->isSearchSuccess:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x8

    const/16 v2, 0xa

    const/4 v3, 0x0

    .line 494
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v0, :cond_0

    .line 484
    iput v2, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->count_time:I

    .line 486
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchResultTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->bindCardId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchingImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 489
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchResultImage:Landroid/widget/ImageView;

    const v2, 0x7f0f011a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 490
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchResultBtn:Landroid/widget/Button;

    const v2, 0x7f1201aa

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 491
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchResultBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f08015d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 492
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 494
    iput-object v4, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->isSearching:Ljava/lang/Boolean;

    goto :goto_0

    .line 496
    :cond_0
    iget v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->count_time:I

    if-ne v0, v2, :cond_1

    .line 497
    iput-object v4, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->isReadyToReceive:Ljava/lang/Boolean;

    .line 498
    iput-object v4, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->isSearchSuccess:Ljava/lang/Boolean;

    .line 499
    iput-object v4, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->isSearching:Ljava/lang/Boolean;

    .line 501
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchingImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 502
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchResultImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 503
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchResultTv:Landroid/widget/TextView;

    const v2, 0x7f120202

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 504
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchResultBtn:Landroid/widget/Button;

    const v2, 0x7f120200

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 505
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 151
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method private showResultDialog(Ljava/lang/String;)V
    .locals 3

    .line 431
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d007b

    const/4 v2, 0x0

    .line 432
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a049a

    .line 433
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 434
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    new-instance p1, Lcom/kugoo/kugookirin/view/AutoDismissDialog;

    const v1, 0x7f13046f

    invoke-direct {p1, p0, v1}, Lcom/kugoo/kugookirin/view/AutoDismissDialog;-><init>(Landroid/content/Context;I)V

    .line 436
    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/view/AutoDismissDialog;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 438
    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/view/AutoDismissDialog;->setCanceledOnTouchOutside(Z)V

    .line 439
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/view/AutoDismissDialog;->show()V

    return-void
.end method

.method private startSearch()V
    .locals 2

    const/4 v0, 0x1

    .line 451
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->isSearching:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 452
    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->count_time:I

    .line 454
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 455
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchResultLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchingImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->operatingAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/kugoo/kugookirin/view/SwipeMenuView;
    .locals 6

    .line 300
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;-><init>(Landroid/content/Context;)V

    .line 301
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x32

    .line 303
    invoke-direct {p0, v2}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->dp2px(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->setWidth(I)Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const v5, 0x7f0602ad

    .line 304
    invoke-virtual {p0, v5}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;

    move-result-object v3

    const v4, 0x7f0f011c

    .line 305
    invoke-virtual {p0, v4}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;

    .line 307
    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;->addMenuItem(Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;)V

    .line 309
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;-><init>(Landroid/content/Context;)V

    .line 311
    invoke-direct {p0, v2}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->dp2px(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->setWidth(I)Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, 0x7f0602ae

    .line 312
    invoke-virtual {p0, v4}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;

    move-result-object v2

    const v3, 0x7f0f011b

    .line 313
    invoke-virtual {p0, v3}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;

    .line 314
    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;->addMenuItem(Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;)V

    .line 316
    new-instance v1, Lcom/kugoo/kugookirin/view/SwipeMenuView;

    invoke-direct {v1, v0}, Lcom/kugoo/kugookirin/view/SwipeMenuView;-><init>(Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;)V

    .line 318
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->mOnSwipeItemClickListener:Lcom/kugoo/kugookirin/view/SwipeMenuView$OnMenuItemClickListener;

    invoke-virtual {v1, v0}, Lcom/kugoo/kugookirin/view/SwipeMenuView;->setOnMenuItemClickListener(Lcom/kugoo/kugookirin/view/SwipeMenuView$OnMenuItemClickListener;)V

    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a03f8,
            0x7f0a0102,
            0x7f0a00d3,
            0x7f0a04d0
        }
    .end annotation

    .line 337
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-wide/16 v0, 0x12c

    const/16 v2, 0xc8

    const-string v3, "+SCCARD=1"

    const-string v4, "+ADDCARD=0"

    const-string v5, "+RFMD=0"

    const-string v6, "NfcActivityLog"

    const/16 v7, 0x64

    const/4 v8, 0x0

    const/16 v9, 0x8

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 357
    :sswitch_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->isSearchSuccess:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->isSearching:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "click to search again"

    .line 358
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->resetSearchData()V

    .line 360
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->startSearch()V

    const/4 p1, 0x1

    .line 361
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->isReadyToReceive:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 362
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->isSearchSuccess:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->isSearching:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "click to bind"

    .line 363
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v6, "+ADDCARD="

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->emptyPos:I

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v8}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->commandSender(Ljava/lang/String;I)V

    .line 367
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->nfcCardsIdSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 368
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->nfcCardItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 369
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->adapter:Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;->notifyDataSetChanged()V

    .line 371
    invoke-direct {p0, v5, v7}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->commandSender(Ljava/lang/String;I)V

    .line 372
    invoke-direct {p0, v4, v2}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->commandSender(Ljava/lang/String;I)V

    const/16 p1, 0x12c

    .line 373
    invoke-direct {p0, v3, p1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->commandSender(Ljava/lang/String;I)V

    .line 374
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->resetSearchData()V

    .line 376
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/NfcActivity$7;

    invoke-direct {v2, p0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity$7;-><init>(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 383
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 384
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 385
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 386
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f12002d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->showResultDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :sswitch_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->isSearching:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "click to start search"

    .line 342
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->isReadyToReceive:Ljava/lang/Boolean;

    .line 344
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->startSearch()V

    const-string p1, "+SCCARD=0"

    .line 345
    invoke-direct {p0, p1, v8}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->commandSender(Ljava/lang/String;I)V

    const-string p1, "+RFMD=3"

    .line 346
    invoke-direct {p0, p1, v7}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->commandSender(Ljava/lang/String;I)V

    .line 348
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$6;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity$6;-><init>(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 415
    :sswitch_2
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->finish()V

    goto :goto_0

    .line 392
    :sswitch_3
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->nfcCardsIdSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 393
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->nfcCardItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 394
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->adapter:Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;->notifyDataSetChanged()V

    .line 396
    invoke-direct {p0, v5, v8}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->commandSender(Ljava/lang/String;I)V

    .line 397
    invoke-direct {p0, v4, v7}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->commandSender(Ljava/lang/String;I)V

    .line 398
    invoke-direct {p0, v3, v2}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->commandSender(Ljava/lang/String;I)V

    .line 400
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->resetSearchData()V

    .line 401
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/NfcActivity$8;

    invoke-direct {v2, p0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity$8;-><init>(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 407
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 408
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 409
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->searchResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a00d3 -> :sswitch_3
        0x7f0a0102 -> :sswitch_2
        0x7f0a03f8 -> :sswitch_1
        0x7f0a04d0 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 139
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d003c

    .line 140
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->setContentView(I)V

    .line 141
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 142
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->initView()V

    .line 143
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->initEvent()V

    .line 144
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->refreshView()V

    .line 145
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->registerBroadcast()V

    .line 146
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->showDefaultUi()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 643
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 644
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->isRun:Z

    const-string v1, "+SCCARD=0"

    .line 645
    invoke-direct {p0, v1, v0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->commandSender(Ljava/lang/String;I)V

    const-string v0, "+RFMD=0"

    const/16 v1, 0x64

    .line 646
    invoke-direct {p0, v0, v1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->commandSender(Ljava/lang/String;I)V

    .line 647
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

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
    .locals 4

    .line 512
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    const-string v0, "+SCCARD=1"

    const/4 v1, 0x0

    .line 513
    invoke-direct {p0, v0, v1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->commandSender(Ljava/lang/String;I)V

    const-string v0, "+RFMD=0"

    const/16 v1, 0x64

    .line 514
    invoke-direct {p0, v0, v1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->commandSender(Ljava/lang/String;I)V

    .line 515
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/NfcActivity$11;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity$11;-><init>(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 521
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
