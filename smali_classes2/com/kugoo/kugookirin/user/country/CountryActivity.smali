.class public Lcom/kugoo/kugookirin/user/country/CountryActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CountryActivity.java"


# instance fields
.field TAG:Ljava/lang/String;

.field private adapter:Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;

.field private arrayList_flag:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private characterParserUtil:Lcom/kugoo/kugookirin/user/country/CharacterParserUtil;

.field private countryChangeUtil:Lcom/kugoo/kugookirin/user/country/GetCountryNameSort;

.field private countryPos:I

.field private country_lv_countryList:Landroid/widget/ListView;

.field private dialog:Landroid/widget/TextView;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field imgMore:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02d2
    .end annotation
.end field

.field private mAllCountryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/user/country/CountrySortModel;",
            ">;"
        }
    .end annotation
.end field

.field private pinyinComparator:Lcom/kugoo/kugookirin/user/country/CountryComparator;

.field private position:I

.field private preferences:Landroid/content/SharedPreferences;

.field private sideBar:Lcom/kugoo/kugookirin/user/country/SideBar;

.field private token:Ljava/lang/String;

.field tvRight:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05df
    .end annotation
.end field

.field txtTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05e8
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "CountryActivity"

    .line 44
    iput-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/user/country/CountryActivity;)Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->adapter:Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/user/country/CountryActivity;)Landroid/widget/ListView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->country_lv_countryList:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/user/country/CountryActivity;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->mAllCountryList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/user/country/CountryActivity;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/user/country/CountryActivity;->set_select_ui(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/user/country/CountryActivity;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->position:I

    return p0
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/user/country/CountryActivity;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->editor:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method private getCountryList(II)V
    .locals 11

    .line 167
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/country/CountryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zh"

    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    const/high16 v0, 0x7f030000

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/country/CountryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/country/CountryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 177
    :goto_0
    array-length v0, p1

    move v1, p2

    :goto_1
    if-ge v1, v0, :cond_2

    .line 178
    aget-object v2, p1, v1

    const-string v3, "\\*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 180
    aget-object v9, v2, p2

    const/4 v3, 0x1

    .line 181
    aget-object v7, v2, v3

    .line 182
    iget-object v2, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->characterParserUtil:Lcom/kugoo/kugookirin/user/country/CharacterParserUtil;

    invoke-virtual {v2, v9}, Lcom/kugoo/kugookirin/user/country/CharacterParserUtil;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "countrySortKey=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "countrySortKey"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v3, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->arrayList_flag:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 186
    new-instance v10, Lcom/kugoo/kugookirin/user/country/CountrySortModel;

    const/4 v4, 0x0

    move-object v3, v10

    move-object v6, v9

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/kugoo/kugookirin/user/country/CountrySortModel;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v3, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->countryChangeUtil:Lcom/kugoo/kugookirin/user/country/GetCountryNameSort;

    invoke-virtual {v3, v2}, Lcom/kugoo/kugookirin/user/country/GetCountryNameSort;->getSortLetterBySortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 191
    iget-object v2, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->countryChangeUtil:Lcom/kugoo/kugookirin/user/country/GetCountryNameSort;

    invoke-virtual {v2, v9}, Lcom/kugoo/kugookirin/user/country/GetCountryNameSort;->getSortLetterBySortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    :cond_1
    iput-object v2, v10, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->sortLetters:Ljava/lang/String;

    .line 195
    iget-object v2, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->mAllCountryList:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 198
    :cond_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->mAllCountryList:Ljava/util/List;

    iget-object p2, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->pinyinComparator:Lcom/kugoo/kugookirin/user/country/CountryComparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 200
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->adapter:Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;

    iget-object p2, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->mAllCountryList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;->updateListView(Ljava/util/List;)V

    .line 201
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "changdu"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->mAllCountryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initView()V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->tvRight:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->txtTitle:Landroid/widget/TextView;

    const v2, 0x7f12036b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 101
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->imgMore:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->tvRight:Landroid/widget/TextView;

    const v2, 0x7f1201fe

    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/user/country/CountryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a015a

    .line 104
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/user/country/CountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->country_lv_countryList:Landroid/widget/ListView;

    const v0, 0x7f0a0156

    .line 106
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/user/country/CountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->dialog:Landroid/widget/TextView;

    const v0, 0x7f0a015d

    .line 107
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/user/country/CountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/user/country/SideBar;

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->sideBar:Lcom/kugoo/kugookirin/user/country/SideBar;

    .line 108
    iget-object v2, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->dialog:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/kugoo/kugookirin/user/country/SideBar;->setTextView(Landroid/widget/TextView;)V

    .line 110
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->preferences:Landroid/content/SharedPreferences;

    .line 111
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 112
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->token:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_COUNTRY_POS:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->countryPos:I

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->mAllCountryList:Ljava/util/List;

    .line 116
    new-instance v0, Lcom/kugoo/kugookirin/user/country/CountryComparator;

    invoke-direct {v0}, Lcom/kugoo/kugookirin/user/country/CountryComparator;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->pinyinComparator:Lcom/kugoo/kugookirin/user/country/CountryComparator;

    .line 117
    new-instance v0, Lcom/kugoo/kugookirin/user/country/GetCountryNameSort;

    invoke-direct {v0}, Lcom/kugoo/kugookirin/user/country/GetCountryNameSort;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->countryChangeUtil:Lcom/kugoo/kugookirin/user/country/GetCountryNameSort;

    .line 118
    new-instance v0, Lcom/kugoo/kugookirin/user/country/CharacterParserUtil;

    invoke-direct {v0}, Lcom/kugoo/kugookirin/user/country/CharacterParserUtil;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->characterParserUtil:Lcom/kugoo/kugookirin/user/country/CharacterParserUtil;

    .line 119
    invoke-static {}, Lcom/kugoo/kugookirin/user/country/GetFlatList;->getGetFlatList()Lcom/kugoo/kugookirin/user/country/GetFlatList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/user/country/GetFlatList;->save_country_flag()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->arrayList_flag:Ljava/util/ArrayList;

    .line 121
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->mAllCountryList:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->pinyinComparator:Lcom/kugoo/kugookirin/user/country/CountryComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 122
    new-instance v0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->mAllCountryList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->adapter:Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;

    .line 123
    iget-object v1, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->country_lv_countryList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private postCountry(Ljava/lang/String;)V
    .locals 8

    .line 226
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "token"

    .line 227
    iget-object v1, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->token:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    const-string v1, "country"

    .line 228
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "data"

    .line 229
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "method"

    const-string v1, "updateUserInfor"

    .line 230
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key"

    .line 231
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    new-instance v7, Lcom/kugoo/kugookirin/user/country/CountryActivity$5;

    const/4 v2, 0x1

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->USER_URL:Ljava/lang/String;

    new-instance v4, Lcom/kugoo/kugookirin/user/country/CountryActivity$3;

    invoke-direct {v4, p0, p1}, Lcom/kugoo/kugookirin/user/country/CountryActivity$3;-><init>(Lcom/kugoo/kugookirin/user/country/CountryActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/kugoo/kugookirin/user/country/CountryActivity$4;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/user/country/CountryActivity$4;-><init>(Lcom/kugoo/kugookirin/user/country/CountryActivity;)V

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/user/country/CountryActivity$5;-><init>(Lcom/kugoo/kugookirin/user/country/CountryActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 262
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private setListener()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->sideBar:Lcom/kugoo/kugookirin/user/country/SideBar;

    new-instance v1, Lcom/kugoo/kugookirin/user/country/CountryActivity$1;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/user/country/CountryActivity$1;-><init>(Lcom/kugoo/kugookirin/user/country/CountryActivity;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/user/country/SideBar;->setOnTouchingLetterChangedListener(Lcom/kugoo/kugookirin/user/country/SideBar$OnTouchingLetterChangedListener;)V

    .line 141
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->country_lv_countryList:Landroid/widget/ListView;

    new-instance v1, Lcom/kugoo/kugookirin/user/country/CountryActivity$2;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/user/country/CountryActivity$2;-><init>(Lcom/kugoo/kugookirin/user/country/CountryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private set_select_ui(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 153
    :goto_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->mAllCountryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    .line 155
    iput p1, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->position:I

    .line 156
    iget-object v2, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->mAllCountryList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kugoo/kugookirin/user/country/CountrySortModel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->setIs_select(Z)V

    goto :goto_1

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->mAllCountryList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kugoo/kugookirin/user/country/CountrySortModel;

    invoke-virtual {v2, v0}, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->setIs_select(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->country_lv_countryList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 162
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->adapter:Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 91
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/country/CountryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/country/CountryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0061

    .line 78
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/country/CountryActivity;->setContentView(I)V

    .line 79
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 81
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/country/CountryActivity;->initView()V

    .line 82
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/country/CountryActivity;->setListener()V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/user/country/CountryActivity;->getCountryList(II)V

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "pos=="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->countryPos:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "currentPos"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget p1, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->countryPos:I

    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/user/country/CountryActivity;->set_select_ui(I)V

    .line 86
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/country/CountryActivity;->showDefaultUi()V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a02d3,
            0x7f0a05df
        }
    .end annotation

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a02d3

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a05df

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->mAllCountryList:Ljava/util/List;

    iget v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/user/country/CountrySortModel;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->getCountryName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/user/country/CountryActivity;->postCountry(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/country/CountryActivity;->finish()V

    :goto_0
    return-void
.end method
