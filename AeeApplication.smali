.class public Lcom/aee/sport/magicam/AeeApplication;
.super Landroid/app/Application;
.source "AeeApplication.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static bitmapUtils:Lcom/lidroid/xutils/BitmapUtils;

.field public static checkViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field public static curdown:I

.field private static instance:Lcom/aee/sport/magicam/AeeApplication;

.field private static mHandler:Landroid/os/Handler;

.field public static maxdown:I


# instance fields
.field public activitys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public appStatus:I

.field public cameraSettingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field public fileslist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aee/sport/magicam/bean/FileContent;",
            ">;"
        }
    .end annotation
.end field

.field public isConnect:Z

.field public isDo:Z

.field public isDualStream:Z

.field public isDualStreamVideo:Z

.field public isInit:Z

.field public isReadFinish:Z

.field public listMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public photoFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aee/sport/magicam/bean/FileAttr;",
            ">;"
        }
    .end annotation
.end field

.field public preFileslist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aee/sport/magicam/bean/FileContent;",
            ">;"
        }
    .end annotation
.end field

.field public token:I

.field public value:Ljava/lang/String;

.field public videoFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aee/sport/magicam/bean/FileAttr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0xa

    sput v0, Lcom/aee/sport/magicam/AeeApplication;->maxdown:I

    .line 83
    const/4 v0, 0x0

    sput v0, Lcom/aee/sport/magicam/AeeApplication;->curdown:I

    .line 304
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/aee/sport/magicam/AeeApplication;->checkViews:Ljava/util/Map;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 87
    iput-boolean v1, p0, Lcom/aee/sport/magicam/AeeApplication;->isReadFinish:Z

    .line 91
    iput-boolean v1, p0, Lcom/aee/sport/magicam/AeeApplication;->isInit:Z

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aee/sport/magicam/AeeApplication;->fileslist:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aee/sport/magicam/AeeApplication;->preFileslist:Ljava/util/List;

    .line 105
    iput-boolean v1, p0, Lcom/aee/sport/magicam/AeeApplication;->isDo:Z

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aee/sport/magicam/AeeApplication;->isDualStream:Z

    .line 114
    iput-boolean v1, p0, Lcom/aee/sport/magicam/AeeApplication;->isDualStreamVideo:Z

    .line 124
    iput-boolean v1, p0, Lcom/aee/sport/magicam/AeeApplication;->isConnect:Z

    .line 129
    const/16 v0, -0x3e8

    iput v0, p0, Lcom/aee/sport/magicam/AeeApplication;->token:I

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aee/sport/magicam/AeeApplication;->cameraSettingMap:Ljava/util/Map;

    .line 165
    iput v1, p0, Lcom/aee/sport/magicam/AeeApplication;->appStatus:I

    .line 71
    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 367
    invoke-static {p0, p1}, Lcom/aee/sport/magicam/AeeApplication;->changeprogress(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/aee/sport/magicam/AeeApplication;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(I)V
    .locals 0

    .prologue
    .line 359
    invoke-static {p0}, Lcom/aee/sport/magicam/AeeApplication;->changeName(I)V

    return-void
.end method

.method private static changeName(I)V
    .locals 2
    .param p0, "position"    # I

    .prologue
    .line 360
    const/4 v0, 0x1

    sget-object v1, Lcom/aee/sport/magicam/utils/Constants;->AEE_GALLERY_PATH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aee/sport/magicam/utils/SortFiles;->getLocalFiles(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->localRemoteFiles:Ljava/util/List;

    .line 361
    const/4 v0, 0x0

    sget-object v1, Lcom/aee/sport/magicam/utils/Constants;->GALLERY_PATH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aee/sport/magicam/utils/SortFiles;->getLocalFiles(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->localFiles:Ljava/util/List;

    .line 362
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/aee/sport/magicam/AeeApplication;->fileslist:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/bean/FileContent;

    const v1, 0x7f080019

    invoke-static {v1}, Lcom/aee/sport/magicam/AeeApplication;->getStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/bean/FileContent;->setDown(Ljava/lang/String;)V

    .line 363
    sget-object v1, Lcom/aee/sport/magicam/playback/PlayBackActivity;->isDowns:Ljava/util/LinkedList;

    sget-object v0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->cusAdapter:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/adapter/CustomAdapter;->getHashlist()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/bean/FileContent;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileContent;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 364
    sget-object v0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->cusAdapter:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/adapter/CustomAdapter;->notifyDataSetChanged()V

    .line 365
    return-void
.end method

.method private static changeprogress(Ljava/lang/String;I)V
    .locals 1
    .param p0, "grop"    # Ljava/lang/String;
    .param p1, "position"    # I

    .prologue
    .line 368
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/aee/sport/magicam/AeeApplication;->fileslist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/bean/FileContent;

    invoke-virtual {v0, p0}, Lcom/aee/sport/magicam/bean/FileContent;->setDown(Ljava/lang/String;)V

    .line 369
    sget-object v0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->cusAdapter:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/adapter/CustomAdapter;->notifyDataSetChanged()V

    .line 370
    return-void
.end method

.method public static downLoadFile(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 314
    :try_start_0
    new-instance v0, Lcom/lidroid/xutils/HttpUtils;

    invoke-direct {v0}, Lcom/lidroid/xutils/HttpUtils;-><init>()V

    .line 315
    .local v0, "http":Lcom/lidroid/xutils/HttpUtils;
    const-string v1, "MEDIA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 316
    .local v8, "num":I
    add-int/lit8 v1, v8, -0x3

    invoke-virtual {p0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 317
    .local v9, "path":Ljava/lang/String;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/HttpUtils;->configRequestThreadPoolSize(I)Lcom/lidroid/xutils/HttpUtils;

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/aee/sport/magicam/utils/Constants;->AEE_GALLERY_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 319
    const/4 v4, 0x0

    .line 320
    new-instance v5, Lcom/aee/sport/magicam/AeeApplication$1;

    invoke-direct {v5, p2, p1}, Lcom/aee/sport/magicam/AeeApplication$1;-><init>(ILjava/lang/String;)V

    move-object v1, p0

    .line 318
    invoke-virtual/range {v0 .. v5}, Lcom/lidroid/xutils/HttpUtils;->download(Ljava/lang/String;Ljava/lang/String;ZZLcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 357
    .end local v0    # "http":Lcom/lidroid/xutils/HttpUtils;
    .end local v8    # "num":I
    .end local v9    # "path":Ljava/lang/String;
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v6

    .line 354
    .local v6, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/aee/sport/magicam/AeeApplication;->instance:Lcom/aee/sport/magicam/AeeApplication;

    return-object v0
.end method

.method public static getAppResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 264
    sget-object v0, Lcom/aee/sport/magicam/AeeApplication;->instance:Lcom/aee/sport/magicam/AeeApplication;

    if-nez v0, :cond_0

    .line 265
    const/4 v0, 0x0

    .line 266
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/aee/sport/magicam/AeeApplication;->instance:Lcom/aee/sport/magicam/AeeApplication;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/AeeApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/aee/sport/magicam/AeeApplication;
    .locals 3

    .prologue
    .line 168
    sget-object v1, Lcom/aee/sport/magicam/AeeApplication;->instance:Lcom/aee/sport/magicam/AeeApplication;

    if-nez v1, :cond_0

    .line 170
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Application is null!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    :cond_0
    sget-object v1, Lcom/aee/sport/magicam/AeeApplication;->instance:Lcom/aee/sport/magicam/AeeApplication;

    return-object v1
.end method

.method public static getStr(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 373
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getAppResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/aee/sport/magicam/AeeApplication;->activitys:Ljava/util/List;

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aee/sport/magicam/AeeApplication;->activitys:Ljava/util/List;

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/aee/sport/magicam/AeeApplication;->activitys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    return-void
.end method

.method public getActivitys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/aee/sport/magicam/AeeApplication;->activitys:Ljava/util/List;

    return-object v0
.end method

.method public getBitmapUtils()Lcom/lidroid/xutils/BitmapUtils;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 229
    sget-object v0, Lcom/aee/sport/magicam/AeeApplication;->bitmapUtils:Lcom/lidroid/xutils/BitmapUtils;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/lidroid/xutils/BitmapUtils;

    sget-object v1, Lcom/aee/sport/magicam/utils/Constants;->DISKCACHEPATH:Ljava/lang/String;

    const/high16 v2, 0x3200000

    const/high16 v3, 0x12c00000

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/lidroid/xutils/BitmapUtils;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    sput-object v0, Lcom/aee/sport/magicam/AeeApplication;->bitmapUtils:Lcom/lidroid/xutils/BitmapUtils;

    .line 232
    sget-object v0, Lcom/aee/sport/magicam/AeeApplication;->bitmapUtils:Lcom/lidroid/xutils/BitmapUtils;

    invoke-virtual {v0, v4}, Lcom/lidroid/xutils/BitmapUtils;->configDiskCacheEnabled(Z)Lcom/lidroid/xutils/BitmapUtils;

    .line 233
    sget-object v0, Lcom/aee/sport/magicam/AeeApplication;->bitmapUtils:Lcom/lidroid/xutils/BitmapUtils;

    invoke-virtual {v0, v4}, Lcom/lidroid/xutils/BitmapUtils;->configMemoryCacheEnabled(Z)Lcom/lidroid/xutils/BitmapUtils;

    .line 234
    sget-object v0, Lcom/aee/sport/magicam/AeeApplication;->bitmapUtils:Lcom/lidroid/xutils/BitmapUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/BitmapUtils;->configDefaultShowOriginal(Z)Lcom/lidroid/xutils/BitmapUtils;

    .line 235
    sget-object v0, Lcom/aee/sport/magicam/AeeApplication;->bitmapUtils:Lcom/lidroid/xutils/BitmapUtils;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/BitmapUtils;->configThreadPoolSize(I)Lcom/lidroid/xutils/BitmapUtils;

    .line 237
    sget-object v0, Lcom/aee/sport/magicam/AeeApplication;->bitmapUtils:Lcom/lidroid/xutils/BitmapUtils;

    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/BitmapUtils;->configDefaultLoadFailedImage(I)Lcom/lidroid/xutils/BitmapUtils;

    .line 238
    sget-object v0, Lcom/aee/sport/magicam/AeeApplication;->bitmapUtils:Lcom/lidroid/xutils/BitmapUtils;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/BitmapUtils;->configDefaultBitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/lidroid/xutils/BitmapUtils;

    .line 241
    :cond_0
    sget-object v0, Lcom/aee/sport/magicam/AeeApplication;->bitmapUtils:Lcom/lidroid/xutils/BitmapUtils;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/os/Message;

    .prologue
    .line 379
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 180
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    sput-object v4, Lcom/aee/sport/magicam/AeeApplication;->mHandler:Landroid/os/Handler;

    .line 182
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 183
    .local v3, "pref":Landroid/content/SharedPreferences;
    const-string v4, "set_locale"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "p":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 187
    const-string v4, "zh-TW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 188
    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    .line 205
    .local v1, "locale":Ljava/util/Locale;
    :goto_0
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 206
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 207
    .local v0, "config":Landroid/content/res/Configuration;
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 208
    invoke-virtual {p0}, Lcom/aee/sport/magicam/AeeApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/aee/sport/magicam/AeeApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 211
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "locale":Ljava/util/Locale;
    :cond_0
    sput-object p0, Lcom/aee/sport/magicam/AeeApplication;->instance:Lcom/aee/sport/magicam/AeeApplication;

    .line 218
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    .line 219
    return-void

    .line 189
    :cond_1
    const-string v4, "zh"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 190
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .restart local v1    # "locale":Ljava/util/Locale;
    goto :goto_0

    .line 191
    .end local v1    # "locale":Ljava/util/Locale;
    :cond_2
    const-string v4, "pt-BR"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 192
    new-instance v1, Ljava/util/Locale;

    const-string v4, "pt"

    const-string v5, "BR"

    invoke-direct {v1, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1    # "locale":Ljava/util/Locale;
    goto :goto_0

    .line 193
    .end local v1    # "locale":Ljava/util/Locale;
    :cond_3
    const-string v4, "bn-IN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "bn"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 194
    :cond_4
    new-instance v1, Ljava/util/Locale;

    const-string v4, "bn"

    const-string v5, "IN"

    invoke-direct {v1, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1    # "locale":Ljava/util/Locale;
    goto :goto_0

    .line 201
    .end local v1    # "locale":Ljava/util/Locale;
    :cond_5
    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 202
    const/4 v4, 0x0

    const/16 v5, 0x2d

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 203
    :cond_6
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .restart local v1    # "locale":Ljava/util/Locale;
    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 249
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 250
    invoke-static {}, Lorg/videolan/libvlc/BitmapCache;->getInstance()Lorg/videolan/libvlc/BitmapCache;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/BitmapCache;->clear()V

    .line 251
    return-void
.end method

.method public returnToMainActivity()V
    .locals 4

    .prologue
    .line 289
    iget-object v2, p0, Lcom/aee/sport/magicam/AeeApplication;->activitys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 298
    return-void

    .line 289
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 291
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "activityName":Ljava/lang/String;
    const-string v3, "MainActivity"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 295
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public setActivitys(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, "activitys":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    iput-object p1, p0, Lcom/aee/sport/magicam/AeeApplication;->activitys:Ljava/util/List;

    .line 275
    return-void
.end method
