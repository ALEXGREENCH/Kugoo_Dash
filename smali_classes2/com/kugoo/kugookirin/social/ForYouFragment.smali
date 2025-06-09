.class public Lcom/kugoo/kugookirin/social/ForYouFragment;
.super Landroidx/fragment/app/Fragment;
.source "ForYouFragment.java"


# static fields
.field public static freshItemPos:I = -0x1

.field public static isDeleteItem:Z = false

.field public static publishRefresh:Z = false


# instance fields
.field private SIZE:I

.field private arrowFresh:Z

.field private forYouAdapter:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

.field forYouCv:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a025d
    .end annotation
.end field

.field forYouRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a025e
    .end annotation
.end field

.field private hasMsg:Z

.field private isLastData:Z

.field private isLogin:Z

.field private limit:I

.field private loginUserId:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mListData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;",
            ">;"
        }
    .end annotation
.end field

.field messageBtn:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0395
    .end annotation
.end field

.field noDataItem:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03fd
    .end annotation
.end field

.field noDataLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03fe
    .end annotation
.end field

.field private parentActivity:Landroid/app/Activity;

.field private preferences:Landroid/content/SharedPreferences;

.field private token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 92
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->arrowFresh:Z

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->isLastData:Z

    .line 79
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->isLogin:Z

    .line 80
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->hasMsg:Z

    .line 81
    iput v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->limit:I

    const/16 v0, 0xc

    .line 82
    iput v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->SIZE:I

    .line 266
    new-instance v0, Lcom/kugoo/kugookirin/social/ForYouFragment$4;

    .line 267
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kugoo/kugookirin/social/ForYouFragment$4;-><init>(Lcom/kugoo/kugookirin/social/ForYouFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/social/ForYouFragment;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->isLastData:Z

    return p0
.end method

.method static synthetic access$002(Lcom/kugoo/kugookirin/social/ForYouFragment;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->isLastData:Z

    return p1
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/social/ForYouFragment;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->limit:I

    return p0
.end method

.method static synthetic access$1000(Lcom/kugoo/kugookirin/social/ForYouFragment;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->hasMsg:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/kugoo/kugookirin/social/ForYouFragment;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->hasMsg:Z

    return p1
.end method

.method static synthetic access$102(Lcom/kugoo/kugookirin/social/ForYouFragment;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->limit:I

    return p1
.end method

.method static synthetic access$1100(Lcom/kugoo/kugookirin/social/ForYouFragment;)Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->forYouAdapter:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    return-object p0
.end method

.method static synthetic access$112(Lcom/kugoo/kugookirin/social/ForYouFragment;I)I
    .locals 1

    .line 60
    iget v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->limit:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->limit:I

    return v0
.end method

.method static synthetic access$1202(Lcom/kugoo/kugookirin/social/ForYouFragment;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->arrowFresh:Z

    return p1
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/social/ForYouFragment;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->SIZE:I

    return p0
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/social/ForYouFragment;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->token:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/social/ForYouFragment;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->loginUserId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/social/ForYouFragment;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kugoo/kugookirin/social/ForYouFragment;->getForYouDynamics(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/social/ForYouFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->mListData:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lcom/kugoo/kugookirin/social/ForYouFragment;)Landroid/content/SharedPreferences;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->preferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$800(Lcom/kugoo/kugookirin/social/ForYouFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/ForYouFragment;->getNewMsg()V

    return-void
.end method

.method static synthetic access$900(Lcom/kugoo/kugookirin/social/ForYouFragment;)Landroid/os/Handler;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getForYouDynamics(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7

    .line 344
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    .line 345
    iget-object v2, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->loginUserId:Ljava/lang/String;

    const-string v5, "Discover"

    const-string v6, "1"

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/kugoo/kugookirin/utils/NetLink;->getForYouDynamics(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 346
    new-instance p2, Lcom/kugoo/kugookirin/social/ForYouFragment$8;

    invoke-direct {p2, p0, p4}, Lcom/kugoo/kugookirin/social/ForYouFragment$8;-><init>(Lcom/kugoo/kugookirin/social/ForYouFragment;I)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private getNewMsg()V
    .locals 8

    .line 300
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 302
    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->DYNAMIC_URL:Ljava/lang/String;

    const-string v0, "uid"

    .line 303
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->loginUserId:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "method"

    const-string v1, "selectMessages"

    .line 304
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key"

    .line 305
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    new-instance v7, Lcom/kugoo/kugookirin/social/ForYouFragment$7;

    const/4 v2, 0x1

    new-instance v4, Lcom/kugoo/kugookirin/social/ForYouFragment$5;

    invoke-direct {v4, p0}, Lcom/kugoo/kugookirin/social/ForYouFragment$5;-><init>(Lcom/kugoo/kugookirin/social/ForYouFragment;)V

    new-instance v5, Lcom/kugoo/kugookirin/social/ForYouFragment$6;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/social/ForYouFragment$6;-><init>(Lcom/kugoo/kugookirin/social/ForYouFragment;)V

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/social/ForYouFragment$7;-><init>(Lcom/kugoo/kugookirin/social/ForYouFragment;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 328
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/ForYouFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private loginDialog()V
    .locals 3

    .line 244
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/ForYouFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f13046d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d00c3

    .line 245
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const/4 v1, 0x0

    .line 246
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 247
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const v1, 0x7f0a0348

    .line 248
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/ForYouFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/social/ForYouFragment$2;-><init>(Lcom/kugoo/kugookirin/social/ForYouFragment;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0349

    .line 254
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/ForYouFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/social/ForYouFragment$3;-><init>(Lcom/kugoo/kugookirin/social/ForYouFragment;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance()Lcom/kugoo/kugookirin/social/ForYouFragment;
    .locals 1

    .line 97
    new-instance v0, Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-direct {v0}, Lcom/kugoo/kugookirin/social/ForYouFragment;-><init>()V

    return-object v0
.end method

.method private setAdapter()V
    .locals 3

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->mListData:Ljava/util/ArrayList;

    .line 187
    new-instance v0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/ForYouFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->mListData:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->forYouAdapter:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    .line 188
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->forYouCv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 190
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 192
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 193
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 194
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->forYouCv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 196
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->forYouRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lcom/kugoo/kugookirin/social/ForYouFragment$1;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/social/ForYouFragment$1;-><init>(Lcom/kugoo/kugookirin/social/ForYouFragment;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0395,
            0x7f0a0464
        }
    .end annotation

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0395

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a0464

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->isLogin:Z

    if-eqz p1, :cond_1

    .line 228
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/ForYouFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/kugoo/kugookirin/social/PublishActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/ForYouFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 230
    :cond_1
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/ForYouFragment;->loginDialog()V

    goto :goto_0

    .line 234
    :cond_2
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->isLogin:Z

    if-eqz p1, :cond_3

    .line 235
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/ForYouFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/kugoo/kugookirin/social/InfoHintActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/ForYouFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 237
    :cond_3
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/ForYouFragment;->loginDialog()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 109
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d009c

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 117
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 118
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/ForYouFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->parentActivity:Landroid/app/Activity;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 181
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 182
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 284
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    const/16 v0, 0x65

    if-eqz p1, :cond_0

    .line 287
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 289
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 175
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 176
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 132
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 133
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->loginUserId:Ljava/lang/String;

    .line 134
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->token:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->isLogin:Z

    if-nez v0, :cond_0

    .line 140
    iput-boolean v2, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->hasMsg:Z

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 147
    :goto_0
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->arrowFresh:Z

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 149
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->token:Ljava/lang/String;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->loginUserId:Ljava/lang/String;

    iget v3, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->limit:I

    iget v4, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->SIZE:I

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/kugoo/kugookirin/social/ForYouFragment;->getForYouDynamics(Ljava/lang/String;Ljava/lang/String;II)V

    .line 151
    :cond_1
    sget v0, Lcom/kugoo/kugookirin/social/ForYouFragment;->freshItemPos:I

    if-ltz v0, :cond_2

    sget-boolean v1, Lcom/kugoo/kugookirin/social/ForYouFragment;->isDeleteItem:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/kugoo/kugookirin/social/ForYouFragment;->publishRefresh:Z

    if-nez v1, :cond_2

    .line 153
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->token:Ljava/lang/String;

    iget-object v3, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->loginUserId:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v0, v4}, Lcom/kugoo/kugookirin/social/ForYouFragment;->getForYouDynamics(Ljava/lang/String;Ljava/lang/String;II)V

    .line 156
    :cond_2
    sget-boolean v0, Lcom/kugoo/kugookirin/social/ForYouFragment;->isDeleteItem:Z

    if-eqz v0, :cond_3

    .line 157
    sput-boolean v2, Lcom/kugoo/kugookirin/social/ForYouFragment;->isDeleteItem:Z

    .line 158
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->mListData:Ljava/util/ArrayList;

    sget v1, Lcom/kugoo/kugookirin/social/ForYouFragment;->freshItemPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->forYouAdapter:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->notifyDataSetChanged()V

    .line 162
    :cond_3
    sget-boolean v0, Lcom/kugoo/kugookirin/social/ForYouFragment;->publishRefresh:Z

    if-eqz v0, :cond_4

    .line 163
    sput-boolean v2, Lcom/kugoo/kugookirin/social/ForYouFragment;->publishRefresh:Z

    .line 164
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->loginUserId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 165
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 166
    iput-boolean v2, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->isLastData:Z

    .line 167
    iput v2, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->limit:I

    .line 168
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->token:Ljava/lang/String;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->loginUserId:Ljava/lang/String;

    iget v3, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->SIZE:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/kugoo/kugookirin/social/ForYouFragment;->getForYouDynamics(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 124
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 125
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->preferences:Landroid/content/SharedPreferences;

    .line 126
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/ForYouFragment;->setAdapter()V

    return-void
.end method

.method public refreshData()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->isLastData:Z

    .line 104
    iput v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->limit:I

    .line 105
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->token:Ljava/lang/String;

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->loginUserId:Ljava/lang/String;

    iget v3, p0, Lcom/kugoo/kugookirin/social/ForYouFragment;->SIZE:I

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/kugoo/kugookirin/social/ForYouFragment;->getForYouDynamics(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
