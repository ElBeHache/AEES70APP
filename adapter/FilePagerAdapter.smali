.class public Lcom/aee/sport/magicam/adapter/FilePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "FilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aee/sport/magicam/adapter/FilePagerAdapter$CustomBitmapLoadCallBack;
    }
.end annotation


# static fields
.field private static final TRANSPARENT_DRAWABLE:Landroid/graphics/drawable/ColorDrawable;


# instance fields
.field private files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aee/sport/magicam/bean/FileAttr;",
            ">;"
        }
    .end annotation
.end field

.field inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0x106000d

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/aee/sport/magicam/adapter/FilePagerAdapter;->TRANSPARENT_DRAWABLE:Landroid/graphics/drawable/ColorDrawable;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aee/sport/magicam/bean/FileAttr;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Lcom/aee/sport/magicam/bean/FileAttr;>;"
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/aee/sport/magicam/adapter/FilePagerAdapter;->files:Ljava/util/List;

    .line 44
    iput-object p2, p0, Lcom/aee/sport/magicam/adapter/FilePagerAdapter;->mContext:Landroid/content/Context;

    .line 45
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/FilePagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/adapter/FilePagerAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 46
    return-void
.end method

.method static synthetic access$1(Lcom/aee/sport/magicam/adapter/FilePagerAdapter;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/aee/sport/magicam/adapter/FilePagerAdapter;->fadeInDisplay(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private fadeInDisplay(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 134
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    sget-object v3, Lcom/aee/sport/magicam/adapter/FilePagerAdapter;->TRANSPARENT_DRAWABLE:Landroid/graphics/drawable/ColorDrawable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 135
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v3, v1, v2

    .line 134
    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 136
    .local v0, "transitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 138
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 75
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 76
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/FilePagerAdapter;->files:Ljava/util/List;

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/FilePagerAdapter;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 9
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v8, -0x1

    .line 57
    iget-object v5, p0, Lcom/aee/sport/magicam/adapter/FilePagerAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030018

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 58
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f0c0013

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aee/sport/magicam/widget/CircleProgressBar;

    .line 59
    .local v2, "progress":Lcom/aee/sport/magicam/widget/CircleProgressBar;
    const v5, 0x7f0c0050

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/aee/sport/magicam/photoview/PhotoView;

    .line 61
    .local v1, "photoView":Lcom/aee/sport/magicam/photoview/PhotoView;
    iget-object v5, p0, Lcom/aee/sport/magicam/adapter/FilePagerAdapter;->files:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aee/sport/magicam/bean/FileAttr;

    invoke-virtual {v5}, Lcom/aee/sport/magicam/bean/FileAttr;->getName()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "fileName":Ljava/lang/String;
    iget-object v5, p0, Lcom/aee/sport/magicam/adapter/FilePagerAdapter;->files:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aee/sport/magicam/bean/FileAttr;

    invoke-virtual {v5}, Lcom/aee/sport/magicam/bean/FileAttr;->getUri()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "uri":Ljava/lang/String;
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aee/sport/magicam/AeeApplication;->getBitmapUtils()Lcom/lidroid/xutils/BitmapUtils;

    move-result-object v5

    new-instance v6, Lcom/aee/sport/magicam/adapter/FilePagerAdapter$CustomBitmapLoadCallBack;

    invoke-direct {v6, p0, v2}, Lcom/aee/sport/magicam/adapter/FilePagerAdapter$CustomBitmapLoadCallBack;-><init>(Lcom/aee/sport/magicam/adapter/FilePagerAdapter;Lcom/aee/sport/magicam/widget/CircleProgressBar;)V

    invoke-virtual {v5, v1, v3, v6}, Lcom/lidroid/xutils/BitmapUtils;->display(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V

    .line 66
    invoke-virtual {p1, v4, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 68
    return-object v4
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/aee/sport/magicam/adapter/FilePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 80
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
