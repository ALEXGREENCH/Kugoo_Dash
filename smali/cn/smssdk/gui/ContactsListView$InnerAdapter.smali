.class Lcn/smssdk/gui/ContactsListView$InnerAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/smssdk/gui/ContactsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerAdapter"
.end annotation


# instance fields
.field private adapter:Lcn/smssdk/gui/ContactsListView$GroupAdapter;

.field private lastItemIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private listData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private titleIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/smssdk/gui/ContactsListView$GroupAdapter;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 174
    iput-object p1, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->adapter:Lcn/smssdk/gui/ContactsListView$GroupAdapter;

    .line 175
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    .line 176
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    .line 177
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->lastItemIndex:Ljava/util/ArrayList;

    .line 178
    invoke-direct {p0}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->init()V

    return-void
.end method

.method static synthetic access$400(Lcn/smssdk/gui/ContactsListView$InnerAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 167
    iget-object p0, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    return-object p0
.end method

.method private init()V
    .locals 7

    .line 182
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 183
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 184
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->lastItemIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 185
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->adapter:Lcn/smssdk/gui/ContactsListView$GroupAdapter;

    invoke-virtual {v0}, Lcn/smssdk/gui/ContactsListView$GroupAdapter;->getGroupCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 186
    iget-object v3, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->adapter:Lcn/smssdk/gui/ContactsListView$GroupAdapter;

    invoke-virtual {v3, v2}, Lcn/smssdk/gui/ContactsListView$GroupAdapter;->getCount(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 188
    iget-object v4, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    iget-object v5, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v4, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    iget-object v5, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->adapter:Lcn/smssdk/gui/ContactsListView$GroupAdapter;

    invoke-virtual {v5, v2}, Lcn/smssdk/gui/ContactsListView$GroupAdapter;->getGroupTitle(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_0

    .line 191
    iget-object v5, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    iget-object v6, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->adapter:Lcn/smssdk/gui/ContactsListView$GroupAdapter;

    invoke-virtual {v6, v2, v4}, Lcn/smssdk/gui/ContactsListView$GroupAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 193
    :cond_0
    iget-object v3, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->lastItemIndex:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 199
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 203
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemGroup(I)I
    .locals 3

    .line 211
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 213
    iget-object v2, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge p1, v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 235
    invoke-virtual {p0, p1}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->isTitle(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 239
    invoke-virtual {p0, p1}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->getItemGroup(I)I

    move-result v0

    .line 240
    invoke-virtual {p0, p1}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->isTitle(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    .line 241
    instance-of p1, p2, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 242
    iget-object p1, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->adapter:Lcn/smssdk/gui/ContactsListView$GroupAdapter;

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p1, v0, p2, p3}, Lcn/smssdk/gui/ContactsListView$GroupAdapter;->getTitleView(ILandroid/widget/TextView;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object p1

    goto :goto_0

    .line 244
    :cond_0
    iget-object p1, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->adapter:Lcn/smssdk/gui/ContactsListView$GroupAdapter;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2, p3}, Lcn/smssdk/gui/ContactsListView$GroupAdapter;->getTitleView(ILandroid/widget/TextView;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object p1

    goto :goto_0

    .line 248
    :cond_1
    iget-object v1, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x1

    .line 249
    iget-object v1, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->adapter:Lcn/smssdk/gui/ContactsListView$GroupAdapter;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcn/smssdk/gui/ContactsListView$GroupAdapter;->getView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isLastItem(I)Z
    .locals 4

    .line 260
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->lastItemIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 261
    iget-object v3, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->lastItemIndex:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isTitle(I)Z
    .locals 4

    .line 222
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 223
    iget-object v3, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 255
    invoke-direct {p0}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->init()V

    .line 256
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
