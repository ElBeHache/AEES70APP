.class Lcom/aee/sport/magicam/softwareupdate/UpdateManager$downloadApkThread;
.super Ljava/lang/Thread;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aee/sport/magicam/softwareupdate/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "downloadApkThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/softwareupdate/UpdateManager;


# direct methods
.method private constructor <init>(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$downloadApkThread;->this$0:Lcom/aee/sport/magicam/softwareupdate/UpdateManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;Lcom/aee/sport/magicam/softwareupdate/UpdateManager$downloadApkThread;)V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$downloadApkThread;-><init>(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 375
    :try_start_0
    iget-object v11, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$downloadApkThread;->this$0:Lcom/aee/sport/magicam/softwareupdate/UpdateManager;

    sget-object v12, Lcom/aee/sport/magicam/utils/Constants;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->access$4(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;Ljava/lang/String;)V

    .line 376
    new-instance v10, Ljava/net/URL;

    iget-object v11, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$downloadApkThread;->this$0:Lcom/aee/sport/magicam/softwareupdate/UpdateManager;

    iget-object v11, v11, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->mHashMap:Ljava/util/HashMap;

    const-string v12, "url"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 378
    .local v10, "url":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 379
    .local v2, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 381
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    .line 383
    .local v8, "length":I
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 385
    .local v7, "is":Ljava/io/InputStream;
    new-instance v5, Ljava/io/File;

    iget-object v11, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$downloadApkThread;->this$0:Lcom/aee/sport/magicam/softwareupdate/UpdateManager;

    invoke-static {v11}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->access$5(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 389
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 392
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v11, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$downloadApkThread;->this$0:Lcom/aee/sport/magicam/softwareupdate/UpdateManager;

    invoke-static {v11}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->access$5(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;)Ljava/lang/String;

    move-result-object v12

    iget-object v11, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$downloadApkThread;->this$0:Lcom/aee/sport/magicam/softwareupdate/UpdateManager;

    iget-object v11, v11, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->mHashMap:Ljava/util/HashMap;

    const-string v13, "name"

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v0, v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 396
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v11

    int-to-long v13, v8

    cmp-long v11, v11, v13

    if-gtz v11, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v11

    int-to-long v13, v8

    cmp-long v11, v11, v13

    if-nez v11, :cond_2

    .line 399
    :cond_1
    iget-object v11, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$downloadApkThread;->this$0:Lcom/aee/sport/magicam/softwareupdate/UpdateManager;

    invoke-static {v11}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->access$6(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 401
    iget-object v11, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$downloadApkThread;->this$0:Lcom/aee/sport/magicam/softwareupdate/UpdateManager;

    invoke-static {v11}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->access$7(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;)Lcom/aee/sport/magicam/softwareupdate/DialogView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->dismiss()V

    .line 442
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "length":I
    .end local v10    # "url":Ljava/net/URL;
    :goto_0
    return-void

    .line 408
    .restart local v0    # "apkFile":Ljava/io/File;
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v8    # "length":I
    .restart local v10    # "url":Ljava/net/URL;
    :cond_2
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 409
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 411
    .local v3, "count":I
    const/16 v11, 0x400

    new-array v1, v11, [B

    .line 415
    .local v1, "buf":[B
    :cond_3
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .line 416
    .local v9, "numread":I
    add-int/2addr v3, v9

    .line 418
    iget-object v11, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$downloadApkThread;->this$0:Lcom/aee/sport/magicam/softwareupdate/UpdateManager;

    int-to-float v12, v3

    int-to-float v13, v8

    div-float/2addr v12, v13

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-static {v11, v12}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->access$8(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;I)V

    .line 420
    iget-object v11, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$downloadApkThread;->this$0:Lcom/aee/sport/magicam/softwareupdate/UpdateManager;

    invoke-static {v11}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->access$6(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 421
    if-gtz v9, :cond_4

    .line 424
    iget-object v11, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$downloadApkThread;->this$0:Lcom/aee/sport/magicam/softwareupdate/UpdateManager;

    invoke-static {v11}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->access$6(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 430
    :goto_1
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 431
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 441
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "buf":[B
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "count":I
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "length":I
    .end local v9    # "numread":I
    .end local v10    # "url":Ljava/net/URL;
    :goto_2
    iget-object v11, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$downloadApkThread;->this$0:Lcom/aee/sport/magicam/softwareupdate/UpdateManager;

    invoke-static {v11}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->access$7(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;)Lcom/aee/sport/magicam/softwareupdate/DialogView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->dismiss()V

    goto :goto_0

    .line 428
    .restart local v0    # "apkFile":Ljava/io/File;
    .restart local v1    # "buf":[B
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "count":I
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v8    # "length":I
    .restart local v9    # "numread":I
    .restart local v10    # "url":Ljava/net/URL;
    :cond_4
    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v6, v1, v11, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 429
    iget-object v11, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$downloadApkThread;->this$0:Lcom/aee/sport/magicam/softwareupdate/UpdateManager;

    invoke-static {v11}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->access$9(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;)Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    .line 413
    if-eqz v11, :cond_3

    goto :goto_1

    .line 433
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "buf":[B
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "count":I
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "length":I
    .end local v9    # "numread":I
    .end local v10    # "url":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 435
    .local v4, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_2

    .line 436
    .end local v4    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v4

    .line 438
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
