.class public Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "TrajectoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;,
        Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$onTrajeCheckedChangeListener;
    }
.end annotation


# static fields
.field public static isSelecting:Z


# instance fields
.field private isKMH:Z

.field private mContext:Landroid/content/Context;

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

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$onTrajeCheckedChangeListener;

.field private final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->mList:Ljava/util/List;

    .line 54
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->mHashMap:Ljava/util/HashMap;

    .line 55
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_KMH:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->isKMH:Z

    .line 56
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    .line 57
    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->token:Ljava/lang/String;

    return-void
.end method

.method private DeleteTrackInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 222
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "token"

    .line 223
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "time"

    .line 224
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "method"

    const-string p2, "deleteOne"

    .line 225
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 226
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance p1, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$7;

    const/4 v2, 0x1

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->UPDATE_ACTIVITY_ROUTE:Ljava/lang/String;

    new-instance v4, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$5;

    invoke-direct {v4, p0, p3}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$5;-><init>(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;I)V

    new-instance v5, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$6;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$6;-><init>(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$7;-><init>(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 253
    sget-object p2, Lcom/kugoo/kugookirin/utils/MyApplication;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->mList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;Ljava/lang/String;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->showDeleteRecord(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->token:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->DeleteTrackInfo(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;)Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$onTrajeCheckedChangeListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->mListener:Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$onTrajeCheckedChangeListener;

    return-object p0
.end method

.method private showDeleteRecord(Ljava/lang/String;I)V
    .locals 4

    .line 193
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f13046d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 194
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d007a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v1, 0x7f0a0179

    .line 196
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$4;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$4;-><init>(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;Ljava/lang/String;ILandroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    .line 203
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 204
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18

    move-object/from16 v11, p0

    move/from16 v12, p1

    .line 79
    iget-object v0, v11, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->mHashMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;

    const/4 v2, 0x0

    invoke-direct {v0, v11, v2}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;-><init>(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$1;)V

    .line 81
    iget-object v2, v11, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d00b4

    move-object/from16 v4, p3

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0545

    .line 82
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;->access$102(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v3, 0x7f0a0202

    .line 83
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;->access$202(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v3, 0x7f0a05cf

    .line 84
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;->access$302(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v3, 0x7f0a00c2

    .line 85
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;->access$402(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v3, 0x7f0a05c0

    .line 86
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;->access$502(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v3, 0x7f0a05c6

    .line 87
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;->access$602(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v3, 0x7f0a0488

    .line 88
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;->access$702(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v3, 0x7f0a02f7

    .line 89
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-static {v0, v3}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;->access$802(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 92
    iget-object v3, v11, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->mHashMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, v11, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->mHashMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 96
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;

    :goto_0
    move-object v13, v0

    move-object v14, v2

    .line 99
    iget-object v0, v11, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;

    .line 102
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->getDistance()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    .line 103
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->getTopSpeed()D

    move-result-wide v4

    const-wide v6, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v4, v6

    .line 104
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->getTimeLong()Ljava/lang/String;

    move-result-object v6

    .line 105
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->getStart()Ljava/lang/String;

    move-result-object v7

    .line 106
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->getEnd()Ljava/lang/String;

    move-result-object v8

    .line 108
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->getTime()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/kugoo/kugookirin/utils/ChangeToHour;->changeTimeToDateCN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 109
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->getLocation()Ljava/lang/String;

    move-result-object v10

    .line 110
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->getSuspendArr()Ljava/lang/String;

    move-result-object v15

    .line 113
    invoke-static {v13}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;->access$100(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-static {v13}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;->access$200(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-boolean v1, v11, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->isKMH:Z

    move-object/from16 p3, v14

    const-string v14, "%.1f"

    if-eqz v1, :cond_1

    .line 117
    invoke-static {v13}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;->access$600(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;)Landroid/widget/TextView;

    move-result-object v1

    const v12, 0x7f12037a

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(I)V

    .line 118
    invoke-static {v13}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;->access$500(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v12, v17

    invoke-static {v14, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const/4 v12, 0x1

    .line 120
    invoke-static {v13}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;->access$600(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;)Landroid/widget/TextView;

    move-result-object v1

    const v12, 0x7f12037e

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(I)V

    .line 121
    invoke-static {v13}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;->access$500(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const-wide v16, 0x3fe3d70a3d70a3d7L    # 0.62

    mul-double v16, v16, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v12, v17

    invoke-static {v14, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :goto_1
    invoke-static {v13}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;->access$300(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    sget-boolean v1, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->isSelecting:Z

    const/16 v9, 0x8

    if-eqz v1, :cond_2

    .line 127
    invoke-static {v13}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;->access$400(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    invoke-static {v13}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;->access$800(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    .line 130
    invoke-static {v13}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;->access$800(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 131
    invoke-static {v13}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;->access$400(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    :goto_2
    invoke-static {v13}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;->access$800(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    new-instance v9, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$1;

    invoke-direct {v9, v11, v0}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$1;-><init>(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;)V

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 152
    invoke-static {v13}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;->access$800(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bean/TrackInfoBean$ActivityBean;->isChecked()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 156
    invoke-static {v13}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;->access$400(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;)Landroid/widget/TextView;

    move-result-object v12

    new-instance v14, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$2;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v9, v10

    move-object v10, v15

    invoke-direct/range {v0 .. v10}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$2;-><init>(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-static {v13}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;->access$700(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$traHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$3;

    move/from16 v2, p1

    invoke-direct {v1, v11, v2}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$3;-><init>(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p3
.end method

.method public setOnItemCheckedChangeListener(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$onTrajeCheckedChangeListener;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->mListener:Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$onTrajeCheckedChangeListener;

    return-void
.end method
