.class public Lcom/zhihu/matisse/internal/entity/IncapableCause;
.super Ljava/lang/Object;
.source "IncapableCause.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/matisse/internal/entity/IncapableCause$Form;
    }
.end annotation


# static fields
.field public static final DIALOG:I = 0x1

.field public static final NONE:I = 0x2

.field public static final TOAST:I


# instance fields
.field private mForm:I

.field private mMessage:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/zhihu/matisse/internal/entity/IncapableCause;->mForm:I

    .line 55
    iput-object p2, p0, Lcom/zhihu/matisse/internal/entity/IncapableCause;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/zhihu/matisse/internal/entity/IncapableCause;->mForm:I

    .line 60
    iput-object p2, p0, Lcom/zhihu/matisse/internal/entity/IncapableCause;->mTitle:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/zhihu/matisse/internal/entity/IncapableCause;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/zhihu/matisse/internal/entity/IncapableCause;->mForm:I

    .line 45
    iput-object p1, p0, Lcom/zhihu/matisse/internal/entity/IncapableCause;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/zhihu/matisse/internal/entity/IncapableCause;->mForm:I

    .line 49
    iput-object p1, p0, Lcom/zhihu/matisse/internal/entity/IncapableCause;->mTitle:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/zhihu/matisse/internal/entity/IncapableCause;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public static handleCause(Landroid/content/Context;Lcom/zhihu/matisse/internal/entity/IncapableCause;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 68
    :cond_0
    iget v0, p1, Lcom/zhihu/matisse/internal/entity/IncapableCause;->mForm:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 79
    iget-object p1, p1, Lcom/zhihu/matisse/internal/entity/IncapableCause;->mMessage:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p1, Lcom/zhihu/matisse/internal/entity/IncapableCause;->mTitle:Ljava/lang/String;

    iget-object p1, p1, Lcom/zhihu/matisse/internal/entity/IncapableCause;->mMessage:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog;

    move-result-object p1

    .line 74
    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v0, Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog;

    .line 75
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {p1, p0, v0}, Lcom/zhihu/matisse/internal/ui/widget/IncapableDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
