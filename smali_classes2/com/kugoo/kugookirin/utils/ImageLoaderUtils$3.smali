.class Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$3;
.super Ljava/lang/Object;
.source "ImageLoaderUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;->loadImage(Ljava/lang/String;Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$ImageLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$3;->this$0:Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;

    iput-object p2, p0, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$3;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$3;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$3;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 90
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$3;->val$url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 92
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$3;->this$0:Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;

    invoke-static {v1}, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;->access$000(Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;)Lcom/kugoo/kugookirin/utils/FileUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$3;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/kugoo/kugookirin/utils/FileUtils;->saveToSDCard(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 94
    iget-object v1, p0, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$3;->this$0:Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;

    iget-object v2, p0, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$3;->val$key:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;->access$100(Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 96
    iget-object v1, p0, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$3;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 97
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$3;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
