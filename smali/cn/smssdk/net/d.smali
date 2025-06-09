.class public Lcn/smssdk/net/d;
.super Lcn/smssdk/net/a;
.source "InitApi.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/smssdk/net/a;-><init>()V

    const-string v0, "initConfig"

    .line 2
    iput-object v0, p0, Lcn/smssdk/net/a;->b:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcn/smssdk/net/a;->a:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcn/smssdk/net/a;->d:Z

    .line 6
    sget-object v0, Lcn/smssdk/utils/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcn/smssdk/net/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    return-object p3
.end method

.method public a()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
