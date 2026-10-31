.class public Lcom/aee/sport/magicam/playback/InternetVideoActivity;
.super Lcom/aee/sport/magicam/BaseActivity;
.source "InternetVideoActivity.java"

# interfaces
.implements Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;
.implements Lio/vov/vitamio/MediaPlayer$OnCompletionListener;
.implements Lio/vov/vitamio/MediaPlayer$OnPreparedListener;
.implements Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aee/sport/magicam/playback/InternetVideoActivity$MyEventHandler;,
        Lcom/aee/sport/magicam/playback/InternetVideoActivity$VideoPlayerHandler;
    }
.end annotation


# static fields
.field private static final SURFACE_16_9:I = 0x4

.field private static final SURFACE_4_3:I = 0x5

.field private static final SURFACE_BEST_FIT:I = 0x0

.field private static final SURFACE_FILL:I = 0x3

.field private static final SURFACE_FIT_HORIZONTAL:I = 0x1

.field private static final SURFACE_FIT_VERTICAL:I = 0x2

.field private static final SURFACE_ORIGINAL:I = 0x6

.field private static final SURFACE_SIZE:I = 0x3

.field public static final TAG:Ljava/lang/String; = "DEBUG/InternetVideoActivity"

.field public static isPlayed:Z

.field public static mContext:Landroid/content/Context;


# instance fields
.field private btnPlayPause:Landroid/widget/ImageView;

.field private btnPlayorPause:Landroid/widget/ImageView;

.field private btnSize:Landroid/widget/ImageView;

.field private final eventHandler:Landroid/os/Handler;

.field private handler:Landroid/os/Handler;

.field private isTrackingTouch:Z

.field protected length:J

.field private mCurrentSize:I

.field public final mHandler:Landroid/os/Handler;

.field private mIsVideoReadyToBePlayed:Z

.field private mIsVideoSizeKnown:Z

.field private mLayout:Landroid/widget/FrameLayout;

.field private mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

.field private mSarDen:I

.field private mSarNum:I

.field private mTextShowInfo:Landroid/widget/TextView;

.field private mTextTime:Landroid/widget/TextView;

.field private mTextTitle:Landroid/widget/TextView;

.field private mUiVisibility:I

.field private mVideoHeight:I

.field private mVideoWidth:I

.field public mxHandler:Landroid/os/Handler;

.field private play:Landroid/widget/ImageView;

.field private playTime:Landroid/widget/TextView;

.field private position:I

.field private seekBar:Landroid/widget/SeekBar;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceView:Landroid/view/SurfaceView;

.field private totalTime:Landroid/widget/TextView;

.field private uri:Ljava/lang/String;

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
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Lcom/aee/sport/magicam/BaseActivity;-><init>()V

    .line 75
    iput-object v3, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 78
    iput-boolean v2, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mIsVideoSizeKnown:Z

    .line 79
    iput-boolean v2, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mIsVideoReadyToBePlayed:Z

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mUiVisibility:I

    .line 100
    iput v2, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mCurrentSize:I

    .line 103
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->length:J

    .line 104
    iput-object v3, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 138
    iput-boolean v2, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->isTrackingTouch:Z

    .line 498
    new-instance v0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$1;

    invoke-direct {v0, p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity$1;-><init>(Lcom/aee/sport/magicam/playback/InternetVideoActivity;)V

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->handler:Landroid/os/Handler;

    .line 530
    new-instance v0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$VideoPlayerHandler;

    invoke-direct {v0, p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity$VideoPlayerHandler;-><init>(Lcom/aee/sport/magicam/playback/InternetVideoActivity;)V

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mHandler:Landroid/os/Handler;

    .line 567
    new-instance v0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$MyEventHandler;

    invoke-direct {v0, p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity$MyEventHandler;-><init>(Lcom/aee/sport/magicam/playback/InternetVideoActivity;)V

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->eventHandler:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/playback/InternetVideoActivity;)Lio/vov/vitamio/MediaPlayer;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/aee/sport/magicam/playback/InternetVideoActivity;JJ)V
    .locals 0

    .prologue
    .line 512
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->showVideoTime(JJ)V

    return-void
.end method

.method static synthetic access$2(Lcom/aee/sport/magicam/playback/InternetVideoActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/aee/sport/magicam/playback/InternetVideoActivity;)V
    .locals 0

    .prologue
    .line 551
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->changeSurfaceSize()V

    return-void
.end method

.method static synthetic access$4(Lcom/aee/sport/magicam/playback/InternetVideoActivity;Z)V
    .locals 0

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->isTrackingTouch:Z

    return-void
.end method

.method static synthetic access$5(Lcom/aee/sport/magicam/playback/InternetVideoActivity;)I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->position:I

    return v0
.end method

.method static synthetic access$6(Lcom/aee/sport/magicam/playback/InternetVideoActivity;ZI)V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0, p1, p2}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->reFreshDeleted(ZI)V

    return-void
.end method

.method static synthetic access$7(Lcom/aee/sport/magicam/playback/InternetVideoActivity;Z)V
    .locals 0

    .prologue
    .line 471
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->showNextorPre(Z)V

    return-void
.end method

.method private changeSurfaceSize()V
    .locals 7

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 554
    .local v1, "dw":I
    invoke-virtual {p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 556
    .local v0, "dh":I
    int-to-float v4, v1

    iget v5, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mVideoWidth:I

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 557
    .local v3, "wScale":F
    int-to-float v4, v0

    iget v5, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mVideoHeight:I

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 559
    .local v2, "hScale":F
    cmpg-float v4, v3, v2

    if-gez v4, :cond_0

    .line 560
    iget-object v4, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget v5, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mVideoWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iget v6, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mVideoHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v6, v6

    invoke-interface {v4, v5, v6}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 564
    :goto_0
    iget-object v4, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->invalidate()V

    .line 565
    return-void

    .line 562
    :cond_0
    iget-object v4, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget v5, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mVideoWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iget v6, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mVideoHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    invoke-interface {v4, v5, v6}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_0
.end method

.method private deleterFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 329
    sput-boolean v3, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->isPlayed:Z

    .line 330
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->btnPlayorPause:Landroid/widget/ImageView;

    const v2, 0x7f02009a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 331
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->play:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    sget v1, Lcom/aee/sport/magicam/utils/Constants;->AMBA_DEL_FILE:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 333
    .local v0, "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    new-instance v2, Lcom/aee/sport/magicam/playback/InternetVideoActivity$5;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity$5;-><init>(Lcom/aee/sport/magicam/playback/InternetVideoActivity;)V

    invoke-virtual {v1, v2, v0}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;Lcom/aee/sport/magicam/bean/SendMsg;)V

    .line 358
    return-void
.end method

.method private doCleanUp()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 441
    iput v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mVideoWidth:I

    .line 442
    iput v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mVideoHeight:I

    .line 443
    iput-boolean v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mIsVideoReadyToBePlayed:Z

    .line 444
    iput-boolean v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mIsVideoSizeKnown:Z

    .line 445
    return-void
.end method

.method public static downLoadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 368
    new-instance v0, Lcom/lidroid/xutils/HttpUtils;

    invoke-direct {v0}, Lcom/lidroid/xutils/HttpUtils;-><init>()V

    .line 369
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

    .line 370
    const/4 v4, 0x0

    .line 371
    new-instance v5, Lcom/aee/sport/magicam/playback/InternetVideoActivity$6;

    invoke-direct {v5}, Lcom/aee/sport/magicam/playback/InternetVideoActivity$6;-><init>()V

    move-object v1, p0

    .line 369
    invoke-virtual/range {v0 .. v5}, Lcom/lidroid/xutils/HttpUtils;->download(Ljava/lang/String;Ljava/lang/String;ZZLcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    move-result-object v6

    .line 397
    .local v6, "handler":Lcom/lidroid/xutils/http/HttpHandler;
    return-void
.end method

.method public static millisToString(J)Ljava/lang/String;
    .locals 12
    .param p0, "millis"    # J

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x3c

    .line 636
    cmp-long v6, p0, v10

    if-gez v6, :cond_0

    const/4 v3, 0x1

    .line 637
    .local v3, "negative":Z
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    .line 639
    const-wide/16 v6, 0x3e8

    div-long/2addr p0, v6

    .line 640
    rem-long v6, p0, v8

    long-to-int v4, v6

    .line 641
    .local v4, "sec":I
    div-long/2addr p0, v8

    .line 642
    rem-long v6, p0, v8

    long-to-int v2, v6

    .line 643
    .local v2, "min":I
    div-long/2addr p0, v8

    .line 644
    long-to-int v1, p0

    .line 647
    .local v1, "hours":I
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v6}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    .line 648
    .local v0, "format":Ljava/text/DecimalFormat;
    const-string v6, "00"

    invoke-virtual {v0, v6}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 649
    cmp-long v6, p0, v10

    if-lez v6, :cond_2

    .line 650
    new-instance v7, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1

    const-string v6, "-"

    :goto_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-long v7, v2

    invoke-virtual {v0, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-long v7, v4

    invoke-virtual {v0, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 654
    .local v5, "time":Ljava/lang/String;
    :goto_2
    return-object v5

    .line 636
    .end local v0    # "format":Ljava/text/DecimalFormat;
    .end local v1    # "hours":I
    .end local v2    # "min":I
    .end local v3    # "negative":Z
    .end local v4    # "sec":I
    .end local v5    # "time":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 650
    .restart local v0    # "format":Ljava/text/DecimalFormat;
    .restart local v1    # "hours":I
    .restart local v2    # "min":I
    .restart local v3    # "negative":Z
    .restart local v4    # "sec":I
    :cond_1
    const-string v6, ""

    goto :goto_1

    .line 652
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_3

    const-string v6, "-"

    :goto_3
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-long v7, v4

    invoke-virtual {v0, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "time":Ljava/lang/String;
    goto :goto_2

    .end local v5    # "time":Ljava/lang/String;
    :cond_3
    const-string v6, ""

    goto :goto_3
.end method

.method private playNextorPre(Z)V
    .locals 0
    .param p1, "nextOrPre"    # Z

    .prologue
    .line 493
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->showNextorPre(Z)V

    .line 494
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->playOrPause()V

    .line 496
    return-void
.end method

.method private playOrPause()V
    .locals 6

    .prologue
    const v5, 0x7f020095

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 403
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->videoFiles:Ljava/util/List;

    iget v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/bean/FileAttr;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileAttr;->isLocalFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "file:///"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->videoFiles:Ljava/util/List;

    iget v2, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->position:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/bean/FileAttr;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileAttr;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->uri:Ljava/lang/String;

    .line 408
    :goto_0
    sget-boolean v0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->isPlayed:Z

    if-nez v0, :cond_1

    .line 409
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->releaseMediaPlayer()V

    .line 410
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->doCleanUp()V

    .line 411
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->playVideo()V

    .line 414
    invoke-virtual {p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->showMyProgress()V

    .line 415
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->btnPlayorPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 416
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->play:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 430
    :goto_1
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 431
    return-void

    .line 406
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v0, Lcom/aee/sport/magicam/utils/Constants;->AMBA_URL:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->videoFiles:Ljava/util/List;

    iget v2, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->position:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/bean/FileAttr;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileAttr;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->uri:Ljava/lang/String;

    goto :goto_0

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 418
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->pause()V

    .line 420
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->btnPlayorPause:Landroid/widget/ImageView;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 421
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->play:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 423
    :cond_2
    invoke-virtual {p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->showMyProgress()V

    .line 424
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->start()V

    .line 426
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->btnPlayorPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 427
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->play:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private playVideo()V
    .locals 4

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->doCleanUp()V

    .line 450
    :try_start_0
    new-instance v1, Lio/vov/vitamio/MediaPlayer;

    invoke-direct {v1, p0}, Lio/vov/vitamio/MediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    .line 451
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget-object v2, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/vov/vitamio/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 452
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget-object v2, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Lio/vov/vitamio/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 453
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v1}, Lio/vov/vitamio/MediaPlayer;->prepareAsync()V

    .line 454
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v1, p0}, Lio/vov/vitamio/MediaPlayer;->setOnBufferingUpdateListener(Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;)V

    .line 455
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v1, p0}, Lio/vov/vitamio/MediaPlayer;->setOnCompletionListener(Lio/vov/vitamio/MediaPlayer$OnCompletionListener;)V

    .line 456
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v1, p0}, Lio/vov/vitamio/MediaPlayer;->setOnPreparedListener(Lio/vov/vitamio/MediaPlayer$OnPreparedListener;)V

    .line 457
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v1, p0}, Lio/vov/vitamio/MediaPlayer;->setOnVideoSizeChangedListener(Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 458
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->setVolumeControlStream(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :goto_0
    return-void

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DEBUG/InternetVideoActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private reFreshDeleted(ZI)V
    .locals 4
    .param p1, "isSuccess"    # Z
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x1

    .line 271
    if-eqz p1, :cond_2

    .line 272
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->videoFiles:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aee/sport/magicam/bean/FileAttr;

    invoke-virtual {v1}, Lcom/aee/sport/magicam/bean/FileAttr;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/aee/sport/magicam/AeeApplication;->files:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/bean/FileAttr;->removePositionFileAttr(Ljava/lang/String;Ljava/util/List;)V

    .line 273
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->videoFiles:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 274
    add-int/lit8 v0, p2, 0x1

    .line 275
    .local v0, "changePosition":I
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->videoFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->finish()V

    .line 290
    .end local v0    # "changePosition":I
    :goto_0
    return-void

    .line 280
    .restart local v0    # "changePosition":I
    :cond_0
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->videoFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 281
    const/4 v0, 0x0

    .line 282
    :cond_1
    iput v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->position:I

    .line 283
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mxHandler:Landroid/os/Handler;

    const v2, 0x800d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 285
    const v1, 0x7f080079

    invoke-static {v1, v3}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto :goto_0

    .line 288
    .end local v0    # "changePosition":I
    :cond_2
    const v1, 0x7f08007a

    invoke-static {v1, v3}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto :goto_0
.end method

.method private reFreshTitleMsg()V
    .locals 3

    .prologue
    .line 310
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->videoFiles:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->videoFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 312
    .local v0, "totalSize":I
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->position:I

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

    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->setTitleText(Ljava/lang/String;)V

    .line 319
    .end local v0    # "totalSize":I
    :cond_0
    return-void
.end method

.method private releaseMediaPlayer()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->release()V

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    .line 438
    :cond_0
    return-void
.end method

.method private setupView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 157
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mxHandler:Landroid/os/Handler;

    .line 158
    sput-object p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mContext:Landroid/content/Context;

    .line 159
    sput-boolean v3, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->isPlayed:Z

    .line 160
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/aee/sport/magicam/AeeApplication;->videoFiles:Ljava/util/List;

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->videoFiles:Ljava/util/List;

    .line 161
    invoke-virtual {p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "position"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->position:I

    .line 163
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->videoFiles:Ljava/util/List;

    iget v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/bean/FileAttr;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileAttr;->isLocalFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "file:///"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->videoFiles:Ljava/util/List;

    iget v2, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->position:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/bean/FileAttr;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileAttr;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->uri:Ljava/lang/String;

    .line 165
    const v0, 0x7f0c0054

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    :goto_0
    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 170
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 171
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 172
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 173
    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mLayout:Landroid/widget/FrameLayout;

    .line 174
    const v0, 0x7f0c0019

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mTextTitle:Landroid/widget/TextView;

    .line 176
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->btnPlayPause:Landroid/widget/ImageView;

    .line 177
    const v0, 0x7f0c001d

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->btnSize:Landroid/widget/ImageView;

    .line 178
    const v0, 0x7f0c001a

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mTextTime:Landroid/widget/TextView;

    .line 179
    const v0, 0x7f0c001b

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mTextShowInfo:Landroid/widget/TextView;

    .line 181
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->btnPlayPause:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->btnSize:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mTextTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    const v0, 0x7f0c0056

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->btnPlayorPause:Landroid/widget/ImageView;

    .line 187
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->play:Landroid/widget/ImageView;

    .line 189
    const v0, 0x7f0c0051

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->position:I

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->showSelectedTitle(I)V

    .line 192
    const v0, 0x7f0c0020

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->seekBar:Landroid/widget/SeekBar;

    .line 193
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->playTime:Landroid/widget/TextView;

    .line 194
    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->totalTime:Landroid/widget/TextView;

    .line 195
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 196
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->seekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 197
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->playTime:Landroid/widget/TextView;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->totalTime:Landroid/widget/TextView;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->seekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/aee/sport/magicam/playback/InternetVideoActivity$2;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity$2;-><init>(Lcom/aee/sport/magicam/playback/InternetVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 222
    return-void

    .line 167
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v0, Lcom/aee/sport/magicam/utils/Constants;->AMBA_URL:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->videoFiles:Ljava/util/List;

    iget v2, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->position:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/bean/FileAttr;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileAttr;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->uri:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private showDeleteDialog()V
    .locals 7

    .prologue
    .line 238
    iget-object v4, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->videoFiles:Ljava/util/List;

    iget v5, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->position:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/bean/FileAttr;

    .line 239
    .local v0, "fileAttr":Lcom/aee/sport/magicam/bean/FileAttr;
    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileAttr;->getName()Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "tip":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileAttr;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
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

    .line 243
    const v5, 0x7f080011

    new-instance v6, Lcom/aee/sport/magicam/playback/InternetVideoActivity$3;

    invoke-direct {v6, p0, v1}, Lcom/aee/sport/magicam/playback/InternetVideoActivity$3;-><init>(Lcom/aee/sport/magicam/playback/InternetVideoActivity;Ljava/io/File;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 255
    const v5, 0x7f080071

    new-instance v6, Lcom/aee/sport/magicam/playback/InternetVideoActivity$4;

    invoke-direct {v6, p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity$4;-><init>(Lcom/aee/sport/magicam/playback/InternetVideoActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 261
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 262
    return-void
.end method

.method private showNextorPre(Z)V
    .locals 3
    .param p1, "nextOrPre"    # Z

    .prologue
    const/4 v2, 0x0

    .line 472
    sput-boolean v2, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->isPlayed:Z

    .line 473
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->videoFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 474
    .local v0, "size":I
    if-eqz p1, :cond_1

    .line 475
    iget v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->position:I

    .line 476
    iget v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->position:I

    if-lt v1, v0, :cond_0

    .line 477
    iput v2, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->position:I

    .line 483
    :cond_0
    :goto_0
    iget v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->position:I

    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->showSelectedTitle(I)V

    .line 484
    return-void

    .line 479
    :cond_1
    iget v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->position:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->position:I

    .line 480
    iget v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->position:I

    if-gtz v1, :cond_0

    .line 481
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->position:I

    goto :goto_0
.end method

.method private showVideoTime(JJ)V
    .locals 3
    .param p1, "t"    # J
    .param p3, "l"    # J

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->isTrackingTouch:Z

    if-eqz v0, :cond_0

    .line 520
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->seekBar:Landroid/widget/SeekBar;

    const-wide/16 v1, 0x64

    mul-long/2addr v1, p1

    div-long/2addr v1, p3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 518
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->playTime:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->millisToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->totalTime:Landroid/widget/TextView;

    invoke-static {p3, p4}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->millisToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private startVideoPlayback()V
    .locals 2

    .prologue
    .line 670
    const-string v0, "DEBUG/InternetVideoActivity"

    const-string v1, "startVideoPlayback"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->changeSurfaceSize()V

    .line 673
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 674
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->start()V

    .line 675
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 294
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 303
    :goto_0
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    return v0

    .line 300
    :pswitch_0
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->reFreshTitleMsg()V

    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x800d
        :pswitch_0
    .end packed-switch
.end method

.method public onBufferingUpdate(Lio/vov/vitamio/MediaPlayer;I)V
    .locals 0
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 799
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 680
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 739
    :goto_0
    :sswitch_0
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onClick(Landroid/view/View;)V

    .line 741
    return-void

    .line 704
    :sswitch_1
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->playOrPause()V

    goto :goto_0

    .line 707
    :sswitch_2
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->playNextorPre(Z)V

    goto :goto_0

    .line 710
    :sswitch_3
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->playNextorPre(Z)V

    goto :goto_0

    .line 713
    :sswitch_4
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->showDeleteDialog()V

    goto :goto_0

    .line 716
    :sswitch_5
    iget-object v7, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->videoFiles:Ljava/util/List;

    iget v8, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->position:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/aee/sport/magicam/bean/FileAttr;

    invoke-virtual {v7}, Lcom/aee/sport/magicam/bean/FileAttr;->getName()Ljava/lang/String;

    move-result-object v5

    .line 717
    .local v5, "name":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/aee/sport/magicam/utils/Constants;->AMBA_URL:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 718
    .local v6, "url":Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->downLoadFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 721
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    :sswitch_6
    iget-object v7, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->videoFiles:Ljava/util/List;

    iget v8, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->position:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aee/sport/magicam/bean/FileAttr;

    .line 722
    .local v1, "fileAttr":Lcom/aee/sport/magicam/bean/FileAttr;
    invoke-virtual {p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08004a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, "activityTitle":Ljava/lang/String;
    move-object v4, v0

    .line 726
    .local v4, "msgTitle":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/aee/sport/magicam/bean/FileAttr;->isLocalFile()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 727
    invoke-virtual {v1}, Lcom/aee/sport/magicam/bean/FileAttr;->getName()Ljava/lang/String;

    move-result-object v3

    .line 728
    .local v3, "msgText":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/aee/sport/magicam/bean/FileAttr;->getUri()Ljava/lang/String;

    move-result-object v2

    .line 733
    .local v2, "imgPath":Ljava/lang/String;
    :goto_1
    sget-object v7, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mContext:Landroid/content/Context;

    invoke-static {v7, v0, v4, v3, v2}, Lcom/aee/sport/magicam/utils/PublicUtils;->shareMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 730
    .end local v2    # "imgPath":Ljava/lang/String;
    .end local v3    # "msgText":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Lcom/aee/sport/magicam/bean/FileAttr;->getName()Ljava/lang/String;

    move-result-object v3

    .line 731
    .restart local v3    # "msgText":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/aee/sport/magicam/utils/Constants;->AEE_GALLERY_PATH:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "imgPath":Ljava/lang/String;
    goto :goto_1

    .line 680
    :sswitch_data_0
    .sparse-switch
        0x7f0c001c -> :sswitch_0
        0x7f0c001d -> :sswitch_0
        0x7f0c001e -> :sswitch_1
        0x7f0c0051 -> :sswitch_6
        0x7f0c0052 -> :sswitch_4
        0x7f0c0054 -> :sswitch_5
        0x7f0c0056 -> :sswitch_1
        0x7f0c0057 -> :sswitch_2
        0x7f0c0058 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCompletion(Lio/vov/vitamio/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;

    .prologue
    const/4 v2, 0x0

    .line 787
    sput-boolean v2, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->isPlayed:Z

    .line 788
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->btnPlayorPause:Landroid/widget/ImageView;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 789
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->play:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 790
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 791
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 527
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 528
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->setContentView(I)V

    .line 150
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->setupView()V

    .line 151
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 604
    invoke-static {}, Lorg/videolan/libvlc/EventHandler;->getInstance()Lorg/videolan/libvlc/EventHandler;

    move-result-object v0

    .line 605
    .local v0, "em":Lorg/videolan/libvlc/EventHandler;
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/EventHandler;->removeHandler(Landroid/os/Handler;)V

    .line 606
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->releaseMediaPlayer()V

    .line 607
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->doCleanUp()V

    .line 608
    invoke-super {p0}, Lcom/aee/sport/magicam/BaseActivity;->onDestroy()V

    .line 609
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->pause()V

    .line 616
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->btnPlayorPause:Landroid/widget/ImageView;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 617
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->play:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 620
    :cond_0
    invoke-super {p0}, Lcom/aee/sport/magicam/BaseActivity;->onPause()V

    .line 621
    return-void
.end method

.method public onPrepared(Lio/vov/vitamio/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;

    .prologue
    .line 779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mIsVideoReadyToBePlayed:Z

    .line 780
    iget-boolean v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mIsVideoReadyToBePlayed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mIsVideoSizeKnown:Z

    if-eqz v0, :cond_0

    .line 781
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->startVideoPlayback()V

    .line 783
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 625
    invoke-super {p0}, Lcom/aee/sport/magicam/BaseActivity;->onResume()V

    .line 626
    return-void
.end method

.method public onVideoSizeChanged(Lio/vov/vitamio/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v0, 0x1

    .line 762
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 763
    :cond_0
    const-string v0, "DEBUG/InternetVideoActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid video width("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") or height("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_1
    :goto_0
    return-void

    .line 766
    :cond_2
    iput-boolean v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mIsVideoSizeKnown:Z

    .line 767
    sput-boolean v0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->isPlayed:Z

    .line 770
    iput p2, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mVideoWidth:I

    .line 771
    iput p3, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mVideoHeight:I

    .line 772
    iget-boolean v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mIsVideoReadyToBePlayed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mIsVideoSizeKnown:Z

    if-eqz v0, :cond_1

    .line 773
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->startVideoPlayback()V

    goto :goto_0
.end method

.method public setSurfaceSize(IIII)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "sar_num"    # I
    .param p4, "sar_den"    # I

    .prologue
    .line 658
    mul-int v1, p1, p2

    if-nez v1, :cond_0

    .line 667
    :goto_0
    return-void

    .line 661
    :cond_0
    iput p2, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mVideoHeight:I

    .line 662
    iput p1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mVideoWidth:I

    .line 663
    iput p3, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mSarNum:I

    .line 664
    iput p4, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mSarDen:I

    .line 665
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 666
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public showSelectedTitle(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->videoFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->setTitleText(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 746
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 750
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget-object v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lio/vov/vitamio/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 753
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 758
    return-void
.end method
