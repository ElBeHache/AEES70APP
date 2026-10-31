.class public Lcom/aee/sport/magicam/utils/Params;
.super Ljava/lang/Object;
.source "Params.java"


# static fields
.field public static final APP_STATUS:Ljava/lang/String; = "app status"

.field public static final CAMERA_CLOCK:Ljava/lang/String; = "camera_clock"

.field public static final GET_DV_BAT:Ljava/lang/String; = "get_dv_bat"

.field public static final GET_DV_FS:Ljava/lang/String; = "get_dv_fs"

.field public static final GET_DV_INFO:Ljava/lang/String; = "get_dv_info"

.field public static final GET_DV_MODE:Ljava/lang/String; = "get_dv_mode"

.field public static final GET_DV_PID:Ljava/lang/String; = "get_dv_pid"

.field public static final GET_VIDEO_TIME:Ljava/lang/String; = "get_video_time"

.field public static final HEIGHT_NAME:[Ljava/lang/String;

.field public static final LANGUAGE:Ljava/lang/String; = "language"

.field public static final LANGUAGE_DIS:[Ljava/lang/String;

.field public static final PHOTO_CAP_MODE:Ljava/lang/String; = "photo_cap_mode"

.field public static final PHOTO_MODE:Ljava/lang/String; = "photo_mode"

.field public static final PHOTO_MODE_VALUE:[Ljava/lang/String;

.field public static final PHOTO_QUALITY:Ljava/lang/String; = "photo_quality"

.field public static final PHOTO_SELFTIMER:Ljava/lang/String; = "photo_selftimer"

.field public static final PHOTO_SHOT_MODE:Ljava/lang/String; = "photo_shot_mode"

.field public static final PHOTO_SIZE:Ljava/lang/String; = "photo_size"

.field public static final PHOTO_STAMP:Ljava/lang/String; = "video_stamp"

.field public static final PHOTO_TLM:Ljava/lang/String; = "photo_tlm"

.field public static final RECORD_MODE:Ljava/lang/String; = "record_mode"

.field public static final RECORD_MODE_VALUE:[Ljava/lang/String;

.field public static final SETUP_KEY_TONE:Ljava/lang/String; = "setup_key_tone"

.field public static final SETUP_KEY_TONE_DIS:[Ljava/lang/String;

.field public static final SETUP_LOOP_BACK:Ljava/lang/String; = "setup_loop_back"

.field public static final SETUP_OSD:Ljava/lang/String; = "setup_osd"

.field public static final SETUP_POWEROFF:Ljava/lang/String; = "setup_poweroff"

.field public static final SETUP_SELFLAMP:Ljava/lang/String; = "setup_selflamp"

.field public static final SETUP_SELFLAMP_DIS:[Ljava/lang/String;

.field public static final SETUP_TIME:Ljava/lang/String; = "setup_time"

.field public static final SET_DEFAULT:Ljava/lang/String; = "set_default"

.field public static final STREAM_OUT_TYPE:Ljava/lang/String; = "stream_out_type"

.field public static final VIDEO_FLIP_ROTATE:Ljava/lang/String; = "video_flip_rotate"

.field public static final VIDEO_FOV:Ljava/lang/String; = "video_fov"

.field public static final VIDEO_FOV_DIS:[Ljava/lang/String;

.field public static final VIDEO_QUALITY:Ljava/lang/String; = "video_quality"

.field public static final VIDEO_RESOLUTION:Ljava/lang/String; = "video_resolution"

.field public static final VIDEO_STAMP:Ljava/lang/String; = "video_stamp"

.field public static final VIDEO_STANDARD:Ljava/lang/String; = "setup_system_type"

.field public static final VIDEO_STANDARD_DIS:[Ljava/lang/String;

.field public static final VIDEO_TIME_LAPSE:Ljava/lang/String; = "video_time_lapse"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 159
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lcom/aee/sport/magicam/AeeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 161
    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 159
    sput-object v0, Lcom/aee/sport/magicam/utils/Params;->HEIGHT_NAME:[Ljava/lang/String;

    .line 166
    new-array v0, v7, [Ljava/lang/String;

    .line 167
    const-string v1, "Wide"

    aput-object v1, v0, v3

    .line 168
    const-string v1, "Medium"

    aput-object v1, v0, v4

    .line 169
    const-string v1, "Narrow"

    aput-object v1, v0, v5

    .line 170
    const-string v1, "Small"

    aput-object v1, v0, v6

    .line 166
    sput-object v0, Lcom/aee/sport/magicam/utils/Params;->VIDEO_FOV_DIS:[Ljava/lang/String;

    .line 176
    new-array v0, v6, [Ljava/lang/String;

    .line 177
    const-string v1, "Off"

    aput-object v1, v0, v3

    .line 178
    const-string v1, "Medium"

    aput-object v1, v0, v4

    .line 179
    const-string v1, "Standard"

    aput-object v1, v0, v5

    .line 176
    sput-object v0, Lcom/aee/sport/magicam/utils/Params;->SETUP_KEY_TONE_DIS:[Ljava/lang/String;

    .line 185
    new-array v0, v6, [Ljava/lang/String;

    .line 186
    const-string v1, "Off"

    aput-object v1, v0, v3

    .line 187
    const-string v1, "On2"

    aput-object v1, v0, v4

    .line 188
    const-string v1, "On"

    aput-object v1, v0, v5

    .line 185
    sput-object v0, Lcom/aee/sport/magicam/utils/Params;->SETUP_SELFLAMP_DIS:[Ljava/lang/String;

    .line 194
    new-array v0, v5, [Ljava/lang/String;

    .line 195
    const-string v1, "PAL"

    aput-object v1, v0, v3

    .line 196
    const-string v1, "NTSC"

    aput-object v1, v0, v4

    .line 194
    sput-object v0, Lcom/aee/sport/magicam/utils/Params;->VIDEO_STANDARD_DIS:[Ljava/lang/String;

    .line 202
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    .line 203
    const-string v1, "Simplified Chinese"

    aput-object v1, v0, v3

    .line 204
    const-string v1, "Traditional Chinese"

    aput-object v1, v0, v4

    .line 205
    const-string v1, "English"

    aput-object v1, v0, v5

    .line 206
    const-string v1, "German"

    aput-object v1, v0, v6

    .line 207
    const-string v1, "French"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 208
    const-string v2, "Italian"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 209
    const-string v2, "Spanish"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 210
    const-string v2, "Portuguese"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 211
    const-string v2, "Russian"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 212
    const-string v2, "Japanese"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 213
    const-string v2, "Korean"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 214
    const-string v2, "Czech"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 215
    const-string v2, "Greek"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 216
    const-string v2, "Dutch"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 217
    const-string v2, "Turkish"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 218
    const-string v2, "Hungarian"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 219
    const-string v2, "Danish"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 220
    const-string v2, "Finnish"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 221
    const-string v2, "Norway"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 222
    const-string v2, "Swedish"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 223
    const-string v2, "Polish"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 224
    const-string v2, "Ukrainian"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 225
    const-string v2, "Romanian"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 226
    const-string v2, "Slovakia"

    aput-object v2, v0, v1

    .line 202
    sput-object v0, Lcom/aee/sport/magicam/utils/Params;->LANGUAGE_DIS:[Ljava/lang/String;

    .line 239
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 240
    const-string v1, "record_mode_vid"

    aput-object v1, v0, v3

    .line 241
    const-string v1, "record_mode_voi"

    aput-object v1, v0, v4

    .line 242
    const-string v1, "record_mode_lap"

    aput-object v1, v0, v5

    .line 243
    const-string v1, "record_mode_pre"

    aput-object v1, v0, v6

    .line 244
    const-string v1, "record_mode_sel"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 245
    const-string v2, "record_mode_piv"

    aput-object v2, v0, v1

    .line 239
    sput-object v0, Lcom/aee/sport/magicam/utils/Params;->RECORD_MODE_VALUE:[Ljava/lang/String;

    .line 256
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 257
    const-string v1, "photo_cap_mode_nor"

    aput-object v1, v0, v3

    .line 258
    const-string v1, "photo_cap_mode_fas"

    aput-object v1, v0, v4

    .line 259
    const-string v1, "photo_cap_mode_cfa"

    aput-object v1, v0, v5

    .line 260
    const-string v1, "photo_cap_mode_tlm"

    aput-object v1, v0, v6

    .line 261
    const-string v1, "photo_cap_mode_lop"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 262
    const-string v2, "photo_cap_mode_sel"

    aput-object v2, v0, v1

    .line 256
    sput-object v0, Lcom/aee/sport/magicam/utils/Params;->PHOTO_MODE_VALUE:[Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIndexFromNameArray(ZLjava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "isNameArray"    # Z
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 358
    const/4 v2, 0x0

    .line 359
    .local v2, "typeNameInt":I
    if-eqz p0, :cond_1

    .line 360
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aee/sport/magicam/AeeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 361
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "array"

    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/aee/sport/magicam/AeeApplication;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 367
    :goto_0
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v4

    .line 368
    invoke-virtual {v4}, Lcom/aee/sport/magicam/AeeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 369
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, "typeValues":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-lt v0, v4, :cond_2

    .line 381
    const/16 v0, -0x64

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 363
    .end local v3    # "typeValues":[Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aee/sport/magicam/AeeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 364
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "array"

    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/aee/sport/magicam/AeeApplication;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 363
    goto :goto_0

    .line 373
    .restart local v0    # "i":I
    .restart local v3    # "typeValues":[Ljava/lang/String;
    :cond_2
    aget-object v1, v3, v0

    .line 374
    .local v1, "typeName":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getNameFromTypeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 393
    :try_start_0
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aee/sport/magicam/AeeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 394
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "array"

    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/aee/sport/magicam/AeeApplication;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 396
    .local v2, "typeNameInt":I
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v4

    .line 397
    invoke-virtual {v4}, Lcom/aee/sport/magicam/AeeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 398
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 407
    .local v3, "typeNames":[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v4, p0, p1}, Lcom/aee/sport/magicam/utils/Params;->getIndexFromNameArray(ZLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 408
    .local v1, "index":I
    if-ltz v1, :cond_0

    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 409
    aget-object p1, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    .end local v1    # "index":I
    .end local v2    # "typeNameInt":I
    .end local v3    # "typeNames":[Ljava/lang/String;
    .end local p1    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 412
    .restart local p1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getNamesFromValus(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "values"    # [Ljava/lang/String;

    .prologue
    .line 452
    array-length v2, p1

    .line 453
    .local v2, "size":I
    array-length v4, p1

    new-array v1, v4, [Ljava/lang/String;

    .line 454
    .local v1, "names":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 459
    return-object v1

    .line 456
    :cond_0
    aget-object v3, p1, v0

    .line 457
    .local v3, "value":Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/aee/sport/magicam/utils/Params;->getNameFromTypeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getValueFromTypeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 429
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aee/sport/magicam/AeeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 430
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "array"

    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/aee/sport/magicam/AeeApplication;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 432
    .local v1, "typeNameInt":I
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v3

    .line 433
    invoke-virtual {v3}, Lcom/aee/sport/magicam/AeeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 434
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, "typeValues":[Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {v3, p0, p1}, Lcom/aee/sport/magicam/utils/Params;->getIndexFromNameArray(ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 437
    .local v0, "index":I
    if-ltz v0, :cond_0

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 438
    aget-object p1, v2, v0

    .line 440
    .end local p1    # "name":Ljava/lang/String;
    :cond_0
    return-object p1
.end method
