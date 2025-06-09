.class Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils$1;
.super Ljava/lang/Object;
.source "CheckAppUpdataUtils.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils;->checkUpdate(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$info:Landroid/content/pm/PackageInfo;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/app/Activity;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils$1;->val$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils$1;->val$info:Landroid/content/pm/PackageInfo;

    iput-object p3, p0, Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 53
    iget-object p2, p0, Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils$1;->val$packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils$1;->val$info:Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1, p2, v0, v1}, Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils;->access$000(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/app/Activity;)V

    return-void
.end method
