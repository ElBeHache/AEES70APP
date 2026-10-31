.class Lcom/aee/sport/magicam/utils/ImageLoader$1;
.super Ljava/util/LinkedHashMap;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aee/sport/magicam/utils/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/utils/ImageLoader;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/utils/ImageLoader;IFZ)V
    .locals 0
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # F
    .param p4, "$anonymous2"    # Z

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/utils/ImageLoader$1;->this$0:Lcom/aee/sport/magicam/utils/ImageLoader;

    .line 40
    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    invoke-virtual {p0}, Lcom/aee/sport/magicam/utils/ImageLoader$1;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ImageLoader$1;->this$0:Lcom/aee/sport/magicam/utils/ImageLoader;

    invoke-static {v0}, Lcom/aee/sport/magicam/utils/ImageLoader;->access$0(Lcom/aee/sport/magicam/utils/ImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
