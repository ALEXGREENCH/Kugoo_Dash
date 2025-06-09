.class public Lcom/kugoo/kugookirin/more/TrackFragment;
.super Landroidx/fragment/app/Fragment;
.source "TrackFragment.java"

# interfaces
.implements Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$onTrajeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/more/TrackFragment$onTrajAdapterSizeListener;
    }
.end annotation


# instance fields
.field private isLoading:Z

.field private isRefreshing:Z

.field private lastData:Z

.field private limit:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;",
            ">;"
        }
    .end annotation
.end field

.field noRecord:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0407
    .end annotation
.end field

.field private parentActivity:Landroid/app/Activity;

.field private preferences:Landroid/content/SharedPreferences;

.field private selectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;",
            ">;"
        }
    .end annotation
.end field

.field private size:I

.field private token:Ljava/lang/String;

.field private traAdapter:Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;

.field traFreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a05ac
    .end annotation
.end field

.field traView:Landroid/widget/ListView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a05b7
    .end annotation
.end field

.field private trajListener:Lcom/kugoo/kugookirin/more/TrackFragment$onTrajAdapterSizeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->limit:I

    const/16 v0, 0xa

    .line 66
    iput v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->size:I

    return-void
.end method

.method private DeleteTrackInfo(Ljava/lang/String;Ljava/lang/String;Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;)V
    .locals 7

    .line 269
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "token"

    .line 270
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "time"

    .line 271
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "method"

    const-string p2, "deleteOne"

    .line 272
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 273
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    new-instance p1, Lcom/kugoo/kugookirin/more/TrackFragment$5;

    const/4 v2, 0x1

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->UPDATE_ACTIVITY_ROUTE:Ljava/lang/String;

    new-instance v4, Lcom/kugoo/kugookirin/more/TrackFragment$3;

    invoke-direct {v4, p0, p3}, Lcom/kugoo/kugookirin/more/TrackFragment$3;-><init>(Lcom/kugoo/kugookirin/more/TrackFragment;Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;)V

    new-instance v5, Lcom/kugoo/kugookirin/more/TrackFragment$4;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/more/TrackFragment$4;-><init>(Lcom/kugoo/kugookirin/more/TrackFragment;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/more/TrackFragment$5;-><init>(Lcom/kugoo/kugookirin/more/TrackFragment;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 316
    sget-object p2, Lcom/kugoo/kugookirin/utils/MyApplication;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private DeleteTrackInfo02(Ljava/lang/String;Ljava/lang/String;Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;)V
    .locals 7

    .line 321
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "uid"

    .line 322
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "did"

    .line 323
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "limit"

    const-string p2, "0"

    .line 324
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "size"

    const-string p2, "10"

    .line 325
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "method"

    const-string p2, "commentOrFabulousDetails"

    .line 326
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 327
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    new-instance p1, Lcom/kugoo/kugookirin/more/TrackFragment$8;

    const/4 v2, 0x1

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->UPDATE_ACTIVITY_ROUTE:Ljava/lang/String;

    new-instance v4, Lcom/kugoo/kugookirin/more/TrackFragment$6;

    invoke-direct {v4, p0, p3}, Lcom/kugoo/kugookirin/more/TrackFragment$6;-><init>(Lcom/kugoo/kugookirin/more/TrackFragment;Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;)V

    new-instance v5, Lcom/kugoo/kugookirin/more/TrackFragment$7;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/more/TrackFragment$7;-><init>(Lcom/kugoo/kugookirin/more/TrackFragment;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/more/TrackFragment$8;-><init>(Lcom/kugoo/kugookirin/more/TrackFragment;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 370
    sget-object p2, Lcom/kugoo/kugookirin/utils/MyApplication;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/more/TrackFragment;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->lastData:Z

    return p0
.end method

.method static synthetic access$002(Lcom/kugoo/kugookirin/more/TrackFragment;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->lastData:Z

    return p1
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/more/TrackFragment;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->limit:I

    return p0
.end method

.method static synthetic access$102(Lcom/kugoo/kugookirin/more/TrackFragment;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->limit:I

    return p1
.end method

.method static synthetic access$112(Lcom/kugoo/kugookirin/more/TrackFragment;I)I
    .locals 1

    .line 50
    iget v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->limit:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->limit:I

    return v0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/more/TrackFragment;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->isLoading:Z

    return p0
.end method

.method static synthetic access$202(Lcom/kugoo/kugookirin/more/TrackFragment;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->isLoading:Z

    return p1
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/more/TrackFragment;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->size:I

    return p0
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/more/TrackFragment;IILjava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/kugoo/kugookirin/more/TrackFragment;->loadGPSInfo(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/more/TrackFragment;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->isRefreshing:Z

    return p0
.end method

.method static synthetic access$502(Lcom/kugoo/kugookirin/more/TrackFragment;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->isRefreshing:Z

    return p1
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/more/TrackFragment;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->mList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/kugoo/kugookirin/more/TrackFragment;)Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->traAdapter:Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/kugoo/kugookirin/more/TrackFragment;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->selectList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/kugoo/kugookirin/more/TrackFragment;)Lcom/kugoo/kugookirin/more/TrackFragment$onTrajAdapterSizeListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->trajListener:Lcom/kugoo/kugookirin/more/TrackFragment$onTrajAdapterSizeListener;

    return-object p0
.end method

.method private initAdapter()V
    .locals 3

    .line 167
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->parentActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->mList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->traAdapter:Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;

    .line 168
    iget-object v1, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->traView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->traAdapter:Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;

    invoke-virtual {v0, p0}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->setOnItemCheckedChangeListener(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$onTrajeCheckedChangeListener;)V

    return-void
.end method

.method private initEvent()V
    .locals 3

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->mList:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->selectList:Ljava/util/List;

    .line 98
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->preferences:Landroid/content/SharedPreferences;

    .line 99
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->token:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->traFreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lcom/kugoo/kugookirin/more/TrackFragment$1;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/more/TrackFragment$1;-><init>(Lcom/kugoo/kugookirin/more/TrackFragment;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method

.method private loadGPSInfo(IILjava/lang/String;)V
    .locals 7

    .line 131
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->token:Ljava/lang/String;

    const-string v4, "2"

    const-string v6, "get"

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/kugoo/kugookirin/utils/NetLink;->getTrackInfo(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 134
    new-instance p2, Lcom/kugoo/kugookirin/more/TrackFragment$2;

    invoke-direct {p2, p0}, Lcom/kugoo/kugookirin/more/TrackFragment$2;-><init>(Lcom/kugoo/kugookirin/more/TrackFragment;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method


# virtual methods
.method public TrajeItemChecked(Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;)V
    .locals 1

    .line 191
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->selectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->selectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->selectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->selectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public addAllData()V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;

    .line 220
    invoke-virtual {v1}, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 221
    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->setCheck(Z)V

    .line 222
    iget-object v2, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->selectList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->selectList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->traAdapter:Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clearAllData()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;

    .line 233
    invoke-virtual {v1}, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 234
    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->setCheck(Z)V

    goto :goto_0

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->selectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->selectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->traAdapter:Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public deleteData()V
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->selectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;

    .line 246
    iget-object v2, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->token:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1}, Lcom/kugoo/kugookirin/more/TrackFragment;->DeleteTrackInfo(Ljava/lang/String;Ljava/lang/String;Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getTrajAdapterSize()I
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->traAdapter:Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hideCheckBox()V
    .locals 4

    const/4 v0, 0x0

    .line 205
    sput-boolean v0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->isSelecting:Z

    .line 206
    iget-object v1, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;

    .line 207
    invoke-virtual {v2}, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 208
    invoke-virtual {v2, v0}, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->setCheck(Z)V

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->selectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->selectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->traAdapter:Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 87
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/TrackFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->parentActivity:Landroid/app/Activity;

    .line 89
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/TrackFragment;->initEvent()V

    .line 90
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/TrackFragment;->initAdapter()V

    .line 91
    iget p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->limit:I

    iget v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->size:I

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/kugoo/kugookirin/more/TrackFragment;->loadGPSInfo(IILjava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d00a3

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 81
    invoke-static {p0, p1}, Lcom/lidroid/xutils/ViewUtils;->inject(Ljava/lang/Object;Landroid/view/View;)V

    return-object p1
.end method

.method public onResume()V
    .locals 1

    .line 175
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 176
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->traAdapter:Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setOnTrajAdapterSizeListener(Lcom/kugoo/kugookirin/more/TrackFragment$onTrajAdapterSizeListener;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->trajListener:Lcom/kugoo/kugookirin/more/TrackFragment$onTrajAdapterSizeListener;

    return-void
.end method

.method public showCheckBox()V
    .locals 1

    const/4 v0, 0x1

    .line 200
    sput-boolean v0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->isSelecting:Z

    .line 201
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackFragment;->traAdapter:Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->notifyDataSetChanged()V

    return-void
.end method
