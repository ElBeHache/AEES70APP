.class Lcom/aee/sport/magicam/VideoPlayerActivity$VideoPlayerHandler;
.super Lorg/videolan/libvlc/WeakHandler;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aee/sport/magicam/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoPlayerHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/libvlc/WeakHandler",
        "<",
        "Lcom/aee/sport/magicam/VideoPlayerActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/aee/sport/magicam/VideoPlayerActivity;)V
    .locals 0
    .param p1, "owner"    # Lcom/aee/sport/magicam/VideoPlayerActivity;

    .prologue
    .line 783
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/WeakHandler;-><init>(Ljava/lang/Object;)V

    .line 784
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 788
    invoke-virtual {p0}, Lcom/aee/sport/magicam/VideoPlayerActivity$VideoPlayerHandler;->getOwner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/VideoPlayerActivity;

    .line 789
    .local v0, "activity":Lcom/aee/sport/magicam/VideoPlayerActivity;
    if-nez v0, :cond_0

    .line 797
    :goto_0
    return-void

    .line 792
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 794
    :pswitch_0
    invoke-static {v0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->access$1(Lcom/aee/sport/magicam/VideoPlayerActivity;)V

    goto :goto_0

    .line 792
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
