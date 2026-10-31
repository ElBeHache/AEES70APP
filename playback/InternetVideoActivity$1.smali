.class Lcom/aee/sport/magicam/playback/InternetVideoActivity$1;
.super Landroid/os/Handler;
.source "InternetVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aee/sport/magicam/playback/InternetVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/playback/InternetVideoActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/playback/InternetVideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$1;->this$0:Lcom/aee/sport/magicam/playback/InternetVideoActivity;

    .line 498
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 501
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 502
    iget-object v2, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$1;->this$0:Lcom/aee/sport/magicam/playback/InternetVideoActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->access$0(Lcom/aee/sport/magicam/playback/InternetVideoActivity;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$1;->this$0:Lcom/aee/sport/magicam/playback/InternetVideoActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->access$0(Lcom/aee/sport/magicam/playback/InternetVideoActivity;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lio/vov/vitamio/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 503
    iget-object v2, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$1;->this$0:Lcom/aee/sport/magicam/playback/InternetVideoActivity;

    iget-object v3, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$1;->this$0:Lcom/aee/sport/magicam/playback/InternetVideoActivity;

    invoke-static {v3}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->access$0(Lcom/aee/sport/magicam/playback/InternetVideoActivity;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lio/vov/vitamio/MediaPlayer;->getDuration()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->length:J

    .line 504
    iget-object v2, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$1;->this$0:Lcom/aee/sport/magicam/playback/InternetVideoActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->access$0(Lcom/aee/sport/magicam/playback/InternetVideoActivity;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lio/vov/vitamio/MediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 505
    .local v0, "time":J
    iget-object v2, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$1;->this$0:Lcom/aee/sport/magicam/playback/InternetVideoActivity;

    iget-object v3, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$1;->this$0:Lcom/aee/sport/magicam/playback/InternetVideoActivity;

    iget-wide v3, v3, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->length:J

    invoke-static {v2, v0, v1, v3, v4}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->access$1(Lcom/aee/sport/magicam/playback/InternetVideoActivity;JJ)V

    .line 506
    iget-object v2, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$1;->this$0:Lcom/aee/sport/magicam/playback/InternetVideoActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->access$2(Lcom/aee/sport/magicam/playback/InternetVideoActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 507
    iget-object v2, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$1;->this$0:Lcom/aee/sport/magicam/playback/InternetVideoActivity;

    invoke-virtual {v2}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->hideMyProgress()V

    .line 509
    .end local v0    # "time":J
    :cond_0
    return-void
.end method
