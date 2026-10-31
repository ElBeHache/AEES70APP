.class public Lcom/aee/sport/magicam/utils/PublicUtils;
.super Ljava/lang/Object;
.source "PublicUtils.java"


# static fields
.field private static landImgWidth:I

.field private static portImgWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppStatus(Ljava/lang/String;)I
    .locals 3
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "appStatus":I
    if-nez p0, :cond_0

    move v1, v0

    .line 236
    .end local v0    # "appStatus":I
    .local v1, "appStatus":I
    :goto_0
    return v1

    .line 227
    .end local v1    # "appStatus":I
    .restart local v0    # "appStatus":I
    :cond_0
    const-string v2, "idle"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 228
    const/4 v0, 0x0

    :cond_1
    :goto_1
    move v1, v0

    .line 236
    .end local v0    # "appStatus":I
    .restart local v1    # "appStatus":I
    goto :goto_0

    .line 229
    .end local v1    # "appStatus":I
    .restart local v0    # "appStatus":I
    :cond_2
    const-string v2, "vf"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 230
    const/4 v0, 0x1

    goto :goto_1

    .line 231
    :cond_3
    const-string v2, "record"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 232
    const/4 v0, 0x2

    goto :goto_1

    .line 233
    :cond_4
    const-string v2, "capture"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    const/4 v0, 0x3

    goto :goto_1
.end method

.method public static getImgWidth(Landroid/content/Context;)I
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-static {p0}, Lcom/aee/sport/magicam/utils/PublicUtils;->isLand(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p0}, Lcom/aee/sport/magicam/utils/PublicUtils;->getLandImgWidth(Landroid/content/Context;)I

    move-result v0

    .line 97
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/aee/sport/magicam/utils/PublicUtils;->getPortImgWidth(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public static getIndexFromArray(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "array"    # [Ljava/lang/String;

    .prologue
    .line 168
    :try_start_0
    array-length v2, p1

    .line 169
    .local v2, "size":I
    const/4 v1, 0x0

    .line 170
    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 177
    .end local v1    # "i":I
    .end local v2    # "size":I
    :goto_1
    const/4 v1, 0x0

    :cond_0
    return v1

    .line 171
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_1
    aget-object v3, p1, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getLandImgWidth(Landroid/content/Context;)I
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 64
    sget v1, Lcom/aee/sport/magicam/utils/PublicUtils;->landImgWidth:I

    if-nez v1, :cond_0

    .line 65
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 66
    .local v0, "dm":Landroid/util/DisplayMetrics;
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "mContext":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 67
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->LAND_DIVIDE:I

    div-int/2addr v1, v2

    sput v1, Lcom/aee/sport/magicam/utils/PublicUtils;->landImgWidth:I

    .line 69
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    :cond_0
    sget v1, Lcom/aee/sport/magicam/utils/PublicUtils;->landImgWidth:I

    return v1
.end method

.method public static getMapFromString(Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .param p0, "inputStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 203
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 204
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "["

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 205
    .local v1, "index":I
    const-string v6, "]"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v1, :cond_0

    .line 206
    const-string v6, "["

    const-string v8, ""

    invoke-virtual {p0, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "]"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 207
    const-string v6, ","

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "array":[Ljava/lang/String;
    array-length v8, v0

    move v6, v7

    :goto_0
    if-lt v6, v8, :cond_1

    .line 216
    .end local v0    # "array":[Ljava/lang/String;
    :cond_0
    return-object v4

    .line 208
    .restart local v0    # "array":[Ljava/lang/String;
    :cond_1
    aget-object v2, v0, v6

    .line 209
    .local v2, "info":Ljava/lang/String;
    const-string v9, "{"

    const-string v10, ""

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "}"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 210
    const-string v9, "\":"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v7

    const-string v10, "\""

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, "key":Ljava/lang/String;
    const-string v9, "\":"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const-string v10, "\""

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 212
    .local v5, "value":Ljava/lang/String;
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static getPhotoSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "M"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPortImgWidth(Landroid/content/Context;)I
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 79
    sget v1, Lcom/aee/sport/magicam/utils/PublicUtils;->portImgWidth:I

    if-nez v1, :cond_0

    .line 80
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 81
    .local v0, "dm":Landroid/util/DisplayMetrics;
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "mContext":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 82
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->PORT_DIVIDE:I

    div-int/2addr v1, v2

    sput v1, Lcom/aee/sport/magicam/utils/PublicUtils;->portImgWidth:I

    .line 84
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    :cond_0
    sget v1, Lcom/aee/sport/magicam/utils/PublicUtils;->portImgWidth:I

    return v1
.end method

.method public static getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "inputStr"    # Ljava/lang/String;

    .prologue
    .line 150
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    .line 151
    .local v0, "array":[Ljava/lang/String;
    const-string v2, "["

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 152
    .local v1, "index":I
    const-string v2, "]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 153
    const-string v2, "["

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 154
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 156
    :cond_0
    return-object v0
.end method

.method public static getTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0xa

    .line 246
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 247
    .local v2, "min":I
    div-int/lit8 v0, v2, 0x3c

    .line 248
    .local v0, "hour":I
    rem-int/lit8 v2, v2, 0x3c

    .line 249
    if-ge v0, v6, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "hourStr":Ljava/lang/String;
    :goto_0
    if-ge v2, v6, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "minStr":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 249
    .end local v1    # "hourStr":Ljava/lang/String;
    .end local v3    # "minStr":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 250
    .restart local v1    # "hourStr":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static getVideoFov(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 286
    :try_start_0
    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    const-string v1, "S"

    .line 291
    :goto_0
    return-object v1

    .line 288
    :cond_0
    :try_start_1
    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 291
    const-string v1, ""

    goto :goto_0
.end method

.method public static getVideoResolution(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 261
    const-string v1, "x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    const-string v2, "f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, " 0"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "res":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    :cond_0
    return-object v0
.end method

.method public static isLand(Landroid/content/Context;)Z
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 45
    .local v0, "mConfiguration":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 47
    .local v1, "ori":I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 54
    :goto_0
    return v2

    .line 50
    :cond_0
    if-ne v1, v2, :cond_1

    move v2, v3

    .line 52
    goto :goto_0

    :cond_1
    move v2, v3

    .line 54
    goto :goto_0
.end method

.method public static isScreenLocked()Z
    .locals 3

    .prologue
    .line 302
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aee/sport/magicam/AeeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 303
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aee/sport/magicam/AeeApplication;->getApplicationContext()Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 302
    check-cast v0, Landroid/app/KeyguardManager;

    .line 304
    .local v0, "mKeyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method

.method public static shareMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "activityTitle"    # Ljava/lang/String;
    .param p2, "msgTitle"    # Ljava/lang/String;
    .param p3, "msgText"    # Ljava/lang/String;
    .param p4, "imgPath"    # Ljava/lang/String;

    .prologue
    const/high16 v4, 0x10000000

    .line 322
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p4, :cond_0

    const-string v3, ""

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 324
    :cond_0
    const-string v3, "text/plain"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 328
    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 344
    :goto_0
    return-void

    .line 330
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 332
    const-string v3, "*/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 334
    .local v2, "u":Landroid/net/Uri;
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 335
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 338
    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 340
    .end local v2    # "u":Landroid/net/Uri;
    :cond_2
    const v3, 0x7f08007b

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto :goto_0
.end method

.method public static small(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I

    .prologue
    const/4 v1, 0x0

    .line 110
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 111
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 112
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 113
    .local v7, "resizeBmp":Landroid/graphics/Bitmap;
    return-object v7
.end method

.method public static thisFileType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 120
    const-string v1, ""

    .line 121
    .local v1, "type":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "end":Ljava/lang/String;
    const-string v2, "jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    :cond_0
    const-string v1, "image"

    .line 129
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    return-object v1

    .line 124
    :cond_1
    const-string v2, "3gp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "mp4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "mov"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "wav"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    :cond_2
    const-string v1, "video"

    goto :goto_0

    .line 127
    :cond_3
    const-string v1, "*"

    goto :goto_0
.end method
