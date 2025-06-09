.class Lcom/kugoo/kugookirin/more/ServiceActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ServiceActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/more/ServiceActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/more/ServiceActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/more/ServiceActivity_ViewBinding;

.field final synthetic val$target:Lcom/kugoo/kugookirin/more/ServiceActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/more/ServiceActivity_ViewBinding;Lcom/kugoo/kugookirin/more/ServiceActivity;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/ServiceActivity_ViewBinding$1;->this$0:Lcom/kugoo/kugookirin/more/ServiceActivity_ViewBinding;

    iput-object p2, p0, Lcom/kugoo/kugookirin/more/ServiceActivity_ViewBinding$1;->val$target:Lcom/kugoo/kugookirin/more/ServiceActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ServiceActivity_ViewBinding$1;->val$target:Lcom/kugoo/kugookirin/more/ServiceActivity;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/more/ServiceActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
