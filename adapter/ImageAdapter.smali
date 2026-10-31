.class public Lcom/aee/sport/magicam/adapter/ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aee/sport/magicam/adapter/ImageAdapter$CustomBitmapLoadCallBack;,
        Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;
    }
.end annotation


# static fields
.field private static final TRANSPARENT_DRAWABLE:Landroid/graphics/drawable/ColorDrawable;


# instance fields
.field private changeToselect:Z

.field private displayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

.field public files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aee/sport/magicam/bean/FileAttr;",
            ">;"
        }
    .end annotation
.end field

.field imageLoad:Lcom/aee/sport/magicam/utils/ImageLoader;

.field inflater:Landroid/view/LayoutInflater;

.field private isLocal:Z

.field private mContext:Landroid/content/Context;

.field private widthImgPixels:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 275
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0x106000d

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->TRANSPARENT_DRAWABLE:Landroid/graphics/drawable/ColorDrawable;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;
    .param p3, "isLocal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/aee/sport/magicam/bean/FileAttr;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, "files":Ljava/util/List;, "Ljava/util/List<Lcom/aee/sport/magicam/bean/FileAttr;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    new-instance v1, Lcom/aee/sport/magicam/utils/ImageLoader;

    invoke-direct {v1}, Lcom/aee/sport/magicam/utils/ImageLoader;-><init>()V

    iput-object v1, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->imageLoad:Lcom/aee/sport/magicam/utils/ImageLoader;

    .line 52
    iput-object p1, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->files:Ljava/util/List;

    .line 54
    iput-boolean p3, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->isLocal:Z

    .line 59
    invoke-static {p1}, Lcom/aee/sport/magicam/utils/PublicUtils;->getImgWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->widthImgPixels:I

    .line 61
    new-instance v1, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-direct {v1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;-><init>()V

    iput-object v1, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->displayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    .line 62
    new-instance v0, Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    iget v1, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->widthImgPixels:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->widthImgPixels:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;-><init>(II)V

    .line 63
    .local v0, "bitmapSize":Lcom/lidroid/xutils/bitmap/core/BitmapSize;
    iget-object v1, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->displayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v1, v0}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setBitmapMaxSize(Lcom/lidroid/xutils/bitmap/core/BitmapSize;)V

    .line 64
    iget-object v1, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->displayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setLoadFailedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    if-eqz p3, :cond_0

    .line 67
    iget-object v1, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->displayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->displayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setBitmapConfig(Landroid/graphics/Bitmap$Config;)V

    .line 70
    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/adapter/ImageAdapter;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0, p1, p2}, Lcom/aee/sport/magicam/adapter/ImageAdapter;->fadeInDisplay(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1(Lcom/aee/sport/magicam/adapter/ImageAdapter;)Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->changeToselect:Z

    return v0
.end method

.method static synthetic access$2(Lcom/aee/sport/magicam/adapter/ImageAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private fadeInDisplay(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 278
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    sget-object v3, Lcom/aee/sport/magicam/adapter/ImageAdapter;->TRANSPARENT_DRAWABLE:Landroid/graphics/drawable/ColorDrawable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 279
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v3, v1, v2

    .line 278
    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 280
    .local v0, "transitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 282
    return-void
.end method


# virtual methods
.method public clearAllSelected()V
    .locals 3

    .prologue
    .line 297
    iget-object v1, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->files:Ljava/util/List;

    if-nez v1, :cond_0

    .line 303
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/aee/sport/magicam/adapter/ImageAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 299
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/bean/FileAttr;

    .line 300
    .local v0, "file":Lcom/aee/sport/magicam/bean/FileAttr;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/aee/sport/magicam/bean/FileAttr;->setSelected(Z)V

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->files:Ljava/util/List;

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->files:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 83
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 89
    if-nez p2, :cond_1

    .line 90
    new-instance v1, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;-><init>(Lcom/aee/sport/magicam/adapter/ImageAdapter;)V

    .line 91
    .local v1, "holder":Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;
    iget-object v6, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f030003

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 92
    const v6, 0x7f0c0010

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v1, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;->icon:Landroid/widget/ImageView;

    .line 93
    const v6, 0x7f0c0012

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v1, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;->checked:Landroid/widget/ImageView;

    .line 94
    const v6, 0x7f0c0011

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v1, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;->isVideo:Landroid/widget/ImageView;

    .line 95
    const v6, 0x7f0c0013

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/aee/sport/magicam/widget/CircleProgressBar;

    iput-object v6, v1, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;->progressBar:Lcom/aee/sport/magicam/widget/CircleProgressBar;

    .line 96
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 102
    :goto_0
    iget-object v6, v1, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 103
    .local v2, "linearParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/aee/sport/magicam/utils/PublicUtils;->getImgWidth(Landroid/content/Context;)I

    move-result v5

    .line 104
    .local v5, "widthPixels":I
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 105
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 106
    iget-object v6, v1, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v6, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->files:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aee/sport/magicam/bean/FileAttr;

    invoke-virtual {v6}, Lcom/aee/sport/magicam/bean/FileAttr;->getName()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "fileName":Ljava/lang/String;
    iget-object v6, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->files:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aee/sport/magicam/bean/FileAttr;

    invoke-virtual {v6}, Lcom/aee/sport/magicam/bean/FileAttr;->getUri()Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "uri":Ljava/lang/String;
    invoke-static {v0}, Lcom/aee/sport/magicam/utils/PublicUtils;->thisFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "type":Ljava/lang/String;
    const-string v6, "video/*"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 114
    iget-object v6, v1, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;->isVideo:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object v6, v1, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;->progressBar:Lcom/aee/sport/magicam/widget/CircleProgressBar;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/aee/sport/magicam/widget/CircleProgressBar;->setVisibility(I)V

    .line 116
    iget-object v6, v1, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;->icon:Landroid/widget/ImageView;

    iget-object v7, v1, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;->checked:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 117
    iget-object v6, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->imageLoad:Lcom/aee/sport/magicam/utils/ImageLoader;

    iget-object v7, v1, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;->icon:Landroid/widget/ImageView;

    iget v8, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->widthImgPixels:I

    invoke-virtual {v6, v4, v7, v8}, Lcom/aee/sport/magicam/utils/ImageLoader;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 118
    iget-object v6, v1, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;->icon:Landroid/widget/ImageView;

    new-instance v7, Lcom/aee/sport/magicam/adapter/ImageAdapter$1;

    invoke-direct {v7, p0, p1}, Lcom/aee/sport/magicam/adapter/ImageAdapter$1;-><init>(Lcom/aee/sport/magicam/adapter/ImageAdapter;I)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    :cond_0
    :goto_1
    iget-object v6, v1, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;->icon:Landroid/widget/ImageView;

    new-instance v7, Lcom/aee/sport/magicam/adapter/ImageAdapter$3;

    invoke-direct {v7, p0}, Lcom/aee/sport/magicam/adapter/ImageAdapter$3;-><init>(Lcom/aee/sport/magicam/adapter/ImageAdapter;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 195
    iget-object v6, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->files:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aee/sport/magicam/bean/FileAttr;

    invoke-virtual {v6}, Lcom/aee/sport/magicam/bean/FileAttr;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 196
    iget-object v6, v1, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;->checked:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    :goto_2
    return-object p2

    .line 99
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "holder":Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;
    .end local v2    # "linearParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    .end local v5    # "widthPixels":I
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;

    .restart local v1    # "holder":Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;
    goto/16 :goto_0

    .line 149
    .restart local v0    # "fileName":Ljava/lang/String;
    .restart local v2    # "linearParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "type":Ljava/lang/String;
    .restart local v4    # "uri":Ljava/lang/String;
    .restart local v5    # "widthPixels":I
    :cond_2
    const-string v6, "image/*"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 150
    iget-object v6, v1, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;->isVideo:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/aee/sport/magicam/AeeApplication;->getBitmapUtils()Lcom/lidroid/xutils/BitmapUtils;

    move-result-object v6

    iget-object v7, v1, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;->icon:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->displayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    new-instance v9, Lcom/aee/sport/magicam/adapter/ImageAdapter$CustomBitmapLoadCallBack;

    iget-boolean v10, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->isLocal:Z

    invoke-direct {v9, p0, v1, v10}, Lcom/aee/sport/magicam/adapter/ImageAdapter$CustomBitmapLoadCallBack;-><init>(Lcom/aee/sport/magicam/adapter/ImageAdapter;Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;Z)V

    invoke-virtual {v6, v7, v4, v8, v9}, Lcom/lidroid/xutils/BitmapUtils;->display(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V

    .line 153
    iget-object v6, v1, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;->icon:Landroid/widget/ImageView;

    iget-object v7, v1, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;->checked:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 154
    iget-object v6, v1, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;->icon:Landroid/widget/ImageView;

    new-instance v7, Lcom/aee/sport/magicam/adapter/ImageAdapter$2;

    invoke-direct {v7, p0, p1}, Lcom/aee/sport/magicam/adapter/ImageAdapter$2;-><init>(Lcom/aee/sport/magicam/adapter/ImageAdapter;I)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 198
    :cond_3
    iget-object v6, v1, Lcom/aee/sport/magicam/adapter/ImageAdapter$ImageItemHolder;->checked:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public selectAll()V
    .locals 3

    .prologue
    .line 309
    iget-object v1, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->files:Ljava/util/List;

    if-nez v1, :cond_0

    .line 315
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 314
    invoke-virtual {p0}, Lcom/aee/sport/magicam/adapter/ImageAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 311
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/bean/FileAttr;

    .line 312
    .local v0, "file":Lcom/aee/sport/magicam/bean/FileAttr;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/aee/sport/magicam/bean/FileAttr;->setSelected(Z)V

    goto :goto_1
.end method

.method public setChangeToselect(Z)V
    .locals 0
    .param p1, "changeToselect"    # Z

    .prologue
    .line 290
    iput-boolean p1, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter;->changeToselect:Z

    .line 291
    return-void
.end method
