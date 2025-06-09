.class Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils$2$1;
.super Ljava/lang/Object;
.source "CheckAppUpdataUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils$2;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils$2;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils$2$1;->this$0:Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 96
    iget-object p1, p0, Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils$2$1;->this$0:Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils$2;

    iget-object p1, p1, Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils$2;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils$2$1;->this$0:Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils$2;

    iget-object p2, p2, Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils$2;->val$packageName:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils;->access$100(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
