.class Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$2;
.super Landroid/os/Handler;
.source "ImageLoaderUtils.java"


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

.field final synthetic val$listener:Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$ImageLoadListener;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$ImageLoadListener;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$2;->this$0:Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;

    iput-object p2, p0, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$2;->val$listener:Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$ImageLoadListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 80
    iget-object v0, p0, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$2;->val$listener:Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$ImageLoadListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-interface {v0, p1}, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$ImageLoadListener;->loadImage(Landroid/graphics/Bitmap;)V

    return-void
.end method
