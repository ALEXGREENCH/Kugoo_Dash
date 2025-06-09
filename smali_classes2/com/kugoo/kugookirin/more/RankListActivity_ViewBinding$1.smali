.class Lcom/kugoo/kugookirin/more/RankListActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "RankListActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/more/RankListActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/more/RankListActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/more/RankListActivity_ViewBinding;

.field final synthetic val$target:Lcom/kugoo/kugookirin/more/RankListActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/more/RankListActivity_ViewBinding;Lcom/kugoo/kugookirin/more/RankListActivity;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/RankListActivity_ViewBinding$1;->this$0:Lcom/kugoo/kugookirin/more/RankListActivity_ViewBinding;

    iput-object p2, p0, Lcom/kugoo/kugookirin/more/RankListActivity_ViewBinding$1;->val$target:Lcom/kugoo/kugookirin/more/RankListActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/RankListActivity_ViewBinding$1;->val$target:Lcom/kugoo/kugookirin/more/RankListActivity;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/more/RankListActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
