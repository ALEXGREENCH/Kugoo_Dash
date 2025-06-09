.class Lcom/mob/tools/utils/NtFetcher$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/NtFetcher;->b()Landroid/net/ConnectivityManager$NetworkCallback;
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

    .line 115
    iput-object p1, p0, Lcom/mob/tools/utils/NtFetcher$1;->a:Lcom/mob/tools/utils/NtFetcher;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 123
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 124
    iget-object p1, p0, Lcom/mob/tools/utils/NtFetcher$1;->a:Lcom/mob/tools/utils/NtFetcher;

    invoke-static {p1}, Lcom/mob/tools/utils/NtFetcher;->a(Lcom/mob/tools/utils/NtFetcher;)V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 166
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0

    .line 187
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 0

    .line 147
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLosing(Landroid/net/Network;I)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    .line 138
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 139
    iget-object p1, p0, Lcom/mob/tools/utils/NtFetcher$1;->a:Lcom/mob/tools/utils/NtFetcher;

    invoke-static {p1}, Lcom/mob/tools/utils/NtFetcher;->a(Lcom/mob/tools/utils/NtFetcher;)V

    return-void
.end method

.method public onUnavailable()V
    .locals 0

    .line 195
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    return-void
.end method
