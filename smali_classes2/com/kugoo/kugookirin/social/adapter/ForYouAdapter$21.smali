.class Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$21;
.super Ljava/lang/Object;
.source "ForYouAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->showTipOffsDialog(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$dynamicID:Ljava/lang/String;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Landroid/app/Dialog;Ljava/lang/String;I)V
    .locals 0

    .line 731
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$21;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$21;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$21;->val$dynamicID:Ljava/lang/String;

    iput p4, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$21;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 734
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$21;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 735
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$21;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$21;->val$dynamicID:Ljava/lang/String;

    iget v1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$21;->val$index:I

    invoke-static {p1, v0, v1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->access$3800(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Ljava/lang/String;I)V

    return-void
.end method
