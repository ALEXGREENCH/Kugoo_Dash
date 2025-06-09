.class Lcom/kugoo/kugookirin/view/SobLooperPager$2;
.super Ljava/lang/Object;
.source "SobLooperPager.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/view/SobLooperPager;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/view/SobLooperPager;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/view/SobLooperPager;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/SobLooperPager$2;->this$0:Lcom/kugoo/kugookirin/view/SobLooperPager;

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
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager$2;->this$0:Lcom/kugoo/kugookirin/view/SobLooperPager;

    invoke-static {v0}, Lcom/kugoo/kugookirin/view/SobLooperPager;->access$100(Lcom/kugoo/kugookirin/view/SobLooperPager;)Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager$2;->this$0:Lcom/kugoo/kugookirin/view/SobLooperPager;

    invoke-static {v0}, Lcom/kugoo/kugookirin/view/SobLooperPager;->access$100(Lcom/kugoo/kugookirin/view/SobLooperPager;)Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;->getDataSize()I

    move-result v0

    if-lez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager$2;->this$0:Lcom/kugoo/kugookirin/view/SobLooperPager;

    invoke-static {v0}, Lcom/kugoo/kugookirin/view/SobLooperPager;->access$100(Lcom/kugoo/kugookirin/view/SobLooperPager;)Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;->getDataSize()I

    move-result v0

    rem-int v0, p1, v0

    .line 91
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/SobLooperPager$2;->this$0:Lcom/kugoo/kugookirin/view/SobLooperPager;

    invoke-static {v1}, Lcom/kugoo/kugookirin/view/SobLooperPager;->access$200(Lcom/kugoo/kugookirin/view/SobLooperPager;)Lcom/kugoo/kugookirin/view/SobLooperPager$BindTitleListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/SobLooperPager$2;->this$0:Lcom/kugoo/kugookirin/view/SobLooperPager;

    invoke-static {v1}, Lcom/kugoo/kugookirin/view/SobLooperPager;->access$300(Lcom/kugoo/kugookirin/view/SobLooperPager;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/kugoo/kugookirin/view/SobLooperPager$2;->this$0:Lcom/kugoo/kugookirin/view/SobLooperPager;

    invoke-static {v2}, Lcom/kugoo/kugookirin/view/SobLooperPager;->access$200(Lcom/kugoo/kugookirin/view/SobLooperPager;)Lcom/kugoo/kugookirin/view/SobLooperPager$BindTitleListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/kugoo/kugookirin/view/SobLooperPager$BindTitleListener;->getTitle(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager$2;->this$0:Lcom/kugoo/kugookirin/view/SobLooperPager;

    invoke-static {v0}, Lcom/kugoo/kugookirin/view/SobLooperPager;->access$400(Lcom/kugoo/kugookirin/view/SobLooperPager;)V

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager$2;->this$0:Lcom/kugoo/kugookirin/view/SobLooperPager;

    invoke-static {v0}, Lcom/kugoo/kugookirin/view/SobLooperPager;->access$500(Lcom/kugoo/kugookirin/view/SobLooperPager;)Lcom/kugoo/kugookirin/view/SobLooperPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager$2;->this$0:Lcom/kugoo/kugookirin/view/SobLooperPager;

    invoke-static {v0}, Lcom/kugoo/kugookirin/view/SobLooperPager;->access$100(Lcom/kugoo/kugookirin/view/SobLooperPager;)Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;->getDataSize()I

    move-result v0

    if-lez v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager$2;->this$0:Lcom/kugoo/kugookirin/view/SobLooperPager;

    invoke-static {v0}, Lcom/kugoo/kugookirin/view/SobLooperPager;->access$100(Lcom/kugoo/kugookirin/view/SobLooperPager;)Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;->getDataSize()I

    move-result v0

    rem-int/2addr p1, v0

    .line 99
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager$2;->this$0:Lcom/kugoo/kugookirin/view/SobLooperPager;

    invoke-static {v0}, Lcom/kugoo/kugookirin/view/SobLooperPager;->access$500(Lcom/kugoo/kugookirin/view/SobLooperPager;)Lcom/kugoo/kugookirin/view/SobLooperPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kugoo/kugookirin/view/SobLooperPager$OnPageChangeListener;->onPageChanged(I)V

    :cond_2
    return-void
.end method
