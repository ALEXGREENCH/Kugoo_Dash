.class public Lcom/mob/mcl/MobMCL;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/EverythingKeeper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/mcl/MobMCL$ELPMessageListener;
    }
.end annotation


# static fields
.field public static final SDK_TAG:Ljava/lang/String; = "MobMCL"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBusinessMessageListener(ILcom/mob/mcl/BusinessMessageListener;)V
    .locals 0

    .line 65
    invoke-static {p0, p1}, Lcom/mob/mcl/b/a;->a(ILcom/mob/mcl/BusinessMessageListener;)V

    return-void
.end method

.method public static addELPMessageListener(Lcom/mob/mcl/MobMCL$ELPMessageListener;)V
    .locals 0

    .line 61
    invoke-static {p0}, Lcom/mob/mcl/b/a;->a(Lcom/mob/mcl/MobMCL$ELPMessageListener;)V

    return-void
.end method

.method public static deleteMsg(Ljava/lang/String;)V
    .locals 1

    .line 57
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/mcl/c/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static getClientTcpStatus(Lcom/mob/mcl/BusinessCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/mcl/BusinessCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/mcl/c/h;->a(Lcom/mob/mcl/BusinessCallBack;)V

    return-void
.end method

.method public static getCreateSuidTime()J
    .locals 2

    .line 34
    invoke-static {}, Lcom/mob/mcl/b/a;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSuid()Ljava/lang/String;
    .locals 1

    .line 26
    invoke-static {}, Lcom/mob/mcl/b/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSuid(Lcom/mob/mgs/OnIdChangeListener;)V
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/mob/mcl/b/a;->a(Lcom/mob/mgs/OnIdChangeListener;)V

    return-void
.end method

.method public static getTcpStatus(Lcom/mob/mcl/BusinessCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/mcl/BusinessCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/mcl/c/h;->b(Lcom/mob/mcl/BusinessCallBack;)V

    return-void
.end method

.method public static initMCLink(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-static {p0, p1, p2}, Lcom/mob/mcl/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static registerTcpStatusListener(Lcom/mob/mcl/TcpStatusListener;)V
    .locals 1

    .line 78
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/mcl/c/h;->a(Lcom/mob/mcl/TcpStatusListener;)V

    return-void
.end method

.method public static syncSuid(Ljava/lang/String;JLcom/mob/tools/utils/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/mob/tools/utils/e<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1, p2, p3}, Lcom/mob/mcl/b/a;->a(Ljava/lang/String;JLcom/mob/tools/utils/e;)V

    return-void
.end method


# virtual methods
.method public unregisterTcpStatusListener(Lcom/mob/mcl/TcpStatusListener;)V
    .locals 1

    .line 82
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/mcl/c/h;->b(Lcom/mob/mcl/TcpStatusListener;)V

    return-void
.end method
