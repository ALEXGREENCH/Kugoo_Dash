.class Lcom/lidong/photopicker/PhotoPreviewActivity$1;
.super Ljava/lang/Object;
.source "PhotoPreviewActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lidong/photopicker/PhotoPreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidong/photopicker/PhotoPreviewActivity;


# direct methods
.method constructor <init>(Lcom/lidong/photopicker/PhotoPreviewActivity;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/lidong/photopicker/PhotoPreviewActivity$1;->this$0:Lcom/lidong/photopicker/PhotoPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPreviewActivity$1;->this$0:Lcom/lidong/photopicker/PhotoPreviewActivity;

    invoke-virtual {p1}, Lcom/lidong/photopicker/PhotoPreviewActivity;->updateActionBarTitle()V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method
