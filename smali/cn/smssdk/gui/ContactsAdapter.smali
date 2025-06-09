.class public Lcn/smssdk/gui/ContactsAdapter;
.super Lcn/smssdk/gui/ContactsListView$GroupAdapter;
.source "ContactsAdapter.java"


# instance fields
.field private contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private contactsOutApp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private friendsInApp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private itemMaker:Lcn/smssdk/gui/ContactItemMaker;

.field private sEngine:Lcn/smssdk/gui/SearchEngine;

.field private titles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/smssdk/gui/ContactsListView;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/smssdk/gui/ContactsListView;",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lcn/smssdk/gui/ContactsListView$GroupAdapter;-><init>(Lcn/smssdk/gui/ContactsListView;)V

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/smssdk/gui/ContactsAdapter;->friendsInApp:Ljava/util/ArrayList;

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iput-object p2, p0, Lcn/smssdk/gui/ContactsAdapter;->friendsInApp:Ljava/util/ArrayList;

    .line 45
    iput-object p3, p0, Lcn/smssdk/gui/ContactsAdapter;->contactsOutApp:Ljava/util/ArrayList;

    .line 46
    invoke-direct {p0}, Lcn/smssdk/gui/ContactsAdapter;->initSearchEngine()V

    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p1}, Lcn/smssdk/gui/ContactsAdapter;->search(Ljava/lang/String;)V

    return-void
.end method

.method private initSearchEngine()V
    .locals 6

    .line 51
    new-instance v0, Lcn/smssdk/gui/SearchEngine;

    invoke-direct {v0}, Lcn/smssdk/gui/SearchEngine;-><init>()V

    iput-object v0, p0, Lcn/smssdk/gui/ContactsAdapter;->sEngine:Lcn/smssdk/gui/SearchEngine;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iget-object v1, p0, Lcn/smssdk/gui/ContactsAdapter;->friendsInApp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ""

    const-string v4, "displayname"

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 55
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 56
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 58
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_2
    iget-object v1, p0, Lcn/smssdk/gui/ContactsAdapter;->contactsOutApp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 65
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 66
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v3

    .line 68
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    .line 71
    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 73
    :cond_5
    iget-object v1, p0, Lcn/smssdk/gui/ContactsAdapter;->sEngine:Lcn/smssdk/gui/SearchEngine;

    invoke-virtual {v1, v0}, Lcn/smssdk/gui/SearchEngine;->setIndex(Ljava/util/ArrayList;)V

    return-void
.end method

.method private reSortFia(Ljava/util/HashMap;ZLjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "displayname"

    .line 111
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    .line 114
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 117
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 123
    iget-object p1, p0, Lcn/smssdk/gui/ContactsAdapter;->view:Lcn/smssdk/gui/ContactsListView;

    invoke-virtual {p1}, Lcn/smssdk/gui/ContactsListView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "smssdk_contacts_in_app"

    invoke-static {p1, p2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_5

    .line 125
    iget-object p2, p0, Lcn/smssdk/gui/ContactsAdapter;->titles:Ljava/util/ArrayList;

    iget-object p3, p0, Lcn/smssdk/gui/ContactsAdapter;->view:Lcn/smssdk/gui/ContactsListView;

    invoke-virtual {p3}, Lcn/smssdk/gui/ContactsListView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_5
    iget-object p1, p0, Lcn/smssdk/gui/ContactsAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method private reSortFoa(Ljava/util/HashMap;ZLjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "displayname"

    .line 137
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    .line 140
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 143
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 149
    iget-object p1, p0, Lcn/smssdk/gui/ContactsAdapter;->view:Lcn/smssdk/gui/ContactsListView;

    invoke-virtual {p1}, Lcn/smssdk/gui/ContactsListView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "smssdk_contacts_out_app"

    invoke-static {p1, p2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_5

    .line 151
    iget-object p2, p0, Lcn/smssdk/gui/ContactsAdapter;->titles:Ljava/util/ArrayList;

    iget-object p3, p0, Lcn/smssdk/gui/ContactsAdapter;->view:Lcn/smssdk/gui/ContactsListView;

    invoke-virtual {p3}, Lcn/smssdk/gui/ContactsListView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_5
    iget-object p1, p0, Lcn/smssdk/gui/ContactsAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method


# virtual methods
.method public getCount(I)I
    .locals 2

    .line 229
    iget-object v0, p0, Lcn/smssdk/gui/ContactsAdapter;->contacts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 233
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_1

    return v1

    .line 238
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1
.end method

.method public getGroupCount()I
    .locals 1

    .line 225
    iget-object v0, p0, Lcn/smssdk/gui/ContactsAdapter;->titles:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getGroupTitle(I)Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcn/smssdk/gui/ContactsAdapter;->titles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcn/smssdk/gui/ContactsAdapter;->titles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getItem(II)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lcn/smssdk/gui/ContactsAdapter;->getItem(II)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public getItem(II)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcn/smssdk/gui/ContactsAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcn/smssdk/gui/ContactsAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTitleView(ILandroid/widget/TextView;Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 3

    if-nez p2, :cond_0

    .line 260
    new-instance p2, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 261
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "smssdk_bg_gray"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getColorRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 262
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v0, -0x1000000

    .line 263
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 264
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x12

    invoke-static {v0, v2}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v0

    .line 265
    invoke-virtual {p2, v0, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v0, -0x1

    .line 266
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 267
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const/16 v0, 0x28

    invoke-static {p3, v0}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result p3

    .line 268
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setHeight(I)V

    const/16 p3, 0x10

    .line 269
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 271
    :cond_0
    invoke-virtual {p0, p1}, Lcn/smssdk/gui/ContactsAdapter;->getGroupTitle(I)Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 273
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p2
.end method

.method public getView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 279
    invoke-virtual {p0, p1, p2}, Lcn/smssdk/gui/ContactsAdapter;->getItem(II)Ljava/util/HashMap;

    move-result-object p1

    .line 280
    iget-object p2, p0, Lcn/smssdk/gui/ContactsAdapter;->itemMaker:Lcn/smssdk/gui/ContactItemMaker;

    invoke-interface {p2, p1, p3, p4}, Lcn/smssdk/gui/ContactItemMaker;->getView(Ljava/util/HashMap;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public search(Ljava/lang/String;)V
    .locals 3

    .line 81
    iget-object v0, p0, Lcn/smssdk/gui/ContactsAdapter;->sEngine:Lcn/smssdk/gui/SearchEngine;

    invoke-virtual {v0, p1}, Lcn/smssdk/gui/SearchEngine;->match(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 83
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 84
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    .line 88
    :goto_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 89
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    invoke-virtual {v1, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 93
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/smssdk/gui/ContactsAdapter;->titles:Ljava/util/ArrayList;

    .line 94
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/smssdk/gui/ContactsAdapter;->contacts:Ljava/util/ArrayList;

    .line 96
    iget-object p1, p0, Lcn/smssdk/gui/ContactsAdapter;->friendsInApp:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 97
    iget-object p1, p0, Lcn/smssdk/gui/ContactsAdapter;->friendsInApp:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0, p1}, Lcn/smssdk/gui/ContactsAdapter;->reSortFia(Ljava/util/HashMap;ZLjava/util/ArrayList;)V

    .line 99
    :cond_3
    iget-object p1, p0, Lcn/smssdk/gui/ContactsAdapter;->contactsOutApp:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 100
    iget-object p1, p0, Lcn/smssdk/gui/ContactsAdapter;->contactsOutApp:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0, p1}, Lcn/smssdk/gui/ContactsAdapter;->reSortFoa(Ljava/util/HashMap;ZLjava/util/ArrayList;)V

    :cond_4
    return-void
.end method

.method public setContactItemMaker(Lcn/smssdk/gui/ContactItemMaker;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcn/smssdk/gui/ContactsAdapter;->itemMaker:Lcn/smssdk/gui/ContactItemMaker;

    return-void
.end method
