.class public Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "VehicleListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;,
        Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$OnShowVehicleDetailView;,
        Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$OnShowNoneVehicleView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final STYLE_BIKE:I

.field private final STYLE_SCOOTER:I

.field private final TAG:Ljava/lang/String;

.field private fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private fragmentTransaction:Landroidx/fragment/app/FragmentTransaction;

.field private mContext:Landroid/content/Context;

.field private onShowVehicleDetailView:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$OnShowVehicleDetailView;

.field private onVehicleChangeListener:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$OnShowNoneVehicleView;

.field private vehicleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;",
            ">;",
            "Landroid/content/Context;",
            "Landroidx/fragment/app/FragmentManager;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->TAG:Ljava/lang/String;

    const/16 v0, 0xa

    .line 53
    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->STYLE_SCOOTER:I

    const/16 v0, 0xb

    .line 54
    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->STYLE_BIKE:I

    .line 57
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->vehicleList:Ljava/util/ArrayList;

    .line 58
    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->mContext:Landroid/content/Context;

    .line 59
    iput-object p3, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->delTipDialog(Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->vehicleList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;)Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$OnShowVehicleDetailView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->onShowVehicleDetailView:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$OnShowVehicleDetailView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->delVehicleInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;)Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$OnShowNoneVehicleView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->onVehicleChangeListener:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$OnShowNoneVehicleView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private delTipDialog(Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;)V
    .locals 4

    .line 171
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f13046d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 172
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0065

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 173
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v1, 0x7f0a00cd

    .line 175
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$4;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$4;-><init>(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0418

    .line 181
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$5;-><init>(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 194
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 195
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private delVehicleInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 244
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->TAG:Ljava/lang/String;

    const-string v1, "delVehicleInfo: \u5220\u9664\u8fde\u8f66\u4fe1\u606f"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 246
    sget-object v5, Lcom/kugoo/kugookirin/utils/Constants;->USER_URL:Ljava/lang/String;

    .line 247
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "token"

    .line 248
    invoke-virtual {v8, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mac"

    .line 249
    invoke-virtual {v8, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vehicle_model"

    .line 250
    invoke-virtual {v8, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "method"

    const-string v2, "delete_user_vehicle"

    .line 251
    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key"

    .line 252
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delVehicleInfo: \u8fde\u8f66\u4fe1\u606f\u8be6\u60c5== // token=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " // mac=="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " // vehicle_model=="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance p1, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$8;

    const/4 v4, 0x1

    new-instance v6, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$6;

    invoke-direct {v6, p0}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$6;-><init>(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;)V

    new-instance v7, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$7;

    invoke-direct {v7, p0}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$7;-><init>(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;)V

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$8;-><init>(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 287
    iget-object p2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private getVehicleStyle(Ljava/lang/String;)I
    .locals 4

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xb

    const/16 v2, 0xa

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "kug12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    move v3, v1

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "kug03"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    move v3, v2

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "fmi01"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "b1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "kgkrn23"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_5
    const-string v0, "kgkrn16"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_6
    const-string v0, "kgkrn15"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_7
    const-string v0, "kgkrn14"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_8
    const-string v0, "kgkrn05"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_9
    const-string v0, "kgkrn04"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_a
    const-string v0, "kgkrn03"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_b
    const-string v0, "kgkrn02"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    return v1

    :pswitch_0
    const/16 p1, 0x10

    return p1

    :pswitch_1
    const/16 p1, 0xf

    return p1

    :pswitch_2
    const/16 p1, 0xe

    return p1

    :pswitch_3
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x2de8cbb3 -> :sswitch_b
        -0x2de8cbb2 -> :sswitch_a
        -0x2de8cbb1 -> :sswitch_9
        -0x2de8cbb0 -> :sswitch_8
        -0x2de8cb92 -> :sswitch_7
        -0x2de8cb91 -> :sswitch_6
        -0x2de8cb90 -> :sswitch_5
        -0x2de8cb74 -> :sswitch_4
        0xc0f -> :sswitch_3
        0x5d07a03 -> :sswitch_2
        0x61a8b00 -> :sswitch_1
        0x61a8b1e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->vehicleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 40
    check-cast p1, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;I)V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->vehicleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->vehicleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;

    .line 78
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->getVehicleStyle(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 93
    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;->access$000(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0f000f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 90
    :pswitch_0
    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;->access$000(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0f015a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 87
    :pswitch_1
    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;->access$000(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0f0159

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 84
    :pswitch_2
    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;->access$000(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0f0158

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;->access$000(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0f012e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    :goto_0
    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;->access$100(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->vehicleList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getModel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;->access$300(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$1;-><init>(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;->access$600(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;)Landroid/widget/FrameLayout;

    move-result-object p2

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$2;

    invoke-direct {v1, p0, v0}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$2;-><init>(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;)V

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;->access$600(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;)Landroid/widget/FrameLayout;

    move-result-object p2

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$3;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$3;-><init>(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;)V

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 131
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 132
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getMac()Ljava/lang/String;

    move-result-object p2

    .line 133
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getConnectedAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 135
    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setShowDel(Z)V

    .line 139
    :cond_1
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->isShowDel()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 140
    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;->access$300(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 142
    :cond_2
    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;->access$300(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;
    .locals 2

    .line 66
    iget-object p2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0142

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 67
    new-instance p2, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;-><init>(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnShowNoneVehicleView(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$OnShowNoneVehicleView;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->onVehicleChangeListener:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$OnShowNoneVehicleView;

    return-void
.end method

.method public setOnShowVehicleDetailView(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$OnShowVehicleDetailView;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->onShowVehicleDetailView:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$OnShowVehicleDetailView;

    return-void
.end method
