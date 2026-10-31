.class Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;
.super Landroid/os/AsyncTask;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aee/sport/magicam/utils/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private img:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/aee/sport/magicam/utils/ImageLoader;

.field url:Ljava/lang/String;

.field private width:I


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/utils/ImageLoader;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;->this$0:Lcom/aee/sport/magicam/utils/ImageLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 287
    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;->url:Ljava/lang/String;

    .line 288
    aget-object v1, p1, v4

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;->img:Landroid/widget/ImageView;

    .line 289
    const/4 v1, 0x2

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;->width:I

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "drawable":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;->url:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;->url:Ljava/lang/String;

    iget v2, p0, Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;->width:I

    iget v3, p0, Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;->width:I

    invoke-static {v1, v2, v3}, Lcom/aee/sport/magicam/utils/BitmapUtils;->createVideoThumbnailUseFFmpeg(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 296
    :goto_0
    return-object v0

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;->url:Ljava/lang/String;

    iget v2, p0, Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;->width:I

    iget v3, p0, Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;->width:I

    invoke-static {v1, v2, v3, v4}, Lcom/aee/sport/magicam/utils/BitmapUtils;->getVideoThumbnail(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 301
    if-nez p1, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;->this$0:Lcom/aee/sport/magicam/utils/ImageLoader;

    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/utils/ImageLoader;->getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;->this$0:Lcom/aee/sport/magicam/utils/ImageLoader;

    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/aee/sport/magicam/utils/ImageLoader;->addImage2Cache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 307
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;->url:Ljava/lang/String;

    const-string v1, "/AEE/ImageLoaderCache"

    invoke-static {v0, p1, v1}, Lcom/aee/sport/magicam/utils/ImageLoader;->saveImgtoSD(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 310
    :cond_2
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;->img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;->img:Landroid/widget/ImageView;

    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;->img:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/aee/sport/magicam/utils/ImageLoader$ImageLoadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
