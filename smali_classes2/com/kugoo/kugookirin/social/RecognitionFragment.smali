.class public Lcom/kugoo/kugookirin/social/RecognitionFragment;
.super Landroidx/fragment/app/Fragment;
.source "RecognitionFragment.java"


# static fields
.field public static freshItemPos:I = -0x1

.field public static isDeleteItem:Z = false

.field private static isLastData:Z = false


# instance fields
.field private SIZE:I

.field private arrowFresh:Z

.field private isLogin:Z

.field private limit:I

.field no_data_view:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03ff
    .end annotation
.end field

.field none_date_tv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0409
    .end annotation
.end field

.field pageRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a042a
    .end annotation
.end field

.field private parentActivity:Landroid/app/Activity;

.field private preferences:Landroid/content/SharedPreferences;

.field private recognitionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;",
            ">;"
        }
    .end annotation
.end field

.field private recognitionPageAdapter:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

.field recognitionRv:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a042b
    .end annotation
.end field

.field private token:Ljava/lang/String;

.field private userID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->isLogin:Z

    .line 53
    iput v0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->limit:I

    const/16 v0, 0xc

    .line 54
    iput v0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->SIZE:I

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->arrowFresh:Z

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 36
    sget-boolean v0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->isLastData:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 36
    sput-boolean p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->isLastData:Z

    return p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/social/RecognitionFragment;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->limit:I

    return p0
.end method

.method static synthetic access$112(Lcom/kugoo/kugookirin/social/RecognitionFragment;I)I
    .locals 1

    .line 36
    iget v0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->limit:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->limit:I

    return v0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/social/RecognitionFragment;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->SIZE:I

    return p0
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/social/RecognitionFragment;II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/social/RecognitionFragment;->getDiscoverData(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/social/RecognitionFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->recognitionList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/social/RecognitionFragment;)Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->recognitionPageAdapter:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    return-object p0
.end method

.method static synthetic access$602(Lcom/kugoo/kugookirin/social/RecognitionFragment;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->arrowFresh:Z

    return p1
.end method

.method private getDiscoverData(II)V
    .locals 8

    .line 165
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tokenTest"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->USER_URL:Ljava/lang/String;

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->token:Ljava/lang/String;

    const-string v3, "dynamicDetail"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v6, p1

    move v7, p2

    invoke-interface/range {v0 .. v7}, Lcom/kugoo/kugookirin/utils/NetLink;->getDiscover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Lretrofit2/Call;

    move-result-object p1

    .line 169
    new-instance p2, Lcom/kugoo/kugookirin/social/RecognitionFragment$2;

    invoke-direct {p2, p0}, Lcom/kugoo/kugookirin/social/RecognitionFragment$2;-><init>(Lcom/kugoo/kugookirin/social/RecognitionFragment;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initEvent()V
    .locals 1

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->recognitionList:Ljava/util/ArrayList;

    return-void
.end method

.method private setAdapter()V
    .locals 5

    .line 99
    new-instance v0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/RecognitionFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->recognitionList:Ljava/util/ArrayList;

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->DISCOVER_PAGE_RECOGNITION:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->recognitionPageAdapter:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    .line 100
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->recognitionRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 101
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->recognitionRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/RecognitionFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 102
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->pageRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 103
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->pageRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 104
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->pageRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lcom/kugoo/kugookirin/social/RecognitionFragment$1;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/social/RecognitionFragment$1;-><init>(Lcom/kugoo/kugookirin/social/RecognitionFragment;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 75
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/RecognitionFragment;->initEvent()V

    .line 76
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/RecognitionFragment;->setAdapter()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d009b

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 84
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 85
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/RecognitionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->parentActivity:Landroid/app/Activity;

    return-object p1
.end method

.method public onResume()V
    .locals 3

    .line 126
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 127
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->preferences:Landroid/content/SharedPreferences;

    .line 128
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->userID:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->token:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->isLogin:Z

    .line 138
    sget-boolean v0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->isDeleteItem:Z

    if-eqz v0, :cond_0

    .line 139
    sput-boolean v2, Lcom/kugoo/kugookirin/social/RecognitionFragment;->isDeleteItem:Z

    .line 140
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->recognitionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 141
    sput-boolean v2, Lcom/kugoo/kugookirin/social/RecognitionFragment;->isLastData:Z

    .line 142
    iput v2, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->limit:I

    .line 143
    iget v0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->SIZE:I

    invoke-direct {p0, v2, v0}, Lcom/kugoo/kugookirin/social/RecognitionFragment;->getDiscoverData(II)V

    .line 145
    :cond_0
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->arrowFresh:Z

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->recognitionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 147
    sput-boolean v2, Lcom/kugoo/kugookirin/social/RecognitionFragment;->isLastData:Z

    .line 148
    iput v2, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->limit:I

    .line 149
    iget v0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->SIZE:I

    invoke-direct {p0, v2, v0}, Lcom/kugoo/kugookirin/social/RecognitionFragment;->getDiscoverData(II)V

    :cond_1
    return-void
.end method

.method public refreshData()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->recognitionList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 94
    sput-boolean v0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->isLastData:Z

    .line 95
    iput v0, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->limit:I

    .line 96
    iget v1, p0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->SIZE:I

    invoke-direct {p0, v0, v1}, Lcom/kugoo/kugookirin/social/RecognitionFragment;->getDiscoverData(II)V

    return-void
.end method
