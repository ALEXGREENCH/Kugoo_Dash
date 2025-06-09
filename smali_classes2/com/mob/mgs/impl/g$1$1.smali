.class Lcom/mob/mgs/impl/g$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/g$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mob/mgs/impl/g$1;


# direct methods
.method constructor <init>(Lcom/mob/mgs/impl/g$1;Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/mob/mgs/impl/g$1$1;->b:Lcom/mob/mgs/impl/g$1;

    iput-object p2, p0, Lcom/mob/mgs/impl/g$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    const-string p1, "com.mob.pushsdk.MobPush"

    const/4 v0, 0x0

    .line 121
    invoke-static {p1, v0}, Lcom/mob/tools/utils/ReflectHelper;->importClassNoThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 122
    iget-object v2, p0, Lcom/mob/mgs/impl/g$1$1;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "addGuardMessage"

    invoke-static {p1, v2, v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethodNoThrow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return v3
.end method
