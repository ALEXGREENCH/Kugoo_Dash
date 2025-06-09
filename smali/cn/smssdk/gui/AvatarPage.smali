.class public Lcn/smssdk/gui/AvatarPage;
.super Lcom/mob/tools/FakeActivity;
.source "AvatarPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EXTRA_PROFILE:Ljava/lang/String; = "extra_profile"


# instance fields
.field private avatarUrl:Ljava/lang/String;

.field private btSubmit:Landroid/widget/Button;

.field private handler:Lcn/smssdk/EventHandler;

.field private ivAvatar:Lcom/mob/tools/gui/AsyncImageView;

.field private pd:Landroid/app/Dialog;

.field private profile:Lcn/smssdk/gui/entity/Profile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/smssdk/gui/AvatarPage;)Landroid/app/Dialog;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/smssdk/gui/AvatarPage;->pd:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$100(Lcn/smssdk/gui/AvatarPage;)Lcn/smssdk/gui/entity/Profile;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/smssdk/gui/AvatarPage;->profile:Lcn/smssdk/gui/entity/Profile;

    return-object p0
.end method

.method static synthetic access$200(Lcn/smssdk/gui/AvatarPage;)Landroid/app/Activity;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/smssdk/gui/AvatarPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method private initView()V
    .locals 3

    .line 105
    invoke-virtual {p0}, Lcn/smssdk/gui/AvatarPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "tv_left"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/smssdk/gui/AvatarPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-virtual {p0}, Lcn/smssdk/gui/AvatarPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "tv_title"

    invoke-static {v0, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/smssdk/gui/AvatarPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p0}, Lcn/smssdk/gui/AvatarPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "tv_right"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/smssdk/gui/AvatarPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x4

    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    invoke-virtual {p0}, Lcn/smssdk/gui/AvatarPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "iv_avatar"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/smssdk/gui/AvatarPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/gui/AsyncImageView;

    iput-object v0, p0, Lcn/smssdk/gui/AvatarPage;->ivAvatar:Lcom/mob/tools/gui/AsyncImageView;

    .line 116
    invoke-virtual {p0}, Lcn/smssdk/gui/AvatarPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/AsyncImageView;->setRound(F)V

    .line 117
    iget-object v0, p0, Lcn/smssdk/gui/AvatarPage;->ivAvatar:Lcom/mob/tools/gui/AsyncImageView;

    invoke-virtual {v0, p0}, Lcom/mob/tools/gui/AsyncImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {p0}, Lcn/smssdk/gui/AvatarPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bt_submit_profile"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/smssdk/gui/AvatarPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/smssdk/gui/AvatarPage;->btSubmit:Landroid/widget/Button;

    .line 119
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcn/smssdk/gui/AvatarPage;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "extra_profile"

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/smssdk/gui/entity/Profile;

    iput-object v0, p0, Lcn/smssdk/gui/AvatarPage;->profile:Lcn/smssdk/gui/entity/Profile;

    .line 125
    :cond_0
    iget-object v0, p0, Lcn/smssdk/gui/AvatarPage;->profile:Lcn/smssdk/gui/entity/Profile;

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v0}, Lcn/smssdk/gui/entity/Profile;->getAvatar()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/smssdk/gui/AvatarPage;->profile:Lcn/smssdk/gui/entity/Profile;

    invoke-virtual {v1}, Lcn/smssdk/gui/entity/Profile;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/smssdk/gui/AvatarPage;->refreshAvator(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private refreshAvator(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 171
    iput-object p1, p0, Lcn/smssdk/gui/AvatarPage;->avatarUrl:Ljava/lang/String;

    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 173
    iget-object p1, p0, Lcn/smssdk/gui/AvatarPage;->activity:Landroid/app/Activity;

    .line 174
    iget-object v0, p0, Lcn/smssdk/gui/AvatarPage;->ivAvatar:Lcom/mob/tools/gui/AsyncImageView;

    iget-object v1, p0, Lcn/smssdk/gui/AvatarPage;->avatarUrl:Ljava/lang/String;

    const-string/jumbo v2, "smssdk_cp_default_avatar"

    invoke-static {p1, v2}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/gui/AsyncImageView;->execute(Ljava/lang/String;I)V

    .line 175
    invoke-virtual {p0}, Lcn/smssdk/gui/AvatarPage;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "tv_avatar"

    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcn/smssdk/gui/AvatarPage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x4

    .line 176
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 180
    invoke-virtual {p0}, Lcn/smssdk/gui/AvatarPage;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "et_nickname"

    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcn/smssdk/gui/AvatarPage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 181
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private submitProfile()V
    .locals 5

    .line 145
    iget-object v0, p0, Lcn/smssdk/gui/AvatarPage;->profile:Lcn/smssdk/gui/entity/Profile;

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcn/smssdk/gui/AvatarPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcn/smssdk/gui/AvatarPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "smssdk_msg_profile_empty"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcn/smssdk/gui/AvatarPage;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/smssdk/gui/entity/Profile;->setAvatar(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcn/smssdk/gui/AvatarPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "et_nickname"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/smssdk/gui/AvatarPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcn/smssdk/gui/AvatarPage;->profile:Lcn/smssdk/gui/entity/Profile;

    invoke-virtual {v1, v0}, Lcn/smssdk/gui/entity/Profile;->setNickName(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcn/smssdk/gui/AvatarPage;->pd:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcn/smssdk/gui/AvatarPage;->pd:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 156
    :cond_1
    iget-object v0, p0, Lcn/smssdk/gui/AvatarPage;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcn/smssdk/gui/CommonDialog;->ProgressDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/gui/AvatarPage;->pd:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 158
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 160
    :cond_2
    iget-object v0, p0, Lcn/smssdk/gui/AvatarPage;->profile:Lcn/smssdk/gui/entity/Profile;

    invoke-virtual {v0}, Lcn/smssdk/gui/entity/Profile;->getUid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/smssdk/gui/AvatarPage;->profile:Lcn/smssdk/gui/entity/Profile;

    invoke-virtual {v1}, Lcn/smssdk/gui/entity/Profile;->getNickName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/smssdk/gui/AvatarPage;->profile:Lcn/smssdk/gui/entity/Profile;

    invoke-virtual {v2}, Lcn/smssdk/gui/entity/Profile;->getAvatar()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/smssdk/gui/AvatarPage;->profile:Lcn/smssdk/gui/entity/Profile;

    invoke-virtual {v3}, Lcn/smssdk/gui/entity/Profile;->getCountry()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/smssdk/gui/AvatarPage;->profile:Lcn/smssdk/gui/entity/Profile;

    invoke-virtual {v4}, Lcn/smssdk/gui/entity/Profile;->getPhoneNum()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcn/smssdk/SMSSDK;->submitUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 133
    invoke-virtual {p0}, Lcn/smssdk/gui/AvatarPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "tv_left"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcn/smssdk/gui/AvatarPage;->finish()V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcn/smssdk/gui/AvatarPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "iv_avatar"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 136
    new-instance p1, Lcn/smssdk/gui/AvatarPickerPage;

    invoke-direct {p1}, Lcn/smssdk/gui/AvatarPickerPage;-><init>()V

    .line 137
    iget-object v0, p0, Lcn/smssdk/gui/AvatarPage;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lcn/smssdk/gui/AvatarPickerPage;->showForResult(Landroid/content/Context;Landroid/content/Intent;Lcom/mob/tools/FakeActivity;)V

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcn/smssdk/gui/AvatarPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bt_submit_profile"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 140
    invoke-direct {p0}, Lcn/smssdk/gui/AvatarPage;->submitProfile()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 54
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onCreate()V

    .line 55
    iget-object v0, p0, Lcn/smssdk/gui/AvatarPage;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcn/smssdk/gui/AvatarPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "smssdk_avatar_page"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 56
    invoke-direct {p0}, Lcn/smssdk/gui/AvatarPage;->initView()V

    .line 57
    new-instance v0, Lcn/smssdk/gui/AvatarPage$1;

    invoke-direct {v0, p0}, Lcn/smssdk/gui/AvatarPage$1;-><init>(Lcn/smssdk/gui/AvatarPage;)V

    iput-object v0, p0, Lcn/smssdk/gui/AvatarPage;->handler:Lcn/smssdk/EventHandler;

    invoke-static {v0}, Lcn/smssdk/SMSSDK;->registerEventHandler(Lcn/smssdk/EventHandler;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcn/smssdk/gui/AvatarPage;->handler:Lcn/smssdk/EventHandler;

    invoke-static {v0}, Lcn/smssdk/SMSSDK;->unregisterEventHandler(Lcn/smssdk/EventHandler;)V

    return-void
.end method

.method public onResult(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 165
    invoke-super {p0, p1}, Lcom/mob/tools/FakeActivity;->onResult(Ljava/util/HashMap;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "INTENT_PICK_URL"

    .line 166
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 167
    :goto_0
    invoke-direct {p0, p1, v0}, Lcn/smssdk/gui/AvatarPage;->refreshAvator(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public show(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, p1, v0}, Lcn/smssdk/gui/AvatarPage;->show(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
