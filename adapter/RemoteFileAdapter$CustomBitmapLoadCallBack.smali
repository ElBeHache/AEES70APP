.class public Lcom/aee/sport/magicam/adapter/RemoteFileAdapter$CustomBitmapLoadCallBack;
.super Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;
.source "RemoteFileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aee/sport/magicam/adapter/RemoteFileAdapter;
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
.field private final holder:Lcom/aee/sport/magicam/adapter/RemoteFileAdapter$ImageItemHolder;

.field final synthetic this$0:Lcom/aee/sport/magicam/adapter/RemoteFileAdapter;


# direct methods
.method public constructor <init>(Lcom/aee/sport/magicam/adapter/RemoteFileAdapter;Lcom/aee/sport/magicam/adapter/RemoteFileAdapter$ImageItemHolder;)V
    .locals 0
    .param p2, "holder"    # Lcom/aee/sport/magicam/adapter/RemoteFileAdapter$ImageItemHolder;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/aee/sport/magicam/adapter/RemoteFileAdapter$CustomBitmapLoadCallBack;->this$0:Lcom/aee/sport/magicam/adapter/RemoteFileAdapter;

    invoke-direct {p0}, Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;-><init>()V

    .line 114
    iput-object p2, p0, Lcom/aee/sport/magicam/adapter/RemoteFileAdapter$CustomBitmapLoadCallBack;->holder:Lcom/aee/sport/magicam/adapter/RemoteFileAdapter$ImageItemHolder;

    .line 115
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

    invoke-virtual/range {v0 .. v5}, Lcom/aee/sport/magicam/adapter/RemoteFileAdapter$CustomBitmapLoadCallBack;->onLoadCompleted(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;)V

    return-void
.end method

.method public onLoadCompleted(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;)V
    .locals 1
    .param p1, "container"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "config"    # Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;
    .param p5, "from"    # Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/RemoteFileAdapter$CustomBitmapLoadCallBack;->this$0:Lcom/aee/sport/magicam/adapter/RemoteFileAdapter;

    invoke-static {v0, p1, p3}, Lcom/aee/sport/magicam/adapter/RemoteFileAdapter;->access$0(Lcom/aee/sport/magicam/adapter/RemoteFileAdapter;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 127
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

    invoke-virtual/range {v0 .. v7}, Lcom/aee/sport/magicam/adapter/RemoteFileAdapter$CustomBitmapLoadCallBack;->onLoading(Landroid/widget/ImageView;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;JJ)V

    return-void
.end method

.method public onLoading(Landroid/widget/ImageView;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;JJ)V
    .locals 0
    .param p1, "container"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "config"    # Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;
    .param p4, "total"    # J
    .param p6, "current"    # J

    .prologue
    .line 120
    return-void
.end method
