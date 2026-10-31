.class public Lcom/aee/sport/magicam/utils/MemoryCache;
.super Ljava/lang/Object;
.source "MemoryCache.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MemoryCache"


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private limit:J

.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xa

    const/high16 v2, 0x3fc00000    # 1.5f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/MemoryCache;->cache:Ljava/util/Map;

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aee/sport/magicam/utils/MemoryCache;->size:J

    .line 21
    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/aee/sport/magicam/utils/MemoryCache;->limit:J

    .line 25
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/aee/sport/magicam/utils/MemoryCache;->setLimit(J)V

    .line 26
    return-void
.end method

.method private checkSize()V
    .locals 7

    .prologue
    .line 60
    iget-wide v2, p0, Lcom/aee/sport/magicam/utils/MemoryCache;->size:J

    iget-wide v4, p0, Lcom/aee/sport/magicam/utils/MemoryCache;->limit:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 63
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 71
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"
    :cond_1
    :goto_0
    return-void

    .line 64
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 65
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    iget-wide v3, p0, Lcom/aee/sport/magicam/utils/MemoryCache;->size:J

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2}, Lcom/aee/sport/magicam/utils/MemoryCache;->getSizeInBytes(Landroid/graphics/Bitmap;)J

    move-result-wide v5

    sub-long v2, v3, v5

    iput-wide v2, p0, Lcom/aee/sport/magicam/utils/MemoryCache;->size:J

    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 67
    iget-wide v2, p0, Lcom/aee/sport/magicam/utils/MemoryCache;->size:J

    iget-wide v4, p0, Lcom/aee/sport/magicam/utils/MemoryCache;->limit:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 75
    return-void
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v2

    .line 39
    :goto_0
    return-object v1

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 39
    goto :goto_0
.end method

.method getSizeInBytes(Landroid/graphics/Bitmap;)J
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    const-wide/16 v0, 0x0

    .line 86
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    iget-wide v2, p0, Lcom/aee/sport/magicam/utils/MemoryCache;->size:J

    iget-object v1, p0, Lcom/aee/sport/magicam/utils/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/utils/MemoryCache;->getSizeInBytes(Landroid/graphics/Bitmap;)J

    move-result-wide v4

    sub-long v1, v2, v4

    iput-wide v1, p0, Lcom/aee/sport/magicam/utils/MemoryCache;->size:J

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-wide v1, p0, Lcom/aee/sport/magicam/utils/MemoryCache;->size:J

    invoke-virtual {p0, p2}, Lcom/aee/sport/magicam/utils/MemoryCache;->getSizeInBytes(Landroid/graphics/Bitmap;)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/aee/sport/magicam/utils/MemoryCache;->size:J

    .line 49
    invoke-direct {p0}, Lcom/aee/sport/magicam/utils/MemoryCache;->checkSize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setLimit(J)V
    .locals 0
    .param p1, "new_limit"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/aee/sport/magicam/utils/MemoryCache;->limit:J

    .line 31
    return-void
.end method
