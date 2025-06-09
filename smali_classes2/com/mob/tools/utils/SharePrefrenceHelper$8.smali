.class Lcom/mob/tools/utils/SharePrefrenceHelper$8;
.super Lcom/mob/tools/utils/MobPersistence$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/SharePrefrenceHelper;->getParcelArrayThrowable(Ljava/lang/String;Ljava/lang/Class;[Landroid/os/Parcelable;)[Landroid/os/Parcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/utils/MobPersistence$e<",
        "[TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:[Landroid/os/Parcelable;

.field final synthetic c:Lcom/mob/tools/utils/SharePrefrenceHelper;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/SharePrefrenceHelper;Ljava/lang/String;Ljava/lang/Class;[Landroid/os/Parcelable;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$8;->c:Lcom/mob/tools/utils/SharePrefrenceHelper;

    iput-object p3, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$8;->a:Ljava/lang/Class;

    iput-object p4, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$8;->b:[Landroid/os/Parcelable;

    invoke-direct {p0, p2}, Lcom/mob/tools/utils/MobPersistence$e;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 602
    invoke-virtual {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$8;->b(Ljava/lang/Object;)[Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)[Landroid/os/Parcelable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[TT;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 606
    check-cast p1, [Ljava/util/HashMap;

    .line 607
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$8;->a:Ljava/lang/Class;

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    const/4 v1, 0x0

    .line 608
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 609
    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/mob/tools/utils/MobPersistence$b;->a(Ljava/util/HashMap;)Lcom/mob/tools/utils/MobPersistence$b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mob/tools/utils/MobPersistence$b;->a(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 613
    :cond_1
    iget-object p1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$8;->b:[Landroid/os/Parcelable;

    return-object p1
.end method
