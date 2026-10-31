.class public Lcom/aee/sport/magicam/photoview/VideoViewActivity;
.super Lcom/aee/sport/magicam/BaseActivity;
.source "VideoViewActivity.java"

# interfaces
.implements Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;
.implements Lio/vov/vitamio/MediaPlayer$OnCompletionListener;
.implements Lio/vov/vitamio/MediaPlayer$OnPreparedListener;
.implements Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aee/sport/magicam/photoview/VideoViewActivity$MyEventHandler;,
        Lcom/aee/sport/magicam/photoview/VideoViewActivity$VideoPlayerHandler;
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

.field private static delPath:Ljava/lang/String;

.field public static isPlayed:Z

.field public static mContext:Landroid/content/Context;


# instance fields
.field private btdown:Landroid/widget/ImageView;

.field private btnPlayPause:Landroid/widget/ImageView;

.field private btnPlayorPause:Landroid/widget/ImageView;

.field private btnSize:Landroid/widget/ImageView;

.field private curname:Ljava/lang/String;

.field private del:Landroid/widget/ImageView;

.field private dialogView1:Lcom/aee/sport/magicam/softwareupdate/DialogView;

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

.field private next:Landroid/widget/ImageView;

.field private play:Landroid/widget/ImageView;

.field private playTime:Landroid/widget/TextView;

.field private pre:Landroid/widget/ImageView;

.field private seekBar:Landroid/widget/SeekBar;

.field private share:Landroid/widget/ImageView;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceView:Landroid/view/SurfaceView;

.field private totalTime:Landroid/widget/TextView;

.field private uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const-string v0, "DCIM/100MEDIA/"

    sput-object v0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->delPath:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Lcom/aee/sport/magicam/BaseActivity;-><init>()V

    .line 65
    iput-object v3, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 69
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->length:J

    .line 70
    iput-boolean v2, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mIsVideoSizeKnown:Z

    .line 71
    iput-boolean v2, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mIsVideoReadyToBePlayed:Z

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mUiVisibility:I

    .line 87
    iput v2, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mCurrentSize:I

    .line 89
    iput-object v3, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 133
    iput-boolean v2, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->isTrackingTouch:Z

    .line 283
    new-instance v0, Lcom/aee/sport/magicam/photoview/VideoViewActivity$1;

    invoke-direct {v0, p0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity$1;-><init>(Lcom/aee/sport/magicam/photoview/VideoViewActivity;)V

    iput-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->handler:Landroid/os/Handler;

    .line 315
    new-instance v0, Lcom/aee/sport/magicam/photoview/VideoViewActivity$VideoPlayerHandler;

    invoke-direct {v0, p0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity$VideoPlayerHandler;-><init>(Lcom/aee/sport/magicam/photoview/VideoViewActivity;)V

    iput-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mHandler:Landroid/os/Handler;

    .line 351
    new-instance v0, Lcom/aee/sport/magicam/photoview/VideoViewActivity$MyEventHandler;

    invoke-direct {v0, p0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity$MyEventHandler;-><init>(Lcom/aee/sport/magicam/photoview/VideoViewActivity;)V

    iput-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->eventHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/photoview/VideoViewActivity;)Lio/vov/vitamio/MediaPlayer;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/aee/sport/magicam/photoview/VideoViewActivity;JJ)V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->showVideoTime(JJ)V

    return-void
.end method

.method static synthetic access$2(Lcom/aee/sport/magicam/photoview/VideoViewActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/aee/sport/magicam/photoview/VideoViewActivity;)V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->changeSurfaceSize()V

    return-void
.end method

.method static synthetic access$4(Lcom/aee/sport/magicam/photoview/VideoViewActivity;Z)V
    .locals 0

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->isTrackingTouch:Z

    return-void
.end method

.method static synthetic access$5(Lcom/aee/sport/magicam/photoview/VideoViewActivity;)Lcom/aee/sport/magicam/softwareupdate/DialogView;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->dialogView1:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    return-object v0
.end method

.method static synthetic access$6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->delPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/aee/sport/magicam/photoview/VideoViewActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->curname:Ljava/lang/String;

    return-object v0
.end method

.method private changeSurfaceSize()V
    .locals 7

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 338
    .local v1, "dw":I
    invoke-virtual {p0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 340
    .local v0, "dh":I
    int-to-float v4, v1

    iget v5, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mVideoWidth:I

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 341
    .local v3, "wScale":F
    int-to-float v4, v0

    iget v5, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mVideoHeight:I

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 343
    .local v2, "hScale":F
    cmpg-float v4, v3, v2

    if-gez v4, :cond_0

    .line 344
    iget-object v4, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget v5, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mVideoWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iget v6, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mVideoHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v6, v6

    invoke-interface {v4, v5, v6}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 348
    :goto_0
    iget-object v4, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->invalidate()V

    .line 349
    return-void

    .line 346
    :cond_0
    iget-object v4, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget v5, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mVideoWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iget v6, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mVideoHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    invoke-interface {v4, v5, v6}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_0
.end method

.method private disDialog()V
    .locals 6

    .prologue
    .line 480
    new-instance v0, Lcom/aee/sport/magicam/softwareupdate/DialogView;

    sget-object v1, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/aee/sport/magicam/photoview/VideoViewActivity$3;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity$3;-><init>(Lcom/aee/sport/magicam/photoview/VideoViewActivity;)V

    .line 531
    const/4 v3, 0x1

    const v4, 0x7f0800a7

    const v5, 0x7f08000e

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/softwareupdate/DialogView;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;III)V

    .line 480
    iput-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->dialogView1:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    .line 532
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->dialogView1:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    const v1, 0x7f0800ab

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->setOkString(I)V

    .line 533
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->dialogView1:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    const v1, 0x7f0800ac

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->setCancelString(I)V

    .line 534
    return-void
.end method

.method private doCleanUp()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 258
    iput v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mVideoWidth:I

    .line 259
    iput v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mVideoHeight:I

    .line 260
    iput-boolean v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mIsVideoReadyToBePlayed:Z

    .line 261
    iput-boolean v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mIsVideoSizeKnown:Z

    .line 262
    return-void
.end method

.method public static millisToString(J)Ljava/lang/String;
    .locals 12
    .param p0, "millis"    # J

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x3c

    .line 415
    cmp-long v6, p0, v10

    if-gez v6, :cond_0

    const/4 v3, 0x1

    .line 416
    .local v3, "negative":Z
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    .line 418
    const-wide/16 v6, 0x3e8

    div-long/2addr p0, v6

    .line 419
    rem-long v6, p0, v8

    long-to-int v4, v6

    .line 420
    .local v4, "sec":I
    div-long/2addr p0, v8

    .line 421
    rem-long v6, p0, v8

    long-to-int v2, v6

    .line 422
    .local v2, "min":I
    div-long/2addr p0, v8

    .line 423
    long-to-int v1, p0

    .line 426
    .local v1, "hours":I
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v6}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    .line 427
    .local v0, "format":Ljava/text/DecimalFormat;
    const-string v6, "00"

    invoke-virtual {v0, v6}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 428
    cmp-long v6, p0, v10

    if-lez v6, :cond_2

    .line 429
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

    .line 433
    .local v5, "time":Ljava/lang/String;
    :goto_2
    return-object v5

    .line 415
    .end local v0    # "format":Ljava/text/DecimalFormat;
    .end local v1    # "hours":I
    .end local v2    # "min":I
    .end local v3    # "negative":Z
    .end local v4    # "sec":I
    .end local v5    # "time":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 429
    .restart local v0    # "format":Ljava/text/DecimalFormat;
    .restart local v1    # "hours":I
    .restart local v2    # "min":I
    .restart local v3    # "negative":Z
    .restart local v4    # "sec":I
    :cond_1
    const-string v6, ""

    goto :goto_1

    .line 431
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

.method private playOrPause()V
    .locals 4

    .prologue
    const v3, 0x7f020095

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 227
    sget-boolean v0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->isPlayed:Z

    if-nez v0, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->releaseMediaPlayer()V

    .line 229
    invoke-direct {p0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->doCleanUp()V

    .line 230
    invoke-direct {p0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->playVideo()V

    .line 231
    invoke-virtual {p0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->showMyProgress()V

    .line 232
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->btnPlayorPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->play:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    :goto_0
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 248
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->pause()V

    .line 237
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->btnPlayorPause:Landroid/widget/ImageView;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->play:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {p0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->showMyProgress()V

    .line 241
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->start()V

    .line 243
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->btnPlayorPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->play:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private playVideo()V
    .locals 4

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->releaseMediaPlayer()V

    .line 266
    invoke-direct {p0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->doCleanUp()V

    .line 268
    :try_start_0
    new-instance v1, Lio/vov/vitamio/MediaPlayer;

    invoke-direct {v1, p0}, Lio/vov/vitamio/MediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    .line 269
    iget-object v1, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget-object v2, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/vov/vitamio/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget-object v2, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Lio/vov/vitamio/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 271
    iget-object v1, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v1}, Lio/vov/vitamio/MediaPlayer;->prepareAsync()V

    .line 272
    iget-object v1, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v1, p0}, Lio/vov/vitamio/MediaPlayer;->setOnBufferingUpdateListener(Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;)V

    .line 273
    iget-object v1, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v1, p0}, Lio/vov/vitamio/MediaPlayer;->setOnCompletionListener(Lio/vov/vitamio/MediaPlayer$OnCompletionListener;)V

    .line 274
    iget-object v1, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v1, p0}, Lio/vov/vitamio/MediaPlayer;->setOnPreparedListener(Lio/vov/vitamio/MediaPlayer$OnPreparedListener;)V

    .line 275
    iget-object v1, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v1, p0}, Lio/vov/vitamio/MediaPlayer;->setOnVideoSizeChangedListener(Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 276
    iget-object v1, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    const-wide/32 v2, 0x100000

    invoke-virtual {v1, v2, v3}, Lio/vov/vitamio/MediaPlayer;->setBufferSize(J)V

    .line 277
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->setVolumeControlStream(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private releaseMediaPlayer()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->release()V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    .line 255
    :cond_0
    return-void
.end method

.method private setupView()V
    .locals 7

    .prologue
    const v6, 0x7f0c0051

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 148
    sput-object p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mContext:Landroid/content/Context;

    .line 149
    sput-boolean v5, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->isPlayed:Z

    .line 150
    invoke-virtual {p0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fileURL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->uri:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->uri:Ljava/lang/String;

    iget-object v1, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->uri:Ljava/lang/String;

    const-string v2, "DCIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->uri:Ljava/lang/String;

    const-string v3, "DCIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->delPath:Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fileName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->curname:Ljava/lang/String;

    .line 154
    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 155
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 156
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 157
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 159
    const v0, 0x7f0c0054

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->btdown:Landroid/widget/ImageView;

    .line 160
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->btdown:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    invoke-virtual {p0, v6}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->share:Landroid/widget/ImageView;

    .line 162
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->share:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    const v0, 0x7f0c0058

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->pre:Landroid/widget/ImageView;

    .line 164
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->pre:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    const v0, 0x7f0c0057

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->next:Landroid/widget/ImageView;

    .line 166
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->next:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    const v0, 0x7f0c0052

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->del:Landroid/widget/ImageView;

    .line 170
    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mLayout:Landroid/widget/FrameLayout;

    .line 171
    const v0, 0x7f0c0019

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mTextTitle:Landroid/widget/TextView;

    .line 173
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->btnPlayPause:Landroid/widget/ImageView;

    .line 174
    const v0, 0x7f0c001d

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->btnSize:Landroid/widget/ImageView;

    .line 175
    const v0, 0x7f0c001a

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mTextTime:Landroid/widget/TextView;

    .line 176
    const v0, 0x7f0c001b

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mTextShowInfo:Landroid/widget/TextView;

    .line 178
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->btnPlayPause:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->btnSize:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mTextTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    const v0, 0x7f0c0056

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->btnPlayorPause:Landroid/widget/ImageView;

    .line 184
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->play:Landroid/widget/ImageView;

    .line 186
    invoke-virtual {p0, v6}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->curname:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->setTitleText(Ljava/lang/String;)V

    .line 189
    const v0, 0x7f0c0020

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->seekBar:Landroid/widget/SeekBar;

    .line 190
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->playTime:Landroid/widget/TextView;

    .line 191
    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->totalTime:Landroid/widget/TextView;

    .line 192
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 193
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->seekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 194
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->playTime:Landroid/widget/TextView;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->totalTime:Landroid/widget/TextView;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->seekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/aee/sport/magicam/photoview/VideoViewActivity$2;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity$2;-><init>(Lcom/aee/sport/magicam/photoview/VideoViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 219
    return-void
.end method

.method private showVideoTime(JJ)V
    .locals 3
    .param p1, "t"    # J
    .param p3, "l"    # J

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->isTrackingTouch:Z

    if-eqz v0, :cond_0

    .line 305
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->seekBar:Landroid/widget/SeekBar;

    const-wide/16 v1, 0x64

    mul-long/2addr v1, p1

    div-long/2addr v1, p3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 303
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->playTime:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->millisToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->totalTime:Landroid/widget/TextView;

    invoke-static {p3, p4}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->millisToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private startVideoPlayback()V
    .locals 2

    .prologue
    .line 537
    const-string v0, "DEBUG/InternetVideoActivity"

    const-string v1, "startVideoPlayback"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-direct {p0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->changeSurfaceSize()V

    .line 540
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 541
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->start()V

    .line 542
    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Lio/vov/vitamio/MediaPlayer;I)V
    .locals 0
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 600
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 452
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 470
    :goto_0
    :sswitch_0
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onClick(Landroid/view/View;)V

    .line 472
    return-void

    .line 462
    :sswitch_1
    invoke-direct {p0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->playOrPause()V

    goto :goto_0

    .line 465
    :sswitch_2
    invoke-direct {p0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->disDialog()V

    goto :goto_0

    .line 452
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c001c -> :sswitch_0
        0x7f0c001d -> :sswitch_0
        0x7f0c001e -> :sswitch_1
        0x7f0c0052 -> :sswitch_2
        0x7f0c0056 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCompletion(Lio/vov/vitamio/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;

    .prologue
    const/4 v2, 0x0

    .line 588
    sput-boolean v2, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->isPlayed:Z

    .line 589
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->btnPlayorPause:Landroid/widget/ImageView;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 590
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->play:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 592
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 312
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 313
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->setContentView(I)V

    .line 141
    invoke-direct {p0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->setupView()V

    .line 142
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 388
    invoke-static {}, Lorg/videolan/libvlc/EventHandler;->getInstance()Lorg/videolan/libvlc/EventHandler;

    move-result-object v0

    .line 389
    .local v0, "em":Lorg/videolan/libvlc/EventHandler;
    iget-object v1, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/EventHandler;->removeHandler(Landroid/os/Handler;)V

    .line 390
    invoke-direct {p0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->releaseMediaPlayer()V

    .line 391
    invoke-direct {p0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->doCleanUp()V

    .line 392
    invoke-super {p0}, Lcom/aee/sport/magicam/BaseActivity;->onDestroy()V

    .line 393
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->pause()V

    .line 400
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->btnPlayorPause:Landroid/widget/ImageView;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 401
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->play:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 404
    :cond_0
    invoke-super {p0}, Lcom/aee/sport/magicam/BaseActivity;->onPause()V

    .line 405
    return-void
.end method

.method public onPrepared(Lio/vov/vitamio/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;

    .prologue
    .line 580
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mIsVideoReadyToBePlayed:Z

    .line 581
    iget-boolean v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mIsVideoReadyToBePlayed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mIsVideoSizeKnown:Z

    if-eqz v0, :cond_0

    .line 582
    invoke-direct {p0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->startVideoPlayback()V

    .line 584
    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(Lio/vov/vitamio/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v0, 0x1

    .line 563
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 564
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

    .line 576
    :cond_1
    :goto_0
    return-void

    .line 567
    :cond_2
    iput-boolean v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mIsVideoSizeKnown:Z

    .line 568
    sput-boolean v0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->isPlayed:Z

    .line 571
    iput p2, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mVideoWidth:I

    .line 572
    iput p3, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mVideoHeight:I

    .line 573
    iget-boolean v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mIsVideoReadyToBePlayed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mIsVideoSizeKnown:Z

    if-eqz v0, :cond_1

    .line 574
    invoke-direct {p0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->startVideoPlayback()V

    goto :goto_0
.end method

.method public setSurfaceSize(IIII)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "sar_num"    # I
    .param p4, "sar_den"    # I

    .prologue
    .line 437
    mul-int v1, p1, p2

    if-nez v1, :cond_0

    .line 446
    :goto_0
    return-void

    .line 440
    :cond_0
    iput p2, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mVideoHeight:I

    .line 441
    iput p1, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mVideoWidth:I

    .line 442
    iput p3, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mSarNum:I

    .line 443
    iput p4, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mSarDen:I

    .line 444
    iget-object v1, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 445
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 547
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 551
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget-object v1, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lio/vov/vitamio/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 554
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 559
    return-void
.end method
