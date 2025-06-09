.class public Lcn/smssdk/gui/DefaultContactViewItem;
.super Ljava/lang/Object;
.source "DefaultContactViewItem.java"

# interfaces
.implements Lcn/smssdk/gui/ContactItemMaker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(Ljava/util/HashMap;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 36
    new-instance p2, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;

    invoke-direct {p2, p0}, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;-><init>(Lcn/smssdk/gui/DefaultContactViewItem;)V

    .line 38
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcn/smssdk/gui/layout/ContactsListviewItemLayout;->create(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    const-string v2, "iv_contact"

    .line 41
    invoke-static {v0, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 42
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mob/tools/gui/AsyncImageView;

    iput-object v2, p2, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->ivContact:Lcom/mob/tools/gui/AsyncImageView;

    const-string/jumbo v2, "tv_name"

    .line 43
    invoke-static {v0, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 44
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p2, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->tvName:Landroid/widget/TextView;

    const-string/jumbo v2, "tv_contact"

    .line 45
    invoke-static {v0, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 46
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p2, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->tvContact:Landroid/widget/TextView;

    const-string v2, "btn_add"

    .line 47
    invoke-static {v0, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 48
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p2, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->btnAdd:Landroid/widget/Button;

    const-string/jumbo v2, "rl_lv_item_bg"

    .line 49
    invoke-static {v0, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 50
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->bg:Landroid/view/View;

    .line 51
    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;

    move-object v1, p2

    move-object p2, v0

    :goto_0
    if-eqz p1, :cond_a

    const-string v0, "fia"

    .line 58
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "phone"

    const/4 v3, 0x0

    const-string v4, "displayname"

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p2, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->tvName:Landroid/widget/TextView;

    const-string v5, "nickname"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p2, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->tvContact:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    iget-object v0, p2, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->tvContact:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 65
    :cond_1
    iget-object v2, p2, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->tvContact:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :goto_1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "smssdk_add_contact"

    invoke-static {v0, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    .line 69
    iget-object v2, p2, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->btnAdd:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(I)V

    .line 70
    iget-object v0, p2, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->btnAdd:Landroid/widget/Button;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 71
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v5, "smssdk_white"

    invoke-static {v3, v5}, Lcom/mob/tools/utils/ResHelper;->getColorRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 70
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 72
    iget-object v0, p2, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->btnAdd:Landroid/widget/Button;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "smssdk_btn_enable"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_3

    .line 75
    :cond_2
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v0, "phones"

    .line 79
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 81
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    iget-object v2, p2, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 85
    :cond_3
    iget-object v2, p2, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_4
    :goto_2
    iget-object v0, p2, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->tvContact:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "smssdk_invite"

    invoke-static {v0, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    .line 90
    iget-object v2, p2, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->btnAdd:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(I)V

    .line 91
    iget-object v0, p2, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->btnAdd:Landroid/widget/Button;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 92
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v5, "smssdk_main_color"

    invoke-static {v3, v5}, Lcom/mob/tools/utils/ResHelper;->getColorRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 91
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 93
    iget-object v0, p2, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->btnAdd:Landroid/widget/Button;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "smssdk_btn_line_bg"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 97
    :cond_5
    :goto_3
    iget-object v0, p2, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->bg:Landroid/view/View;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const-string v0, "isnew"

    .line 99
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 100
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 102
    iget-object v0, p2, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->bg:Landroid/view/View;

    const v2, -0x80301

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_6
    const-string v0, "avatar"

    .line 106
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_4

    :cond_7
    move-object v0, v3

    .line 108
    :goto_4
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v5, "smssdk_cp_default_avatar"

    invoke-static {v2, v5}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_8

    .line 110
    iget-object v5, p2, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->ivContact:Lcom/mob/tools/gui/AsyncImageView;

    invoke-virtual {v5, v3, v2}, Lcom/mob/tools/gui/AsyncImageView;->execute(Ljava/lang/String;I)V

    .line 112
    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 113
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " icon url ==>> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/String;)I

    .line 121
    iget-object v3, p2, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->ivContact:Lcom/mob/tools/gui/AsyncImageView;

    invoke-virtual {v3, v0, v2}, Lcom/mob/tools/gui/AsyncImageView;->execute(Ljava/lang/String;I)V

    .line 124
    :cond_9
    iget-object p2, p2, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->btnAdd:Landroid/widget/Button;

    new-instance v0, Lcn/smssdk/gui/DefaultContactViewItem$1;

    invoke-direct {v0, p0, p1, p3}, Lcn/smssdk/gui/DefaultContactViewItem$1;-><init>(Lcn/smssdk/gui/DefaultContactViewItem;Ljava/util/HashMap;Landroid/view/ViewGroup;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    return-object v1
.end method
