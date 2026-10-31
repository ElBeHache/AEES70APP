.class public Lcom/aee/sport/magicam/utils/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;
    }
.end annotation


# static fields
.field private static final DELAY_BEFORE_PURGE:J = 0x2bf20L

.field private static final MAX_CAPACITY:I = 0xa

.field private static final SAVE_PATH:Ljava/lang/String; = "/AEE/ImageLoaderCache"

.field private static final TAG:Ljava/lang/String; = "ImageLoader"


# instance fields
.field private mClearCache:Ljava/lang/Runnable;

.field private mFirstLevelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mPurgeHandler:Landroid/os/Handler;

.field private mSecondLevelCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/aee/sport/magicam/utils/ImageLoader$1;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/aee/sport/magicam/utils/ImageLoader$1;-><init>(Lcom/aee/sport/magicam/utils/ImageLoader;IFZ)V

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ImageLoader;->mFirstLevelCache:Ljava/util/HashMap;

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    invoke-direct {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ImageLoader;->mSecondLevelCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    new-instance v0, Lcom/aee/sport/magicam/utils/ImageLoader$2;

    invoke-direct {v0, p0}, Lcom/aee/sport/magicam/utils/ImageLoader$2;-><init>(Lcom/aee/sport/magicam/utils/ImageLoader;)V

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ImageLoader;->mClearCache:Ljava/lang/Runnable;

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ImageLoader;->mPurgeHandler:Landroid/os/Handler;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/utils/ImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ImageLoader;->mSecondLevelCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1(Lcom/aee/sport/magicam/utils/ImageLoader;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/aee/sport/magicam/utils/ImageLoader;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ImageLoader;->mFirstLevelCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 75
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ImageLoader;->mSecondLevelCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 76
    return-void
.end method

.method public static clearFile(Ljava/lang/String;)V
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aee/sport/magicam/utils/ImageLoader;->getSDPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 371
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/aee/sport/magicam/utils/ImageLoader;->clearPathFiles(Ljava/io/File;)V

    .line 373
    return-void
.end method

.method private static clearPathFiles(Ljava/io/File;)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 382
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 383
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 388
    .local v0, "childFile":[Ljava/io/File;
    if-eqz v0, :cond_2

    array-length v3, v0

    if-nez v3, :cond_3

    .line 389
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 398
    .end local v0    # "childFile":[Ljava/io/File;
    :catch_0
    move-exception v1

    .line 399
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 392
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "childFile":[Ljava/io/File;
    :cond_3
    :try_start_1
    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v4, :cond_4

    .line 395
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 392
    :cond_4
    aget-object v2, v0, v3

    .line 393
    .local v2, "f":Ljava/io/File;
    invoke-static {v2}, Lcom/aee/sport/magicam/utils/ImageLoader;->clearPathFiles(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 392
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static getBitmapFromSD(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "imageURL"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v5, "/"

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "bitmapName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aee/sport/magicam/utils/ImageLoader;->getSDPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 113
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, "cacheDir":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 116
    .local v2, "cacheFiles":[Ljava/io/File;
    const/4 v4, 0x0

    .line 117
    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-lt v4, v5, :cond_1

    .line 123
    :cond_0
    array-length v5, v2

    if-ge v4, v5, :cond_2

    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 130
    .end local v2    # "cacheFiles":[Ljava/io/File;
    .end local v4    # "i":I
    :goto_1
    return-object v5

    .line 118
    .restart local v2    # "cacheFiles":[Ljava/io/File;
    .restart local v4    # "i":I
    :cond_1
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 117
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 126
    .end local v2    # "cacheFiles":[Ljava/io/File;
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 127
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getFromFirstLevelCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 213
    const/4 v1, 0x0

    .line 214
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/aee/sport/magicam/utils/ImageLoader;->mFirstLevelCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 215
    :try_start_0
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ImageLoader;->mFirstLevelCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 216
    if-eqz v1, :cond_0

    .line 217
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ImageLoader;->mFirstLevelCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ImageLoader;->mFirstLevelCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_0
    monitor-exit v3

    .line 221
    return-object v1

    .line 214
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getFromSecondLevelCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ImageLoader;->mSecondLevelCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 197
    .local v1, "softReference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 199
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 200
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ImageLoader;->mSecondLevelCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_0
    return-object v0
.end method

.method public static getSDPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 181
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 182
    .local v0, "hasSDCard":Z
    if-eqz v0, :cond_0

    .line 183
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private resetPurgeTimer()V
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ImageLoader;->mPurgeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ImageLoader;->mClearCache:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ImageLoader;->mPurgeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ImageLoader;->mClearCache:Ljava/lang/Runnable;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    return-void
.end method

.method public static saveImgtoSD(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 6
    .param p0, "imageURL"    # Ljava/lang/String;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 142
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aee/sport/magicam/utils/ImageLoader;->getSDPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 144
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 146
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 149
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "bitmapFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_1

    .line 152
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    :cond_1
    :goto_0
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 161
    .local v3, "fos":Ljava/io/FileOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 162
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 174
    .end local v0    # "bitmapFile":Ljava/io/File;
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 153
    .restart local v0    # "bitmapFile":Ljava/io/File;
    .restart local v1    # "dir":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 155
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v0    # "bitmapFile":Ljava/io/File;
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    goto :goto_1

    .line 163
    .restart local v0    # "bitmapFile":Ljava/io/File;
    .restart local v1    # "dir":Ljava/io/File;
    :catch_2
    move-exception v2

    .line 165
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 166
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 168
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method


# virtual methods
.method public addImage2Cache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 272
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ImageLoader;->mFirstLevelCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ImageLoader;->mFirstLevelCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/utils/ImageLoader;->getFromFirstLevelCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 103
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 90
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/utils/ImageLoader;->getFromSecondLevelCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 93
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 97
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const-string v2, "/AEE/ImageLoaderCache"

    invoke-static {p1, v2}, Lcom/aee/sport/magicam/utils/ImageLoader;->getBitmapFromSD(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {p0, p1, v0}, Lcom/aee/sport/magicam/utils/ImageLoader;->addImage2Cache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_2
    move-object v1, v0

    .line 103
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public loadImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "img"    # Landroid/widget/ImageView;

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/aee/sport/magicam/utils/ImageLoader;->resetPurgeTimer()V

    .line 233
    invoke-virtual {p0, p1}, Lcom/aee/sport/magicam/utils/ImageLoader;->getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 234
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 235
    const v2, 0x7f020085

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 236
    new-instance v1, Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;-><init>(Lcom/aee/sport/magicam/utils/ImageLoader;)V

    .line 237
    .local v1, "imageLoadTask":Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 242
    .end local v1    # "imageLoadTask":Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public loadImage(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "img"    # Landroid/widget/ImageView;
    .param p3, "width"    # I

    .prologue
    const v2, 0x7f020085

    .line 252
    invoke-direct {p0}, Lcom/aee/sport/magicam/utils/ImageLoader;->resetPurgeTimer()V

    .line 253
    invoke-virtual {p2, v2, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 254
    invoke-virtual {p0, p1}, Lcom/aee/sport/magicam/utils/ImageLoader;->getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 255
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 256
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    new-instance v1, Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;-><init>(Lcom/aee/sport/magicam/utils/ImageLoader;)V

    .line 258
    .local v1, "imageLoadTask":Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 263
    .end local v1    # "imageLoadTask":Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public loadImageFromInternet(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0xbb8

    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const-string v11, "Android"

    invoke-static {v11}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v2

    .line 324
    .local v2, "client":Lorg/apache/http/client/HttpClient;
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    .line 325
    .local v8, "params":Lorg/apache/http/params/HttpParams;
    invoke-static {v8, v12}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 326
    invoke-static {v8, v12}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 327
    const/4 v9, 0x0

    .line 328
    .local v9, "response":Lorg/apache/http/HttpResponse;
    const/4 v7, 0x0

    .line 329
    .local v7, "inputStream":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 331
    .local v5, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    const-string v11, "http://"

    invoke-virtual {p1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 332
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "http://"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 334
    :cond_0
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v6, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 335
    .end local v5    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .local v6, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    invoke-interface {v2, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 336
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v10

    .line 337
    .local v10, "stateCode":I
    const/16 v11, 0xc8

    if-eq v10, v11, :cond_1

    .line 361
    check-cast v2, Landroid/net/http/AndroidHttpClient;

    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object v5, v6

    .end local v6    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    move-object v1, v0

    .line 363
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "stateCode":I
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 340
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v10    # "stateCode":I
    :cond_1
    :try_start_2
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v4

    .line 341
    .local v4, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_4

    .line 343
    :try_start_3
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    .line 344
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 346
    if-eqz v7, :cond_2

    .line 347
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 349
    :cond_2
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 361
    check-cast v2, Landroid/net/http/AndroidHttpClient;

    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object v5, v6

    .end local v6    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    move-object v1, v0

    .line 344
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 345
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    :catchall_0
    move-exception v11

    .line 346
    if-eqz v7, :cond_3

    .line 347
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 349
    :cond_3
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 350
    throw v11
    :try_end_5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 352
    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    .end local v10    # "stateCode":I
    :catch_0
    move-exception v3

    move-object v5, v6

    .line 353
    .end local v6    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .local v3, "e":Lorg/apache/http/client/ClientProtocolException;
    .restart local v5    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    :goto_1
    :try_start_6
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 354
    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 361
    check-cast v2, Landroid/net/http/AndroidHttpClient;

    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    .end local v3    # "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_2
    move-object v1, v0

    .line 363
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 355
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    :catch_1
    move-exception v3

    .line 356
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 357
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 361
    check-cast v2, Landroid/net/http/AndroidHttpClient;

    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_2

    .line 358
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    :catch_2
    move-exception v3

    .line 359
    .local v3, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 361
    check-cast v2, Landroid/net/http/AndroidHttpClient;

    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_2

    .line 360
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    :catchall_1
    move-exception v11

    .line 361
    :goto_5
    check-cast v2, Landroid/net/http/AndroidHttpClient;

    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 362
    throw v11

    .line 361
    .end local v5    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v6    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v10    # "stateCode":I
    :cond_4
    check-cast v2, Landroid/net/http/AndroidHttpClient;

    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object v5, v6

    .end local v6    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_2

    .line 360
    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    .end local v5    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v10    # "stateCode":I
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    :catchall_2
    move-exception v11

    move-object v5, v6

    .end local v6    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_5

    .line 358
    .end local v5    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    :catch_3
    move-exception v3

    move-object v5, v6

    .end local v6    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_4

    .line 355
    .end local v5    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    :catch_4
    move-exception v3

    move-object v5, v6

    .end local v6    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_3

    .line 352
    :catch_5
    move-exception v3

    goto :goto_1
.end method
