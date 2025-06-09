.class Lcom/mob/tools/utils/SharePrefrenceHelper$1;
.super Lcom/mob/tools/utils/MobPersistence$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/SharePrefrenceHelper;->putParcel(Ljava/lang/String;Landroid/os/Parcelable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/utils/SharePrefrenceHelper;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/SharePrefrenceHelper;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$1;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/mob/tools/utils/MobPersistence$j;-><init>(Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 2

    .line 315
    invoke-virtual {p0}, Lcom/mob/tools/utils/SharePrefrenceHelper$1;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    new-instance v1, Lcom/mob/tools/utils/MobPersistence$b;

    check-cast v0, Landroid/os/Parcelable;

    invoke-direct {v1, v0}, Lcom/mob/tools/utils/MobPersistence$b;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {v1}, Lcom/mob/tools/utils/MobPersistence$b;->b()Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
