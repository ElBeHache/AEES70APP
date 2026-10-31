.class public Lcom/aee/sport/magicam/adapter/FilePagerAdapter$CustomBitmapLoadCallBack;
.super Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;
.source "FilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aee/sport/magicam/adapter/FilePagerAdapter;
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
.field private progress:Lcom/aee/sport/magicam/widget/CircleProgressBar;

.field final synthetic this$0:Lcom/aee/sport/magicam/adapter/FilePagerAdapter;


# direct methods
.method public constructor <init>(Lcom/aee/sport/magicam/adapter/FilePagerAdapter;Lcom/aee/sport/magicam/widget/CircleProgressBar;)V
    .locals 0
    .param p2, "progress"    # Lcom/aee/sport/magicam/widget/CircleProgressBar;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/aee/sport/magicam/adapter/FilePagerAdapter$CustomBitmapLoadCallBack;->this$0:Lcom/aee/sport/magicam/adapter/FilePagerAdapter;

    invoke-direct {p0}, Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;-><init>()V

    .line 94
    iput-object p2, p0, Lcom/aee/sport/magicam/adapter/FilePagerAdapter$CustomBitmapLoadCallBack;->progress:Lcom/aee/sport/magicam/widget/CircleProgressBar;

    .line 95
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

    invoke-virtual/range {v0 .. v5}, Lcom/aee/sport/magicam/adapter/FilePagerAdapter$CustomBitmapLoadCallBack;->onLoadCompleted(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;)V

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
    .line 119
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/FilePagerAdapter$CustomBitmapLoadCallBack;->progress:Lcom/aee/sport/magicam/widget/CircleProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/widget/CircleProgressBar;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/FilePagerAdapter$CustomBitmapLoadCallBack;->this$0:Lcom/aee/sport/magicam/adapter/FilePagerAdapter;

    invoke-static {v0, p1, p3}, Lcom/aee/sport/magicam/adapter/FilePagerAdapter;->access$1(Lcom/aee/sport/magicam/adapter/FilePagerAdapter;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 122
    return-void
.end method

.method public bridge synthetic onLoadFailed(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/aee/sport/magicam/adapter/FilePagerAdapter$CustomBitmapLoadCallBack;->onLoadFailed(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onLoadFailed(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "container"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/FilePagerAdapter$CustomBitmapLoadCallBack;->progress:Lcom/aee/sport/magicam/widget/CircleProgressBar;

    const-string v1, "Failed."

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/widget/CircleProgressBar;->setShowInfo(Ljava/lang/String;)V

    .line 127
    invoke-super {p0, p1, p2, p3}, Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;->onLoadFailed(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 128
    return-void
.end method

.method public bridge synthetic onLoadStarted(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/aee/sport/magicam/adapter/FilePagerAdapter$CustomBitmapLoadCallBack;->onLoadStarted(Landroid/widget/ImageView;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V

    return-void
.end method

.method public onLoadStarted(Landroid/widget/ImageView;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V
    .locals 2
    .param p1, "container"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "config"    # Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/FilePagerAdapter$CustomBitmapLoadCallBack;->progress:Lcom/aee/sport/magicam/widget/CircleProgressBar;

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/widget/CircleProgressBar;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/FilePagerAdapter$CustomBitmapLoadCallBack;->progress:Lcom/aee/sport/magicam/widget/CircleProgressBar;

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/widget/CircleProgressBar;->setProgressNotInUiThread(I)V

    .line 108
    invoke-super {p0, p1, p2, p3}, Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;->onLoadStarted(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V

    .line 109
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

    invoke-virtual/range {v0 .. v7}, Lcom/aee/sport/magicam/adapter/FilePagerAdapter$CustomBitmapLoadCallBack;->onLoading(Landroid/widget/ImageView;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;JJ)V

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
    .line 113
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/FilePagerAdapter$CustomBitmapLoadCallBack;->progress:Lcom/aee/sport/magicam/widget/CircleProgressBar;

    const-wide/16 v1, 0x64

    mul-long/2addr v1, p6

    div-long/2addr v1, p4

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/widget/CircleProgressBar;->setProgressNotInUiThread(I)V

    .line 114
    return-void
.end method

.method public bridge synthetic onPreLoad(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/aee/sport/magicam/adapter/FilePagerAdapter$CustomBitmapLoadCallBack;->onPreLoad(Landroid/widget/ImageView;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V

    return-void
.end method

.method public onPreLoad(Landroid/widget/ImageView;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V
    .locals 2
    .param p1, "container"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "config"    # Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/FilePagerAdapter$CustomBitmapLoadCallBack;->progress:Lcom/aee/sport/magicam/widget/CircleProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/widget/CircleProgressBar;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/FilePagerAdapter$CustomBitmapLoadCallBack;->progress:Lcom/aee/sport/magicam/widget/CircleProgressBar;

    const-string v1, "Waiting."

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/widget/CircleProgressBar;->setShowInfo(Ljava/lang/String;)V

    .line 101
    invoke-super {p0, p1, p2, p3}, Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;->onPreLoad(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V

    .line 102
    return-void
.end method
