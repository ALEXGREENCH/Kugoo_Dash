.class Lcom/kugoo/kugookirin/vehicle/NfcActivity$6;
.super Ljava/lang/Object;
.source "NfcActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/NfcActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$6;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$6;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$802(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method
