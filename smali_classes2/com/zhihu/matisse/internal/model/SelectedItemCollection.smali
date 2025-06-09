.class public Lcom/zhihu/matisse/internal/model/SelectedItemCollection;
.super Ljava/lang/Object;
.source "SelectedItemCollection.java"


# static fields
.field public static final COLLECTION_IMAGE:I = 0x1

.field public static final COLLECTION_MIXED:I = 0x3

.field public static final COLLECTION_UNDEFINED:I = 0x0

.field public static final COLLECTION_VIDEO:I = 0x2

.field public static final STATE_COLLECTION_TYPE:Ljava/lang/String; = "state_collection_type"

.field public static final STATE_SELECTION:Ljava/lang/String; = "state_selection"


# instance fields
.field private mCollectionType:I

.field private final mContext:Landroid/content/Context;

.field private mItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/zhihu/matisse/internal/entity/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mCollectionType:I

    .line 62
    iput-object p1, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mContext:Landroid/content/Context;

    return-void
.end method

.method private currentMaxSelectable()I
    .locals 3

    .line 206
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    .line 207
    iget v1, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->maxSelectable:I

    if-lez v1, :cond_0

    .line 208
    iget v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->maxSelectable:I

    return v0

    .line 209
    :cond_0
    iget v1, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mCollectionType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 210
    iget v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->maxImageSelectable:I

    return v0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 212
    iget v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->maxVideoSelectable:I

    return v0

    .line 214
    :cond_2
    iget v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->maxSelectable:I

    return v0
.end method

.method private refineCollectionType()V
    .locals 6

    .line 225
    iget-object v0, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhihu/matisse/internal/entity/Item;

    .line 226
    invoke-virtual {v3}, Lcom/zhihu/matisse/internal/entity/Item;->isImage()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v1, :cond_1

    move v1, v4

    .line 227
    :cond_1
    invoke-virtual {v3}, Lcom/zhihu/matisse/internal/entity/Item;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    const/4 v0, 0x3

    .line 230
    iput v0, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mCollectionType:I

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 232
    iput v4, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mCollectionType:I

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    const/4 v0, 0x2

    .line 234
    iput v0, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mCollectionType:I

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public add(Lcom/zhihu/matisse/internal/entity/Item;)Z
    .locals 5

    .line 92
    invoke-virtual {p0, p1}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->typeConflict(Lcom/zhihu/matisse/internal/entity/Item;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 95
    iget-object v0, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    iget v1, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mCollectionType:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 98
    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/entity/Item;->isImage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iput v3, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mCollectionType:I

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/entity/Item;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 101
    iput v2, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mCollectionType:I

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    if-ne v1, v3, :cond_2

    .line 104
    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/entity/Item;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 105
    iput v4, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mCollectionType:I

    goto :goto_0

    :cond_2
    if-ne v1, v2, :cond_3

    .line 108
    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/entity/Item;->isImage()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 109
    iput v4, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mCollectionType:I

    :cond_3
    :goto_0
    return v0

    .line 93
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t select images and videos at the same time."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public asList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zhihu/matisse/internal/entity/Item;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mItems:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public asListOfString()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    iget-object v1, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mItems:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhihu/matisse/internal/entity/Item;

    .line 156
    iget-object v3, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/zhihu/matisse/internal/entity/Item;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/zhihu/matisse/internal/utils/PathUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public asListOfUri()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    iget-object v1, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mItems:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhihu/matisse/internal/entity/Item;

    .line 148
    invoke-virtual {v2}, Lcom/zhihu/matisse/internal/entity/Item;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public checkedNumOf(Lcom/zhihu/matisse/internal/entity/Item;)I
    .locals 2

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mItems:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/high16 p1, -0x80000000

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :goto_0
    return p1
.end method

.method public count()I
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getCollectionType()I
    .locals 1

    .line 219
    iget v0, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mCollectionType:I

    return v0
.end method

.method public getDataWithBundle()Landroid/os/Bundle;
    .locals 3

    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mItems:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "state_selection"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "state_collection_type"

    .line 87
    iget v2, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mCollectionType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public isAcceptable(Lcom/zhihu/matisse/internal/entity/Item;)Lcom/zhihu/matisse/internal/entity/IncapableCause;
    .locals 6

    .line 170
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->maxSelectableReached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->currentMaxSelectable()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 175
    :try_start_0
    iget-object v2, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/zhihu/matisse/R$plurals;->error_over_count:I

    new-array v4, v1, [Ljava/lang/Object;

    .line 178
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    .line 175
    invoke-virtual {v2, v3, p1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    iget-object v2, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mContext:Landroid/content/Context;

    sget v3, Lcom/zhihu/matisse/R$string;->error_over_count:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 188
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    .line 186
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 181
    :catch_1
    iget-object v2, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mContext:Landroid/content/Context;

    sget v3, Lcom/zhihu/matisse/R$string;->error_over_count:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 183
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    .line 181
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 192
    :goto_0
    new-instance v0, Lcom/zhihu/matisse/internal/entity/IncapableCause;

    invoke-direct {v0, p1}, Lcom/zhihu/matisse/internal/entity/IncapableCause;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 193
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->typeConflict(Lcom/zhihu/matisse/internal/entity/Item;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    new-instance p1, Lcom/zhihu/matisse/internal/entity/IncapableCause;

    iget-object v0, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mContext:Landroid/content/Context;

    sget v1, Lcom/zhihu/matisse/R$string;->error_type_conflict:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/zhihu/matisse/internal/entity/IncapableCause;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/zhihu/matisse/internal/utils/PhotoMetadataUtils;->isAcceptable(Landroid/content/Context;Lcom/zhihu/matisse/internal/entity/Item;)Lcom/zhihu/matisse/internal/entity/IncapableCause;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mItems:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSelected(Lcom/zhihu/matisse/internal/entity/Item;)Z
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public maxSelectableReached()Z
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->currentMaxSelectable()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    .line 67
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mItems:Ljava/util/Set;

    goto :goto_0

    :cond_0
    const-string v0, "state_selection"

    .line 69
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mItems:Ljava/util/Set;

    const-string v0, "state_collection_type"

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mCollectionType:I

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mItems:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "state_selection"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "state_collection_type"

    .line 81
    iget v1, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mCollectionType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public overwrite(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zhihu/matisse/internal/entity/Item;",
            ">;I)V"
        }
    .end annotation

    .line 131
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p2, 0x0

    .line 132
    iput p2, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mCollectionType:I

    goto :goto_0

    .line 134
    :cond_0
    iput p2, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mCollectionType:I

    .line 136
    :goto_0
    iget-object p2, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mItems:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 137
    iget-object p2, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mItems:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public remove(Lcom/zhihu/matisse/internal/entity/Item;)Z
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 119
    iget-object v0, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mCollectionType:I

    goto :goto_0

    .line 122
    :cond_0
    iget v0, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mCollectionType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 123
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->refineCollectionType()V

    :cond_1
    :goto_0
    return p1
.end method

.method public setDefaultSelection(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zhihu/matisse/internal/entity/Item;",
            ">;)V"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public typeConflict(Lcom/zhihu/matisse/internal/entity/Item;)Z
    .locals 4

    .line 243
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->mediaTypeExclusive:Z

    if-eqz v0, :cond_1

    .line 244
    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/entity/Item;->isImage()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mCollectionType:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_2

    .line 245
    :cond_0
    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/entity/Item;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->mCollectionType:I

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method
