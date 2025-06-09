.class public Lcom/mob/commons/t;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/mob/commons/t;->a:Ljava/util/List;

    .line 10
    :try_start_0
    const-class v1, Lcom/mob/commons/SHARESDK;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    sget-object v0, Lcom/mob/commons/t;->a:Ljava/util/List;

    const-class v1, Lcom/mob/commons/SMSSDK;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :try_start_2
    sget-object v0, Lcom/mob/commons/t;->a:Ljava/util/List;

    const-class v1, Lcom/mob/commons/MOBLINK;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :try_start_3
    sget-object v0, Lcom/mob/commons/t;->a:Ljava/util/List;

    const-class v1, Lcom/mob/commons/MOBPUSH;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    :try_start_4
    sget-object v0, Lcom/mob/commons/t;->a:Ljava/util/List;

    const-class v1, Lcom/mob/extension/AWe;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    :try_start_5
    sget-object v0, Lcom/mob/commons/t;->a:Ljava/util/List;

    const-class v1, Lcom/mob/commons/SECVERIFY;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    :try_start_6
    sget-object v0, Lcom/mob/commons/t;->a:Ljava/util/List;

    const-class v1, Lcom/mob/commons/MOBADSDK;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :catchall_6
    :try_start_7
    sget-object v0, Lcom/mob/commons/t;->a:Ljava/util/List;

    const-class v1, Lcom/mob/commons/MOBGUARD;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :catchall_7
    :try_start_8
    sget-object v0, Lcom/mob/commons/t;->a:Ljava/util/List;

    const-class v1, Lcom/mob/commons/GESVERIFY;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    :catchall_8
    :try_start_9
    sget-object v0, Lcom/mob/commons/t;->a:Ljava/util/List;

    const-class v1, Lcom/mob/commons/MOBAPM;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    :catchall_9
    :try_start_a
    sget-object v0, Lcom/mob/commons/t;->a:Ljava/util/List;

    const-class v1, Lcom/mob/commons/ADPUSH;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    :catchall_a
    return-void
.end method
