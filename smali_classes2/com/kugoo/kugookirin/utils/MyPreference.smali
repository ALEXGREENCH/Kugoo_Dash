.class public Lcom/kugoo/kugookirin/utils/MyPreference;
.super Ljava/lang/Object;
.source "MyPreference.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMyPref(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 10
    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method
