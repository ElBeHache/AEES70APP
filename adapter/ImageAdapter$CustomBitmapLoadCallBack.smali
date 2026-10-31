.class public Lcom/aee/sport/magicam/adapter/ImageAdapter$CustomBitmapLoadCallBack;
.super Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;
.source "ImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aee/sport/magicam/adapter/ImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomBitmapLoadCallBack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack",
        "<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field private holder:Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;

.field private isLocal:Z

.field final synthetic this$0:Lcom/aee/sport/magicam/adapter/ImageAdapter;


# direct methods
.method public constructor <init>(Lcom/aee/sport/magicam/adapter/ImageAdapter;Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;Z)V
    .locals 2
    .param p2, "holder"    # Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;
    .param p3, "isLocal"    # Z

    .prologue
    .line 219
    iput-object p1, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$CustomBitmapLoadCallBack;->this$0:Lcom/aee/sport/magicam/adapter/ImageAdapter;

    invoke-direct {p0}, Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;-><init>()V

    .line 220
    iput-object p2, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$CustomBitmapLoadCallBack;->holder:Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;

    .line 221
    iput-boolean p3, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$CustomBitmapLoadCallBack;->isLocal:Z

    .line 222
    if-eqz p3, :cond_0

    .line 223
    iget-object v0, p2, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;->progressBar:Lcom/aee/sport/magicam/widget/CircleProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/widget/CircleProgressBar;->setVisibility(I)V

    .line 225
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic onLoadCompleted(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;)V
    .locals 6

    .prologue
    .line 1
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/aee/sport/magicam/adapter/ImageAdapter$CustomBitmapLoadCallBack;->onLoadCompleted(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;)V

    return-void
.end method

.method public onLoadCompleted(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;)V
    .locals 2
    .param p1, "container"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "config"    # Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;
    .param p5, "from"    # Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$CustomBitmapLoadCallBack;->isLocal:Z

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$CustomBitmapLoadCallBack;->holder:Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;

    iget-object v0, v0, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;->progressBar:Lcom/aee/sport/magicam/widget/CircleProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/widget/CircleProgressBar;->setVisibility(I)V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$CustomBitmapLoadCallBack;->this$0:Lcom/aee/sport/magicam/adapter/ImageAdapter;

    invoke-static {v0, p1, p3}, Lcom/aee/sport/magicam/adapter/ImageAdapter;->access$0(Lcom/aee/sport/magicam/adapter/ImageAdapter;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 270
    return-void
.end method

.method public bridge synthetic onLoadFailed(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/aee/sport/magicam/adapter/ImageAdapter$CustomBitmapLoadCallBack;->onLoadFailed(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onLoadFailed(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "container"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$CustomBitmapLoadCallBack;->isLocal:Z

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$CustomBitmapLoadCallBack;->holder:Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;

    iget-object v0, v0, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;->progressBar:Lcom/aee/sport/magicam/widget/CircleProgressBar;

    const-string v1, "Failed."

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/widget/CircleProgressBar;->setShowInfo(Ljava/lang/String;)V

    .line 251
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;->onLoadFailed(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 252
    return-void
.end method

.method public bridge synthetic onLoadStarted(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/aee/sport/magicam/adapter/ImageAdapter$CustomBitmapLoadCallBack;->onLoadStarted(Landroid/widget/ImageView;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V

    return-void
.end method

.method public onLoadStarted(Landroid/widget/ImageView;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V
    .locals 2
    .param p1, "container"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "config"    # Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-boolean v0, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$CustomBitmapLoadCallBack;->isLocal:Z

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$CustomBitmapLoadCallBack;->holder:Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;

    iget-object v0, v0, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;->progressBar:Lcom/aee/sport/magicam/widget/CircleProgressBar;

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/widget/CircleProgressBar;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$CustomBitmapLoadCallBack;->holder:Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;

    iget-object v0, v0, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;->progressBar:Lcom/aee/sport/magicam/widget/CircleProgressBar;

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/widget/CircleProgressBar;->setProgressNotInUiThread(I)V

    .line 242
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;->onLoadStarted(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V

    .line 243
    return-void
.end method

.method public bridge synthetic onLoading(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;JJ)V
    .locals 8

    .prologue
    .line 1
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/aee/sport/magicam/adapter/ImageAdapter$CustomBitmapLoadCallBack;->onLoading(Landroid/widget/ImageView;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;JJ)V

    return-void
.end method

.method public onLoading(Landroid/widget/ImageView;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;JJ)V
    .locals 3
    .param p1, "container"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "config"    # Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;
    .param p4, "total"    # J
    .param p6, "current"    # J

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$CustomBitmapLoadCallBack;->isLocal:Z

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$CustomBitmapLoadCallBack;->holder:Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;

    iget-object v0, v0, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;->progressBar:Lcom/aee/sport/magicam/widget/CircleProgressBar;

    const-wide/16 v1, 0x64

    mul-long/2addr v1, p6

    div-long/2addr v1, p4

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/widget/CircleProgressBar;->setProgressNotInUiThread(I)V

    .line 259
    :cond_0
    return-void
.end method

.method public bridge synthetic onPreLoad(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/aee/sport/magicam/adapter/ImageAdapter$CustomBitmapLoadCallBack;->onPreLoad(Landroid/widget/ImageView;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V

    return-void
.end method

.method public onPreLoad(Landroid/widget/ImageView;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V
    .locals 2
    .param p1, "container"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "config"    # Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$CustomBitmapLoadCallBack;->isLocal:Z

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$CustomBitmapLoadCallBack;->holder:Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;

    iget-object v0, v0, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;->progressBar:Lcom/aee/sport/magicam/widget/CircleProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/widget/CircleProgressBar;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$CustomBitmapLoadCallBack;->holder:Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;

    iget-object v0, v0, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;->progressBar:Lcom/aee/sport/magicam/widget/CircleProgressBar;

    const-string v1, "Waiting."

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/widget/CircleProgressBar;->setShowInfo(Ljava/lang/String;)V

    .line 233
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;->onPreLoad(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V

    .line 234
    return-void
.end method
