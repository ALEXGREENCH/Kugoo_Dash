.class public Lcom/mob/mgs/impl/b;
.super Ljava/lang/Object;


# direct methods
.method public static a()V
    .locals 1

    .line 11
    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/CSCenter;->isAppListDataEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    new-instance v0, Lcom/mob/mgs/impl/b$1;

    invoke-direct {v0}, Lcom/mob/mgs/impl/b$1;-><init>()V

    .line 26
    invoke-virtual {v0}, Lcom/mob/mgs/impl/b$1;->start()V

    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 1

    .line 51
    new-instance v0, Lcom/mob/mgs/impl/b$3;

    invoke-direct {v0, p0}, Lcom/mob/mgs/impl/b$3;-><init>(Z)V

    .line 79
    invoke-virtual {v0}, Lcom/mob/mgs/impl/b$3;->start()V

    .line 84
    invoke-static {p0}, Lcom/mob/mgs/impl/i;->a(Z)V

    return-void
.end method

.method public static a(ZZ)V
    .locals 1

    .line 31
    new-instance v0, Lcom/mob/mgs/impl/b$2;

    invoke-direct {v0, p0, p1}, Lcom/mob/mgs/impl/b$2;-><init>(ZZ)V

    .line 44
    invoke-virtual {v0}, Lcom/mob/mgs/impl/b$2;->start()V

    return-void
.end method

.method public static b()Z
    .locals 1

    .line 93
    invoke-static {}, Lcom/mob/mgs/impl/b;->c()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 95
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 97
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static c()Ljava/lang/Boolean;
    .locals 3

    .line 106
    invoke-static {}, Lcom/mob/mgs/impl/i;->a()Ljava/lang/Boolean;

    move-result-object v0

    .line 107
    invoke-static {}, Lcom/mob/mgs/impl/i;->b()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    if-eq v0, v1, :cond_1

    .line 109
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mob/mgs/impl/b;->a(ZZ)V

    :cond_1
    return-object v0
.end method
