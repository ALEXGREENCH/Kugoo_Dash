.class public Lcom/kugoo/kugookirin/social/InfoHintActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "InfoHintActivity.java"

# interfaces
.implements Lcom/kugoo/kugookirin/utils/SwipeMenuBuilder;


# static fields
.field private static TAG:Ljava/lang/String; = "com.kugoo.kugookirin.social.InfoHintActivity"


# instance fields
.field private LIMIT:I

.field private SIZE:I

.field circleBarImage:Landroid/widget/ImageView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a02d3
    .end annotation
.end field

.field circleBarTitle:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a05e8
    .end annotation
.end field

.field circleGoBack:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0106
    .end annotation
.end field

.field circlePublierBtn:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a05df
    .end annotation
.end field

.field imgRight:Landroid/widget/ImageView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a02d2
    .end annotation
.end field

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOnSwipeItemClickListener:Lcom/kugoo/kugookirin/view/SwipeMenuView$OnMenuItemClickListener;

.field messageContent:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0396
    .end annotation
.end field

.field messageRv:Lcom/kugoo/kugookirin/view/SwapRecyclerView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0398
    .end annotation
.end field

.field private msgAdapter:Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;

.field private msgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/HintInfoList$MessageList;",
            ">;"
        }
    .end annotation
.end field

.field noDataView:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a03ff
    .end annotation
.end field

.field private pos:I

.field private userID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity;->mHashMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity;->LIMIT:I

    const/16 v0, 0xc

    .line 82
    iput v0, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity;->SIZE:I

    .line 131
    new-instance v0, Lcom/kugoo/kugookirin/social/InfoHintActivity$1;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/social/InfoHintActivity$1;-><init>(Lcom/kugoo/kugookirin/social/InfoHintActivity;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity;->mOnSwipeItemClickListener:Lcom/kugoo/kugookirin/view/SwipeMenuView$OnMenuItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/social/InfoHintActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity;->msgList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/social/InfoHintActivity;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity;->userID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/social/InfoHintActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/kugoo/kugookirin/social/InfoHintActivity;->deleteSingleInfo(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/social/InfoHintActivity;)Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity;->msgAdapter:Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;

    return-object p0
.end method

.method private deleteAllInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 169
    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->DYNAMIC_URL:Ljava/lang/String;

    .line 170
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "uid"

    .line 171
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "type"

    .line 172
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "method"

    const-string p2, "deleteAllMessages"

    .line 173
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 174
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-instance p1, Lcom/kugoo/kugookirin/social/InfoHintActivity$4;

    const/4 v2, 0x1

    new-instance v4, Lcom/kugoo/kugookirin/social/InfoHintActivity$2;

    invoke-direct {v4, p0}, Lcom/kugoo/kugookirin/social/InfoHintActivity$2;-><init>(Lcom/kugoo/kugookirin/social/InfoHintActivity;)V

    new-instance v5, Lcom/kugoo/kugookirin/social/InfoHintActivity$3;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/social/InfoHintActivity$3;-><init>(Lcom/kugoo/kugookirin/social/InfoHintActivity;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/social/InfoHintActivity$4;-><init>(Lcom/kugoo/kugookirin/social/InfoHintActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 202
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/InfoHintActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private deleteSingleInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 212
    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->DYNAMIC_URL:Ljava/lang/String;

    .line 213
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "uid"

    .line 214
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "mid"

    .line 215
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "method"

    const-string p2, "deleteOneMessage"

    .line 216
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 217
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-instance p1, Lcom/kugoo/kugookirin/social/InfoHintActivity$7;

    const/4 v2, 0x1

    new-instance v4, Lcom/kugoo/kugookirin/social/InfoHintActivity$5;

    invoke-direct {v4, p0, p3}, Lcom/kugoo/kugookirin/social/InfoHintActivity$5;-><init>(Lcom/kugoo/kugookirin/social/InfoHintActivity;I)V

    new-instance v5, Lcom/kugoo/kugookirin/social/InfoHintActivity$6;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/social/InfoHintActivity$6;-><init>(Lcom/kugoo/kugookirin/social/InfoHintActivity;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/social/InfoHintActivity$7;-><init>(Lcom/kugoo/kugookirin/social/InfoHintActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 243
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/InfoHintActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private getInfoHintList(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6

    .line 255
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    const-string v5, "messageList"

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 256
    invoke-interface/range {v0 .. v5}, Lcom/kugoo/kugookirin/utils/NetLink;->getInfoHint(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 257
    new-instance p2, Lcom/kugoo/kugookirin/social/InfoHintActivity$8;

    invoke-direct {p2, p0}, Lcom/kugoo/kugookirin/social/InfoHintActivity$8;-><init>(Lcom/kugoo/kugookirin/social/InfoHintActivity;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 108
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    .line 109
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity;->userID:Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity;->msgList:Ljava/util/ArrayList;

    .line 111
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity;->circleBarTitle:Landroid/widget/TextView;

    const v1, 0x7f120383

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 112
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity;->circlePublierBtn:Landroid/widget/TextView;

    const v1, 0x7f120382

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 113
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity;->circlePublierBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity;->imgRight:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setAdapter()V
    .locals 4

    .line 118
    new-instance v0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity;->msgList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p0}, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity;->msgAdapter:Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;

    .line 120
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity;->messageRv:Lcom/kugoo/kugookirin/view/SwapRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 121
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity;->messageRv:Lcom/kugoo/kugookirin/view/SwapRecyclerView;

    new-instance v1, Lcom/kugoo/kugookirin/utils/DividerItemDecoration;

    invoke-direct {v1, p0, v3}, Lcom/kugoo/kugookirin/utils/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 123
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity;->messageRv:Lcom/kugoo/kugookirin/view/SwapRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 124
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity;->messageRv:Lcom/kugoo/kugookirin/view/SwapRecyclerView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity;->msgAdapter:Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 101
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/InfoHintActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/InfoHintActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public create()Lcom/kugoo/kugookirin/view/SwipeMenuView;
    .locals 5

    .line 288
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;-><init>(Landroid/content/Context;)V

    .line 289
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x42480000    # 50.0f

    .line 291
    invoke-static {v2}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->setWidth(I)Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, 0x7f060278

    .line 292
    invoke-virtual {p0, v4}, Lcom/kugoo/kugookirin/social/InfoHintActivity;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;

    move-result-object v2

    const v3, 0x7f0f0117

    .line 293
    invoke-virtual {p0, v3}, Lcom/kugoo/kugookirin/social/InfoHintActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;

    .line 295
    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;->addMenuItem(Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;)V

    .line 297
    new-instance v1, Lcom/kugoo/kugookirin/view/SwipeMenuView;

    invoke-direct {v1, v0}, Lcom/kugoo/kugookirin/view/SwipeMenuView;-><init>(Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;)V

    .line 299
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity;->mOnSwipeItemClickListener:Lcom/kugoo/kugookirin/view/SwipeMenuView$OnMenuItemClickListener;

    invoke-virtual {v1, v0}, Lcom/kugoo/kugookirin/view/SwipeMenuView;->setOnMenuItemClickListener(Lcom/kugoo/kugookirin/view/SwipeMenuView$OnMenuItemClickListener;)V

    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f0a02d3,
            0x7f0a05df
        }
    .end annotation

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a02d3

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a05df

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity;->msgList:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 150
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity;->userID:Ljava/lang/String;

    const-string v0, "all"

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/social/InfoHintActivity;->deleteAllInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/InfoHintActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 88
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0034

    .line 89
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/InfoHintActivity;->setContentView(I)V

    .line 90
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/MyApplication;->addActivity(Landroid/app/Activity;)V

    .line 91
    invoke-static {p0}, Lcom/lidroid/xutils/ViewUtils;->inject(Landroid/app/Activity;)V

    .line 93
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/InfoHintActivity;->initView()V

    .line 94
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/InfoHintActivity;->setAdapter()V

    .line 95
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity;->userID:Ljava/lang/String;

    const/16 v0, 0x64

    const-string v1, "all"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/kugoo/kugookirin/social/InfoHintActivity;->getInfoHintList(Ljava/lang/String;IILjava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/InfoHintActivity;->showDefaultUi()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 158
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method
