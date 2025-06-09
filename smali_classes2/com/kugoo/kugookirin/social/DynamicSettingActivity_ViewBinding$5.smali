.class Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding$5;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DynamicSettingActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/social/DynamicSettingActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding;

.field final synthetic val$target:Lcom/kugoo/kugookirin/social/DynamicSettingActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding;Lcom/kugoo/kugookirin/social/DynamicSettingActivity;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding$5;->this$0:Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding$5;->val$target:Lcom/kugoo/kugookirin/social/DynamicSettingActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity_ViewBinding$5;->val$target:Lcom/kugoo/kugookirin/social/DynamicSettingActivity;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
