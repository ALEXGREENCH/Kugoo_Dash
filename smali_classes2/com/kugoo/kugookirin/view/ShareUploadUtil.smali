.class public Lcom/kugoo/kugookirin/view/ShareUploadUtil;
.super Ljava/lang/Object;
.source "ShareUploadUtil.java"


# static fields
.field private static final MEDIA_TYPE_PNG:Lokhttp3/MediaType;

.field private static final MEDIA_TYPE_VIDEO:Lokhttp3/MediaType;

.field private static shareUploadUtil:Lcom/kugoo/kugookirin/view/ShareUploadUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "image/jpeg"

    .line 33
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/kugoo/kugookirin/view/ShareUploadUtil;->MEDIA_TYPE_PNG:Lokhttp3/MediaType;

    const-string v0, "video/mp4"

    .line 34
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/kugoo/kugookirin/view/ShareUploadUtil;->MEDIA_TYPE_VIDEO:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lokhttp3/MediaType;
    .locals 1

    .line 22
    sget-object v0, Lcom/kugoo/kugookirin/view/ShareUploadUtil;->MEDIA_TYPE_VIDEO:Lokhttp3/MediaType;

    return-object v0
.end method

.method static synthetic access$100()Lokhttp3/MediaType;
    .locals 1

    .line 22
    sget-object v0, Lcom/kugoo/kugookirin/view/ShareUploadUtil;->MEDIA_TYPE_PNG:Lokhttp3/MediaType;

    return-object v0
.end method

.method public static getInstance()Lcom/kugoo/kugookirin/view/ShareUploadUtil;
    .locals 1

    .line 27
    sget-object v0, Lcom/kugoo/kugookirin/view/ShareUploadUtil;->shareUploadUtil:Lcom/kugoo/kugookirin/view/ShareUploadUtil;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/kugoo/kugookirin/view/ShareUploadUtil;

    invoke-direct {v0}, Lcom/kugoo/kugookirin/view/ShareUploadUtil;-><init>()V

    sput-object v0, Lcom/kugoo/kugookirin/view/ShareUploadUtil;->shareUploadUtil:Lcom/kugoo/kugookirin/view/ShareUploadUtil;

    .line 30
    :cond_0
    sget-object v0, Lcom/kugoo/kugookirin/view/ShareUploadUtil;->shareUploadUtil:Lcom/kugoo/kugookirin/view/ShareUploadUtil;

    return-object v0
.end method


# virtual methods
.method public sendMultipart(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lrx/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance p3, Lcom/kugoo/kugookirin/view/ShareUploadUtil$1;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p5

    move-object v3, p2

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/kugoo/kugookirin/view/ShareUploadUtil$1;-><init>(Lcom/kugoo/kugookirin/view/ShareUploadUtil;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {p3}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
