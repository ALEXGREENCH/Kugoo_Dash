.class public Lcn/smssdk/utils/b;
.super Ljava/lang/Object;
.source "GlobalHolder.java"


# static fields
.field private static c:Lcn/smssdk/utils/b;


# instance fields
.field private a:Z

.field private b:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/smssdk/utils/b;->a:Z

    .line 6
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    .line 7
    new-instance v0, Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;

    invoke-direct {v0}, Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;-><init>()V

    const-string/jumbo v1, "\u670d\u52a1\u6388\u6743"

    .line 8
    invoke-virtual {v0, v1}, Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;->setTitleText(Ljava/lang/String;)Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u4e3a\u4e86\u7ed9\u60a8\u63d0\u4f9bMobservice\u76f8\u5173\u4ea7\u54c1\u670d\u52a1\uff0c\u8bf7\u60a8\u8be6\u7ec6\u67e5\u770b\u6211\u4eec\u7684\u9690\u79c1\u653f\u7b56\uff0c\u8be6\u89c1<a href=\"http://www.mob.com/about/policy\">http://www.mob.com/about/policy</a>\u3002\u5982\u60a8\u540c\u610f\u6211\u4eec\u7684\u9690\u79c1\u653f\u7b56\uff0c\u8bf7\u70b9\u51fb\u201c\u63a5\u53d7\u201d\uff0c\u5982\u60a8\u4e0d\u540c\u610f\u6211\u4eec\u7684\u9690\u79c1\u653f\u7b56\uff0c\u8bf7\u70b9\u51fb\u201c\u62d2\u7edd\u201d\u3002"

    .line 9
    invoke-virtual {v0, v1}, Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;->setContentText(Ljava/lang/String;)Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;->build()Lcom/mob/commons/dialog/entity/InternalPolicyUi;

    return-void
.end method

.method public static c()Lcn/smssdk/utils/b;
    .locals 2

    .line 1
    sget-object v0, Lcn/smssdk/utils/b;->c:Lcn/smssdk/utils/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcn/smssdk/utils/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcn/smssdk/utils/b;->c:Lcn/smssdk/utils/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcn/smssdk/utils/b;

    invoke-direct {v1}, Lcn/smssdk/utils/b;-><init>()V

    sput-object v1, Lcn/smssdk/utils/b;->c:Lcn/smssdk/utils/b;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcn/smssdk/utils/b;->c:Lcn/smssdk/utils/b;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/utils/b;->b:Ljava/lang/Boolean;

    .line 2
    invoke-static {}, Lcn/smssdk/utils/SPHelper;->getInstance()Lcn/smssdk/utils/SPHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/smssdk/utils/SPHelper;->setAgree(Z)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcn/smssdk/utils/b;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcn/smssdk/utils/SPHelper;->getInstance()Lcn/smssdk/utils/SPHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/smssdk/utils/SPHelper;->isAgree()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/utils/b;->b:Ljava/lang/Boolean;

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/smssdk/utils/b;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/smssdk/utils/b;->a:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcn/smssdk/utils/b;->a:Z

    return v0
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method
