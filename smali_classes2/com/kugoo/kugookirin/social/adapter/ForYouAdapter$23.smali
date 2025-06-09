.class Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$23;
.super Ljava/lang/Object;
.source "ForYouAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->showBlockPostDialog(Ljava/lang/String;I)V
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
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Ljava/lang/String;ILandroid/app/Dialog;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$23;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$23;->val$dynamicID:Ljava/lang/String;

    iput p3, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$23;->val$index:I

    iput-object p4, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$23;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 758
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$23;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$23;->val$dynamicID:Ljava/lang/String;

    iget v1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$23;->val$index:I

    invoke-static {p1, v0, v1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->access$3900(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Ljava/lang/String;I)V

    .line 759
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$23;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
