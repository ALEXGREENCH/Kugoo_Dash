.class Lcom/mob/tools/utils/NtFetcher$2;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/NtFetcher;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/utils/NtFetcher;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/NtFetcher;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/mob/tools/utils/NtFetcher$2;->a:Lcom/mob/tools/utils/NtFetcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 257
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "036de@dcdjdkdidcdlSefi.dlPc(dk-ee(dledghegeggiedfceegkeefcildhedfkfdegidgi"

    invoke-static {p2}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 258
    iget-object p1, p0, Lcom/mob/tools/utils/NtFetcher$2;->a:Lcom/mob/tools/utils/NtFetcher;

    invoke-static {p1}, Lcom/mob/tools/utils/NtFetcher;->a(Lcom/mob/tools/utils/NtFetcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 261
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
