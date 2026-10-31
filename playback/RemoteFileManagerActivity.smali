.class public Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;
.super Lcom/aee/sport/magicam/BaseActivity;
.source "RemoteFileManagerActivity.java"


# static fields
.field static bmpTemp:Landroid/graphics/Bitmap;

.field private static isLand:Z

.field public static widthImgPixels:I


# instance fields
.field private adapter:Lcom/aee/sport/magicam/adapter/ImageAdapter;

.field private changeToselect:Z

.field public fileGrid:Landroid/widget/GridView;

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

.field private isLocal:Z

.field private layout_play_bottom:Landroid/view/View;

.field private layout_play_bottom1:Landroid/view/View;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->isLand:Z

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/aee/sport/magicam/BaseActivity;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->changeToselect:Z

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->files:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->cd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->changeToselect:Z

    return v0
.end method

.method static synthetic access$3(Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;)V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->changeView()V

    return-void
.end method

.method static synthetic access$4(Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;)V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->getFiles()V

    return-void
.end method

.method static synthetic access$5(Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->type:I

    return v0
.end method

.method private cd(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 181
    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    sget v1, Lcom/aee/sport/magicam/utils/Constants;->AMBA_CD:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 182
    .local v0, "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    new-instance v2, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$3;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$3;-><init>(Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;)V

    invoke-virtual {v1, v2, v0}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;Lcom/aee/sport/magicam/bean/SendMsg;)V

    .line 196
    return-void
.end method

.method private changeView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 322
    iget-boolean v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->changeToselect:Z

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->titleLeft:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->layout_play_bottom:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 326
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->adapter:Lcom/aee/sport/magicam/adapter/ImageAdapter;

    invoke-virtual {v1}, Lcom/aee/sport/magicam/adapter/ImageAdapter;->clearAllSelected()V

    .line 332
    :goto_0
    iget-boolean v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->changeToselect:Z

    if-eqz v1, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->changeToselect:Z

    .line 333
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->adapter:Lcom/aee/sport/magicam/adapter/ImageAdapter;

    iget-boolean v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->changeToselect:Z

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/adapter/ImageAdapter;->setChangeToselect(Z)V

    .line 334
    return-void

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->titleLeft:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->layout_play_bottom:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 332
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private deleteSelectedFile()V
    .locals 2

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->showMyProgress()V

    .line 228
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5;-><init>(Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 290
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 291
    return-void
.end method

.method private deleterFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 205
    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    sget v1, Lcom/aee/sport/magicam/utils/Constants;->AMBA_DEL_FILE:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 206
    .local v0, "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    new-instance v2, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$4;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$4;-><init>(Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;)V

    invoke-virtual {v1, v2, v0}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;Lcom/aee/sport/magicam/bean/SendMsg;)V

    .line 221
    return-void
.end method

.method private getFiles()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 297
    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    sget v1, Lcom/aee/sport/magicam/utils/Constants;->AMBA_LS:I

    invoke-direct {v0, v1, v2, v2}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 298
    .local v0, "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    new-instance v2, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$6;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$6;-><init>(Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;)V

    invoke-virtual {v1, v2, v0}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;Lcom/aee/sport/magicam/bean/SendMsg;)V

    .line 316
    return-void
.end method

.method private getSelectedFirstPosition()I
    .locals 4

    .prologue
    .line 399
    iget-object v3, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->files:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 400
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aee/sport/magicam/bean/FileAttr;>;"
    const/4 v1, 0x0

    .line 401
    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 408
    :cond_0
    iget-object v3, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->files:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 409
    const/4 v1, -0x1

    .line 410
    :cond_1
    return v1

    .line 402
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/bean/FileAttr;

    .line 403
    .local v0, "file":Lcom/aee/sport/magicam/bean/FileAttr;
    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileAttr;->isSelected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initView()V
    .locals 7

    .prologue
    const v6, 0x7f080076

    const v3, 0x7f080075

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->type:I

    .line 88
    iget v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->type:I

    packed-switch v1, :pswitch_data_0

    .line 111
    :goto_0
    const v1, 0x7f0c0024

    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->layout_play_bottom:Landroid/view/View;

    .line 113
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->titleLeft:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-static {p0}, Lcom/aee/sport/magicam/utils/PublicUtils;->isLand(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->isLand:Z

    .line 116
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/aee/sport/magicam/utils/PublicUtils;->getImgWidth(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->widthImgPixels:I

    .line 118
    invoke-virtual {p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 119
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f02007c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->bmpTemp:Landroid/graphics/Bitmap;

    .line 120
    sget-object v1, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->bmpTemp:Landroid/graphics/Bitmap;

    sget v2, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->widthImgPixels:I

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/utils/PublicUtils;->small(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->bmpTemp:Landroid/graphics/Bitmap;

    .line 122
    const v1, 0x7f0c0023

    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->fileGrid:Landroid/widget/GridView;

    .line 123
    sget-boolean v1, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->isLand:Z

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->fileGrid:Landroid/widget/GridView;

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->LAND_DIVIDE:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 128
    :goto_1
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/aee/sport/magicam/AeeApplication;->files:Ljava/util/List;

    iput-object v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->files:Ljava/util/List;

    .line 129
    new-instance v1, Lcom/aee/sport/magicam/adapter/ImageAdapter;

    iget-object v2, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->files:Ljava/util/List;

    iget-boolean v3, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->isLocal:Z

    invoke-direct {v1, p0, v2, v3}, Lcom/aee/sport/magicam/adapter/ImageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->adapter:Lcom/aee/sport/magicam/adapter/ImageAdapter;

    .line 130
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->fileGrid:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->adapter:Lcom/aee/sport/magicam/adapter/ImageAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->fileGrid:Landroid/widget/GridView;

    new-instance v2, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$1;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$1;-><init>(Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 144
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->fileGrid:Landroid/widget/GridView;

    new-instance v2, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$2;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$2;-><init>(Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 158
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->fileGrid:Landroid/widget/GridView;

    new-instance v2, Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;

    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aee/sport/magicam/AeeApplication;->getBitmapUtils()Lcom/lidroid/xutils/BitmapUtils;

    move-result-object v3

    invoke-direct {v2, v3, v4, v5}, Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;-><init>(Lcom/lidroid/xutils/task/TaskHandler;ZZ)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 165
    return-void

    .line 90
    .end local v0    # "res":Landroid/content/res/Resources;
    :pswitch_0
    invoke-virtual {p0, v6}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->setTitleText(I)V

    .line 91
    iput-boolean v4, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->isLocal:Z

    .line 92
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aee/sport/magicam/AeeApplication;->getBitmapUtils()Lcom/lidroid/xutils/BitmapUtils;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/lidroid/xutils/BitmapUtils;->configDiskCacheEnabled(Z)Lcom/lidroid/xutils/BitmapUtils;

    goto/16 :goto_0

    .line 95
    :pswitch_1
    invoke-virtual {p0, v6}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->setTitleText(I)V

    .line 96
    iput-boolean v4, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->isLocal:Z

    .line 97
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aee/sport/magicam/AeeApplication;->getBitmapUtils()Lcom/lidroid/xutils/BitmapUtils;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/lidroid/xutils/BitmapUtils;->configDiskCacheEnabled(Z)Lcom/lidroid/xutils/BitmapUtils;

    goto/16 :goto_0

    .line 100
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->setTitleText(I)V

    .line 101
    iput-boolean v5, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->isLocal:Z

    .line 102
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aee/sport/magicam/AeeApplication;->getBitmapUtils()Lcom/lidroid/xutils/BitmapUtils;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lidroid/xutils/BitmapUtils;->configDiskCacheEnabled(Z)Lcom/lidroid/xutils/BitmapUtils;

    goto/16 :goto_0

    .line 105
    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->setTitleText(I)V

    .line 106
    iput-boolean v5, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->isLocal:Z

    .line 107
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aee/sport/magicam/AeeApplication;->getBitmapUtils()Lcom/lidroid/xutils/BitmapUtils;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lidroid/xutils/BitmapUtils;->configDiskCacheEnabled(Z)Lcom/lidroid/xutils/BitmapUtils;

    goto/16 :goto_0

    .line 126
    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->fileGrid:Landroid/widget/GridView;

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->PORT_DIVIDE:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    goto/16 :goto_1

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 423
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 429
    :goto_0
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    return v0

    .line 425
    :pswitch_0
    invoke-virtual {p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->hideMyProgress()V

    .line 426
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->adapter:Lcom/aee/sport/magicam/adapter/ImageAdapter;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/adapter/ImageAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 423
    nop

    :pswitch_data_0
    .packed-switch 0x800d
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->changeToselect:Z

    if-eqz v0, :cond_0

    .line 416
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->changeView()V

    .line 419
    :goto_0
    return-void

    .line 418
    :cond_0
    invoke-super {p0}, Lcom/aee/sport/magicam/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 391
    :goto_0
    :pswitch_0
    return-void

    .line 346
    :pswitch_1
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->changeView()V

    goto :goto_0

    .line 349
    :pswitch_2
    const-string v7, "No"

    invoke-static {v7, v8}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(Ljava/lang/String;Z)V

    goto :goto_0

    .line 353
    :pswitch_3
    :try_start_0
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->getSelectedFirstPosition()I

    move-result v6

    .line 354
    .local v6, "position":I
    if-gez v6, :cond_0

    .line 355
    const v7, 0x7f0800ad

    invoke-virtual {p0, v7}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    .end local v6    # "position":I
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 357
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v6    # "position":I
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->files:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aee/sport/magicam/bean/FileAttr;

    .line 358
    .local v2, "fileAttr":Lcom/aee/sport/magicam/bean/FileAttr;
    invoke-virtual {p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 359
    const v8, 0x7f08004a

    .line 358
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "activityTitle":Ljava/lang/String;
    move-object v5, v0

    .line 363
    .local v5, "msgTitle":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/aee/sport/magicam/bean/FileAttr;->isLocalFile()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 364
    invoke-virtual {v2}, Lcom/aee/sport/magicam/bean/FileAttr;->getName()Ljava/lang/String;

    move-result-object v4

    .line 365
    .local v4, "msgText":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/aee/sport/magicam/bean/FileAttr;->getUri()Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, "imgPath":Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->mContext:Landroid/content/Context;

    invoke-static {v7, v0, v5, v4, v3}, Lcom/aee/sport/magicam/utils/PublicUtils;->shareMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 367
    .end local v3    # "imgPath":Ljava/lang/String;
    .end local v4    # "msgText":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Lcom/aee/sport/magicam/bean/FileAttr;->getName()Ljava/lang/String;

    move-result-object v4

    .line 368
    .restart local v4    # "msgText":Ljava/lang/String;
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/aee/sport/magicam/AeeApplication;->getBitmapUtils()Lcom/lidroid/xutils/BitmapUtils;

    move-result-object v7

    .line 369
    invoke-virtual {v2}, Lcom/aee/sport/magicam/bean/FileAttr;->getUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lidroid/xutils/BitmapUtils;->getBitmapFileFromDiskCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 370
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 368
    .restart local v3    # "imgPath":Ljava/lang/String;
    goto :goto_1

    .line 381
    .end local v0    # "activityTitle":Ljava/lang/String;
    .end local v2    # "fileAttr":Lcom/aee/sport/magicam/bean/FileAttr;
    .end local v3    # "imgPath":Ljava/lang/String;
    .end local v4    # "msgText":Ljava/lang/String;
    .end local v5    # "msgTitle":Ljava/lang/String;
    .end local v6    # "position":I
    :pswitch_4
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->deleteSelectedFile()V

    goto :goto_0

    .line 384
    :pswitch_5
    invoke-virtual {p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->onBackPressed()V

    goto :goto_0

    .line 387
    :pswitch_6
    iget-object v7, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->adapter:Lcom/aee/sport/magicam/adapter/ImageAdapter;

    invoke-virtual {v7}, Lcom/aee/sport/magicam/adapter/ImageAdapter;->selectAll()V

    goto :goto_0

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0051
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->setContentView(I)V

    .line 81
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->initView()V

    .line 82
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->adapter:Lcom/aee/sport/magicam/adapter/ImageAdapter;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/adapter/ImageAdapter;->clearAllSelected()V

    .line 339
    invoke-super {p0}, Lcom/aee/sport/magicam/BaseActivity;->onDestroy()V

    .line 340
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->adapter:Lcom/aee/sport/magicam/adapter/ImageAdapter;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->adapter:Lcom/aee/sport/magicam/adapter/ImageAdapter;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/adapter/ImageAdapter;->notifyDataSetChanged()V

    .line 172
    :cond_0
    invoke-super {p0}, Lcom/aee/sport/magicam/BaseActivity;->onResume()V

    .line 173
    return-void
.end method
