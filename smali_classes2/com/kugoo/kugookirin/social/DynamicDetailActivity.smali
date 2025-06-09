.class public Lcom/kugoo/kugookirin/social/DynamicDetailActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DynamicDetailActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/DynamicDetailActivity$onDetailMessageListener;
    }
.end annotation


# instance fields
.field private LIMIT:I

.field private SIZE:I

.field private avatarUrl:Ljava/lang/String;

.field circleGoBack:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0106
    .end annotation
.end field

.field private commentArr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;",
            ">;"
        }
    .end annotation
.end field

.field commentRv:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0133
    .end annotation
.end field

.field deleteDynBtn:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0178
    .end annotation
.end field

.field private detailAdapter:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

.field detailRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01a9
    .end annotation
.end field

.field private dynamicArr:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

.field private dynamicID:Ljava/lang/String;

.field private dynamicUID:Ljava/lang/String;

.field private etSendListener:Lcom/kugoo/kugookirin/social/DynamicDetailActivity$onDetailMessageListener;

.field private fragmentType:Ljava/lang/String;

.field inputConfirmBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02e0
    .end annotation
.end field

.field inputEt:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02e2
    .end annotation
.end field

.field inputImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02e3
    .end annotation
.end field

.field inputLiner:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02e4
    .end annotation
.end field

.field private isLastData:Z

.field private mDynamicID:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field noSearchItem:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0406
    .end annotation
.end field

.field private preferences:Landroid/content/SharedPreferences;

.field private token:Ljava/lang/String;

.field private userID:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/16 v0, 0xa

    .line 97
    iput v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->SIZE:I

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->LIMIT:I

    .line 592
    new-instance v0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$18;-><init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->isLastData:Z

    return p0
.end method

.method static synthetic access$002(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->isLastData:Z

    return p1
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->LIMIT:I

    return p0
.end method

.method static synthetic access$1000(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->showBlockUserDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;I)I
    .locals 0

    .line 70
    iput p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->LIMIT:I

    return p1
.end method

.method static synthetic access$1100(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->blockUser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$112(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;I)I
    .locals 1

    .line 70
    iget v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->LIMIT:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->LIMIT:I

    return v0
.end method

.method static synthetic access$1200(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->fragmentType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->deleteDynamic(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->dynamicArr:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;)Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->dynamicArr:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Landroid/os/Handler;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Lcom/kugoo/kugookirin/social/DynamicDetailActivity$onDetailMessageListener;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->etSendListener:Lcom/kugoo/kugookirin/social/DynamicDetailActivity$onDetailMessageListener;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->detailAdapter:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->detailAdapter:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->SIZE:I

    return p0
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->userID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->mDynamicID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct/range {p0 .. p5}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->getDynDetail(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->sendDataToAdapter(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->token:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->dynamicID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->postTipOff(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blockUser(Ljava/lang/String;)V
    .locals 7

    .line 419
    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->DYNAMIC_URL:Ljava/lang/String;

    .line 420
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "method"

    const-string v1, "shield_dynamic"

    .line 421
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "token"

    .line 422
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->token:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uid"

    .line 423
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->userID:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    const-string v1, "shield_user"

    .line 424
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "shield_id"

    .line 425
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 426
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    new-instance p1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$13;

    const/4 v2, 0x1

    new-instance v4, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$11;

    invoke-direct {v4, p0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$11;-><init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)V

    new-instance v5, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$12;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$12;-><init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$13;-><init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 453
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private deleteDynamic(Ljava/lang/String;)V
    .locals 4

    .line 555
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    .line 556
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->DYNAMIC_URL:Ljava/lang/String;

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->token:Ljava/lang/String;

    const-string v3, "deleteDynamic"

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/kugoo/kugookirin/utils/NetLink;->postDeleteDynamic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 557
    new-instance v0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$17;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$17;-><init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private getDynDetail(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 6

    .line 514
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 515
    invoke-interface/range {v0 .. v5}, Lcom/kugoo/kugookirin/utils/NetLink;->getDynDetail(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 516
    new-instance p2, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$16;

    invoke-direct {p2, p0, p3}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$16;-><init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;I)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private postTipOff(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 707
    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->DYNAMIC_URL:Ljava/lang/String;

    .line 708
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "token"

    .line 709
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    .line 710
    invoke-virtual {v6, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "toid"

    .line 711
    invoke-virtual {v6, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sort"

    .line 712
    invoke-virtual {v6, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "method"

    const-string v1, "userReport"

    .line 713
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key"

    .line 714
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "token=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  type=="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  toid=="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  sort=="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "stringRequest_s"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    new-instance p1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$21;

    const/4 v2, 0x1

    new-instance v4, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$19;

    invoke-direct {v4, p0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$19;-><init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)V

    new-instance v5, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$20;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$20;-><init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$21;-><init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 747
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private sendDataToAdapter(Ljava/lang/String;)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->etSendListener:Lcom/kugoo/kugookirin/social/DynamicDetailActivity$onDetailMessageListener;

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content=001="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hahahha"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->etSendListener:Lcom/kugoo/kugookirin/social/DynamicDetailActivity$onDetailMessageListener;

    invoke-interface {v0, p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$onDetailMessageListener;->editString(Ljava/lang/String;)V

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->inputEt:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->commentRv:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x82

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    const-string p1, "input_method"

    .line 240
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 241
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->inputEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private showBlockUserDialog(Ljava/lang/String;)V
    .locals 3

    .line 344
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f13046d

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d0077

    .line 345
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f0a009c

    .line 347
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$9;

    invoke-direct {v2, p0, p1, v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$9;-><init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a009a

    .line 355
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$10;

    invoke-direct {v1, p0, v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$10;-><init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Landroid/app/Dialog;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 362
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 363
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 364
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 226
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method private showDeleteDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 457
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "type=="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "deleteDialog"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    new-instance p2, Landroid/app/Dialog;

    const v0, 0x7f13046d

    invoke-direct {p2, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0d007d

    .line 459
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 461
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x51

    .line 463
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x1

    .line 464
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 465
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 466
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v0, 0x7f0a01cc

    .line 475
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$14;-><init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a01cb

    .line 496
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$15;

    invoke-direct {v0, p0, p2}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$15;-><init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Landroid/app/Dialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 503
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 504
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showTipOffsDialog()V
    .locals 4

    .line 282
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f13046d

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d0081

    .line 283
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 285
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 286
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v3, 0x51

    .line 287
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v3, -0x1

    .line 288
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x2

    .line 289
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 290
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v1, 0x7f0a0494

    .line 292
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$3;-><init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a05d5

    .line 300
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$4;-><init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a05e0

    .line 308
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$5;-><init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a05d4

    .line 316
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$6;-><init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a009b

    .line 324
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$7;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$7;-><init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a05c8

    .line 332
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$8;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$8;-><init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    .line 339
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 340
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 341
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 676
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 677
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->inputConfirmBtn:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 678
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->inputConfirmBtn:Landroid/widget/TextView;

    const v0, 0x7f0602f2

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 680
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->inputConfirmBtn:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 681
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->inputConfirmBtn:Landroid/widget/TextView;

    const v0, 0x7f0602f7

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 624
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 625
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 626
    invoke-static {v0, p1}, Lcom/kugoo/kugookirin/utils/Utils;->isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "input_method"

    .line 627
    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    .line 629
    iget-object v2, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->inputEt:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 630
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 633
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 636
    :cond_1
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 639
    :cond_2
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onBackPressed()V
    .locals 1

    .line 645
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 646
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->etSendListener:Lcom/kugoo/kugookirin/social/DynamicDetailActivity$onDetailMessageListener;

    if-eqz v0, :cond_0

    .line 647
    invoke-interface {v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$onDetailMessageListener;->activityFinish()V

    .line 649
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0106,
            0x7f0a0178,
            0x7f0a02e3,
            0x7f0a02e0
        }
    .end annotation

    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 265
    :sswitch_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->inputEt:Landroid/widget/EditText;

    invoke-virtual {p0, p0, p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->showSoftInputFromWindow(Landroid/app/Activity;Landroid/widget/EditText;)V

    goto :goto_0

    .line 268
    :sswitch_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->inputEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 270
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->sendDataToAdapter(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :sswitch_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->userID:Ljava/lang/String;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->dynamicUID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "dynamic"

    const-string v0, ""

    .line 257
    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->showDeleteDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_0
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->showTipOffsDialog()V

    goto :goto_0

    .line 249
    :sswitch_3
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->etSendListener:Lcom/kugoo/kugookirin/social/DynamicDetailActivity$onDetailMessageListener;

    if-eqz p1, :cond_1

    .line 250
    invoke-interface {p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$onDetailMessageListener;->activityFinish()V

    .line 252
    :cond_1
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->finish()V

    :cond_2
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0106 -> :sswitch_3
        0x7f0a0178 -> :sswitch_2
        0x7f0a02e0 -> :sswitch_1
        0x7f0a02e3 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 110
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002b

    .line 111
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->setContentView(I)V

    .line 112
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 114
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->preferences:Landroid/content/SharedPreferences;

    .line 115
    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->userID:Ljava/lang/String;

    .line 116
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->token:Ljava/lang/String;

    .line 117
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USERNAME:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->userName:Ljava/lang/String;

    .line 118
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_PORTRAIT:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->avatarUrl:Ljava/lang/String;

    .line 121
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 122
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 123
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->commentRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 125
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v0, "infoBundler"

    .line 129
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dynamicUID"

    const-string v2, "dynamicID"

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->dynamicID:Ljava/lang/String;

    .line 132
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->dynamicUID:Ljava/lang/String;

    :cond_0
    const-string v0, "discoveryPageBundler"

    .line 135
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "fragmentType"

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->dynamicID:Ljava/lang/String;

    .line 138
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->dynamicUID:Ljava/lang/String;

    .line 139
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->fragmentType:Ljava/lang/String;

    :cond_1
    const-string v0, "forYouBundler"

    .line 142
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->dynamicID:Ljava/lang/String;

    .line 145
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->dynamicUID:Ljava/lang/String;

    .line 146
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->fragmentType:Ljava/lang/String;

    :cond_2
    const-string v0, "homePageBundler"

    .line 149
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 151
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->dynamicID:Ljava/lang/String;

    .line 152
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->dynamicUID:Ljava/lang/String;

    .line 153
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->fragmentType:Ljava/lang/String;

    .line 156
    :cond_3
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->dynamicID:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 157
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->mDynamicID:Ljava/lang/String;

    .line 161
    :cond_4
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->userID:Ljava/lang/String;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->dynamicUID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 164
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->deleteDynBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 166
    :cond_5
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->deleteDynBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    :goto_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->userID:Ljava/lang/String;

    iget-object v3, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->mDynamicID:Ljava/lang/String;

    iget v4, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->LIMIT:I

    iget v5, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->SIZE:I

    const-string v6, "messageDetails"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->getDynDetail(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 173
    :cond_6
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->inputEt:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 175
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->detailRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$1;-><init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 204
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->inputEt:Landroid/widget/EditText;

    new-instance v0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$2;-><init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 221
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->showDefaultUi()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->etSendListener:Lcom/kugoo/kugookirin/social/DynamicDetailActivity$onDetailMessageListener;

    if-eqz v0, :cond_0

    .line 655
    invoke-interface {v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$onDetailMessageListener;->activityPause()V

    .line 657
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setOnEditTextSendListener(Lcom/kugoo/kugookirin/social/DynamicDetailActivity$onDetailMessageListener;)V
    .locals 0

    .line 696
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->etSendListener:Lcom/kugoo/kugookirin/social/DynamicDetailActivity$onDetailMessageListener;

    return-void
.end method

.method public showSoftInputFromWindow(Landroid/app/Activity;Landroid/widget/EditText;)V
    .locals 1

    const/4 v0, 0x1

    .line 585
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 586
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 587
    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    const-string v0, "input_method"

    .line 588
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    .line 589
    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
