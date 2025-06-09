.class Lcom/kugoo/kugookirin/view/SobLooperPager$1;
.super Ljava/lang/Object;
.source "SobLooperPager.java"

# interfaces
.implements Lcom/kugoo/kugookirin/view/SobViewPager$OnPagerItemClickListener;


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

    .line 69
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/SobLooperPager$1;->this$0:Lcom/kugoo/kugookirin/view/SobLooperPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager$1;->this$0:Lcom/kugoo/kugookirin/view/SobLooperPager;

    invoke-static {v0}, Lcom/kugoo/kugookirin/view/SobLooperPager;->access$000(Lcom/kugoo/kugookirin/view/SobLooperPager;)Lcom/kugoo/kugookirin/view/SobLooperPager$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager$1;->this$0:Lcom/kugoo/kugookirin/view/SobLooperPager;

    invoke-static {v0}, Lcom/kugoo/kugookirin/view/SobLooperPager;->access$100(Lcom/kugoo/kugookirin/view/SobLooperPager;)Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager$1;->this$0:Lcom/kugoo/kugookirin/view/SobLooperPager;

    invoke-static {v0}, Lcom/kugoo/kugookirin/view/SobLooperPager;->access$100(Lcom/kugoo/kugookirin/view/SobLooperPager;)Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;->getDataSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager$1;->this$0:Lcom/kugoo/kugookirin/view/SobLooperPager;

    invoke-static {v0}, Lcom/kugoo/kugookirin/view/SobLooperPager;->access$100(Lcom/kugoo/kugookirin/view/SobLooperPager;)Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;->getDataSize()I

    move-result v0

    rem-int/2addr p1, v0

    .line 74
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager$1;->this$0:Lcom/kugoo/kugookirin/view/SobLooperPager;

    invoke-static {v0}, Lcom/kugoo/kugookirin/view/SobLooperPager;->access$000(Lcom/kugoo/kugookirin/view/SobLooperPager;)Lcom/kugoo/kugookirin/view/SobLooperPager$OnItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kugoo/kugookirin/view/SobLooperPager$OnItemClickListener;->onItemClick(I)V

    :cond_0
    return-void
.end method
