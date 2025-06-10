.class public Lcom/kugoo/kugookirin/more/MoreFragment;
.super Landroidx/fragment/app/Fragment;
.source "MoreFragment.java"


# instance fields
.field private arrayList_flag:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field countryList:[Ljava/lang/String;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private inflateView:Landroid/view/View;

.field intent:Landroid/content/Intent;

.field private isLogin:Z

.field private loginUserId:Ljava/lang/String;

.field moreBadgesNum:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a03a2
    .end annotation
.end field

.field moreCountry:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a03a3
    .end annotation
.end field

.field moreCountryImg:Landroid/widget/ImageView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a03a4
    .end annotation
.end field

.field moreFollowerNum:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a03a7
    .end annotation
.end field

.field moreFollowingNum:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a03a9
    .end annotation
.end field

.field moreLevel:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a03aa
    .end annotation
.end field

.field moreMaxSpeed:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a03ab
    .end annotation
.end field

.field moreMaxSpeedUnit:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a03ac
    .end annotation
.end field

.field moreNameTv:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a03ad
    .end annotation
.end field

.field moreOdo:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a03ae
    .end annotation
.end field

.field moreOdoTime:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a03af
    .end annotation
.end field

.field moreOdoTimeUnit:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a03b0
    .end annotation
.end field

.field moreOdoUnit:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a03b1
    .end annotation
.end field

.field morePortrait:Lcom/kugoo/kugookirin/view/CircleImageView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a03b2
    .end annotation
.end field

.field morePostingNum:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a03b3
    .end annotation
.end field

.field moreRankingNum:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a03b4
    .end annotation
.end field

.field private pageDynamic:Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean;

.field private parentActivity:Landroid/app/Activity;

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/more/MoreFragment;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->editor:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/more/MoreFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->arrayList_flag:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getPersonalData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 338
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    const-string v1, "homepageSummarize"

    .line 339
    invoke-interface {v0, p1, p2, v1}, Lcom/kugoo/kugookirin/utils/NetLink;->getUserPagerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 340
    new-instance p2, Lcom/kugoo/kugookirin/more/MoreFragment$3;

    invoke-direct {p2, p0}, Lcom/kugoo/kugookirin/more/MoreFragment$3;-><init>(Lcom/kugoo/kugookirin/more/MoreFragment;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initCountryFlag()V
    .locals 2

    .line 119
    invoke-static {}, Lcom/kugoo/kugookirin/user/country/GetFlatList;->getGetFlatList()Lcom/kugoo/kugookirin/user/country/GetFlatList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/user/country/GetFlatList;->save_country_flag()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->arrayList_flag:Ljava/util/ArrayList;

    .line 120
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/MoreFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->countryList:[Ljava/lang/String;

    return-void
.end method

.method private initEvent()V
    .locals 1

    .line 133
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->preferences:Landroid/content/SharedPreferences;

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private loginDialog()V
    .locals 3

    .line 297
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/MoreFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f13046d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d00c3

    .line 298
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const/4 v1, 0x0

    .line 299
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 300
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const v1, 0x7f0a0348

    .line 301
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/more/MoreFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/more/MoreFragment$1;-><init>(Lcom/kugoo/kugookirin/more/MoreFragment;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0349

    .line 307
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/more/MoreFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/more/MoreFragment$2;-><init>(Lcom/kugoo/kugookirin/more/MoreFragment;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance()Lcom/kugoo/kugookirin/more/MoreFragment;
    .locals 1

    .line 103
    new-instance v0, Lcom/kugoo/kugookirin/more/MoreFragment;

    invoke-direct {v0}, Lcom/kugoo/kugookirin/more/MoreFragment;-><init>()V

    return-object v0
.end method

.method private shareApp()V
    .locals 3

    .line 320
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/*"

    .line 321
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f1201a3

    .line 322
    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/more/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f120233

    .line 323
    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/more/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f120234

    .line 324
    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/more/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/more/MoreFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 127
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 128
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/MoreFragment;->initEvent()V

    .line 129
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/MoreFragment;->initCountryFlag()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f0a0330,
            0x7f0a032d,
            0x7f0a0332,
            0x7f0a007f,
            0x7f0a03ad,
            0x7f0a0329,
            0x7f0a032e,
            0x7f0a032b,
            0x7f0a032c,
            0x7f0a03b2,
            0x7f0a03a6,
            0x7f0a03a8,
            0x7f0a016b,
            0x7f0a032a
        }
    .end annotation

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, ""

    const-string v1, "uid"

    const-string v2, "friendOrFollow"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 283
    :sswitch_0
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->isLogin:Z

    if-eqz p1, :cond_0

    .line 284
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->parentActivity:Landroid/app/Activity;

    const-class v1, Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->intent:Landroid/content/Intent;

    .line 287
    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->HOME_PAGE_ID:Ljava/lang/String;

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->loginUserId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/more/MoreFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/MoreFragment;->loginDialog()V

    goto/16 :goto_0

    .line 274
    :sswitch_1
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->isLogin:Z

    if-eqz p1, :cond_1

    .line 275
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->parentActivity:Landroid/app/Activity;

    const-class v1, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->intent:Landroid/content/Intent;

    .line 276
    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->HOME_PAGE_ID:Ljava/lang/String;

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->loginUserId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/more/MoreFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 279
    :cond_1
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/MoreFragment;->loginDialog()V

    goto/16 :goto_0

    .line 207
    :sswitch_2
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->isLogin:Z

    if-eqz p1, :cond_2

    .line 208
    new-instance p1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->parentActivity:Landroid/app/Activity;

    const-class v4, Lcom/kugoo/kugookirin/social/FriendListActivity;

    invoke-direct {p1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->intent:Landroid/content/Intent;

    const-string v3, "1"

    .line 209
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->preferences:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/more/MoreFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 213
    :cond_2
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/MoreFragment;->loginDialog()V

    goto/16 :goto_0

    .line 217
    :sswitch_3
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->isLogin:Z

    if-eqz p1, :cond_3

    .line 218
    new-instance p1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->parentActivity:Landroid/app/Activity;

    const-class v4, Lcom/kugoo/kugookirin/social/FriendListActivity;

    invoke-direct {p1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->intent:Landroid/content/Intent;

    const-string v3, "2"

    .line 219
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->preferences:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/more/MoreFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 223
    :cond_3
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/MoreFragment;->loginDialog()V

    goto/16 :goto_0

    .line 258
    :sswitch_4
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->parentActivity:Landroid/app/Activity;

    const-class v1, Lcom/kugoo/kugookirin/more/VersionActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/more/MoreFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 247
    :sswitch_5
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->isLogin:Z

    if-eqz p1, :cond_4

    .line 248
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->parentActivity:Landroid/app/Activity;

    const-class v1, Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->intent:Landroid/content/Intent;

    .line 249
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/more/MoreFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 251
    :cond_4
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/MoreFragment;->loginDialog()V

    goto :goto_0

    .line 236
    :sswitch_6
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/MoreFragment;->shareApp()V

    goto :goto_0

    .line 255
    :sswitch_7
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->parentActivity:Landroid/app/Activity;

    const-class v1, Lcom/kugoo/kugookirin/more/ServiceActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/more/MoreFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 227
    :sswitch_8
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/MoreFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/kugoo/kugookirin/more/RankListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/more/MoreFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 233
    :sswitch_9
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->parentActivity:Landroid/app/Activity;

    const-class v1, Lcom/kugoo/kugookirin/more/DarkModeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/more/MoreFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 239
    :sswitch_a
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    .line 240
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "https://t.me/kugoo_app"

    .line 241
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 242
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/MoreFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 262
    :sswitch_b
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->parentActivity:Landroid/app/Activity;

    const-class v1, Lcom/kugoo/kugookirin/more/DarkModeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/more/MoreFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 265
    :sswitch_c
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->isLogin:Z

    if-eqz p1, :cond_5

    .line 266
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->parentActivity:Landroid/app/Activity;

    const-class v1, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->intent:Landroid/content/Intent;

    .line 267
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/more/MoreFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 269
    :cond_5
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/MoreFragment;->loginDialog()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a007f -> :sswitch_c
        0x7f0a016b -> :sswitch_b
        0x7f0a0329 -> :sswitch_a
        0x7f0a032a -> :sswitch_9
        0x7f0a032c -> :sswitch_8
        0x7f0a032d -> :sswitch_7
        0x7f0a032e -> :sswitch_6
        0x7f0a0330 -> :sswitch_5
        0x7f0a0332 -> :sswitch_4
        0x7f0a03a6 -> :sswitch_3
        0x7f0a03a8 -> :sswitch_2
        0x7f0a03ad -> :sswitch_1
        0x7f0a03b2 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 110
    iget-object p3, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->inflateView:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0d00c5

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->inflateView:Landroid/view/View;

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->inflateView:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/lidroid/xutils/ViewUtils;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 114
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/MoreFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->parentActivity:Landroid/app/Activity;

    .line 115
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->inflateView:Landroid/view/View;

    return-object p1
.end method

.method public onResume()V
    .locals 5

    .line 139
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-string v0, "testAllMsg"

    const-string v1, "morefragmentonresume"

    .line 140
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->isLogin:Z

    const-string v1, ""

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->preferences:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object v2, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->preferences:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->loginUserId:Ljava/lang/String;

    .line 149
    invoke-direct {p0, v2, v0}, Lcom/kugoo/kugookirin/more/MoreFragment;->getPersonalData(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->preferences:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USERNAME:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->moreNameTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->preferences:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_PORTRAIT:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "sasasas"

    .line 158
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/kugoo/kugookirin/utils/Constants;->ABSOLUTE_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->morePortrait:Lcom/kugoo/kugookirin/view/CircleImageView;

    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getPortraitImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->preferences:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_COUNTRY_FLAG:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->moreCountryImg:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->moreNameTv:Landroid/widget/TextView;

    const v2, 0x7f120139

    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/more/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->morePortrait:Lcom/kugoo/kugookirin/view/CircleImageView;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/MoreFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kugoo/kugookirin/view/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->moreFollowerNum:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->moreOdoTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->moreFollowingNum:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->moreCountry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->moreLevel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->moreOdo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->moreRankingNum:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->moreBadgesNum:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->moreMaxSpeed:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 3

    .line 192
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 194
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->isLogin:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 195
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->preferences:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment;->preferences:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    .line 196
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/more/MoreFragment;->getPersonalData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
