.class public Lcom/kugoo/kugookirin/more/NaviFragment;
.super Landroidx/fragment/app/Fragment;
.source "NaviFragment.java"

# interfaces
.implements Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$onItemCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/more/NaviFragment$onNavAdapterSizeListener;
    }
.end annotation


# instance fields
.field private infoAdapter:Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

.field private isLastData:Z

.field private isLoading:Z

.field private isRefreshing:Z

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

.field private mListener:Lcom/kugoo/kugookirin/more/NaviFragment$onNavAdapterSizeListener;

.field naviView:Landroid/widget/ListView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a03e2
    .end annotation
.end field

.field noRecord:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0402
    .end annotation
.end field

.field private parentActivity:Landroid/app/Activity;

.field private preferences:Landroid/content/SharedPreferences;

.field refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0486
    .end annotation
.end field

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


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->limit:I

    const/16 v1, 0xa

    .line 66
    iput v1, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->size:I

    .line 68
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->isLoading:Z

    .line 69
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->isRefreshing:Z

    return-void
.end method

.method private DeleteTrackInfo(Ljava/lang/String;Ljava/lang/String;Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;)V
    .locals 9

    const-string v0, "ajajaja"

    const-string v1, "shanchu"

    .line 277
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v0, "token"

    .line 279
    invoke-virtual {v8, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "time"

    .line 280
    invoke-virtual {v8, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "method"

    const-string p2, "deleteOne"

    .line 281
    invoke-virtual {v8, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 282
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v8, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    new-instance p1, Lcom/kugoo/kugookirin/more/NaviFragment$5;

    const/4 v4, 0x1

    sget-object v5, Lcom/kugoo/kugookirin/utils/Constants;->UPDATE_ACTIVITY_ROUTE:Ljava/lang/String;

    new-instance v6, Lcom/kugoo/kugookirin/more/NaviFragment$3;

    invoke-direct {v6, p0, p3}, Lcom/kugoo/kugookirin/more/NaviFragment$3;-><init>(Lcom/kugoo/kugookirin/more/NaviFragment;Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;)V

    new-instance v7, Lcom/kugoo/kugookirin/more/NaviFragment$4;

    invoke-direct {v7, p0}, Lcom/kugoo/kugookirin/more/NaviFragment$4;-><init>(Lcom/kugoo/kugookirin/more/NaviFragment;)V

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/kugoo/kugookirin/more/NaviFragment$5;-><init>(Lcom/kugoo/kugookirin/more/NaviFragment;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 321
    sget-object p2, Lcom/kugoo/kugookirin/utils/MyApplication;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/more/NaviFragment;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->isLastData:Z

    return p0
.end method

.method static synthetic access$002(Lcom/kugoo/kugookirin/more/NaviFragment;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->isLastData:Z

    return p1
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/more/NaviFragment;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->limit:I

    return p0
.end method

.method static synthetic access$102(Lcom/kugoo/kugookirin/more/NaviFragment;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->limit:I

    return p1
.end method

.method static synthetic access$112(Lcom/kugoo/kugookirin/more/NaviFragment;I)I
    .locals 1

    .line 50
    iget v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->limit:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->limit:I

    return v0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/more/NaviFragment;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->isLoading:Z

    return p0
.end method

.method static synthetic access$202(Lcom/kugoo/kugookirin/more/NaviFragment;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->isLoading:Z

    return p1
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/more/NaviFragment;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->size:I

    return p0
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/more/NaviFragment;IILjava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/kugoo/kugookirin/more/NaviFragment;->loadNaviInfo(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/more/NaviFragment;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->isRefreshing:Z

    return p0
.end method

.method static synthetic access$502(Lcom/kugoo/kugookirin/more/NaviFragment;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->isRefreshing:Z

    return p1
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/more/NaviFragment;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->mList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/kugoo/kugookirin/more/NaviFragment;)Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->infoAdapter:Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/kugoo/kugookirin/more/NaviFragment;)Lcom/kugoo/kugookirin/more/NaviFragment$onNavAdapterSizeListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->mListener:Lcom/kugoo/kugookirin/more/NaviFragment$onNavAdapterSizeListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/kugoo/kugookirin/more/NaviFragment;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->selectList:Ljava/util/List;

    return-object p0
.end method

.method private initAdapter()V
    .locals 3

    .line 132
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->parentActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->mList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->infoAdapter:Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

    .line 133
    iget-object v1, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->naviView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->infoAdapter:Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

    invoke-virtual {v0, p0}, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;->setOnItemCheckedChangeListener(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$onItemCheckedChangeListener;)V

    return-void
.end method

.method private initEvent()V
    .locals 3

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->mList:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->selectList:Ljava/util/List;

    .line 105
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->preferences:Landroid/content/SharedPreferences;

    .line 106
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->token:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lcom/kugoo/kugookirin/more/NaviFragment$1;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/more/NaviFragment$1;-><init>(Lcom/kugoo/kugookirin/more/NaviFragment;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method

.method private loadNaviInfo(IILjava/lang/String;)V
    .locals 7

    .line 158
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "limit=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "size=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "locationdata"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v1, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->token:Ljava/lang/String;

    const-string v4, "1"

    const-string v6, "get"

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/kugoo/kugookirin/utils/NetLink;->getTrackInfo(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 161
    new-instance p2, Lcom/kugoo/kugookirin/more/NaviFragment$2;

    invoke-direct {p2, p0}, Lcom/kugoo/kugookirin/more/NaviFragment$2;-><init>(Lcom/kugoo/kugookirin/more/NaviFragment;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method


# virtual methods
.method public NavItemChecked(Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;)V
    .locals 1

    .line 142
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->selectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->selectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->selectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->selectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public addAllData()V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->mList:Ljava/util/List;

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

    .line 221
    invoke-virtual {v1}, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 222
    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->setCheck(Z)V

    .line 223
    iget-object v2, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->selectList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->selectList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->infoAdapter:Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clearAllData()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->mList:Ljava/util/List;

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
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->selectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->selectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->infoAdapter:Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public deleteData()V
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->selectList:Ljava/util/List;

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
    iget-object v2, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->token:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1}, Lcom/kugoo/kugookirin/more/NaviFragment;->DeleteTrackInfo(Ljava/lang/String;Ljava/lang/String;Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;)V

    goto :goto_0

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shanchuwaimianjaaisLastData=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->isLastData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sizre=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ajajaja"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getNavAdapterSize()I
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->infoAdapter:Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;->getCount()I

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

    .line 206
    sput-boolean v0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;->isSelecting:Z

    .line 207
    iget-object v1, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->mList:Ljava/util/List;

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

    .line 208
    invoke-virtual {v2}, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    invoke-virtual {v2, v0}, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->setCheck(Z)V

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->selectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->selectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->infoAdapter:Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 86
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/NaviFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->parentActivity:Landroid/app/Activity;

    .line 88
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/NaviFragment;->initEvent()V

    .line 89
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/NaviFragment;->initAdapter()V

    .line 90
    iget p1, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->limit:I

    iget v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->size:I

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/kugoo/kugookirin/more/NaviFragment;->loadNaviInfo(IILjava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d009f

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 80
    invoke-static {p0, p1}, Lcom/lidroid/xutils/ViewUtils;->inject(Ljava/lang/Object;Landroid/view/View;)V

    return-object p1
.end method

.method public onResume()V
    .locals 1

    .line 96
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 97
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->infoAdapter:Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setOnNavAdapterSizeListener(Lcom/kugoo/kugookirin/more/NaviFragment$onNavAdapterSizeListener;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->mListener:Lcom/kugoo/kugookirin/more/NaviFragment$onNavAdapterSizeListener;

    return-void
.end method

.method public showCheckBox()V
    .locals 1

    const/4 v0, 0x1

    .line 201
    sput-boolean v0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;->isSelecting:Z

    .line 202
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/NaviFragment;->infoAdapter:Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;->notifyDataSetChanged()V

    return-void
.end method
