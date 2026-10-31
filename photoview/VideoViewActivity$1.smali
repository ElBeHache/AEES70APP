.class Lcom/aee/sport/magicam/photoview/VideoViewActivity$1;
.super Landroid/os/Handler;
.source "VideoViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aee/sport/magicam/photoview/VideoViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/photoview/VideoViewActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/photoview/VideoViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity$1;->this$0:Lcom/aee/sport/magicam/photoview/VideoViewActivity;

    .line 283
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 286
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 287
    iget-object v2, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity$1;->this$0:Lcom/aee/sport/magicam/photoview/VideoViewActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->access$0(Lcom/aee/sport/magicam/photoview/VideoViewActivity;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity$1;->this$0:Lcom/aee/sport/magicam/photoview/VideoViewActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->access$0(Lcom/aee/sport/magicam/photoview/VideoViewActivity;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lio/vov/vitamio/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity$1;->this$0:Lcom/aee/sport/magicam/photoview/VideoViewActivity;

    iget-object v3, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity$1;->this$0:Lcom/aee/sport/magicam/photoview/VideoViewActivity;

    invoke-static {v3}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->access$0(Lcom/aee/sport/magicam/photoview/VideoViewActivity;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lio/vov/vitamio/MediaPlayer;->getDuration()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->length:J

    .line 289
    iget-object v2, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity$1;->this$0:Lcom/aee/sport/magicam/photoview/VideoViewActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->access$0(Lcom/aee/sport/magicam/photoview/VideoViewActivity;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lio/vov/vitamio/MediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 290
    .local v0, "time":J
    iget-object v2, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity$1;->this$0:Lcom/aee/sport/magicam/photoview/VideoViewActivity;

    iget-object v3, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity$1;->this$0:Lcom/aee/sport/magicam/photoview/VideoViewActivity;

    iget-wide v3, v3, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->length:J

    invoke-static {v2, v0, v1, v3, v4}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->access$1(Lcom/aee/sport/magicam/photoview/VideoViewActivity;JJ)V

    .line 291
    iget-object v2, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity$1;->this$0:Lcom/aee/sport/magicam/photoview/VideoViewActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->access$2(Lcom/aee/sport/magicam/photoview/VideoViewActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 292
    iget-object v2, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity$1;->this$0:Lcom/aee/sport/magicam/photoview/VideoViewActivity;

    invoke-virtual {v2}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->hideMyProgress()V

    .line 294
    .end local v0    # "time":J
    :cond_0
    return-void
.end method
