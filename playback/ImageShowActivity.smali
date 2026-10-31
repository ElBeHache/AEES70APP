.class public Lcom/aee/sport/magicam/playback/ImageShowActivity;
.super Lcom/aee/sport/magicam/BaseActivity;
.source "ImageShowActivity.java"


# instance fields
.field private adapter:Lcom/aee/sport/magicam/adapter/FilePagerAdapter;

.field private downloadView:Landroid/view/View;

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

.field private position:I

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/aee/sport/magicam/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/playback/ImageShowActivity;I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->position:I

    return-void
.end method

.method static synthetic access$1(Lcom/aee/sport/magicam/playback/ImageShowActivity;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/ImageShowActivity;->reFreshTitleMsg()V

    return-void
.end method

.method static synthetic access$2(Lcom/aee/sport/magicam/playback/ImageShowActivity;ZI)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Lcom/aee/sport/magicam/playback/ImageShowActivity;->reFreshDeleted(ZI)V

    return-void
.end method

.method static synthetic access$3(Lcom/aee/sport/magicam/playback/ImageShowActivity;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->position:I

    return v0
.end method

.method private deleterFile(Ljava/lang/String;I)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 155
    iget-object v3, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->files:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/bean/FileAttr;

    .line 156
    .local v0, "file":Lcom/aee/sport/magicam/bean/FileAttr;
    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileAttr;->isLocalFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileAttr;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v1, "fileLocal":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    const/4 v3, 0x1

    invoke-direct {p0, v3, p2}, Lcom/aee/sport/magicam/playback/ImageShowActivity;->reFreshDeleted(ZI)V

    .line 179
    .end local v1    # "fileLocal":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 162
    .restart local v1    # "fileLocal":Ljava/io/File;
    :cond_1
    const/4 v3, 0x0

    invoke-direct {p0, v3, p2}, Lcom/aee/sport/magicam/playback/ImageShowActivity;->reFreshDeleted(ZI)V

    goto :goto_0

    .line 164
    .end local v1    # "fileLocal":Ljava/io/File;
    :cond_2
    new-instance v2, Lcom/aee/sport/magicam/bean/SendMsg;

    sget v3, Lcom/aee/sport/magicam/utils/Constants;->AMBA_DEL_FILE:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 165
    .local v2, "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v3

    new-instance v4, Lcom/aee/sport/magicam/playback/ImageShowActivity$3;

    invoke-direct {v4, p0, p2}, Lcom/aee/sport/magicam/playback/ImageShowActivity$3;-><init>(Lcom/aee/sport/magicam/playback/ImageShowActivity;I)V

    invoke-virtual {v3, v4, v2}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;Lcom/aee/sport/magicam/bean/SendMsg;)V

    goto :goto_0
.end method

.method public static downLoadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 120
    new-instance v0, Lcom/lidroid/xutils/HttpUtils;

    invoke-direct {v0}, Lcom/lidroid/xutils/HttpUtils;-><init>()V

    .line 121
    .local v0, "http":Lcom/lidroid/xutils/HttpUtils;
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/aee/sport/magicam/utils/Constants;->AEE_GALLERY_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 122
    const/4 v4, 0x0

    .line 123
    new-instance v5, Lcom/aee/sport/magicam/playback/ImageShowActivity$2;

    invoke-direct {v5}, Lcom/aee/sport/magicam/playback/ImageShowActivity$2;-><init>()V

    move-object v1, p0

    .line 121
    invoke-virtual/range {v0 .. v5}, Lcom/lidroid/xutils/HttpUtils;->download(Ljava/lang/String;Ljava/lang/String;ZZLcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    move-result-object v6

    .line 146
    .local v6, "handler":Lcom/lidroid/xutils/http/HttpHandler;
    return-void
.end method

.method private reFreshDeleted(ZI)V
    .locals 4
    .param p1, "isSuccess"    # Z
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x1

    .line 188
    if-eqz p1, :cond_2

    .line 189
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->files:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aee/sport/magicam/bean/FileAttr;

    invoke-virtual {v1}, Lcom/aee/sport/magicam/bean/FileAttr;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/aee/sport/magicam/AeeApplication;->files:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/bean/FileAttr;->removePositionFileAttr(Ljava/lang/String;Ljava/util/List;)V

    .line 190
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->files:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 191
    add-int/lit8 v0, p2, 0x1

    .line 192
    .local v0, "changePosition":I
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/aee/sport/magicam/playback/ImageShowActivity;->finish()V

    .line 207
    .end local v0    # "changePosition":I
    :goto_0
    return-void

    .line 197
    .restart local v0    # "changePosition":I
    :cond_0
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 198
    const/4 v0, 0x0

    .line 199
    :cond_1
    iput v0, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->position:I

    .line 200
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->mHandler:Landroid/os/Handler;

    const v2, 0x800d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 202
    const v1, 0x7f080079

    invoke-static {v1, v3}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto :goto_0

    .line 205
    .end local v0    # "changePosition":I
    :cond_2
    const v1, 0x7f08007a

    invoke-static {v1, v3}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto :goto_0
.end method

.method private reFreshTitleMsg()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 101
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->files:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 103
    .local v0, "totalSize":I
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->position:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/playback/ImageShowActivity;->setTitleText(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->files:Ljava/util/List;

    iget v2, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aee/sport/magicam/bean/FileAttr;

    invoke-virtual {v1}, Lcom/aee/sport/magicam/bean/FileAttr;->isLocalFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->downloadView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .end local v0    # "totalSize":I
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->downloadView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showDeleteDialog()V
    .locals 7

    .prologue
    .line 264
    iget-object v4, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->files:Ljava/util/List;

    iget v5, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->position:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/bean/FileAttr;

    .line 265
    .local v0, "fileAttr":Lcom/aee/sport/magicam/bean/FileAttr;
    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileAttr;->getName()Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/aee/sport/magicam/playback/ImageShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, "tip":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileAttr;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .local v1, "fileLocal":Ljava/io/File;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 269
    const v5, 0x7f080011

    new-instance v6, Lcom/aee/sport/magicam/playback/ImageShowActivity$4;

    invoke-direct {v6, p0, v1}, Lcom/aee/sport/magicam/playback/ImageShowActivity$4;-><init>(Lcom/aee/sport/magicam/playback/ImageShowActivity;Ljava/io/File;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 281
    const v5, 0x7f080071

    new-instance v6, Lcom/aee/sport/magicam/playback/ImageShowActivity$5;

    invoke-direct {v6, p0}, Lcom/aee/sport/magicam/playback/ImageShowActivity$5;-><init>(Lcom/aee/sport/magicam/playback/ImageShowActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 287
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 288
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 292
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 301
    :goto_0
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    return v0

    .line 295
    :pswitch_0
    new-instance v0, Lcom/aee/sport/magicam/adapter/FilePagerAdapter;

    iget-object v1, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->files:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lcom/aee/sport/magicam/adapter/FilePagerAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->adapter:Lcom/aee/sport/magicam/adapter/FilePagerAdapter;

    .line 296
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->adapter:Lcom/aee/sport/magicam/adapter/FilePagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 297
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->position:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 298
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/ImageShowActivity;->reFreshTitleMsg()V

    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x800d
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v13, 0x1

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 257
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onClick(Landroid/view/View;)V

    .line 258
    return-void

    .line 216
    :pswitch_1
    iget-object v11, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->files:Ljava/util/List;

    iget v12, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->position:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/aee/sport/magicam/bean/FileAttr;

    invoke-virtual {v11}, Lcom/aee/sport/magicam/bean/FileAttr;->getName()Ljava/lang/String;

    move-result-object v7

    .line 217
    .local v7, "name":Ljava/lang/String;
    iget-object v11, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->files:Ljava/util/List;

    iget v12, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->position:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/aee/sport/magicam/bean/FileAttr;

    invoke-virtual {v11}, Lcom/aee/sport/magicam/bean/FileAttr;->getUri()Ljava/lang/String;

    move-result-object v10

    .line 218
    .local v10, "uri":Ljava/lang/String;
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/aee/sport/magicam/AeeApplication;->getBitmapUtils()Lcom/lidroid/xutils/BitmapUtils;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/lidroid/xutils/BitmapUtils;->getBitmapFileFromDiskCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 219
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 220
    new-instance v11, Ljava/lang/StringBuilder;

    sget-object v12, Lcom/aee/sport/magicam/utils/Constants;->AEE_GALLERY_PATH:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 221
    .local v8, "path":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    .local v9, "t":Ljava/io/File;
    invoke-static {v1, v9}, Lcom/aee/sport/magicam/utils/FileUtils;->fileChannelCopy(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    .line 223
    .local v4, "isSuccess":Z
    if-eqz v4, :cond_0

    .line 224
    const v11, 0x7f080077

    invoke-static {v11, v13}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto :goto_0

    .line 226
    :cond_0
    const v11, 0x7f080078

    invoke-static {v11, v13}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto :goto_0

    .line 228
    .end local v4    # "isSuccess":Z
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "t":Ljava/io/File;
    :cond_1
    invoke-static {v10, v7}, Lcom/aee/sport/magicam/playback/ImageShowActivity;->downLoadFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 232
    .end local v1    # "file":Ljava/io/File;
    .end local v7    # "name":Ljava/lang/String;
    .end local v10    # "uri":Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/ImageShowActivity;->showDeleteDialog()V

    goto :goto_0

    .line 242
    :pswitch_3
    iget-object v11, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->files:Ljava/util/List;

    iget v12, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->position:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aee/sport/magicam/bean/FileAttr;

    .line 243
    .local v2, "fileAttr":Lcom/aee/sport/magicam/bean/FileAttr;
    invoke-virtual {p0}, Lcom/aee/sport/magicam/playback/ImageShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f08004a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "activityTitle":Ljava/lang/String;
    move-object v6, v0

    .line 247
    .local v6, "msgTitle":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/aee/sport/magicam/bean/FileAttr;->isLocalFile()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 248
    invoke-virtual {v2}, Lcom/aee/sport/magicam/bean/FileAttr;->getName()Ljava/lang/String;

    move-result-object v5

    .line 249
    .local v5, "msgText":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/aee/sport/magicam/bean/FileAttr;->getUri()Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, "imgPath":Ljava/lang/String;
    :goto_1
    iget-object v11, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->mContext:Landroid/content/Context;

    invoke-static {v11, v0, v6, v5, v3}, Lcom/aee/sport/magicam/utils/PublicUtils;->shareMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 251
    .end local v3    # "imgPath":Ljava/lang/String;
    .end local v5    # "msgText":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Lcom/aee/sport/magicam/bean/FileAttr;->getName()Ljava/lang/String;

    move-result-object v5

    .line 252
    .restart local v5    # "msgText":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    sget-object v12, Lcom/aee/sport/magicam/utils/Constants;->AEE_GALLERY_PATH:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "imgPath":Ljava/lang/String;
    goto :goto_1

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0051
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/playback/ImageShowActivity;->setContentView(I)V

    .line 53
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/aee/sport/magicam/AeeApplication;->photoFiles:Ljava/util/List;

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->files:Ljava/util/List;

    .line 54
    new-instance v0, Lcom/aee/sport/magicam/adapter/FilePagerAdapter;

    iget-object v1, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->files:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lcom/aee/sport/magicam/adapter/FilePagerAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->adapter:Lcom/aee/sport/magicam/adapter/FilePagerAdapter;

    .line 55
    invoke-virtual {p0}, Lcom/aee/sport/magicam/playback/ImageShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "position"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->position:I

    .line 56
    const v0, 0x7f0c0014

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/playback/ImageShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 57
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->adapter:Lcom/aee/sport/magicam/adapter/FilePagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 58
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->position:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 60
    const v0, 0x7f0c0054

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/playback/ImageShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->downloadView:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/aee/sport/magicam/playback/ImageShowActivity$1;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/playback/ImageShowActivity$1;-><init>(Lcom/aee/sport/magicam/playback/ImageShowActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 82
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/ImageShowActivity;->reFreshTitleMsg()V

    .line 83
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Lcom/aee/sport/magicam/BaseActivity;->onPause()V

    .line 95
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Lcom/aee/sport/magicam/BaseActivity;->onResume()V

    .line 89
    return-void
.end method
