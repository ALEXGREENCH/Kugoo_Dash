.class public Lcom/kugoo/kugookirin/utils/VolleySingleton;
.super Ljava/lang/Object;
.source "VolleySingleton.java"


# static fields
.field private static volleySingleton:Lcom/kugoo/kugookirin/utils/VolleySingleton;


# instance fields
.field private context:Landroid/content/Context;

.field private imageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private requestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/kugoo/kugookirin/utils/VolleySingleton;->context:Landroid/content/Context;

    .line 21
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/utils/VolleySingleton;->requestQueue:Lcom/android/volley/RequestQueue;

    .line 22
    new-instance p1, Lcom/android/volley/toolbox/ImageLoader;

    iget-object v0, p0, Lcom/kugoo/kugookirin/utils/VolleySingleton;->requestQueue:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/kugoo/kugookirin/utils/VolleySingleton$1;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/utils/VolleySingleton$1;-><init>(Lcom/kugoo/kugookirin/utils/VolleySingleton;)V

    invoke-direct {p1, v0, v1}, Lcom/android/volley/toolbox/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    iput-object p1, p0, Lcom/kugoo/kugookirin/utils/VolleySingleton;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    return-void
.end method

.method public static declared-synchronized getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;
    .locals 2

    const-class v0, Lcom/kugoo/kugookirin/utils/VolleySingleton;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/kugoo/kugookirin/utils/VolleySingleton;->volleySingleton:Lcom/kugoo/kugookirin/utils/VolleySingleton;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/kugoo/kugookirin/utils/VolleySingleton;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/utils/VolleySingleton;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/kugoo/kugookirin/utils/VolleySingleton;->volleySingleton:Lcom/kugoo/kugookirin/utils/VolleySingleton;

    .line 39
    :cond_0
    sget-object p0, Lcom/kugoo/kugookirin/utils/VolleySingleton;->volleySingleton:Lcom/kugoo/kugookirin/utils/VolleySingleton;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addToRequestQueue(Lcom/android/volley/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public getImageLoader()Lcom/android/volley/toolbox/ImageLoader;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/kugoo/kugookirin/utils/VolleySingleton;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    return-object v0
.end method

.method public getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/kugoo/kugookirin/utils/VolleySingleton;->requestQueue:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/kugoo/kugookirin/utils/VolleySingleton;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/utils/VolleySingleton;->requestQueue:Lcom/android/volley/RequestQueue;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/utils/VolleySingleton;->requestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method
