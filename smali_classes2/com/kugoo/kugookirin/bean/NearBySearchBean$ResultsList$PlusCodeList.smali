.class public Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$PlusCodeList;
.super Ljava/lang/Object;
.source "NearBySearchBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlusCodeList"
.end annotation


# instance fields
.field private compound_code:Ljava/lang/String;

.field private global_code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCompound_code()Ljava/lang/String;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$PlusCodeList;->compound_code:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobal_code()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$PlusCodeList;->global_code:Ljava/lang/String;

    return-object v0
.end method

.method public setCompound_code(Ljava/lang/String;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$PlusCodeList;->compound_code:Ljava/lang/String;

    return-void
.end method

.method public setGlobal_code(Ljava/lang/String;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$PlusCodeList;->global_code:Ljava/lang/String;

    return-void
.end method
