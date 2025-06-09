.class Lcom/kugoo/kugookirin/social/ImagePagerActivity$1;
.super Ljava/lang/Object;
.source "ImagePagerActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/ImagePagerActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/ImagePagerActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/ImagePagerActivity;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/ImagePagerActivity$1;->this$0:Lcom/kugoo/kugookirin/social/ImagePagerActivity;

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

    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    .line 81
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ImagePagerActivity$1;->this$0:Lcom/kugoo/kugookirin/social/ImagePagerActivity;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    add-int/2addr p1, v2

    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/kugoo/kugookirin/social/ImagePagerActivity$1;->this$0:Lcom/kugoo/kugookirin/social/ImagePagerActivity;

    invoke-static {v3}, Lcom/kugoo/kugookirin/social/ImagePagerActivity;->access$000(Lcom/kugoo/kugookirin/social/ImagePagerActivity;)Lcom/kugoo/kugookirin/social/HackyViewPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/HackyViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const v2, 0x7f1203b4

    .line 81
    invoke-virtual {v0, v2, v1}, Lcom/kugoo/kugookirin/social/ImagePagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ImagePagerActivity$1;->this$0:Lcom/kugoo/kugookirin/social/ImagePagerActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/ImagePagerActivity;->access$100(Lcom/kugoo/kugookirin/social/ImagePagerActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/ImagePagerActivity$1;->this$0:Lcom/kugoo/kugookirin/social/ImagePagerActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/ImagePagerActivity;->access$000(Lcom/kugoo/kugookirin/social/ImagePagerActivity;)Lcom/kugoo/kugookirin/social/HackyViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/social/HackyViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
