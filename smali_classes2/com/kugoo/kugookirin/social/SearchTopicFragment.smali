.class public Lcom/kugoo/kugookirin/social/SearchTopicFragment;
.super Landroidx/fragment/app/Fragment;
.source "SearchTopicFragment.java"

# interfaces
.implements Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchPostListener;


# static fields
.field private static SIZE:I = 0x14


# instance fields
.field private isLastData:Z

.field private limit:I

.field noSearchItem:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0405
    .end annotation
.end field

.field private parentActivity:Landroid/app/Activity;

.field postCv:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0498
    .end annotation
.end field

.field private postDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;",
            ">;"
        }
    .end annotation
.end field

.field postRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0499
    .end annotation
.end field

.field private preferences:Landroid/content/SharedPreferences;

.field private searchContent:Ljava/lang/String;

.field private searchPostAdapter:Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;

.field private token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->limit:I

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/social/SearchTopicFragment;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->isLastData:Z

    return p0
.end method

.method static synthetic access$002(Lcom/kugoo/kugookirin/social/SearchTopicFragment;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->isLastData:Z

    return p1
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/social/SearchTopicFragment;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->searchContent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/social/SearchTopicFragment;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->limit:I

    return p0
.end method

.method static synthetic access$202(Lcom/kugoo/kugookirin/social/SearchTopicFragment;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->limit:I

    return p1
.end method

.method static synthetic access$212(Lcom/kugoo/kugookirin/social/SearchTopicFragment;I)I
    .locals 1

    .line 37
    iget v0, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->limit:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->limit:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 37
    sget v0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->SIZE:I

    return v0
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/social/SearchTopicFragment;Ljava/lang/String;II)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->searchTopic(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/social/SearchTopicFragment;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->postDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/social/SearchTopicFragment;)Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->searchPostAdapter:Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;

    return-object p0
.end method

.method private searchTopic(Ljava/lang/String;II)V
    .locals 7

    .line 138
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->token:Ljava/lang/String;

    const-string v3, "Topic"

    const-string v6, "SearchUser"

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/kugoo/kugookirin/utils/NetLink;->getTopicSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 141
    new-instance p2, Lcom/kugoo/kugookirin/social/SearchTopicFragment$2;

    invoke-direct {p2, p0}, Lcom/kugoo/kugookirin/social/SearchTopicFragment$2;-><init>(Lcom/kugoo/kugookirin/social/SearchTopicFragment;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private setAdapter()V
    .locals 3

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->postDataList:Ljava/util/List;

    .line 113
    new-instance v0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->parentActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->postDataList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->searchPostAdapter:Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;

    .line 114
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->postCv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 115
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 116
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 117
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->postCv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iput-object p3, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->parentActivity:Landroid/app/Activity;

    const p3, 0x7f0d00a2

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 71
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-object p1
.end method

.method public onResume()V
    .locals 3

    .line 122
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 123
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->searchContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->searchContent:Ljava/lang/String;

    iget v1, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->limit:I

    sget v2, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->SIZE:I

    invoke-direct {p0, v0, v1, v2}, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->searchTopic(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 77
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 79
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->setAdapter()V

    .line 80
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->preferences:Landroid/content/SharedPreferences;

    .line 81
    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->token:Ljava/lang/String;

    .line 82
    invoke-static {p0}, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->setOnSearchPostListener(Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchPostListener;)V

    .line 85
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->postRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance p2, Lcom/kugoo/kugookirin/social/SearchTopicFragment$1;

    invoke-direct {p2, p0}, Lcom/kugoo/kugookirin/social/SearchTopicFragment$1;-><init>(Lcom/kugoo/kugookirin/social/SearchTopicFragment;)V

    invoke-virtual {p1, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method

.method public searchPost(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 180
    iput v0, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->limit:I

    .line 181
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->postDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 182
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->searchContent:Ljava/lang/String;

    .line 183
    iget v0, p0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->limit:I

    sget v1, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->SIZE:I

    invoke-direct {p0, p1, v0, v1}, Lcom/kugoo/kugookirin/social/SearchTopicFragment;->searchTopic(Ljava/lang/String;II)V

    return-void
.end method
