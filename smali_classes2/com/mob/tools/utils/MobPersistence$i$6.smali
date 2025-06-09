.class Lcom/mob/tools/utils/MobPersistence$i$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$g;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Z

.field final synthetic b:Lcom/mob/tools/utils/MobPersistence$g;

.field final synthetic c:Lcom/mob/tools/utils/MobPersistence$i;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/MobPersistence$i;[ZLcom/mob/tools/utils/MobPersistence$g;)V
    .locals 0

    .line 1115
    iput-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i$6;->c:Lcom/mob/tools/utils/MobPersistence$i;

    iput-object p2, p0, Lcom/mob/tools/utils/MobPersistence$i$6;->a:[Z

    iput-object p3, p0, Lcom/mob/tools/utils/MobPersistence$i$6;->b:Lcom/mob/tools/utils/MobPersistence$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/tools/utils/FileLocker;)Z
    .locals 2

    .line 1118
    iget-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i$6;->a:[Z

    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i$6;->c:Lcom/mob/tools/utils/MobPersistence$i;

    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$i$6;->b:Lcom/mob/tools/utils/MobPersistence$g;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/MobPersistence$i;->b(Lcom/mob/tools/utils/MobPersistence$i;Lcom/mob/tools/utils/MobPersistence$g;)Z

    move-result v0

    const/4 v1, 0x0

    aput-boolean v0, p1, v1

    return v1
.end method
