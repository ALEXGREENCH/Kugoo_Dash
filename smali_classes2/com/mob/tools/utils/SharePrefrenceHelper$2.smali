.class Lcom/mob/tools/utils/SharePrefrenceHelper$2;
.super Lcom/mob/tools/utils/MobPersistence$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/SharePrefrenceHelper;->getParcelThrowable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/utils/MobPersistence$e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/mob/tools/utils/SharePrefrenceHelper;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/SharePrefrenceHelper;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$2;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    iput-object p3, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$2;->a:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/mob/tools/utils/MobPersistence$e;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 352
    check-cast p1, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/mob/tools/utils/MobPersistence$b;->a(Ljava/util/HashMap;)Lcom/mob/tools/utils/MobPersistence$b;

    move-result-object p1

    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$2;->a:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/MobPersistence$b;->a(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1

    .line 354
    :cond_0
    iget-object p1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$2;->a:Ljava/lang/Object;

    return-object p1
.end method
