.class public Lcom/aee/sport/magicam/adapter/RemoteFileAdapter;
.super Landroid/widget/BaseAdapter;
.source "RemoteFileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aee/sport/magicam/adapter/RemoteFileAdapter$CustomBitmapLoadCallBack;,
        Lcom/aee/sport/magicam/adapter/RemoteFileAdapter$ImageItemHolder;
    }
.end annotation


# static fields
.field private static final TRANSPARENT_DRAWABLE:Landroid/graphics/drawable/ColorDrawable;


# instance fields
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

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 130
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0x106000d

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/aee/sport/magicam/adapter/RemoteFileAdapter;->TRANSPARENT_DRAWABLE:Landroid/graphics/drawable/ColorDrawable;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/aee/sport/magicam/bean/FileAttr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "files":Ljava/util/List;, "Ljava/util/List<Lcom/aee/sport/magicam/bean/FileAttr;>;"
    const v1, 0x7f02007c

    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/aee/sport/magicam/adapter/RemoteFileAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/aee/sport/magicam/adapter/RemoteFileAdapter;->files:Ljava/util/List;

    .line 42
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aee/sport/magicam/AeeApplication;->getBitmapUtils()Lcom/lidroid/xutils/BitmapUtils;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/BitmapUtils;->configDefaultLoadingImage(I)Lcom/lidroid/xutils/BitmapUtils;

    .line 43
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aee/sport/magicam/AeeApplication;->getBitmapUtils()Lcom/lidroid/xutils/BitmapUtils;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/BitmapUtils;->configDefaultLoadFailedImage(I)Lcom/lidroid/xutils/BitmapUtils;

    .line 44
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aee/sport/magicam/AeeApplication;->getBitmapUtils()Lcom/lidroid/xutils/BitmapUtils;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/BitmapUtils;->configDefaultBitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/lidroid/xutils/BitmapUtils;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/adapter/RemoteFileAdapter;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/aee/sport/magicam/adapter/RemoteFileAdapter;->fadeInDisplay(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private fadeInDisplay(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 133
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    sget-object v3, Lcom/aee/sport/magicam/adapter/RemoteFileAdapter;->TRANSPARENT_DRAWABLE:Landroid/graphics/drawable/ColorDrawable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 134
    .local v0, "transitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 136
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/RemoteFileAdapter;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/RemoteFileAdapter;->files:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 63
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "arg0"    # I
    .param p2, "contentView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    .line 70
    if-nez p2, :cond_1

    .line 71
    new-instance v1, Lcom/aee/sport/magicam/adapter/RemoteFileAdapter$ImageItemHolder;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/adapter/RemoteFileAdapter$ImageItemHolder;-><init>(Lcom/aee/sport/magicam/adapter/RemoteFileAdapter;)V

    .line 72
    .local v1, "holder":Lcom/aee/sport/magicam/adapter/RemoteFileAdapter$ImageItemHolder;
    iget-object v6, p0, Lcom/aee/sport/magicam/adapter/RemoteFileAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f030003

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 73
    const v6, 0x7f0c0010

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v1, Lcom/aee/sport/magicam/adapter/RemoteFileAdapter$ImageItemHolder;->icon:Landroid/widget/ImageView;

    .line 74
    const v6, 0x7f0c0012

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v1, Lcom/aee/sport/magicam/adapter/RemoteFileAdapter$ImageItemHolder;->checked:Landroid/widget/ImageView;

    .line 75
    const v6, 0x7f0c0011

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v1, Lcom/aee/sport/magicam/adapter/RemoteFileAdapter$ImageItemHolder;->isVideo:Landroid/widget/ImageView;

    .line 77
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    :goto_0
    iget-object v6, v1, Lcom/aee/sport/magicam/adapter/RemoteFileAdapter$ImageItemHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 83
    .local v2, "linearParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/aee/sport/magicam/adapter/RemoteFileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/aee/sport/magicam/utils/PublicUtils;->getImgWidth(Landroid/content/Context;)I

    move-result v5

    .line 84
    .local v5, "widthPixels":I
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 85
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 86
    iget-object v6, v1, Lcom/aee/sport/magicam/adapter/RemoteFileAdapter$ImageItemHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v6, p0, Lcom/aee/sport/magicam/adapter/RemoteFileAdapter;->files:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aee/sport/magicam/bean/FileAttr;

    invoke-virtual {v6}, Lcom/aee/sport/magicam/bean/FileAttr;->getName()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "fileName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/aee/sport/magicam/utils/Constants;->AMBA_URL:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "uri":Ljava/lang/String;
    invoke-static {v0}, Lcom/aee/sport/magicam/utils/PublicUtils;->thisFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "type":Ljava/lang/String;
    const-string v6, "video/*"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 96
    const-string v6, "image/*"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 97
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/aee/sport/magicam/AeeApplication;->getBitmapUtils()Lcom/lidroid/xutils/BitmapUtils;

    move-result-object v6

    iget-object v7, v1, Lcom/aee/sport/magicam/adapter/RemoteFileAdapter$ImageItemHolder;->icon:Landroid/widget/ImageView;

    new-instance v8, Lcom/aee/sport/magicam/adapter/RemoteFileAdapter$CustomBitmapLoadCallBack;

    invoke-direct {v8, p0, v1}, Lcom/aee/sport/magicam/adapter/RemoteFileAdapter$CustomBitmapLoadCallBack;-><init>(Lcom/aee/sport/magicam/adapter/RemoteFileAdapter;Lcom/aee/sport/magicam/adapter/RemoteFileAdapter$ImageItemHolder;)V

    invoke-virtual {v6, v7, v4, v8}, Lcom/lidroid/xutils/BitmapUtils;->display(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V

    .line 101
    :cond_0
    return-object p2

    .line 79
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "holder":Lcom/aee/sport/magicam/adapter/RemoteFileAdapter$ImageItemHolder;
    .end local v2    # "linearParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    .end local v5    # "widthPixels":I
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aee/sport/magicam/adapter/RemoteFileAdapter$ImageItemHolder;

    .restart local v1    # "holder":Lcom/aee/sport/magicam/adapter/RemoteFileAdapter$ImageItemHolder;
    goto :goto_0
.end method
