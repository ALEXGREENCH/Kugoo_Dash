.class public Lcom/kugoo/kugookirin/more/RankMonthFragment;
.super Landroidx/fragment/app/Fragment;
.source "RankMonthFragment.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private monthInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/bean/RankInfo$ResultList;",
            ">;"
        }
    .end annotation
.end field

.field monthRankRv:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0473
    .end annotation
.end field

.field no_rank_tv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0404
    .end annotation
.end field

.field private parentActivity:Landroid/app/Activity;

.field private preferences:Landroid/content/SharedPreferences;

.field private token:Ljava/lang/String;

.field top1Dis:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a059c
    .end annotation
.end field

.field top1Name:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a059d
    .end annotation
.end field

.field top1PhotoIv:Lcom/kugoo/kugookirin/view/CircleImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a059e
    .end annotation
.end field

.field top1Relate:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a059f
    .end annotation
.end field

.field top1Tv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05a0
    .end annotation
.end field

.field private userRankInfo:Lcom/kugoo/kugookirin/bean/RankInfo$UserList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 140
    new-instance v0, Lcom/kugoo/kugookirin/more/RankMonthFragment$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kugoo/kugookirin/more/RankMonthFragment$2;-><init>(Lcom/kugoo/kugookirin/more/RankMonthFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/RankMonthFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/more/RankMonthFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/kugoo/kugookirin/more/RankMonthFragment;->monthInfoList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/more/RankMonthFragment;)Lcom/kugoo/kugookirin/bean/RankInfo$UserList;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/kugoo/kugookirin/more/RankMonthFragment;->userRankInfo:Lcom/kugoo/kugookirin/bean/RankInfo$UserList;

    return-object p0
.end method

.method static synthetic access$102(Lcom/kugoo/kugookirin/more/RankMonthFragment;Lcom/kugoo/kugookirin/bean/RankInfo$UserList;)Lcom/kugoo/kugookirin/bean/RankInfo$UserList;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/RankMonthFragment;->userRankInfo:Lcom/kugoo/kugookirin/bean/RankInfo$UserList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/more/RankMonthFragment;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/kugoo/kugookirin/more/RankMonthFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/more/RankMonthFragment;)Landroid/app/Activity;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/kugoo/kugookirin/more/RankMonthFragment;->parentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private getPersonalData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 112
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    const-string v1, "Ranking"

    .line 113
    invoke-interface {v0, p1, p2, v1}, Lcom/kugoo/kugookirin/utils/NetLink;->getRankInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 114
    new-instance p2, Lcom/kugoo/kugookirin/more/RankMonthFragment$1;

    invoke-direct {p2, p0}, Lcom/kugoo/kugookirin/more/RankMonthFragment$1;-><init>(Lcom/kugoo/kugookirin/more/RankMonthFragment;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initEvent()V
    .locals 3

    .line 98
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/RankMonthFragment;->preferences:Landroid/content/SharedPreferences;

    .line 99
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/RankMonthFragment;->token:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/RankMonthFragment;->monthInfoList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/RankMonthFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iput-object p3, p0, Lcom/kugoo/kugookirin/more/RankMonthFragment;->parentActivity:Landroid/app/Activity;

    const p3, 0x7f0d00a1

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 81
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 87
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 92
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/RankMonthFragment;->initEvent()V

    const-string p1, "Month"

    .line 93
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/RankMonthFragment;->token:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/more/RankMonthFragment;->getPersonalData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
