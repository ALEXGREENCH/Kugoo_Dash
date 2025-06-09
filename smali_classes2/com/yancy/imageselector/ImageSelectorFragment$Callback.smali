.class public interface abstract Lcom/yancy/imageselector/ImageSelectorFragment$Callback;
.super Ljava/lang/Object;
.source "ImageSelectorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yancy/imageselector/ImageSelectorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCameraShot(Ljava/io/File;)V
.end method

.method public abstract onImageSelected(Ljava/lang/String;)V
.end method

.method public abstract onImageUnselected(Ljava/lang/String;)V
.end method

.method public abstract onSingleImageSelected(Ljava/lang/String;)V
.end method
