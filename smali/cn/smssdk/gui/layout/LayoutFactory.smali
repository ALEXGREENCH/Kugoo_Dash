.class public Lcn/smssdk/gui/layout/LayoutFactory;
.super Ljava/lang/Object;
.source "LayoutFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Landroid/content/Context;Ljava/lang/String;)Landroid/view/ViewGroup;
    .locals 1

    const-string/jumbo v0, "smssdk_back_verify_dialog"

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {p0}, Lcn/smssdk/gui/layout/BackVerifyDialogLayout;->create(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v0, "smssdk_contact_detail_page"

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    new-instance p1, Lcn/smssdk/gui/layout/ContactDetailPageLayout;

    invoke-direct {p1, p0}, Lcn/smssdk/gui/layout/ContactDetailPageLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p1}, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->getLayout()Landroid/widget/LinearLayout;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v0, "smssdk_contact_list_page"

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    new-instance p1, Lcn/smssdk/gui/layout/ContactListPageLayout;

    invoke-direct {p1, p0}, Lcn/smssdk/gui/layout/ContactListPageLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p1}, Lcn/smssdk/gui/layout/ContactListPageLayout;->getLayout()Landroid/widget/LinearLayout;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "smssdk_contacts_listview_item"

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29
    invoke-static {p0}, Lcn/smssdk/gui/layout/ContactsListviewItemLayout;->create(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "smssdk_country_list_page"

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 31
    new-instance p1, Lcn/smssdk/gui/layout/CountryListPageLayout;

    invoke-direct {p1, p0}, Lcn/smssdk/gui/layout/CountryListPageLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p1}, Lcn/smssdk/gui/layout/CountryListPageLayout;->getLayout()Landroid/widget/LinearLayout;

    move-result-object p0

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "smssdk_input_identify_num_page"

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 34
    new-instance p1, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;

    invoke-direct {p1, p0}, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {p1}, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->getLayout()Landroid/widget/LinearLayout;

    move-result-object p0

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "smssdk_progress_dialog"

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 37
    invoke-static {p0}, Lcn/smssdk/gui/layout/ProgressDialogLayout;->create(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p0

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "smssdk_register_page"

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 39
    new-instance p1, Lcn/smssdk/gui/layout/RegisterPageLayout;

    invoke-direct {p1, p0}, Lcn/smssdk/gui/layout/RegisterPageLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p1}, Lcn/smssdk/gui/layout/RegisterPageLayout;->getLayout()Landroid/widget/LinearLayout;

    move-result-object p0

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "smssdk_send_msg_dialog"

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 42
    invoke-static {p0}, Lcn/smssdk/gui/layout/SendMsgDialogLayout;->create(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p0

    goto :goto_0

    :cond_8
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
