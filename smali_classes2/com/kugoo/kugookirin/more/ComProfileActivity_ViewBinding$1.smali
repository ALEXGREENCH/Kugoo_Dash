.class Lcom/kugoo/kugookirin/more/ComProfileActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ComProfileActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/more/ComProfileActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/more/ComProfileActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/more/ComProfileActivity_ViewBinding;

.field final synthetic val$target:Lcom/kugoo/kugookirin/more/ComProfileActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/more/ComProfileActivity_ViewBinding;Lcom/kugoo/kugookirin/more/ComProfileActivity;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/ComProfileActivity_ViewBinding$1;->this$0:Lcom/kugoo/kugookirin/more/ComProfileActivity_ViewBinding;

    iput-object p2, p0, Lcom/kugoo/kugookirin/more/ComProfileActivity_ViewBinding$1;->val$target:Lcom/kugoo/kugookirin/more/ComProfileActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ComProfileActivity_ViewBinding$1;->val$target:Lcom/kugoo/kugookirin/more/ComProfileActivity;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/more/ComProfileActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
