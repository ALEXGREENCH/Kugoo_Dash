.class Lcom/kugoo/kugookirin/more/MoreFragment$3;
.super Ljava/lang/Object;
.source "MoreFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/more/MoreFragment;->getPersonalData(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/kugoo/kugookirin/bean/UserPageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/more/MoreFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/more/MoreFragment;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/MoreFragment$3;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/kugoo/kugookirin/bean/UserPageInfo;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/kugoo/kugookirin/bean/UserPageInfo;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/kugoo/kugookirin/bean/UserPageInfo;",
            ">;)V"
        }
    .end annotation

    .line 344
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/bean/UserPageInfo;

    if-nez p1, :cond_0

    return-void

    .line 348
    :cond_0
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getStatus()Ljava/lang/String;

    move-result-object p2

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 349
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/MoreFragment$3;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    iget-object p2, p2, Lcom/kugoo/kugookirin/more/MoreFragment;->moreFollowerNum:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getFollowers()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/MoreFragment$3;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    iget-object p2, p2, Lcom/kugoo/kugookirin/more/MoreFragment;->moreFollowingNum:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getFriends()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/MoreFragment$3;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    iget-object p2, p2, Lcom/kugoo/kugookirin/more/MoreFragment;->moreNameTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/MoreFragment$3;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    iget-object p2, p2, Lcom/kugoo/kugookirin/more/MoreFragment;->moreRankingNum:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getRank()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onResponse: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getTotalMileage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "userPageInfo.getTotalMileage()"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/MoreFragment$3;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    iget-object p2, p2, Lcom/kugoo/kugookirin/more/MoreFragment;->moreOdo:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getTotalMileage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getTimelog()Ljava/lang/String;

    move-result-object p2

    .line 359
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment$3;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    iget-object v0, v0, Lcom/kugoo/kugookirin/more/MoreFragment;->moreOdoTime:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/ChangeToHour;->secondToHour(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0xe10

    cmp-long p2, v0, v2

    if-lez p2, :cond_1

    .line 361
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/MoreFragment$3;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    iget-object p2, p2, Lcom/kugoo/kugookirin/more/MoreFragment;->moreOdoTimeUnit:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment$3;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    const v1, 0x7f1203a4

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/more/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 363
    :cond_1
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/MoreFragment$3;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    iget-object p2, p2, Lcom/kugoo/kugookirin/more/MoreFragment;->moreOdoTimeUnit:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kugoo/kugookirin/more/MoreFragment$3;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    const v1, 0x7f1203a7

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/more/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    :goto_0
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/MoreFragment$3;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    iget-object p2, p2, Lcom/kugoo/kugookirin/more/MoreFragment;->moreMaxSpeed:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getTopSpeed()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/MoreFragment$3;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    iget-object p2, p2, Lcom/kugoo/kugookirin/more/MoreFragment;->moreLevel:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LV"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getUserLV()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/MoreFragment$3;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    iget-object p2, p2, Lcom/kugoo/kugookirin/more/MoreFragment;->moreCountry:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getNickName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 370
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/MoreFragment$3;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    invoke-static {p2}, Lcom/kugoo/kugookirin/more/MoreFragment;->access$000(Lcom/kugoo/kugookirin/more/MoreFragment;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USERNAME:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 372
    :cond_2
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getGender()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 373
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/MoreFragment$3;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    invoke-static {p2}, Lcom/kugoo/kugookirin/more/MoreFragment;->access$000(Lcom/kugoo/kugookirin/more/MoreFragment;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_SEX:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getGender()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 375
    :cond_3
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getBirthday()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 376
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/MoreFragment$3;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    invoke-static {p2}, Lcom/kugoo/kugookirin/more/MoreFragment;->access$000(Lcom/kugoo/kugookirin/more/MoreFragment;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_BIRTHDAY:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getBirthday()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 378
    :cond_4
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getWeight()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 379
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/MoreFragment$3;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    invoke-static {p2}, Lcom/kugoo/kugookirin/more/MoreFragment;->access$000(Lcom/kugoo/kugookirin/more/MoreFragment;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_WEIGHT:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getWeight()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 381
    :cond_5
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getHeight()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 382
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/MoreFragment$3;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    invoke-static {p2}, Lcom/kugoo/kugookirin/more/MoreFragment;->access$000(Lcom/kugoo/kugookirin/more/MoreFragment;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_HEIGHT:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getHeight()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 384
    :cond_6
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getCountry()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    const/4 p2, 0x0

    move v0, p2

    .line 385
    :goto_1
    iget-object v1, p0, Lcom/kugoo/kugookirin/more/MoreFragment$3;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    iget-object v1, v1, Lcom/kugoo/kugookirin/more/MoreFragment;->countryList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_8

    .line 386
    iget-object v1, p0, Lcom/kugoo/kugookirin/more/MoreFragment$3;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    iget-object v1, v1, Lcom/kugoo/kugookirin/more/MoreFragment;->countryList:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 387
    iget-object v1, p0, Lcom/kugoo/kugookirin/more/MoreFragment$3;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    iget-object v1, v1, Lcom/kugoo/kugookirin/more/MoreFragment;->moreCountryImg:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 388
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/MoreFragment$3;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    iget-object p2, p2, Lcom/kugoo/kugookirin/more/MoreFragment;->moreCountryImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/MoreFragment$3;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/more/MoreFragment;->access$100(Lcom/kugoo/kugookirin/more/MoreFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 392
    :cond_8
    :goto_2
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/MoreFragment$3;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    invoke-static {p2}, Lcom/kugoo/kugookirin/more/MoreFragment;->access$000(Lcom/kugoo/kugookirin/more/MoreFragment;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_COUNTRY:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 394
    :cond_9
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getFlagUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 395
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/MoreFragment$3;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    invoke-static {p2}, Lcom/kugoo/kugookirin/more/MoreFragment;->access$000(Lcom/kugoo/kugookirin/more/MoreFragment;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_COUNTRY_FLAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getFlagUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 397
    :cond_a
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getProfile()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 398
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/MoreFragment$3;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    invoke-static {p2}, Lcom/kugoo/kugookirin/more/MoreFragment;->access$000(Lcom/kugoo/kugookirin/more/MoreFragment;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_PROFILE:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getProfile()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 400
    :cond_b
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/MoreFragment$3;->this$0:Lcom/kugoo/kugookirin/more/MoreFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/MoreFragment;->access$000(Lcom/kugoo/kugookirin/more/MoreFragment;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_c
    return-void
.end method
