.class Lcom/mob/commons/cc/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/cc/s;->a(Ljava/lang/Object;Z[Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Z

.field final synthetic c:Lcom/mob/commons/cc/s;


# direct methods
.method constructor <init>(Lcom/mob/commons/cc/s;Ljava/lang/Object;Z)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/mob/commons/cc/s$1;->c:Lcom/mob/commons/cc/s;

    iput-object p2, p0, Lcom/mob/commons/cc/s$1;->a:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/mob/commons/cc/s$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/cc/s$1;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 123
    instance-of v1, v0, Lcom/mob/commons/cc/z;

    if-eqz v1, :cond_0

    .line 124
    check-cast v0, Lcom/mob/commons/cc/z;

    goto :goto_0

    .line 126
    :cond_0
    check-cast v0, Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/mob/commons/cc/z;

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_5

    const/4 p2, 0x0

    if-nez p3, :cond_2

    new-array p3, p2, [Ljava/lang/Object;

    .line 134
    :cond_2
    iget-boolean v1, p0, Lcom/mob/commons/cc/s$1;->b:Z

    if-eqz v1, :cond_3

    .line 135
    invoke-virtual {v0, p3}, Lcom/mob/commons/cc/z;->b([Ljava/lang/Object;)Ljava/util/LinkedList;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    .line 138
    :cond_3
    :try_start_1
    invoke-virtual {v0, p3}, Lcom/mob/commons/cc/z;->b([Ljava/lang/Object;)Ljava/util/LinkedList;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :goto_1
    :try_start_2
    invoke-virtual {p3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p3, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    return-object p1

    :catchall_0
    move-exception p2

    .line 141
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_1
    :cond_5
    move-object p2, p1

    :catchall_2
    if-nez p2, :cond_6

    return-object p1

    .line 148
    :cond_6
    throw p2
.end method
