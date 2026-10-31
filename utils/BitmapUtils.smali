.class public Lcom/aee/sport/magicam/utils/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static final MB:J = 0x100000L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 58
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 59
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 60
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static Bytes2Bitmap(Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    const-string v2, "bitmap"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 72
    .local v1, "buff":[B
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    .local v0, "bm":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public static adjustPhotoRotation(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "orientationDegree"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 341
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 342
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 343
    .local v3, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 345
    .local v4, "h":I
    mul-int v0, v3, v3

    mul-int v1, v4, v4

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v8, v0

    .line 347
    .local v8, "r":I
    const/16 v8, 0x1f4

    .line 349
    int-to-float v0, p2

    int-to-float v1, v3

    div-float/2addr v1, v6

    int-to-float v2, v4

    div-float/2addr v2, v6

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 352
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 353
    .local v7, "bm1":Landroid/graphics/Bitmap;
    int-to-double v0, v8

    int-to-double v9, v8

    invoke-static {v7, v0, v1, v9, v10}, Lcom/aee/sport/magicam/utils/BitmapUtils;->zoomImage(Landroid/graphics/Bitmap;DD)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 354
    const/16 v0, 0xc8

    invoke-static {v7, v0}, Lcom/aee/sport/magicam/utils/BitmapUtils;->setAlpha(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 358
    .end local v7    # "bm1":Landroid/graphics/Bitmap;
    :goto_0
    return-object v7

    .line 356
    :catch_0
    move-exception v0

    .line 358
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static bitmapRotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "rotate"    # I

    .prologue
    .line 469
    :try_start_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 470
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 471
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 472
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 475
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 473
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v7

    .line 474
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static createReflectionImageWithOrigin(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 26
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 289
    const/16 v24, 0x0

    .line 290
    .local v24, "reflectionGap":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 291
    .local v4, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    .line 292
    .local v22, "height":I
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 293
    .local v6, "matrix":Landroid/graphics/Matrix;
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 294
    const/4 v2, 0x0

    div-int/lit8 v3, v22, 0x2

    div-int/lit8 v5, v22, 0x2

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 295
    .local v25, "reflectionImage":Landroid/graphics/Bitmap;
    div-int/lit8 v1, v22, 0x4

    add-int v1, v1, v22

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 296
    .local v21, "bitmapWithReflection":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 297
    .local v7, "canvas":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 298
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 299
    .local v12, "deafalutPaint":Landroid/graphics/Paint;
    const/4 v8, 0x0

    move/from16 v0, v22

    int-to-float v9, v0

    int-to-float v10, v4

    add-int/lit8 v1, v22, 0x0

    int-to-float v11, v1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 300
    const/4 v1, 0x0

    add-int/lit8 v2, v22, 0x0

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 301
    new-instance v23, Landroid/graphics/Paint;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Paint;-><init>()V

    .line 303
    .local v23, "paint":Landroid/graphics/Paint;
    new-instance v13, Landroid/graphics/LinearGradient;

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v15, v1

    const/16 v16, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    int-to-float v0, v1

    move/from16 v17, v0

    const v18, 0x70ffffff

    const v19, 0xffffff

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 304
    .local v13, "shader":Landroid/graphics/LinearGradient;
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 306
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 308
    const/4 v15, 0x0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    int-to-float v0, v1

    move/from16 v18, v0

    move-object v14, v7

    move-object/from16 v19, v23

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 309
    return-object v21
.end method

.method public static declared-synchronized createVideoThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 493
    const-class v6, Lcom/aee/sport/magicam/utils/BitmapUtils;

    monitor-enter v6

    const/4 v0, 0x0

    .line 495
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    .local v4, "retriever":Landroid/media/MediaMetadataRetriever;
    const/4 v3, 0x1

    .line 498
    .local v3, "kind":I
    :try_start_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-lt v5, v7, :cond_1

    .line 499
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, p0, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 504
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 524
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 530
    :goto_2
    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    if-eqz v0, :cond_0

    .line 531
    const/4 v5, 0x2

    :try_start_4
    invoke-static {v0, p1, p2, v5}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 534
    :cond_0
    monitor-exit v6

    return-object v0

    .line 501
    :cond_1
    :try_start_5
    invoke-virtual {v4, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 516
    :catch_0
    move-exception v5

    .line 524
    :try_start_6
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 525
    :catch_1
    move-exception v2

    .line 526
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 493
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .end local v3    # "kind":I
    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 505
    .restart local v3    # "kind":I
    .restart local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catch_2
    move-exception v1

    .line 506
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 507
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 509
    :try_start_9
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    .line 510
    :catch_3
    move-exception v2

    .line 511
    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    :try_start_a
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1

    .line 518
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v5

    .line 524
    :try_start_b
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    .line 525
    :catch_5
    move-exception v2

    .line 526
    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_2

    .line 520
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_6
    move-exception v1

    .line 521
    .restart local v1    # "e":Ljava/lang/OutOfMemoryError;
    :try_start_d
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 524
    :try_start_e
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_2

    .line 525
    :catch_7
    move-exception v2

    .line 526
    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    :try_start_f
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_2

    .line 522
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v5

    .line 524
    :try_start_10
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 529
    :goto_3
    :try_start_11
    throw v5

    .line 525
    :catch_8
    move-exception v2

    .line 526
    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_3

    .line 525
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_9
    move-exception v2

    .line 526
    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_2
.end method

.method public static declared-synchronized createVideoThumbnailUseFFmpeg(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 549
    const-class v6, Lcom/aee/sport/magicam/utils/BitmapUtils;

    monitor-enter v6

    :try_start_0
    const-string v5, "@@22@@"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aget-object p0, v5, v7

    .line 550
    new-instance v4, Lwseemann/media/FFmpegMediaMetadataRetriever;

    invoke-direct {v4}, Lwseemann/media/FFmpegMediaMetadataRetriever;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    .local v4, "fmmr":Lwseemann/media/FFmpegMediaMetadataRetriever;
    const/4 v1, 0x0

    .line 553
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v4, p0}, Lwseemann/media/FFmpegMediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v4}, Lwseemann/media/FFmpegMediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 555
    if-eqz v1, :cond_1

    .line 556
    const-wide/32 v7, 0x3d0900

    const/4 v5, 0x2

    invoke-virtual {v4, v7, v8, v5}, Lwseemann/media/FFmpegMediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 557
    .local v0, "b2":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 558
    move-object v1, v0

    .line 560
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-le v5, p1, :cond_1

    .line 561
    const/4 v5, 0x2

    invoke-static {v1, p1, p2, v5}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 569
    .end local v0    # "b2":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Lwseemann/media/FFmpegMediaMetadataRetriever;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 584
    :goto_0
    monitor-exit v6

    return-object v1

    .line 564
    :catch_0
    move-exception v2

    .line 565
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 569
    :try_start_4
    invoke-virtual {v4}, Lwseemann/media/FFmpegMediaMetadataRetriever;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 549
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    .end local v4    # "fmmr":Lwseemann/media/FFmpegMediaMetadataRetriever;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 566
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "fmmr":Lwseemann/media/FFmpegMediaMetadataRetriever;
    :catch_1
    move-exception v3

    .line 567
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 569
    :try_start_6
    invoke-virtual {v4}, Lwseemann/media/FFmpegMediaMetadataRetriever;->release()V

    goto :goto_0

    .line 568
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    .line 569
    invoke-virtual {v4}, Lwseemann/media/FFmpegMediaMetadataRetriever;->release()V

    .line 570
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dipValue"    # F

    .prologue
    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 243
    .local v0, "scale":F
    mul-float v1, p2, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 279
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 280
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 282
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p0, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 283
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 284
    return-object v0

    .line 279
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 179
    const/4 v2, 0x0

    .line 181
    .local v2, "imageBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 182
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    div-long/2addr v4, v6

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 184
    const/4 v4, 0x2

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 186
    :cond_0
    invoke-static {p0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 191
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v2

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 170
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x100000

    div-long/2addr v3, v5

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 172
    const/4 v3, 0x2

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 174
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 175
    .local v1, "imageBitmap":Landroid/graphics/Bitmap;
    return-object v1
.end method

.method public static getBitmapSize(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 231
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    .line 236
    :goto_0
    return v0

    .line 233
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    .line 234
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public static getImageThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "imagePath"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 371
    const/4 v3, 0x0

    .line 373
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 374
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 376
    invoke-static {p0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 377
    const/4 v7, 0x0

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 379
    iget v4, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 380
    .local v4, "h":I
    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 381
    .local v6, "w":I
    div-int v2, v6, p1

    .line 382
    .local v2, "beWidth":I
    div-int v1, v4, p2

    .line 383
    .local v1, "beHeight":I
    const/4 v0, 0x1

    .line 384
    .local v0, "be":I
    if-ge v2, v1, :cond_1

    .line 385
    move v0, v2

    .line 389
    :goto_0
    if-gtz v0, :cond_0

    .line 390
    const/4 v0, 0x1

    .line 392
    :cond_0
    iput v0, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 394
    invoke-static {p0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 396
    const/4 v7, 0x2

    invoke-static {v3, p1, p2, v7}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 397
    invoke-static {p0}, Lcom/aee/sport/magicam/utils/BitmapUtils;->getOrientation(Ljava/lang/String;)I

    move-result v7

    invoke-static {v3, v7}, Lcom/aee/sport/magicam/utils/BitmapUtils;->bitmapRotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 401
    .end local v0    # "be":I
    .end local v1    # "beHeight":I
    .end local v2    # "beWidth":I
    .end local v4    # "h":I
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "w":I
    :goto_1
    return-object v3

    .line 387
    .restart local v0    # "be":I
    .restart local v1    # "beHeight":I
    .restart local v2    # "beWidth":I
    .restart local v4    # "h":I
    .restart local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "w":I
    :cond_1
    move v0, v1

    goto :goto_0

    .line 398
    .end local v0    # "be":I
    .end local v1    # "beHeight":I
    .end local v2    # "beWidth":I
    .end local v4    # "h":I
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "w":I
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private static getOrientation(Ljava/lang/String;)I
    .locals 7
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 412
    const/4 v1, 0x0

    .line 414
    .local v1, "exifInterface":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "exifInterface":Landroid/media/ExifInterface;
    .local v2, "exifInterface":Landroid/media/ExifInterface;
    move-object v1, v2

    .line 419
    .end local v2    # "exifInterface":Landroid/media/ExifInterface;
    .restart local v1    # "exifInterface":Landroid/media/ExifInterface;
    :goto_0
    const-string v5, "Orientation"

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 420
    .local v4, "tag":I
    const/4 v3, 0x0

    .line 421
    .local v3, "orientation":I
    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    .line 422
    const/16 v3, 0x5a

    .line 429
    :cond_0
    :goto_1
    return v3

    .line 415
    .end local v3    # "orientation":I
    .end local v4    # "tag":I
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 423
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "orientation":I
    .restart local v4    # "tag":I
    :cond_1
    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 424
    const/16 v3, 0xb4

    goto :goto_1

    .line 425
    :cond_2
    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 426
    const/16 v3, 0x10e

    goto :goto_1
.end method

.method public static getRCB(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "roundPX"    # F

    .prologue
    const/4 v8, 0x0

    .line 248
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 249
    .local v1, "dstbmp":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 250
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 251
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v3, v8, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 252
    .local v3, "rect":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 253
    .local v4, "rectF":Landroid/graphics/RectF;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 254
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 255
    const v5, -0xbdbdbe

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 256
    invoke-virtual {v0, v4, p1, p1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 257
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 258
    invoke-virtual {v0, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 259
    return-object v1
.end method

.method public static getSDPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 221
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 222
    .local v0, "hasSDCard":Z
    if-eqz v0, :cond_0

    .line 223
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getVideoThumbnail(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "videoPath"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "kind"    # I

    .prologue
    .line 448
    const/4 v0, 0x0

    .line 451
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, p3}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 452
    const/4 v2, 0x2

    invoke-static {v0, p1, p2, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 456
    :goto_0
    return-object v0

    .line 453
    :catch_0
    move-exception v1

    .line 454
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 104
    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v3

    .line 107
    .local v3, "willNotCache":Z
    invoke-virtual {p0, v4}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v2

    .line 112
    .local v2, "color":I
    invoke-virtual {p0, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 113
    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 118
    .local v1, "cacheBitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 119
    const/4 v0, 0x0

    .line 126
    :goto_0
    return-object v0

    .line 121
    :cond_1
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 124
    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 125
    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method public static save(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 149
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 153
    :cond_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 155
    .local v1, "out":Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 156
    return-void
.end method

.method public static setAlpha(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "sourceImg"    # Landroid/graphics/Bitmap;
    .param p1, "number"    # I

    .prologue
    const/4 v2, 0x0

    .line 322
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 323
    .local v1, "argb":[I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 324
    mul-int/lit16 v0, p1, 0xff

    div-int/lit8 p1, v0, 0x64

    .line 325
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v1

    if-lt v8, v0, :cond_0

    .line 328
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 330
    return-object p0

    .line 326
    :cond_0
    shl-int/lit8 v0, p1, 0x18

    aget v2, v1, v8

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    aput v0, v1, v8

    .line 325
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public static shot(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 85
    .local v3, "view":Landroid/view/View;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 86
    invoke-virtual {v3}, Landroid/view/View;->buildDrawingCache()V

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 88
    .local v2, "display":Landroid/view/Display;
    const/4 v4, 0x0

    const/16 v5, 0x1f4

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v6

    add-int/lit16 v6, v6, -0xc8

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v7

    add-int/lit16 v7, v7, -0xfa

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 89
    invoke-virtual {v3}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 92
    .local v1, "bmp":Landroid/graphics/Bitmap;
    return-object v1
.end method

.method private static zoomDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v1, 0x0

    .line 264
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 265
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 266
    .local v4, "height":I
    invoke-static {p0}, Lcom/aee/sport/magicam/utils/BitmapUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 267
    .local v0, "oldbmp":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 268
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v2, p1

    int-to-float v6, v3

    div-float v9, v2, v6

    .line 269
    .local v9, "scaleWidth":F
    int-to-float v2, p2

    int-to-float v6, v4

    div-float v8, v2, v6

    .line 270
    .local v8, "scaleHeight":F
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 271
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 272
    .local v7, "newbmp":Landroid/graphics/Bitmap;
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v7, v1}, Lcom/aee/sport/magicam/utils/BitmapUtils;->getRCB(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 273
    return-object v7
.end method

.method public static zoomImage(Landroid/graphics/Bitmap;DD)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "newWidth"    # D
    .param p3, "newHeight"    # D

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v11, v0

    .line 208
    .local v11, "width":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v8, v0

    .line 210
    .local v8, "height":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 212
    .local v5, "matrix":Landroid/graphics/Matrix;
    double-to-float v0, p1

    div-float v10, v0, v11

    .line 213
    .local v10, "scaleWidth":F
    double-to-float v0, p3

    div-float v9, v0, v8

    .line 215
    .local v9, "scaleHeight":F
    invoke-virtual {v5, v10, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 216
    const/4 v1, 0x0

    const/4 v2, 0x0

    float-to-int v3, v11

    float-to-int v4, v8

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 217
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    return-object v7
.end method
