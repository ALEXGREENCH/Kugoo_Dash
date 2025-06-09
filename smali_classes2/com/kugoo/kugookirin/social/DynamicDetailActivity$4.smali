.class Lcom/kugoo/kugookirin/social/DynamicDetailActivity$4;
.super Ljava/lang/Object;
.source "DynamicDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->showTipOffsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Landroid/app/Dialog;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$4;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$4;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 303
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$4;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$700(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$4;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$800(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Inaccurate"

    const-string v3, "1"

    invoke-static {p1, v0, v3, v1, v2}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$900(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
