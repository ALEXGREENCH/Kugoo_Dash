.class public Lcom/kugoo/kugookirin/user/country/CountrySortToken;
.super Ljava/lang/Object;
.source "CountrySortToken.java"


# instance fields
.field public chName:Ljava/lang/String;

.field public simpleSpell:Ljava/lang/String;

.field public wholeSpell:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountrySortToken;->simpleSpell:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountrySortToken;->wholeSpell:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountrySortToken;->chName:Ljava/lang/String;

    return-void
.end method
