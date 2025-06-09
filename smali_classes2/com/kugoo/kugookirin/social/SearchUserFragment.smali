.class public Lcom/kugoo/kugookirin/social/SearchUserFragment;
.super Landroidx/fragment/app/Fragment;
.source "SearchUserFragment.java"

# interfaces
.implements Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchUserListener;


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

.field private preferences:Landroid/content/SharedPreferences;

.field private searchContent:Ljava/lang/String;

.field private searchUserAdapter:Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;

.field private token:Ljava/lang/String;

.field userCv:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0498
    .end annotation
.end field

.field private userDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;",
            ">;"
        }
    .end annotation
.end field

.field userRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0499
    .end annotation
.end field


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

    .line 49
    iput v0, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->limit:I

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/social/SearchUserFragment;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->isLastData:Z

    return p0
.end method

.method static synthetic access$002(Lcom/kugoo/kugookirin/social/SearchUserFragment;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->isLastData:Z

    return p1
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/social/SearchUserFragment;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->searchContent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/social/SearchUserFragment;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->limit:I

    return p0
.end method

.method static synthetic access$202(Lcom/kugoo/kugookirin/social/SearchUserFragment;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->limit:I

    return p1
.end method

.method static synthetic access$212(Lcom/kugoo/kugookirin/social/SearchUserFragment;I)I
    .locals 1

    .line 37
    iget v0, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->limit:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->limit:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 37
    sget v0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->SIZE:I

    return v0
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/social/SearchUserFragment;Ljava/lang/String;II)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->getUserData(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/social/SearchUserFragment;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->userDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/social/SearchUserFragment;)Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->searchUserAdapter:Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;

    return-object p0
.end method

.method private getUserData(Ljava/lang/String;II)V
    .locals 7

    .line 144
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->token:Ljava/lang/String;

    const-string v3, "User"

    const-string v6, "SearchUser"

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/kugoo/kugookirin/utils/NetLink;->getUserSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 146
    new-instance p2, Lcom/kugoo/kugookirin/social/SearchUserFragment$2;

    invoke-direct {p2, p0}, Lcom/kugoo/kugookirin/social/SearchUserFragment$2;-><init>(Lcom/kugoo/kugookirin/social/SearchUserFragment;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private setAdapter()V
    .locals 3

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->userDataList:Ljava/util/List;

    .line 119
    new-instance v0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->parentActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->userDataList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->searchUserAdapter:Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;

    .line 120
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->userCv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 121
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 122
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 123
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->userCv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iput-object p3, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->parentActivity:Landroid/app/Activity;

    const p3, 0x7f0d00a2

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 73
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .line 189
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hidden=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "serchuser01"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 128
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 129
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->searchContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->searchContent:Ljava/lang/String;

    iget v1, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->limit:I

    sget v2, Lcom/kugoo/kugookirin/social/SearchUserFragment;->SIZE:I

    invoke-direct {p0, v0, v1, v2}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->getUserData(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 79
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 81
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->setAdapter()V

    .line 82
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->preferences:Landroid/content/SharedPreferences;

    .line 83
    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->token:Ljava/lang/String;

    .line 84
    invoke-static {p0}, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->setOnSearchUserListener(Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchUserListener;)V

    .line 86
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->userRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance p2, Lcom/kugoo/kugookirin/social/SearchUserFragment$1;

    invoke-direct {p2, p0}, Lcom/kugoo/kugookirin/social/SearchUserFragment$1;-><init>(Lcom/kugoo/kugookirin/social/SearchUserFragment;)V

    invoke-virtual {p1, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method

.method public searchUser(Ljava/lang/String;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->userDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 181
    iput v0, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->limit:I

    .line 182
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->searchContent:Ljava/lang/String;

    .line 183
    sget v1, Lcom/kugoo/kugookirin/social/SearchUserFragment;->SIZE:I

    invoke-direct {p0, p1, v0, v1}, Lcom/kugoo/kugookirin/social/SearchUserFragment;->getUserData(Ljava/lang/String;II)V

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "searchContent=="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/SearchUserFragment;->searchContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "serchuser01"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
