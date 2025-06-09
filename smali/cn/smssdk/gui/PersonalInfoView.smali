.class public Lcn/smssdk/gui/PersonalInfoView;
.super Ljava/lang/Object;
.source "PersonalInfoView.java"


# instance fields
.field private context:Landroid/content/Context;

.field private ivAvatar:Lcom/mob/tools/gui/AsyncImageView;

.field private llPhone:Landroid/widget/LinearLayout;

.field private tvBind:Landroid/widget/TextView;

.field private tvNickname:Landroid/widget/TextView;

.field private tvPhone:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcn/smssdk/gui/PersonalInfoView;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create()Landroid/view/View;
    .locals 5

    .line 33
    iget-object v0, p0, Lcn/smssdk/gui/PersonalInfoView;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcn/smssdk/gui/PersonalInfoView;->context:Landroid/content/Context;

    const-string/jumbo v2, "smssdk_personal_info"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/gui/PersonalInfoView;->view:Landroid/view/View;

    const/16 v1, 0x8

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    invoke-static {}, Lcn/smssdk/gui/util/GUISPDB;->getProfile()Lcn/smssdk/gui/entity/Profile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v1, p0, Lcn/smssdk/gui/PersonalInfoView;->view:Landroid/view/View;

    iget-object v2, p0, Lcn/smssdk/gui/PersonalInfoView;->context:Landroid/content/Context;

    const-string v3, "iv_avatar"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/gui/AsyncImageView;

    .line 43
    iget-object v2, p0, Lcn/smssdk/gui/PersonalInfoView;->context:Landroid/content/Context;

    const/16 v3, 0x1e

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/mob/tools/gui/AsyncImageView;->setRound(F)V

    .line 44
    invoke-virtual {v0}, Lcn/smssdk/gui/entity/Profile;->getAvatar()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/smssdk/gui/PersonalInfoView;->context:Landroid/content/Context;

    const-string/jumbo v4, "smssdk_cp_default_avatar"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/gui/AsyncImageView;->execute(Ljava/lang/String;I)V

    .line 46
    iget-object v1, p0, Lcn/smssdk/gui/PersonalInfoView;->view:Landroid/view/View;

    iget-object v2, p0, Lcn/smssdk/gui/PersonalInfoView;->context:Landroid/content/Context;

    const-string/jumbo v3, "tv_nickname"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/smssdk/gui/entity/Profile;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, p0, Lcn/smssdk/gui/PersonalInfoView;->view:Landroid/view/View;

    iget-object v2, p0, Lcn/smssdk/gui/PersonalInfoView;->context:Landroid/content/Context;

    const-string v3, "ll_phone_container"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    iget-object v1, p0, Lcn/smssdk/gui/PersonalInfoView;->view:Landroid/view/View;

    iget-object v2, p0, Lcn/smssdk/gui/PersonalInfoView;->context:Landroid/content/Context;

    const-string/jumbo v3, "tv_profile_phone"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/smssdk/gui/entity/Profile;->getPhoneNum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcn/smssdk/gui/PersonalInfoView;->view:Landroid/view/View;

    iget-object v1, p0, Lcn/smssdk/gui/PersonalInfoView;->context:Landroid/content/Context;

    const-string/jumbo v2, "tv_profile_rebind"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcn/smssdk/gui/PersonalInfoView;->context:Landroid/content/Context;

    const-string/jumbo v2, "smssdk_rebind_profile"

    .line 52
    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcn/smssdk/gui/PersonalInfoView;->view:Landroid/view/View;

    return-object v0
.end method

.method public updateUI(Lcn/smssdk/gui/entity/Profile;)V
    .locals 7

    .line 58
    iget-object v0, p0, Lcn/smssdk/gui/PersonalInfoView;->view:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcn/smssdk/gui/PersonalInfoView;->context:Landroid/content/Context;

    if-eqz v1, :cond_2

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v2, "iv_avatar"

    .line 61
    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/gui/AsyncImageView;

    .line 62
    iget-object v1, p0, Lcn/smssdk/gui/PersonalInfoView;->context:Landroid/content/Context;

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/AsyncImageView;->setRound(F)V

    const-string/jumbo v1, "tv_profile_rebind"

    const-string v2, "ll_phone_container"

    const-string/jumbo v3, "tv_nickname"

    const-string/jumbo v4, "smssdk_cp_default_avatar"

    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {p1}, Lcn/smssdk/gui/entity/Profile;->getAvatar()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/smssdk/gui/PersonalInfoView;->context:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v5, v4}, Lcom/mob/tools/gui/AsyncImageView;->execute(Ljava/lang/String;I)V

    .line 67
    iget-object v0, p0, Lcn/smssdk/gui/PersonalInfoView;->view:Landroid/view/View;

    iget-object v4, p0, Lcn/smssdk/gui/PersonalInfoView;->context:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/smssdk/gui/entity/Profile;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcn/smssdk/gui/PersonalInfoView;->view:Landroid/view/View;

    iget-object v3, p0, Lcn/smssdk/gui/PersonalInfoView;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcn/smssdk/gui/PersonalInfoView;->view:Landroid/view/View;

    iget-object v2, p0, Lcn/smssdk/gui/PersonalInfoView;->context:Landroid/content/Context;

    const-string/jumbo v3, "tv_profile_phone"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/smssdk/gui/entity/Profile;->getPhoneNum()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Lcn/smssdk/gui/PersonalInfoView;->view:Landroid/view/View;

    iget-object v0, p0, Lcn/smssdk/gui/PersonalInfoView;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcn/smssdk/gui/PersonalInfoView;->context:Landroid/content/Context;

    const-string/jumbo v1, "smssdk_rebind_profile"

    .line 73
    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 72
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object p1, p0, Lcn/smssdk/gui/PersonalInfoView;->context:Landroid/content/Context;

    invoke-static {p1, v4}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, p1}, Lcom/mob/tools/gui/AsyncImageView;->execute(Ljava/lang/String;I)V

    .line 78
    iget-object p1, p0, Lcn/smssdk/gui/PersonalInfoView;->view:Landroid/view/View;

    iget-object v0, p0, Lcn/smssdk/gui/PersonalInfoView;->context:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcn/smssdk/gui/PersonalInfoView;->context:Landroid/content/Context;

    const-string/jumbo v3, "smssdk_my_profile"

    invoke-static {v0, v3}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 80
    iget-object p1, p0, Lcn/smssdk/gui/PersonalInfoView;->view:Landroid/view/View;

    iget-object v0, p0, Lcn/smssdk/gui/PersonalInfoView;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object p1, p0, Lcn/smssdk/gui/PersonalInfoView;->view:Landroid/view/View;

    iget-object v0, p0, Lcn/smssdk/gui/PersonalInfoView;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcn/smssdk/gui/PersonalInfoView;->context:Landroid/content/Context;

    const-string/jumbo v1, "smssdk_bind_profile"

    .line 83
    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 82
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_0
    return-void
.end method
