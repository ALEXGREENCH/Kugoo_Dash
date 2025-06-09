.class public Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;
.super Ljava/lang/Object;
.source "FinderLazyLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final finderColumn:Lcom/lidroid/xutils/db/table/Finder;

.field private final finderValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/lidroid/xutils/db/table/Finder;Ljava/lang/Object;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;->finderColumn:Lcom/lidroid/xutils/db/table/Finder;

    .line 21
    invoke-static {p2}, Lcom/lidroid/xutils/db/table/ColumnUtils;->convert2DbColumnValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;->finderValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getAllFromDb()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;->finderColumn:Lcom/lidroid/xutils/db/table/Finder;

    invoke-virtual {v0}, Lcom/lidroid/xutils/db/table/Finder;->getTable()Lcom/lidroid/xutils/db/table/Table;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, v0, Lcom/lidroid/xutils/db/table/Table;->db:Lcom/lidroid/xutils/DbUtils;

    .line 29
    iget-object v1, p0, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;->finderColumn:Lcom/lidroid/xutils/db/table/Finder;

    invoke-virtual {v1}, Lcom/lidroid/xutils/db/table/Finder;->getTargetEntityType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;->finderColumn:Lcom/lidroid/xutils/db/table/Finder;

    invoke-virtual {v2}, Lcom/lidroid/xutils/db/table/Finder;->getTargetColumnName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    iget-object v4, p0, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;->finderValue:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lidroid/xutils/db/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/DbUtils;->findAll(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFirstFromDb()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;->finderColumn:Lcom/lidroid/xutils/db/table/Finder;

    invoke-virtual {v0}, Lcom/lidroid/xutils/db/table/Finder;->getTable()Lcom/lidroid/xutils/db/table/Table;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, v0, Lcom/lidroid/xutils/db/table/Table;->db:Lcom/lidroid/xutils/DbUtils;

    .line 41
    iget-object v1, p0, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;->finderColumn:Lcom/lidroid/xutils/db/table/Finder;

    invoke-virtual {v1}, Lcom/lidroid/xutils/db/table/Finder;->getTargetEntityType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;->finderColumn:Lcom/lidroid/xutils/db/table/Finder;

    invoke-virtual {v2}, Lcom/lidroid/xutils/db/table/Finder;->getTargetColumnName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    iget-object v4, p0, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;->finderValue:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lidroid/xutils/db/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/DbUtils;->findFirst(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
