.class Lcom/aee/sport/magicam/VideoPlayerActivity$1;
.super Landroid/os/Handler;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aee/sport/magicam/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$1;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    .line 758
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 761
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 765
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$1;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    invoke-static {v0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->access$0(Lcom/aee/sport/magicam/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 766
    return-void
.end method
