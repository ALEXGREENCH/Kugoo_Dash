.class public Lcn/smssdk/logger/a;
.super Ljava/lang/Object;
.source "BaseInformation.java"


# static fields
.field private static c:Lcn/smssdk/logger/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static m()Lcn/smssdk/logger/a;
    .locals 1

    .line 1
    sget-object v0, Lcn/smssdk/logger/a;->c:Lcn/smssdk/logger/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/smssdk/logger/a;

    invoke-direct {v0}, Lcn/smssdk/logger/a;-><init>()V

    sput-object v0, Lcn/smssdk/logger/a;->c:Lcn/smssdk/logger/a;

    .line 4
    :cond_0
    sget-object v0, Lcn/smssdk/logger/a;->c:Lcn/smssdk/logger/a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcn/smssdk/utils/DHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcn/smssdk/logger/a;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcn/smssdk/logger/a;->b:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getBrand()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/smssdk/logger/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcn/smssdk/utils/DHelper;->getSignMd5()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcn/smssdk/utils/DHelper;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/smssdk/logger/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/smssdk/logger/a;->b:Ljava/util/List;

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/smssdk/logger/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getOSVersionInt()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getOSVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    const-string v0, "3.7.8"

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcn/smssdk/utils/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
