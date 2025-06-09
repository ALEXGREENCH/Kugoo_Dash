.class public final Lcom/orhanobut/hawk/Hawk;
.super Ljava/lang/Object;
.source "Hawk.java"


# static fields
.field static hawkFacade:Lcom/orhanobut/hawk/HawkFacade;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/orhanobut/hawk/HawkFacade$EmptyHawkFacade;

    invoke-direct {v0}, Lcom/orhanobut/hawk/HawkFacade$EmptyHawkFacade;-><init>()V

    sput-object v0, Lcom/orhanobut/hawk/Hawk;->hawkFacade:Lcom/orhanobut/hawk/HawkFacade;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static build(Lcom/orhanobut/hawk/HawkBuilder;)V
    .locals 1

    .line 27
    new-instance v0, Lcom/orhanobut/hawk/DefaultHawkFacade;

    invoke-direct {v0, p0}, Lcom/orhanobut/hawk/DefaultHawkFacade;-><init>(Lcom/orhanobut/hawk/HawkBuilder;)V

    sput-object v0, Lcom/orhanobut/hawk/Hawk;->hawkFacade:Lcom/orhanobut/hawk/HawkFacade;

    return-void
.end method

.method public static contains(Ljava/lang/String;)Z
    .locals 1

    .line 105
    sget-object v0, Lcom/orhanobut/hawk/Hawk;->hawkFacade:Lcom/orhanobut/hawk/HawkFacade;

    invoke-interface {v0, p0}, Lcom/orhanobut/hawk/HawkFacade;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static count()J
    .locals 2

    .line 73
    sget-object v0, Lcom/orhanobut/hawk/Hawk;->hawkFacade:Lcom/orhanobut/hawk/HawkFacade;

    invoke-interface {v0}, Lcom/orhanobut/hawk/HawkFacade;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public static delete(Ljava/lang/String;)Z
    .locals 1

    .line 94
    sget-object v0, Lcom/orhanobut/hawk/Hawk;->hawkFacade:Lcom/orhanobut/hawk/HawkFacade;

    invoke-interface {v0, p0}, Lcom/orhanobut/hawk/HawkFacade;->delete(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static deleteAll()Z
    .locals 1

    .line 83
    sget-object v0, Lcom/orhanobut/hawk/Hawk;->hawkFacade:Lcom/orhanobut/hawk/HawkFacade;

    invoke-interface {v0}, Lcom/orhanobut/hawk/HawkFacade;->deleteAll()Z

    move-result v0

    return v0
.end method

.method public static destroy()V
    .locals 1

    .line 118
    sget-object v0, Lcom/orhanobut/hawk/Hawk;->hawkFacade:Lcom/orhanobut/hawk/HawkFacade;

    invoke-interface {v0}, Lcom/orhanobut/hawk/HawkFacade;->destroy()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/orhanobut/hawk/Hawk;->hawkFacade:Lcom/orhanobut/hawk/HawkFacade;

    invoke-interface {v0, p0}, Lcom/orhanobut/hawk/HawkFacade;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 64
    sget-object v0, Lcom/orhanobut/hawk/Hawk;->hawkFacade:Lcom/orhanobut/hawk/HawkFacade;

    invoke-interface {v0, p0, p1}, Lcom/orhanobut/hawk/HawkFacade;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)Lcom/orhanobut/hawk/HawkBuilder;
    .locals 1

    const-string v0, "Context"

    .line 21
    invoke-static {v0, p0}, Lcom/orhanobut/hawk/HawkUtils;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 22
    sput-object v0, Lcom/orhanobut/hawk/Hawk;->hawkFacade:Lcom/orhanobut/hawk/HawkFacade;

    .line 23
    new-instance v0, Lcom/orhanobut/hawk/HawkBuilder;

    invoke-direct {v0, p0}, Lcom/orhanobut/hawk/HawkBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static isBuilt()Z
    .locals 1

    .line 114
    sget-object v0, Lcom/orhanobut/hawk/Hawk;->hawkFacade:Lcom/orhanobut/hawk/HawkFacade;

    invoke-interface {v0}, Lcom/orhanobut/hawk/HawkFacade;->isBuilt()Z

    move-result v0

    return v0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/orhanobut/hawk/Hawk;->hawkFacade:Lcom/orhanobut/hawk/HawkFacade;

    invoke-interface {v0, p0, p1}, Lcom/orhanobut/hawk/HawkFacade;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
