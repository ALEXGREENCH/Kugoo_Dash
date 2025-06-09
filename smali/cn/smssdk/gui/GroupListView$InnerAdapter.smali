.class Lcn/smssdk/gui/GroupListView$InnerAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/smssdk/gui/GroupListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerAdapter"
.end annotation


# static fields
.field private static final TYPE_COUNTRY:I = 0x1

.field private static final TYPE_GROUP_TITLE:I


# instance fields
.field private adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

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
.method public constructor <init>(Lcn/smssdk/gui/GroupListView$GroupAdapter;)V
    .locals 0

    .line 209
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 210
    iput-object p1, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    .line 211
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    .line 212
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    .line 213
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->lastItemIndex:Ljava/util/ArrayList;

    .line 214
    invoke-direct {p0}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->init()V

    return-void
.end method

.method static synthetic access$600(Lcn/smssdk/gui/GroupListView$InnerAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 201
    iget-object p0, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    return-object p0
.end method

.method private init()V
    .locals 7

    .line 218
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 219
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 220
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->lastItemIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 221
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    invoke-virtual {v0}, Lcn/smssdk/gui/GroupListView$GroupAdapter;->getGroupCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 222
    iget-object v3, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    invoke-virtual {v3, v2}, Lcn/smssdk/gui/GroupListView$GroupAdapter;->getCount(I)I

    move-result v3

    if-lez v3, :cond_2

    .line 224
    iget-object v4, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    iget-object v5, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v4, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    iget-object v5, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    invoke-virtual {v5, v2}, Lcn/smssdk/gui/GroupListView$GroupAdapter;->getGroupTitle(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_1

    .line 227
    iget-object v5, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    invoke-virtual {v5, v2, v4}, Lcn/smssdk/gui/GroupListView$GroupAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 228
    instance-of v5, v5, [Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 229
    iget-object v5, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    invoke-virtual {v5, v2, v4}, Lcn/smssdk/gui/GroupListView$GroupAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    .line 230
    iget-object v6, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 233
    :cond_1
    iget-object v3, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->lastItemIndex:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 239
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 243
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemGroup(I)I
    .locals 3

    .line 251
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 253
    iget-object v2, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

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

    .line 276
    invoke-virtual {p0, p1}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->isTitle(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 285
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 286
    invoke-virtual {p0, p1}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->getItemViewType(I)I

    move-result p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 289
    iget-object p1, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0}, Lcn/smssdk/gui/GroupListView$GroupAdapter;->getTitleView(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 291
    :cond_0
    iget-object p1, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    const/4 p2, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0}, Lcn/smssdk/gui/GroupListView$GroupAdapter;->getTitleView(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 294
    :cond_1
    iget-object p1, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0}, Lcn/smssdk/gui/GroupListView$GroupAdapter;->getView(Landroid/view/View;Landroid/view/ViewGroup;[Ljava/lang/String;)Landroid/view/View;

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

    .line 305
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->lastItemIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 306
    iget-object v3, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->lastItemIndex:Ljava/util/ArrayList;

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

    .line 262
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 263
    iget-object v3, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

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

    .line 300
    invoke-direct {p0}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->init()V

    .line 301
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
