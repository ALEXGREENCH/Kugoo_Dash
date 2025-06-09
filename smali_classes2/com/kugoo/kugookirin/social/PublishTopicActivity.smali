.class public Lcom/kugoo/kugookirin/social/PublishTopicActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PublishTopicActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final MAXNUM:I = 0x5


# instance fields
.field private final RESULTCODE03:I

.field chipGroupBottom:Lcom/google/android/material/chip/ChipGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00fd
    .end annotation
.end field

.field chipGroupTop:Lcom/google/android/material/chip/ChipGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00fe
    .end annotation
.end field

.field private chipList01:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/chip/Chip;",
            ">;"
        }
    .end annotation
.end field

.field private chipList02:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/chip/Chip;",
            ">;"
        }
    .end annotation
.end field

.field private groupTopNum:I

.field imgRight:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02d2
    .end annotation
.end field

.field imgTopBack:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02d3
    .end annotation
.end field

.field private labelArr:Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;

.field private labelIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private labelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/LabelInfo$ResultList;",
            ">;"
        }
    .end annotation
.end field

.field private labelStrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private newLabelContent:Ljava/lang/String;

.field newTopic:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03ee
    .end annotation
.end field

.field private token:Ljava/lang/String;

.field private topSelectedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/material/chip/Chip;",
            ">;"
        }
    .end annotation
.end field

.field topicEt:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05a7
    .end annotation
.end field

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
    .locals 2

    .line 46
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->groupTopNum:I

    const/16 v0, 0x67

    .line 77
    iput v0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->RESULTCODE03:I

    .line 203
    new-instance v0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kugoo/kugookirin/social/PublishTopicActivity$4;-><init>(Lcom/kugoo/kugookirin/social/PublishTopicActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Ljava/util/HashMap;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->topSelectedMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->chipList01:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->groupTopNum:I

    return p0
.end method

.method static synthetic access$208(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)I
    .locals 2

    .line 46
    iget v0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->groupTopNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->groupTopNum:I

    return v0
.end method

.method static synthetic access$210(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)I
    .locals 2

    .line 46
    iget v0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->groupTopNum:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->groupTopNum:I

    return v0
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->chipList02:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->labelList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->labelArr:Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;

    return-object p0
.end method

.method static synthetic access$602(Lcom/kugoo/kugookirin/social/PublishTopicActivity;Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;)Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->labelArr:Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;

    return-object p1
.end method

.method private getLabelData(Ljava/lang/String;)V
    .locals 2

    .line 178
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    const-string v1, "getLabel"

    .line 179
    invoke-interface {v0, p1, v1}, Lcom/kugoo/kugookirin/utils/NetLink;->getLabel(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 180
    new-instance v0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$3;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/social/PublishTopicActivity$3;-><init>(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private postNewLabel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 313
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    const-string v1, "addLabel"

    .line 314
    invoke-interface {v0, p1, p2, v1}, Lcom/kugoo/kugookirin/utils/NetLink;->AddLabel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 315
    new-instance p2, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;

    invoke-direct {p2, p0}, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;-><init>(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private setLabelIntent(Ljava/lang/String;)V
    .locals 2

    .line 246
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "labelIDArray"

    .line 247
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "labelTxtArray"

    .line 248
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->labelStrList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/16 p1, 0x67

    .line 249
    invoke-virtual {p0, p1, v0}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->setResult(ILandroid/content/Intent;)V

    .line 250
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->finish()V

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 165
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method private toLabIDArray()V
    .locals 7

    .line 254
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->chipList01:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    move v1, v0

    .line 255
    :goto_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->labelList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "# "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->labelList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kugoo/kugookirin/social/bean/LabelInfo$ResultList;

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/LabelInfo$ResultList;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    move v3, v0

    .line 261
    :goto_1
    iget-object v4, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->chipList01:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 262
    iget-object v4, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->chipList01:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/chip/Chip;

    invoke-virtual {v4}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 263
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 264
    iget-object v5, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->labelStrList:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v4, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->labelIdList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->labelList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kugoo/kugookirin/social/bean/LabelInfo$ResultList;

    invoke-virtual {v5}, Lcom/kugoo/kugookirin/social/bean/LabelInfo$ResultList;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "size=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->chipList01:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   IDset=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->labelIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chipList01"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 296
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->newLabelContent:Ljava/lang/String;

    .line 297
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 298
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->newTopic:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 299
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->newTopic:Landroid/widget/TextView;

    const v0, 0x7f0602f2

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 301
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->newTopic:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 302
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->newTopic:Landroid/widget/TextView;

    const v0, 0x7f0602f7

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 275
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 276
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->toLabIDArray()V

    .line 277
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->labelIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->setLabelIntent(Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a02d3,
            0x7f0a05df,
            0x7f0a03ee
        }
    .end annotation

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a02d3

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a03ee

    if-eq p1, v0, :cond_0

    const v0, 0x7f0a05df

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->newLabelContent:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 239
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->token:Ljava/lang/String;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->newLabelContent:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->postNewLabel(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_1
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->toLabIDArray()V

    .line 235
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->labelIdList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->setLabelIntent(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 82
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0042

    .line 83
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->setContentView(I)V

    .line 84
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 86
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->imgRight:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->tvRight:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->txtTitle:Landroid/widget/TextView;

    const v0, 0x7f120356

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 90
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->labelList:Ljava/util/ArrayList;

    .line 91
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->chipList02:Ljava/util/ArrayList;

    .line 92
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->chipList01:Ljava/util/ArrayList;

    .line 93
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->labelIdList:Ljava/util/ArrayList;

    .line 94
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->labelStrList:Ljava/util/ArrayList;

    .line 95
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->topSelectedMap:Ljava/util/HashMap;

    .line 96
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    .line 97
    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->token:Ljava/lang/String;

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->token:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->getLabelData(Ljava/lang/String;)V

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->chipGroupTop:Lcom/google/android/material/chip/ChipGroup;

    new-instance v0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$1;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/social/PublishTopicActivity$1;-><init>(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/chip/ChipGroup;->setOnCheckedChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;)V

    .line 122
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->chipGroupBottom:Lcom/google/android/material/chip/ChipGroup;

    new-instance v0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$2;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/social/PublishTopicActivity$2;-><init>(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/chip/ChipGroup;->setOnCheckedChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;)V

    .line 159
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->topicEt:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 160
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->showDefaultUi()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 225
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 226
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
