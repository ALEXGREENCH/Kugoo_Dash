.class public Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;
.super Ljava/lang/Object;
.source "ForeignLazyLoader.java"


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
.field private columnValue:Ljava/lang/Object;

.field private final foreignColumn:Lcom/lidroid/xutils/db/table/Foreign;


# direct methods
.method public constructor <init>(Lcom/lidroid/xutils/db/table/Foreign;Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->foreignColumn:Lcom/lidroid/xutils/db/table/Foreign;

    .line 31
    invoke-static {p2}, Lcom/lidroid/xutils/db/table/ColumnUtils;->convert2DbColumnValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->columnValue:Ljava/lang/Object;

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

    .line 36
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->foreignColumn:Lcom/lidroid/xutils/db/table/Foreign;

    invoke-virtual {v0}, Lcom/lidroid/xutils/db/table/Foreign;->getTable()Lcom/lidroid/xutils/db/table/Table;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, v0, Lcom/lidroid/xutils/db/table/Table;->db:Lcom/lidroid/xutils/DbUtils;

    .line 39
    iget-object v1, p0, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->foreignColumn:Lcom/lidroid/xutils/db/table/Foreign;

    invoke-virtual {v1}, Lcom/lidroid/xutils/db/table/Foreign;->getForeignEntityType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->foreignColumn:Lcom/lidroid/xutils/db/table/Foreign;

    invoke-virtual {v2}, Lcom/lidroid/xutils/db/table/Foreign;->getForeignColumnName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    iget-object v4, p0, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->columnValue:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lidroid/xutils/db/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/DbUtils;->findAll(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getColumnValue()Ljava/lang/Object;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->columnValue:Ljava/lang/Object;

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

    .line 48
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->foreignColumn:Lcom/lidroid/xutils/db/table/Foreign;

    invoke-virtual {v0}, Lcom/lidroid/xutils/db/table/Foreign;->getTable()Lcom/lidroid/xutils/db/table/Table;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, v0, Lcom/lidroid/xutils/db/table/Table;->db:Lcom/lidroid/xutils/DbUtils;

    .line 51
    iget-object v1, p0, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->foreignColumn:Lcom/lidroid/xutils/db/table/Foreign;

    invoke-virtual {v1}, Lcom/lidroid/xutils/db/table/Foreign;->getForeignEntityType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->foreignColumn:Lcom/lidroid/xutils/db/table/Foreign;

    invoke-virtual {v2}, Lcom/lidroid/xutils/db/table/Foreign;->getForeignColumnName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    iget-object v4, p0, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->columnValue:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lidroid/xutils/db/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/DbUtils;->findFirst(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setColumnValue(Ljava/lang/Object;)V
    .locals 0

    .line 59
    invoke-static {p1}, Lcom/lidroid/xutils/db/table/ColumnUtils;->convert2DbColumnValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->columnValue:Ljava/lang/Object;

    return-void
.end method
