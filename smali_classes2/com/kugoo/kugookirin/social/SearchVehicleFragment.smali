.class public Lcom/kugoo/kugookirin/social/SearchVehicleFragment;
.super Landroidx/fragment/app/Fragment;
.source "SearchVehicleFragment.java"

# interfaces
.implements Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchVehicleListener;


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

.field private searchVehicleAdapter:Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;

.field private token:Ljava/lang/String;

.field vehicleCv:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0498
    .end annotation
.end field

.field private vehicleDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo$ResultBean;",
            ">;"
        }
    .end annotation
.end field

.field vehicleRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
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

    .line 48
    iput v0, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->limit:I

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/social/SearchVehicleFragment;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->searchContent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/social/SearchVehicleFragment;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->limit:I

    return p0
.end method

.method static synthetic access$102(Lcom/kugoo/kugookirin/social/SearchVehicleFragment;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->limit:I

    return p1
.end method

.method static synthetic access$112(Lcom/kugoo/kugookirin/social/SearchVehicleFragment;I)I
    .locals 1

    .line 36
    iget v0, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->limit:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->limit:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 36
    sget v0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->SIZE:I

    return v0
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/social/SearchVehicleFragment;Ljava/lang/String;II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->searchVehicleInfo(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/social/SearchVehicleFragment;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->vehicleDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lcom/kugoo/kugookirin/social/SearchVehicleFragment;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->isLastData:Z

    return p1
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/social/SearchVehicleFragment;)Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->searchVehicleAdapter:Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;

    return-object p0
.end method

.method private searchVehicleInfo(Ljava/lang/String;II)V
    .locals 7

    .line 138
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->token:Ljava/lang/String;

    const-string v3, "Vehicle"

    const-string v6, "SearchUser"

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/kugoo/kugookirin/utils/NetLink;->getVehicleSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 140
    new-instance p2, Lcom/kugoo/kugookirin/social/SearchVehicleFragment$2;

    invoke-direct {p2, p0}, Lcom/kugoo/kugookirin/social/SearchVehicleFragment$2;-><init>(Lcom/kugoo/kugookirin/social/SearchVehicleFragment;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private setAdapter()V
    .locals 3

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->vehicleDataList:Ljava/util/List;

    .line 113
    new-instance v0, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->parentActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->vehicleDataList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->searchVehicleAdapter:Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;

    .line 114
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->vehicleCv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 115
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 116
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 117
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->vehicleCv:Landroidx/recyclerview/widget/RecyclerView;

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
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iput-object p3, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->parentActivity:Landroid/app/Activity;

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
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->searchContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->searchContent:Ljava/lang/String;

    iget v1, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->limit:I

    sget v2, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->SIZE:I

    invoke-direct {p0, v0, v1, v2}, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->searchVehicleInfo(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 77
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 79
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->setAdapter()V

    .line 80
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->preferences:Landroid/content/SharedPreferences;

    .line 81
    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->token:Ljava/lang/String;

    .line 82
    invoke-static {p0}, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->setOnSearchVehicleListener(Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchVehicleListener;)V

    .line 85
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->vehicleRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance p2, Lcom/kugoo/kugookirin/social/SearchVehicleFragment$1;

    invoke-direct {p2, p0}, Lcom/kugoo/kugookirin/social/SearchVehicleFragment$1;-><init>(Lcom/kugoo/kugookirin/social/SearchVehicleFragment;)V

    invoke-virtual {p1, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method

.method public searchVehicle(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 173
    iput v0, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->limit:I

    .line 174
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->vehicleDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 175
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->searchContent:Ljava/lang/String;

    .line 176
    iget v0, p0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->limit:I

    sget v1, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->SIZE:I

    invoke-direct {p0, p1, v0, v1}, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;->searchVehicleInfo(Ljava/lang/String;II)V

    return-void
.end method
