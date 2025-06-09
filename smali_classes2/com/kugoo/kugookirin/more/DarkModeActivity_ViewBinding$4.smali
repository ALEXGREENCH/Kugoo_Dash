.class Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DarkModeActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/more/DarkModeActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding;

.field final synthetic val$target:Lcom/kugoo/kugookirin/more/DarkModeActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding;Lcom/kugoo/kugookirin/more/DarkModeActivity;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding$4;->this$0:Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding;

    iput-object p2, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding$4;->val$target:Lcom/kugoo/kugookirin/more/DarkModeActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity_ViewBinding$4;->val$target:Lcom/kugoo/kugookirin/more/DarkModeActivity;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/more/DarkModeActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
