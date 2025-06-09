.class Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$5;
.super Ljava/lang/Object;
.source "ModifyPersonalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->changeGender()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Landroid/app/Dialog;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$5;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$5;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 395
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$5;->this$0:Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;

    const-string v0, "sex"

    const-string v1, "3"

    invoke-static {p1, v0, v1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->access$200(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
