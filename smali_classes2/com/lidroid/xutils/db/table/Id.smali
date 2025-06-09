.class public Lcom/lidroid/xutils/db/table/Id;
.super Lcom/lidroid/xutils/db/table/Column;
.source "Id.java"


# static fields
.field private static final AUTO_INCREMENT_TYPES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTEGER_TYPES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private columnFieldClassName:Ljava/lang/String;

.field private isAutoIncrement:Z

.field private isAutoIncrementChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 79
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/lidroid/xutils/db/table/Id;->INTEGER_TYPES:Ljava/util/HashSet;

    .line 80
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    sput-object v1, Lcom/lidroid/xutils/db/table/Id;->AUTO_INCREMENT_TYPES:Ljava/util/HashSet;

    .line 83
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 87
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/db/table/Column;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/lidroid/xutils/db/table/Id;->isAutoIncrementChecked:Z

    .line 28
    iput-boolean p1, p0, Lcom/lidroid/xutils/db/table/Id;->isAutoIncrement:Z

    .line 32
    iget-object p1, p0, Lcom/lidroid/xutils/db/table/Id;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lidroid/xutils/db/table/Id;->columnFieldClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 68
    invoke-super {p0, p1}, Lcom/lidroid/xutils/db/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/lidroid/xutils/db/table/Id;->isAutoIncrement()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    return-object p1

    :cond_2
    return-object v0
.end method

.method public isAutoIncrement()Z
    .locals 3

    .line 36
    iget-boolean v0, p0, Lcom/lidroid/xutils/db/table/Id;->isAutoIncrementChecked:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/lidroid/xutils/db/table/Id;->isAutoIncrementChecked:Z

    .line 38
    iget-object v1, p0, Lcom/lidroid/xutils/db/table/Id;->columnField:Ljava/lang/reflect/Field;

    const-class v2, Lcom/lidroid/xutils/db/annotation/NoAutoIncrement;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-nez v1, :cond_0

    .line 39
    sget-object v1, Lcom/lidroid/xutils/db/table/Id;->AUTO_INCREMENT_TYPES:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/lidroid/xutils/db/table/Id;->columnFieldClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    iput-boolean v0, p0, Lcom/lidroid/xutils/db/table/Id;->isAutoIncrement:Z

    .line 41
    :cond_1
    iget-boolean v0, p0, Lcom/lidroid/xutils/db/table/Id;->isAutoIncrement:Z

    return v0
.end method

.method public setAutoIncrementId(Ljava/lang/Object;J)V
    .locals 3

    .line 45
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/lidroid/xutils/db/table/Id;->INTEGER_TYPES:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/lidroid/xutils/db/table/Id;->columnFieldClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    long-to-int p2, p2

    .line 47
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 50
    :cond_0
    iget-object p2, p0, Lcom/lidroid/xutils/db/table/Id;->setMethod:Ljava/lang/reflect/Method;

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    .line 52
    :try_start_0
    iget-object p2, p0, Lcom/lidroid/xutils/db/table/Id;->setMethod:Ljava/lang/reflect/Method;

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 58
    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/lidroid/xutils/db/table/Id;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 59
    iget-object p2, p0, Lcom/lidroid/xutils/db/table/Id;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
