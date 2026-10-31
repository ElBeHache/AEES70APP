.class Lcom/aee/sport/magicam/photoview/VideoViewActivity$2;
.super Ljava/lang/Object;
.source "VideoViewActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/photoview/VideoViewActivity;->setupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field progeress:I

.field final synthetic this$0:Lcom/aee/sport/magicam/photoview/VideoViewActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/photoview/VideoViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity$2;->this$0:Lcom/aee/sport/magicam/photoview/VideoViewActivity;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 215
    iput p2, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity$2;->progeress:I

    .line 216
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity$2;->this$0:Lcom/aee/sport/magicam/photoview/VideoViewActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->access$4(Lcom/aee/sport/magicam/photoview/VideoViewActivity;Z)V

    .line 211
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity$2;->this$0:Lcom/aee/sport/magicam/photoview/VideoViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->access$4(Lcom/aee/sport/magicam/photoview/VideoViewActivity;Z)V

    .line 203
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity$2;->this$0:Lcom/aee/sport/magicam/photoview/VideoViewActivity;

    invoke-static {v0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->access$0(Lcom/aee/sport/magicam/photoview/VideoViewActivity;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity$2;->this$0:Lcom/aee/sport/magicam/photoview/VideoViewActivity;

    invoke-static {v0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->access$0(Lcom/aee/sport/magicam/photoview/VideoViewActivity;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity$2;->this$0:Lcom/aee/sport/magicam/photoview/VideoViewActivity;

    iget-wide v1, v1, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->length:J

    iget v3, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity$2;->progeress:I

    int-to-long v3, v3

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x64

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lio/vov/vitamio/MediaPlayer;->seekTo(J)V

    .line 205
    :cond_0
    return-void
.end method
