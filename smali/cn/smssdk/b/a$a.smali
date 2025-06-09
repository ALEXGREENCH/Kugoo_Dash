.class Lcn/smssdk/b/a$a;
.super Ljava/lang/Object;
.source "VerifyCodeReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/b/a;->b(Landroid/telephony/SmsMessage;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/smssdk/b/a;


# direct methods
.method constructor <init>(Lcn/smssdk/b/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/smssdk/b/a$a;->a:Lcn/smssdk/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/smssdk/b/a$a;->a:Lcn/smssdk/b/a;

    invoke-static {v0}, Lcn/smssdk/b/a;->a(Lcn/smssdk/b/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
