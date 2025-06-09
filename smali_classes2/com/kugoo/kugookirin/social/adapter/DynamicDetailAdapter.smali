.class public Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DynamicDetailAdapter.java"

# interfaces
.implements Lcom/kugoo/kugookirin/social/DynamicDetailActivity$onDetailMessageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$onOperateListener;,
        Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;",
        ">;",
        "Lcom/kugoo/kugookirin/social/DynamicDetailActivity$onDetailMessageListener;"
    }
.end annotation


# instance fields
.field private final TYPE_HEAD:I

.field private final TYPE_ITEM:I

.field private dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

.field private final dynamicID:Ljava/lang/String;

.field private final dynamicUID:Ljava/lang/String;

.field private final loginID:Ljava/lang/String;

.field private final loginPicUrl:Ljava/lang/String;

.field mCommentData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$onOperateListener;

.field private nickName:Ljava/lang/String;

.field private final preferences:Landroid/content/SharedPreferences;

.field private shareDContent1:Ljava/lang/String;

.field private shareName02:Ljava/lang/String;

.field private toName:Ljava/lang/String;

.field private toUID:Ljava/lang/String;

.field private final userName:Ljava/lang/String;

.field private final userToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;)V
    .locals 3

    .line 86
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 69
    iput v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->TYPE_HEAD:I

    const/4 v0, 0x2

    .line 70
    iput v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->TYPE_ITEM:I

    const-string v0, ""

    .line 77
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->toUID:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->mContext:Landroid/content/Context;

    .line 88
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->preferences:Landroid/content/SharedPreferences;

    .line 89
    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    .line 92
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getCommentArr()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->mCommentData:Ljava/util/ArrayList;

    .line 93
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicID:Ljava/lang/String;

    .line 94
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getUid()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicUID:Ljava/lang/String;

    const-string p2, "\u4e0d\u4e3a\u7a7a"

    const-string v1, "\u67e5\u770b\u8bc4\u8bba\u6216\u70b9\u8d5e\u8be6\u60c5"

    .line 95
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "size=="

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->mCommentData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->loginID:Ljava/lang/String;

    .line 99
    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_PORTRAIT:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->loginPicUrl:Ljava/lang/String;

    .line 100
    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USERNAME:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->userName:Ljava/lang/String;

    .line 101
    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->userToken:Ljava/lang/String;

    .line 102
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-virtual {p1, p0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->setOnEditTextSendListener(Lcom/kugoo/kugookirin/social/DynamicDetailActivity$onDetailMessageListener;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->toUID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->toUID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->toName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->toName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->loginID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$onOperateListener;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->mListener:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$onOperateListener;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->deleteDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->userToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->deleteComment(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->postDynamicData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->loginPicUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->userName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dealFabulousDynamics(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Landroid/content/Context;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    return-object p0
.end method

.method private dealFabulousDynamics(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "fabulousNum"

    .line 860
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 861
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->setFabulousNum(Ljava/lang/String;)V

    const-string p1, "0"

    .line 863
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "6"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "4"

    .line 865
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 866
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    const-string p2, "N"

    invoke-virtual {p1, p2}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->setFabulous(Ljava/lang/String;)V

    goto :goto_1

    .line 864
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    const-string p2, "Y"

    invoke-virtual {p1, p2}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->setFabulous(Ljava/lang/String;)V

    .line 868
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private dealGrideView(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;I)V
    .locals 5

    .line 410
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getPictureUrl()Ljava/util/ArrayList;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getPictureUrlThumbnail()Ljava/util/ArrayList;

    move-result-object v1

    .line 414
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 415
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$3400(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setVisibility(I)V

    .line 416
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    .line 417
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$3400(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setNumColumns(I)V

    goto :goto_0

    .line 419
    :cond_0
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$3400(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setNumColumns(I)V

    .line 421
    :goto_0
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$3400(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object v2

    new-instance v3, Lcom/kugoo/kugookirin/social/adapter/NoScrollGridAdapter;

    iget-object v4, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1, p2}, Lcom/kugoo/kugookirin/social/adapter/NoScrollGridAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-virtual {v2, v3}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 433
    :cond_1
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$3400(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object p2

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setVisibility(I)V

    .line 437
    :goto_1
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$3400(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object p1

    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$6;

    invoke-direct {p2, p0, v0}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$6;-><init>(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {p1, p2}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private deleteComment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "token=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  commentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "21\u5220\u9664\u8bc4\u8bba"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    const-string v1, "deleteComment"

    .line 732
    invoke-interface {v0, p1, p2, v1}, Lcom/kugoo/kugookirin/utils/NetLink;->deleteComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 733
    new-instance v0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$10;

    invoke-direct {v0, p0, p2}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$10;-><init>(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private deleteDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deleteDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f13046d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d007d

    .line 495
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 497
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 498
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v3, 0x51

    .line 499
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v3, -0x1

    .line 500
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x2

    .line 501
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 502
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v1, 0x7f0a01cc

    .line 512
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$7;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$7;-><init>(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a01cb

    .line 523
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$8;

    invoke-direct {p2, p0, v0}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$8;-><init>(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 530
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 531
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private findAndPausePlayer()V
    .locals 0

    return-void
.end method

.method private findAndReleasePlayer()V
    .locals 0

    return-void
.end method

.method private postComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "066   token=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  did="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  toUid=="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "  objectUid=="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "  cContent=="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "hahahha"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    const-string v7, "commentDynamics"

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 680
    invoke-interface/range {v0 .. v7}, Lcom/kugoo/kugookirin/utils/NetLink;->postComments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 681
    new-instance v1, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$9;

    invoke-direct {v1, p0, p5}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$9;-><init>(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private postDynamicData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 769
    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->DYNAMIC_URL:Ljava/lang/String;

    .line 770
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "token"

    .line 773
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "did"

    .line 774
    invoke-virtual {v6, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "method"

    const-string v1, "fabulousDynamics"

    .line 775
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key"

    .line 776
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "token=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  did=="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "serchPost"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    new-instance p1, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$13;

    const/4 v2, 0x1

    new-instance v4, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$11;

    invoke-direct {v4, p0}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$11;-><init>(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)V

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$12;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$12;-><init>(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$13;-><init>(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 806
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private postShareData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 813
    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->DYNAMIC_URL:Ljava/lang/String;

    .line 814
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "sharingDynamics"

    .line 816
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "token"

    .line 817
    invoke-virtual {v6, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "shareDid"

    .line 818
    invoke-virtual {v6, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "method"

    .line 819
    invoke-virtual {v6, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 820
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    :cond_0
    new-instance p1, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$16;

    const/4 v2, 0x1

    new-instance v4, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$14;

    invoke-direct {v4, p0, p2}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$14;-><init>(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Ljava/lang/String;)V

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$15;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$15;-><init>(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$16;-><init>(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 855
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private setLabelStr(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;)V
    .locals 4

    .line 476
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getLabelStr()Ljava/util/ArrayList;

    move-result-object p2

    .line 477
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 479
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-nez v1, :cond_0

    const-string v2, "# "

    .line 481
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v2, "  # "

    .line 483
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 486
    :cond_1
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$3500(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 488
    :cond_2
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$3500(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public activityFinish()V
    .locals 0

    .line 576
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->findAndReleasePlayer()V

    return-void
.end method

.method public activityPause()V
    .locals 0

    .line 571
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->findAndPausePlayer()V

    return-void
.end method

.method public editString(Ljava/lang/String;)V
    .locals 9

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   toUID=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->toUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hahahha"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v3, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->userToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicID:Ljava/lang/String;

    iget-object v5, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicUID:Ljava/lang/String;

    iget-object v6, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->toUID:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v7, 0x3e8

    div-long/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->postComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getItemCount()I
    .locals 3

    .line 458
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->mCommentData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 459
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u67e5\u770b\u8bc4\u8bba\u6216\u70b9\u8d5e\u8be6\u60c5"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method protected imageBrowser(ILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 465
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->findAndPausePlayer()V

    .line 467
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/kugoo/kugookirin/social/ImagePagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "image_urls"

    .line 469
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p2

    const/high16 v1, 0x10000000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "image_index"

    .line 470
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 471
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 66
    check-cast p1, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;

    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;I)V
    .locals 8

    .line 121
    invoke-virtual {p0, p2}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v0, v3, :cond_9

    .line 124
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/kugoo/kugookirin/utils/Constants;->ABSOLUTE_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getPortraitUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$000(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Lcom/kugoo/kugookirin/view/CircleImageView;

    move-result-object v4

    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getPortraitImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v5

    .line 124
    invoke-virtual {v0, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 127
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getNickName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->nickName:Ljava/lang/String;

    .line 128
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$100(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getReleaseTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 130
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$200(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v5, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v5}, Lcom/kugoo/kugookirin/utils/ChangeToHour;->getTimeGap(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$300(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u00b7"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getFlagUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/kugoo/kugookirin/utils/Constants;->FLAG_PIC_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getFlagUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$400(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v5

    .line 137
    invoke-virtual {v0, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_0

    .line 140
    :cond_1
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$400(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    :goto_0
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$000(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Lcom/kugoo/kugookirin/view/CircleImageView;

    move-result-object v0

    new-instance v3, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$1;

    invoke-direct {v3, p0}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$1;-><init>(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)V

    invoke-virtual {v0, v3}, Lcom/kugoo/kugookirin/view/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getDContent()Ljava/lang/String;

    move-result-object v0

    .line 154
    iget-object v3, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getSharestatus()Ljava/lang/String;

    .line 155
    iget-object v3, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getLabelStr()Ljava/util/ArrayList;

    .line 156
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$700(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    :cond_2
    iget-object v3, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-direct {p0, p1, v3}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->setLabelStr(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;)V

    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 165
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$800(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :cond_3
    iget-object v3, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getLocation()Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 170
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$900(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$900(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 173
    :cond_4
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$900(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    :goto_1
    iget-object v3, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getComment()Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$1000(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/ImageView;

    move-result-object v4

    const-string v5, "Y"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 179
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$1100(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getCommentNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v3, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getFabulous()Ljava/lang/String;

    move-result-object v3

    .line 183
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$1200(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 184
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$1300(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getFabulousNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$1400(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getIfShare()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 188
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$1500(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getShareTimes()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v3, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getPictureUrl()Ljava/util/ArrayList;

    move-result-object v3

    .line 191
    iget-object v4, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getPictureUrlThumbnail()Ljava/util/ArrayList;

    .line 192
    iget-object v4, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getVideoUrl()Ljava/lang/String;

    .line 197
    iget-object v4, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getSharestatus()Ljava/lang/String;

    move-result-object v4

    const-string v5, "no"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 198
    :cond_5
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$1600(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 201
    :cond_6
    iget-object v3, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getSharestatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 203
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$1700(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 204
    iget-object v3, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dynamicArrEntity:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getOrgdynamics()Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$OrgdynamicsBean;

    move-result-object v3

    .line 205
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$OrgdynamicsBean;->getDContent()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->shareDContent1:Ljava/lang/String;

    .line 206
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$OrgdynamicsBean;->getNickName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->shareName02:Ljava/lang/String;

    .line 208
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$1800(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->shareDContent1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$1900(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->shareName02:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$OrgdynamicsBean;->getThumbUrl()Ljava/lang/String;

    move-result-object v4

    .line 213
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "pos=="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "  thumbUrl=="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "  content=="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "saisasja"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, ","

    .line 216
    invoke-virtual {v4, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 217
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$2000(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Lcom/kugoo/kugookirin/view/GridImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/GridImageView;->setVisibility(I)V

    .line 218
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/kugoo/kugookirin/utils/Constants;->ABSOLUTE_URL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object p2, p2, v1

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 219
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$2000(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Lcom/kugoo/kugookirin/view/GridImageView;

    move-result-object v1

    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    .line 218
    invoke-virtual {v0, p2, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_2

    .line 221
    :cond_7
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$2000(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Lcom/kugoo/kugookirin/view/GridImageView;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/kugoo/kugookirin/view/GridImageView;->setVisibility(I)V

    .line 223
    :goto_2
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$1700(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/RelativeLayout;

    move-result-object p2

    new-instance v0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$2;

    invoke-direct {v0, p0, v3}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$2;-><init>(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$OrgdynamicsBean;)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 238
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->dealGrideView(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;I)V

    .line 242
    :goto_3
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$2100(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/LinearLayout;

    move-result-object p1

    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$3;

    invoke-direct {p2, p0}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$3;-><init>(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    :cond_9
    const/4 v4, 0x2

    if-ne v0, v4, :cond_b

    sub-int/2addr p2, v3

    .line 308
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->mCommentData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;

    .line 310
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$2200(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->getCommentTime()J

    move-result-wide v5

    iget-object v7, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v7}, Lcom/kugoo/kugookirin/utils/ChangeToHour;->getTimeGap(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$2300(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->getNickName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/kugoo/kugookirin/utils/Constants;->ABSOLUTE_URL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->getPortraitUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 313
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$2400(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Lcom/kugoo/kugookirin/view/CircleImageView;

    move-result-object v6

    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getPortraitImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v7

    .line 312
    invoke-virtual {v4, v5, v6, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 315
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$2400(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Lcom/kugoo/kugookirin/view/CircleImageView;

    move-result-object v4

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$4;

    invoke-direct {v5, p0, v0}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$4;-><init>(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;)V

    invoke-virtual {v4, v5}, Lcom/kugoo/kugookirin/view/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getTonickName=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->getTonickName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "hahahha"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->getTonickName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 327
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$2500(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$2600(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->getTonickName()Ljava/lang/String;

    move-result-object v2

    .line 332
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->getCContent()Ljava/lang/String;

    move-result-object v0

    .line 334
    new-instance v4, Landroid/text/SpannableString;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "@"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f06020f

    invoke-static {v0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 340
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    const/16 v2, 0x21

    invoke-virtual {v4, v5, v1, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 341
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$2700(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 345
    :cond_a
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$2500(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$2600(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$2700(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->getCContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    :goto_4
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;->access$3300(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;)Landroid/widget/LinearLayout;

    move-result-object p1

    new-instance v0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$5;

    invoke-direct {v0, p0, p2}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$5;-><init>(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    :goto_5
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d00be

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d00b1

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 115
    :goto_0
    new-instance v0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;

    invoke-direct {v0, p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;-><init>(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Landroid/view/View;I)V

    return-object v0
.end method

.method public setOnOperateListener(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$onOperateListener;)V
    .locals 0

    .line 665
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->mListener:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$onOperateListener;

    return-void
.end method
