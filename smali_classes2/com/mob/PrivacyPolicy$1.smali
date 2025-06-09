.class Lcom/mob/PrivacyPolicy$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/PrivacyPolicy;->getPrivacyPolicyAsync(ILjava/util/Locale;Lcom/mob/PrivacyPolicy$OnPolicyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/PrivacyPolicy$OnPolicyListener;

.field final synthetic b:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/mob/PrivacyPolicy$OnPolicyListener;Ljava/lang/Throwable;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/mob/PrivacyPolicy$1;->a:Lcom/mob/PrivacyPolicy$OnPolicyListener;

    iput-object p2, p0, Lcom/mob/PrivacyPolicy$1;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 128
    iget-object p1, p0, Lcom/mob/PrivacyPolicy$1;->a:Lcom/mob/PrivacyPolicy$OnPolicyListener;

    iget-object v0, p0, Lcom/mob/PrivacyPolicy$1;->b:Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lcom/mob/PrivacyPolicy$OnPolicyListener;->onFailure(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method
