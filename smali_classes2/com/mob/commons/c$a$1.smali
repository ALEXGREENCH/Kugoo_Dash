.class Lcom/mob/commons/c$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/c$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/c$a;


# direct methods
.method constructor <init>(Lcom/mob/commons/c$a;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/mob/commons/c$a$1;->a:Lcom/mob/commons/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/tools/utils/FileLocker;)Z
    .locals 1

    .line 142
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mob/tools/utils/DH;->requester(Landroid/content/Context;)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object p1

    .line 143
    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$RequestBuilder;->getDetailNetworkTypeForStatic()Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/mob/commons/c$a$1$1;

    invoke-direct {v0, p0}, Lcom/mob/commons/c$a$1$1;-><init>(Lcom/mob/commons/c$a$1;)V

    .line 144
    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/DH$RequestBuilder;->request(Lcom/mob/tools/utils/DH$DHResponder;)V

    const/4 p1, 0x0

    return p1
.end method
