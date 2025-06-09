.class public Lcom/mob/mcl/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/mcl/a$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/mob/mcl/b/b;)Lcom/mob/tools/network/HttpConnection;
    .locals 1

    .line 25
    new-instance v0, Lcom/mob/mcl/Tmpc$1;

    invoke-direct {v0, p0}, Lcom/mob/mcl/Tmpc$1;-><init>(Lcom/mob/mcl/b/b;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/mob/apc/a;)Lcom/mob/tools/network/HttpResponseCallback;
    .locals 0

    .line 49
    new-instance p0, Lcom/mob/mcl/Tmpc$2;

    invoke-direct {p0, p1}, Lcom/mob/mcl/Tmpc$2;-><init>(Lcom/mob/apc/a;)V

    return-object p0
.end method

.method public static a(Lcom/mob/mcl/a$a;)Lcom/mob/tools/utils/ActivityTracker$Tracker;
    .locals 1

    .line 62
    new-instance v0, Lcom/mob/mcl/Tmpc$3;

    invoke-direct {v0, p0}, Lcom/mob/mcl/Tmpc$3;-><init>(Lcom/mob/mcl/a$a;)V

    return-object v0
.end method
