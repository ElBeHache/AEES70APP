.class public Lcom/aee/sport/magicam/utils/MySharedPreferences;
.super Ljava/lang/Object;
.source "MySharedPreferences.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Ljava/lang/String;)Z
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "aee_pref"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 35
    .local v0, "edit":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "deafaulValue"    # Z

    .prologue
    .line 56
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "aee_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 57
    .local v0, "edit":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getInt(Ljava/lang/String;)I
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "aee_pref"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 46
    .local v0, "edit":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "aee_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 24
    .local v0, "edit":Landroid/content/SharedPreferences;
    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static putBoolean(Ljava/lang/String;Z)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    .line 94
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "aee_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 95
    .local v0, "edit":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    return-void
.end method

.method public static putInt(Ljava/lang/String;I)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 81
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "aee_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 82
    .local v0, "edit":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    return-void
.end method

.method public static putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "aee_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 70
    .local v0, "edit":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    return-void
.end method
