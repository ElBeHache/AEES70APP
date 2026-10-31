.class public Lcom/aee/sport/magicam/VideoPlayerActivity;
.super Lcom/aee/sport/magicam/BaseActivity;
.source "VideoPlayerActivity.java"

# interfaces
.implements Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;
.implements Lio/vov/vitamio/MediaPlayer$OnCompletionListener;
.implements Lio/vov/vitamio/MediaPlayer$OnPreparedListener;
.implements Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aee/sport/magicam/VideoPlayerActivity$VideoPlayerEventHandler;,
        Lcom/aee/sport/magicam/VideoPlayerActivity$VideoPlayerHandler;
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


# instance fields
.field private animationBottomEnter:Landroid/view/animation/Animation;

.field private animationBottomExit:Landroid/view/animation/Animation;

.field private animationTopEnter:Landroid/view/animation/Animation;

.field private animationTopExit:Landroid/view/animation/Animation;

.field private batteryStatus:Landroid/widget/ImageView;

.field private btnPlayPause:Landroid/widget/ImageView;

.field private btnSize:Landroid/widget/ImageView;

.field private dialogView1:Lcom/aee/sport/magicam/softwareupdate/DialogView;

.field protected dvBat:Ljava/lang/String;

.field private final eventHandler:Landroid/os/Handler;

.field private gpsStatus:Landroid/widget/TextView;

.field private handler:Landroid/os/Handler;

.field protected isFinsh:Z

.field protected isFirst:Z

.field private isRunListen:Z

.field private layout_view_bottom:Landroid/view/View;

.field private layout_view_title:Landroid/view/View;

.field private mCurrentSize:I

.field public final mHandler:Landroid/os/Handler;

.field private mIsVideoReadyToBePlayed:Z

.field private mIsVideoSizeKnown:Z

.field private mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

.field private mSarDen:I

.field private mSarNum:I

.field private mTextShowInfo:Landroid/widget/TextView;

.field private mTextTime:Landroid/widget/TextView;

.field private mTextTitle:Landroid/widget/TextView;

.field private mUiVisibility:I

.field private mVideoHeight:I

.field private mVideoWidth:I

.field public recordTime:Landroid/widget/TextView;

.field private snapShot:Landroid/widget/Button;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceView:Landroid/view/SurfaceView;

.field private topView:Landroid/view/View;

.field public vTime:J

.field private videoRecord:Landroid/widget/Button;

.field protected videoTime:Ljava/lang/String;

.field public viewBottomOperate:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

.field private viewCenterOperate:Lcom/aee/sport/magicam/utils/ViewCenterOperate;

.field private visibleHeight:I

.field private visibleWidth:I

.field private warningText:Landroid/widget/TextView;

.field protected wifiRssi:I

.field private wifiStatus:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/aee/sport/magicam/BaseActivity;-><init>()V

    .line 67
    iput-object v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 82
    iput-boolean v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mIsVideoSizeKnown:Z

    .line 83
    iput-boolean v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mIsVideoReadyToBePlayed:Z

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mUiVisibility:I

    .line 105
    iput v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mCurrentSize:I

    .line 109
    iput-object v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 262
    iput-boolean v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->isFinsh:Z

    .line 275
    iput-object v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->dialogView1:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    .line 758
    new-instance v0, Lcom/aee/sport/magicam/VideoPlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/aee/sport/magicam/VideoPlayerActivity$1;-><init>(Lcom/aee/sport/magicam/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->handler:Landroid/os/Handler;

    .line 779
    new-instance v0, Lcom/aee/sport/magicam/VideoPlayerActivity$VideoPlayerHandler;

    invoke-direct {v0, p0}, Lcom/aee/sport/magicam/VideoPlayerActivity$VideoPlayerHandler;-><init>(Lcom/aee/sport/magicam/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    .line 854
    new-instance v0, Lcom/aee/sport/magicam/VideoPlayerActivity$VideoPlayerEventHandler;

    invoke-direct {v0, p0}, Lcom/aee/sport/magicam/VideoPlayerActivity$VideoPlayerEventHandler;-><init>(Lcom/aee/sport/magicam/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->eventHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/VideoPlayerActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/aee/sport/magicam/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 800
    invoke-direct {p0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->changeSurfaceSize()V

    return-void
.end method

.method static synthetic access$10(Lcom/aee/sport/magicam/VideoPlayerActivity;)I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$11(Lcom/aee/sport/magicam/VideoPlayerActivity;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$12(Lcom/aee/sport/magicam/VideoPlayerActivity;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mSarNum:I

    return v0
.end method

.method static synthetic access$13(Lcom/aee/sport/magicam/VideoPlayerActivity;)I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mSarDen:I

    return v0
.end method

.method static synthetic access$2(Lcom/aee/sport/magicam/VideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->isRunListen:Z

    return v0
.end method

.method static synthetic access$3(Lcom/aee/sport/magicam/VideoPlayerActivity;Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 564
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/VideoPlayerActivity;->toLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$4(Lcom/aee/sport/magicam/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 595
    invoke-direct {p0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->refreshTitleStatus()V

    return-void
.end method

.method static synthetic access$5(Lcom/aee/sport/magicam/VideoPlayerActivity;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 578
    invoke-direct {p0, p1, p2}, Lcom/aee/sport/magicam/VideoPlayerActivity;->toStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/aee/sport/magicam/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->disDialog()V

    return-void
.end method

.method static synthetic access$7(Lcom/aee/sport/magicam/VideoPlayerActivity;)Lcom/aee/sport/magicam/softwareupdate/DialogView;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->dialogView1:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/aee/sport/magicam/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->retInit()V

    return-void
.end method

.method static synthetic access$9(Lcom/aee/sport/magicam/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->stopRTSP()V

    return-void
.end method

.method private changeSurfaceSize()V
    .locals 11

    .prologue
    .line 802
    iget-object v7, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->topView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 803
    .local v5, "dw":I
    iget-object v7, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->topView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 806
    .local v4, "dh":I
    iget v7, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mVideoWidth:I

    int-to-double v7, v7

    iget v9, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mVideoHeight:I

    int-to-double v9, v9

    div-double v0, v7, v9

    .line 808
    .local v0, "ar":D
    int-to-double v7, v5

    int-to-double v9, v4

    div-double v2, v7, v9

    .line 810
    .local v2, "dar":D
    const/4 v7, 0x2

    iput v7, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mCurrentSize:I

    .line 811
    iget v7, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mCurrentSize:I

    packed-switch v7, :pswitch_data_0

    .line 846
    :goto_0
    :pswitch_0
    iget-object v7, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget v8, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mVideoWidth:I

    iget v9, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mVideoHeight:I

    invoke-interface {v7, v8, v9}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 847
    iget-object v7, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v7}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 848
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 849
    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 850
    iget-object v7, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v7, v6}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 851
    iget-object v7, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v7}, Landroid/view/SurfaceView;->invalidate()V

    .line 852
    return-void

    .line 813
    .end local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :pswitch_1
    cmpg-double v7, v2, v0

    if-gez v7, :cond_0

    .line 814
    int-to-double v7, v5

    div-double/2addr v7, v0

    double-to-int v4, v7

    goto :goto_0

    .line 816
    :cond_0
    int-to-double v7, v4

    mul-double/2addr v7, v0

    double-to-int v5, v7

    .line 817
    goto :goto_0

    .line 819
    :pswitch_2
    int-to-double v7, v5

    div-double/2addr v7, v0

    double-to-int v4, v7

    .line 820
    goto :goto_0

    .line 822
    :pswitch_3
    int-to-double v7, v4

    mul-double/2addr v7, v0

    double-to-int v5, v7

    .line 823
    goto :goto_0

    .line 827
    :pswitch_4
    const-wide v0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 828
    cmpg-double v7, v2, v0

    if-gez v7, :cond_1

    .line 829
    int-to-double v7, v5

    div-double/2addr v7, v0

    double-to-int v4, v7

    goto :goto_0

    .line 831
    :cond_1
    int-to-double v7, v4

    mul-double/2addr v7, v0

    double-to-int v5, v7

    .line 832
    goto :goto_0

    .line 834
    :pswitch_5
    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    .line 835
    cmpg-double v7, v2, v0

    if-gez v7, :cond_2

    .line 836
    int-to-double v7, v5

    div-double/2addr v7, v0

    double-to-int v4, v7

    goto :goto_0

    .line 838
    :cond_2
    int-to-double v7, v4

    mul-double/2addr v7, v0

    double-to-int v5, v7

    .line 839
    goto :goto_0

    .line 841
    :pswitch_6
    iget v4, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mVideoHeight:I

    .line 842
    iget v5, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mVideoWidth:I

    goto :goto_0

    .line 811
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private disDialog()V
    .locals 6

    .prologue
    .line 428
    new-instance v0, Lcom/aee/sport/magicam/softwareupdate/DialogView;

    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/aee/sport/magicam/VideoPlayerActivity$4;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/VideoPlayerActivity$4;-><init>(Lcom/aee/sport/magicam/VideoPlayerActivity;)V

    .line 472
    const/4 v3, 0x1

    const v4, 0x7f080022

    const v5, 0x7f080023

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/softwareupdate/DialogView;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;III)V

    .line 428
    iput-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->dialogView1:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    .line 473
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->dialogView1:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    const v1, 0x7f0800ab

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->setOkString(I)V

    .line 474
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->dialogView1:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    const v1, 0x7f0800ac

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->setCancelString(I)V

    .line 475
    return-void
.end method

.method private initTitle()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 552
    const v1, 0x7f0c007f

    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->wifiStatus:Landroid/widget/ImageView;

    .line 553
    const v1, 0x7f0c0080

    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->batteryStatus:Landroid/widget/ImageView;

    .line 554
    const v1, 0x7f0c0082

    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->gpsStatus:Landroid/widget/TextView;

    .line 555
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->gpsStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 556
    const v1, 0x7f0c0081

    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 557
    .local v0, "ico":Landroid/widget/ImageView;
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 558
    const v1, 0x7f0c0083

    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->recordTime:Landroid/widget/TextView;

    .line 559
    return-void
.end method

.method public static millisToString(J)Ljava/lang/String;
    .locals 12
    .param p0, "millis"    # J

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x3c

    .line 996
    cmp-long v6, p0, v10

    if-gez v6, :cond_0

    const/4 v3, 0x1

    .line 997
    .local v3, "negative":Z
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    .line 999
    const-wide/16 v6, 0x3e8

    div-long/2addr p0, v6

    .line 1000
    rem-long v6, p0, v8

    long-to-int v4, v6

    .line 1001
    .local v4, "sec":I
    div-long/2addr p0, v8

    .line 1002
    rem-long v6, p0, v8

    long-to-int v2, v6

    .line 1003
    .local v2, "min":I
    div-long/2addr p0, v8

    .line 1004
    long-to-int v1, p0

    .line 1007
    .local v1, "hours":I
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v6}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    .line 1008
    .local v0, "format":Ljava/text/DecimalFormat;
    const-string v6, "00"

    invoke-virtual {v0, v6}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 1009
    cmp-long v6, p0, v10

    if-lez v6, :cond_2

    .line 1010
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

    .line 1014
    .local v5, "time":Ljava/lang/String;
    :goto_2
    return-object v5

    .line 996
    .end local v0    # "format":Ljava/text/DecimalFormat;
    .end local v1    # "hours":I
    .end local v2    # "min":I
    .end local v3    # "negative":Z
    .end local v4    # "sec":I
    .end local v5    # "time":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1010
    .restart local v0    # "format":Ljava/text/DecimalFormat;
    .restart local v1    # "hours":I
    .restart local v2    # "min":I
    .restart local v3    # "negative":Z
    .restart local v4    # "sec":I
    :cond_1
    const-string v6, ""

    goto :goto_1

    .line 1012
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

.method private pathIsExist()V
    .locals 4

    .prologue
    .line 696
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aee/sport/magicam/utils/BitmapUtils;->getSDPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/aaa/capture/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 697
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 698
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 700
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aee/sport/magicam/utils/BitmapUtils;->getSDPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/aaa/video/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 701
    .local v1, "file1":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 702
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 703
    :cond_1
    return-void
.end method

.method private playVideo()V
    .locals 4

    .prologue
    .line 1105
    invoke-virtual {p0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->releaseMediaPlayer()V

    .line 1106
    invoke-virtual {p0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->doCleanUp()V

    .line 1108
    :try_start_0
    new-instance v1, Lio/vov/vitamio/MediaPlayer;

    invoke-direct {v1, p0}, Lio/vov/vitamio/MediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    .line 1109
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    sget-object v2, Lcom/aee/sport/magicam/utils/Constants;->URL_RTSP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/vov/vitamio/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1110
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget-object v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Lio/vov/vitamio/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 1111
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v1}, Lio/vov/vitamio/MediaPlayer;->prepareAsync()V

    .line 1112
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v1, p0}, Lio/vov/vitamio/MediaPlayer;->setOnBufferingUpdateListener(Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;)V

    .line 1113
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v1, p0}, Lio/vov/vitamio/MediaPlayer;->setOnCompletionListener(Lio/vov/vitamio/MediaPlayer$OnCompletionListener;)V

    .line 1114
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v1, p0}, Lio/vov/vitamio/MediaPlayer;->setOnPreparedListener(Lio/vov/vitamio/MediaPlayer$OnPreparedListener;)V

    .line 1115
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v1, p0}, Lio/vov/vitamio/MediaPlayer;->setOnVideoSizeChangedListener(Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 1116
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    const-wide/32 v2, 0x100000

    invoke-virtual {v1, v2, v3}, Lio/vov/vitamio/MediaPlayer;->setBufferSize(J)V

    .line 1117
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/VideoPlayerActivity;->setVolumeControlStream(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1121
    :goto_0
    return-void

    .line 1118
    :catch_0
    move-exception v0

    .line 1119
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private refreshTitleStatus()V
    .locals 8

    .prologue
    const/16 v7, 0x32

    const/16 v3, 0x19

    const/16 v6, -0x32

    const/16 v5, -0x46

    const/16 v4, -0x64

    .line 597
    :try_start_0
    iget-object v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->dvBat:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 598
    .local v0, "battery":I
    const/16 v2, 0x7d

    if-lt v0, v2, :cond_2

    .line 599
    iget-object v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->batteryStatus:Landroid/widget/ImageView;

    const v3, 0x7f020006

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 611
    :cond_0
    :goto_0
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    iget v2, v2, Lcom/aee/sport/magicam/AeeApplication;->appStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 612
    iget-object v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->recordTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->videoTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    :goto_1
    iget v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->wifiRssi:I

    if-lt v2, v6, :cond_8

    iget v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->wifiRssi:I

    if-gtz v2, :cond_8

    .line 617
    iget-object v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->wifiStatus:Landroid/widget/ImageView;

    const v3, 0x7f02000a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 628
    .end local v0    # "battery":I
    :cond_1
    :goto_2
    return-void

    .line 600
    .restart local v0    # "battery":I
    :cond_2
    const/16 v2, 0x7d

    if-ge v0, v2, :cond_3

    const/16 v2, 0x5a

    if-lt v0, v2, :cond_3

    .line 601
    iget-object v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->batteryStatus:Landroid/widget/ImageView;

    const v3, 0x7f020002

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 625
    .end local v0    # "battery":I
    :catch_0
    move-exception v1

    .line 626
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 602
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "battery":I
    :cond_3
    const/16 v2, 0x5a

    if-ge v0, v2, :cond_4

    const/16 v2, 0x4b

    if-lt v0, v2, :cond_4

    .line 603
    :try_start_1
    iget-object v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->batteryStatus:Landroid/widget/ImageView;

    const v3, 0x7f020005

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 604
    :cond_4
    const/16 v2, 0x4b

    if-ge v0, v2, :cond_5

    if-lt v0, v7, :cond_5

    .line 605
    iget-object v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->batteryStatus:Landroid/widget/ImageView;

    const v3, 0x7f020004

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 606
    :cond_5
    if-ge v0, v7, :cond_6

    if-lt v0, v3, :cond_6

    .line 607
    iget-object v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->batteryStatus:Landroid/widget/ImageView;

    const v3, 0x7f020003

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 608
    :cond_6
    if-ge v0, v3, :cond_0

    .line 609
    iget-object v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->batteryStatus:Landroid/widget/ImageView;

    const v3, 0x7f020001

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 614
    :cond_7
    iget-object v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->recordTime:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 618
    :cond_8
    iget v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->wifiRssi:I

    if-lt v2, v5, :cond_9

    iget v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->wifiRssi:I

    if-ge v2, v6, :cond_9

    .line 619
    iget-object v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->wifiStatus:Landroid/widget/ImageView;

    const v3, 0x7f020009

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 620
    :cond_9
    iget v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->wifiRssi:I

    if-lt v2, v4, :cond_a

    iget v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->wifiRssi:I

    if-ge v2, v5, :cond_a

    .line 621
    iget-object v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->wifiStatus:Landroid/widget/ImageView;

    const v3, 0x7f020008

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 622
    :cond_a
    iget v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->wifiRssi:I

    if-ge v2, v4, :cond_1

    .line 623
    iget-object v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->wifiStatus:Landroid/widget/ImageView;

    const v3, 0x7f020007

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method private retInit()V
    .locals 3

    .prologue
    .line 479
    :try_start_0
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->viewBottomOperate:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    invoke-static {}, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->Client()Lcom/aee/sport/magicam/parseconfig/ParseConfig;

    move-result-object v2

    iput-object v2, v1, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->parseConfig:Lcom/aee/sport/magicam/parseconfig/ParseConfig;

    .line 480
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->viewBottomOperate:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    iget-object v1, v1, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->parseConfig:Lcom/aee/sport/magicam/parseconfig/ParseConfig;

    invoke-virtual {v1}, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->startConfigThread()V

    .line 481
    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 482
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aee/sport/magicam/service/ControlCMD;->getAllCurrentSettingForNotRepeat()Z

    .line 483
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 484
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->viewBottomOperate:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isClickMenu:Z

    .line 485
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/aee/sport/magicam/VideoPlayerActivity$5;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/VideoPlayerActivity$5;-><init>(Lcom/aee/sport/magicam/VideoPlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setupView()V
    .locals 3

    .prologue
    .line 509
    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 510
    const v0, 0x7f0c0040

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->warningText:Landroid/widget/TextView;

    .line 511
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->warningText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 513
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 514
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 515
    const v0, 0x7f0c0019

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mTextTitle:Landroid/widget/TextView;

    .line 517
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->btnPlayPause:Landroid/widget/ImageView;

    .line 518
    const v0, 0x7f0c001d

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->btnSize:Landroid/widget/ImageView;

    .line 519
    const v0, 0x7f0c001a

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mTextTime:Landroid/widget/TextView;

    .line 520
    const v0, 0x7f0c001b

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mTextShowInfo:Landroid/widget/TextView;

    .line 522
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->btnPlayPause:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->btnSize:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    const v0, 0x7f0c0041

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->snapShot:Landroid/widget/Button;

    .line 526
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->snapShot:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    const v0, 0x7f0c0042

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->videoRecord:Landroid/widget/Button;

    .line 529
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->videoRecord:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mTextTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    const v0, 0x7f0c003f

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->topView:Landroid/view/View;

    .line 534
    const v0, 0x7f0c003e

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->layout_view_bottom:Landroid/view/View;

    .line 535
    const v0, 0x7f0c003d

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->layout_view_title:Landroid/view/View;

    .line 536
    invoke-direct {p0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->initTitle()V

    .line 538
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->topView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    const v0, 0x7f040007

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->animationTopEnter:Landroid/view/animation/Animation;

    .line 543
    const v0, 0x7f040008

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->animationTopExit:Landroid/view/animation/Animation;

    .line 544
    const v0, 0x7f040005

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->animationBottomEnter:Landroid/view/animation/Animation;

    .line 545
    const v0, 0x7f040006

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->animationBottomExit:Landroid/view/animation/Animation;

    .line 547
    new-instance v0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;

    invoke-direct {v0, p0}, Lcom/aee/sport/magicam/utils/ViewCenterOperate;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->viewCenterOperate:Lcom/aee/sport/magicam/utils/ViewCenterOperate;

    .line 548
    new-instance v0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    invoke-direct {v0, p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;-><init>(Lcom/aee/sport/magicam/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->viewBottomOperate:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    .line 549
    return-void
.end method

.method private showVideoTime(II)V
    .locals 3
    .param p1, "t"    # I
    .param p2, "l"    # I

    .prologue
    .line 770
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mTextTime:Landroid/widget/TextView;

    int-to-long v1, p1

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/VideoPlayerActivity;->millisToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 771
    return-void
.end method

.method private startVideoPlayback()V
    .locals 1

    .prologue
    .line 1085
    invoke-direct {p0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->changeSurfaceSize()V

    .line 1086
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->start()V

    .line 1087
    invoke-virtual {p0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->hideMyProgress()V

    .line 1088
    return-void
.end method

.method private stopRTSP()V
    .locals 2

    .prologue
    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v1}, Lio/vov/vitamio/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->stopVideo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private toLong(Ljava/lang/String;)J
    .locals 7
    .param p1, "tm"    # Ljava/lang/String;

    .prologue
    .line 565
    const-wide/16 v1, 0x0

    .line 566
    .local v1, "time":J
    if-nez p1, :cond_0

    move-wide v3, v1

    .line 572
    .end local v1    # "time":J
    .local v3, "time":J
    :goto_0
    return-wide v3

    .line 568
    .end local v3    # "time":J
    .restart local v1    # "time":J
    :cond_0
    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "strs":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit16 v5, v5, 0xe10

    int-to-long v5, v5

    add-long/2addr v1, v5

    .line 570
    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    int-to-long v5, v5

    add-long/2addr v1, v5

    .line 571
    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v1, v5

    move-wide v3, v1

    .line 572
    .end local v1    # "time":J
    .restart local v3    # "time":J
    goto :goto_0
.end method

.method private toStr(J)Ljava/lang/String;
    .locals 7
    .param p1, "tm"    # J

    .prologue
    const/16 v6, 0xa

    .line 579
    const-string v3, ""

    .line 580
    .local v3, "time":Ljava/lang/String;
    long-to-int v4, p1

    div-int/lit16 v0, v4, 0xe10

    .line 581
    .local v0, "t1":I
    long-to-int v4, p1

    rem-int/lit16 v4, v4, 0xe10

    div-int/lit8 v1, v4, 0x3c

    .line 582
    .local v1, "t2":I
    long-to-int v4, p1

    rem-int/lit16 v4, v4, 0xe10

    rem-int/lit8 v2, v4, 0x3c

    .line 583
    .local v2, "t3":I
    if-ge v0, v6, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 585
    :goto_0
    if-ge v1, v6, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 587
    :goto_1
    if-ge v2, v6, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 589
    :goto_2
    return-object v3

    .line 584
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 586
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 588
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method


# virtual methods
.method protected ListenStatus()V
    .locals 2

    .prologue
    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->isRunListen:Z

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->isFinsh:Z

    .line 282
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/aee/sport/magicam/VideoPlayerActivity$2;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/VideoPlayerActivity$2;-><init>(Lcom/aee/sport/magicam/VideoPlayerActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 391
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 393
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/aee/sport/magicam/VideoPlayerActivity$3;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/VideoPlayerActivity$3;-><init>(Lcom/aee/sport/magicam/VideoPlayerActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 419
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 420
    return-void
.end method

.method public doCleanUp()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1098
    iput v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mVideoWidth:I

    .line 1099
    iput v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mVideoHeight:I

    .line 1100
    iput-boolean v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mIsVideoReadyToBePlayed:Z

    .line 1101
    iput-boolean v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mIsVideoSizeKnown:Z

    .line 1102
    return-void
.end method

.method public onBufferingUpdate(Lio/vov/vitamio/MediaPlayer;I)V
    .locals 0
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 1081
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 633
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 689
    :goto_0
    :sswitch_0
    return-void

    .line 635
    :sswitch_1
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->pause()V

    .line 637
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->btnPlayPause:Landroid/widget/ImageView;

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->start()V

    .line 640
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->btnPlayPause:Landroid/widget/ImageView;

    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 645
    :sswitch_2
    iget v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mCurrentSize:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 646
    iget v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mCurrentSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mCurrentSize:I

    .line 650
    :goto_1
    invoke-direct {p0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->changeSurfaceSize()V

    goto :goto_0

    .line 648
    :cond_1
    iput v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mCurrentSize:I

    goto :goto_1

    .line 661
    :sswitch_3
    invoke-virtual {p0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->finish()V

    goto :goto_0

    .line 664
    :sswitch_4
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->layout_view_title:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 665
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->layout_view_title:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 666
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->layout_view_bottom:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 667
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->layout_view_title:Landroid/view/View;

    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->animationTopExit:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 668
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->layout_view_bottom:Landroid/view/View;

    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->animationBottomExit:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 669
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/aee/sport/magicam/VideoPlayerActivity$6;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/VideoPlayerActivity$6;-><init>(Lcom/aee/sport/magicam/VideoPlayerActivity;)V

    .line 675
    const-wide/16 v2, 0x1f4

    .line 669
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 679
    :cond_2
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->layout_view_title:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 680
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->layout_view_bottom:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 681
    iget v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mVideoWidth:I

    iget v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mVideoHeight:I

    iget v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mSarNum:I

    iget v3, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mSarDen:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/aee/sport/magicam/VideoPlayerActivity;->setSurfaceSize(IIII)V

    .line 682
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->layout_view_title:Landroid/view/View;

    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->animationTopEnter:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 683
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->layout_view_bottom:Landroid/view/View;

    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->animationBottomEnter:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 633
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c001c -> :sswitch_1
        0x7f0c001d -> :sswitch_2
        0x7f0c003f -> :sswitch_4
        0x7f0c0041 -> :sswitch_0
        0x7f0c0042 -> :sswitch_0
        0x7f0c0084 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCompletion(Lio/vov/vitamio/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;

    .prologue
    .line 1076
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 776
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 777
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 268
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 270
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->setContentView(I)V

    .line 271
    invoke-virtual {p0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 272
    invoke-direct {p0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->setupView()V

    .line 273
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 963
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v0

    iput-object v1, v0, Lcom/aee/sport/magicam/AeeApplication;->cameraSettingMap:Ljava/util/Map;

    .line 964
    sput-object v1, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->ConfigHash:Ljava/util/HashMap;

    .line 966
    invoke-virtual {p0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->releaseMediaPlayer()V

    .line 967
    invoke-virtual {p0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->doCleanUp()V

    .line 968
    invoke-super {p0}, Lcom/aee/sport/magicam/BaseActivity;->onDestroy()V

    .line 969
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 974
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->isFirst:Z

    .line 975
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->isRunListen:Z

    .line 976
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v1, :cond_0

    .line 977
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v1}, Lio/vov/vitamio/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 978
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v1}, Lio/vov/vitamio/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/aee/sport/magicam/BaseActivity;->onPause()V

    .line 985
    return-void

    .line 981
    :catch_0
    move-exception v0

    .line 982
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPrepared(Lio/vov/vitamio/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;

    .prologue
    .line 1067
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mIsVideoReadyToBePlayed:Z

    .line 1068
    iget-boolean v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mIsVideoReadyToBePlayed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mIsVideoSizeKnown:Z

    if-eqz v0, :cond_0

    .line 1069
    invoke-direct {p0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->startVideoPlayback()V

    .line 1071
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 891
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->isFirst:Z

    .line 892
    invoke-virtual {p0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->showMyProgress()V

    .line 893
    invoke-virtual {p0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->ListenStatus()V

    .line 894
    :goto_0
    iget-boolean v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->isFinsh:Z

    if-eqz v1, :cond_0

    .line 902
    :try_start_0
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    iget v1, v1, Lcom/aee/sport/magicam/AeeApplication;->appStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 903
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->isFinsh:Z

    .line 904
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/aee/sport/magicam/VideoPlayerActivity$7;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/VideoPlayerActivity$7;-><init>(Lcom/aee/sport/magicam/VideoPlayerActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 924
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 925
    :goto_1
    iget-boolean v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->isFinsh:Z

    if-eqz v1, :cond_1

    .line 932
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    iget-boolean v1, v1, Lcom/aee/sport/magicam/AeeApplication;->isDualStream:Z

    if-nez v1, :cond_2

    .line 933
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->warningText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 938
    :goto_2
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->viewBottomOperate:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    iget-object v1, v1, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->layoutRecord:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 939
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->viewBottomOperate:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    iget-object v1, v1, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->operate:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 944
    :goto_3
    invoke-direct {p0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->playVideo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 948
    :goto_4
    invoke-super {p0}, Lcom/aee/sport/magicam/BaseActivity;->onResume()V

    .line 949
    return-void

    .line 896
    :cond_0
    const-wide/16 v1, 0x64

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 897
    :catch_0
    move-exception v0

    .line 898
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 927
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const-wide/16 v1, 0x32

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 928
    :catch_1
    move-exception v0

    .line 929
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 945
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 946
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 935
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_4
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->warningText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 942
    :cond_3
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->warningText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3
.end method

.method public onVideoSizeChanged(Lio/vov/vitamio/MediaPlayer;II)V
    .locals 1
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1055
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 1058
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mIsVideoSizeKnown:Z

    .line 1059
    iput p2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mVideoWidth:I

    .line 1060
    iput p3, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mVideoHeight:I

    .line 1061
    iget-boolean v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mIsVideoReadyToBePlayed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mIsVideoSizeKnown:Z

    if-eqz v0, :cond_0

    .line 1062
    invoke-direct {p0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->startVideoPlayback()V

    goto :goto_0
.end method

.method public releaseMediaPlayer()V
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->release()V

    .line 1093
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    .line 1095
    :cond_0
    return-void
.end method

.method public setSurfaceSize(IIII)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "sar_num"    # I
    .param p4, "sar_den"    # I

    .prologue
    .line 1018
    mul-int v1, p1, p2

    if-nez v1, :cond_0

    .line 1026
    :goto_0
    return-void

    .line 1020
    :cond_0
    iput p2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mVideoHeight:I

    .line 1021
    iput p1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mVideoWidth:I

    .line 1022
    iput p3, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mSarNum:I

    .line 1023
    iput p4, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mSarDen:I

    .line 1024
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1025
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setSurfaceSize(IIIIII)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "visible_width"    # I
    .param p4, "visible_height"    # I
    .param p5, "sar_num"    # I
    .param p6, "sar_den"    # I

    .prologue
    .line 1029
    iput p3, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->visibleWidth:I

    .line 1030
    iput p4, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->visibleHeight:I

    .line 1031
    iput p2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mVideoHeight:I

    .line 1032
    iput p1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mVideoWidth:I

    .line 1033
    iput p5, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mSarNum:I

    .line 1034
    iput p6, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mSarDen:I

    .line 1035
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1036
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1037
    return-void
.end method

.method public startVLC()V
    .locals 3

    .prologue
    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->warningText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    invoke-direct {p0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->playVideo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stopVideo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 223
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->stop()V

    .line 225
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->warningText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    :cond_0
    iput-boolean v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mIsVideoReadyToBePlayed:Z

    .line 228
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 1041
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lio/vov/vitamio/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 1046
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->start()V

    .line 1048
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1052
    return-void
.end method
