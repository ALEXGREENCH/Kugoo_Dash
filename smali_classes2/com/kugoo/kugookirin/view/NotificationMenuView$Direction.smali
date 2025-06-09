.class final enum Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;
.super Ljava/lang/Enum;
.source "NotificationMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/view/NotificationMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

.field public static final enum LEFT:Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

.field public static final enum NONE:Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

.field public static final enum RIGHT:Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 129
    new-instance v0, Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;->LEFT:Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

    new-instance v1, Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

    const-string v3, "NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;->NONE:Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

    new-instance v3, Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;->RIGHT:Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 128
    sput-object v5, Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;->$VALUES:[Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;
    .locals 1

    .line 128
    const-class v0, Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

    return-object p0
.end method

.method public static values()[Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;
    .locals 1

    .line 128
    sget-object v0, Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;->$VALUES:[Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

    invoke-virtual {v0}, [Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

    return-object v0
.end method
