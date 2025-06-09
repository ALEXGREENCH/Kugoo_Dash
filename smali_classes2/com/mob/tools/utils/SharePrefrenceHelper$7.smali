.class Lcom/mob/tools/utils/SharePrefrenceHelper$7;
.super Lcom/mob/tools/utils/MobPersistence$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/SharePrefrenceHelper;->putParcelArray(Ljava/lang/String;[Landroid/os/Parcelable;J)V
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

    .line 561
    iput-object p1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$7;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/mob/tools/utils/MobPersistence$j;-><init>(Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 6

    .line 564
    invoke-virtual {p0}, Lcom/mob/tools/utils/SharePrefrenceHelper$7;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 566
    check-cast v0, [Landroid/os/Parcelable;

    array-length v1, v0

    new-array v2, v1, [Ljava/util/HashMap;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 568
    new-instance v4, Lcom/mob/tools/utils/MobPersistence$b;

    aget-object v5, v0, v3

    invoke-direct {v4, v5}, Lcom/mob/tools/utils/MobPersistence$b;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {v4}, Lcom/mob/tools/utils/MobPersistence$b;->b()Ljava/util/HashMap;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
