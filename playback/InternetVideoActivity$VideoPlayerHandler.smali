.class Lcom/aee/sport/magicam/playback/InternetVideoActivity$VideoPlayerHandler;
.super Lorg/videolan/libvlc/WeakHandler;
.source "InternetVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aee/sport/magicam/playback/InternetVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoPlayerHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/libvlc/WeakHandler",
        "<",
        "Lcom/aee/sport/magicam/playback/InternetVideoActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/aee/sport/magicam/playback/InternetVideoActivity;)V
    .locals 0
    .param p1, "owner"    # Lcom/aee/sport/magicam/playback/InternetVideoActivity;

    .prologue
    .line 534
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/WeakHandler;-><init>(Ljava/lang/Object;)V

    .line 535
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity$VideoPlayerHandler;->getOwner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;

    .line 540
    .local v0, "activity":Lcom/aee/sport/magicam/playback/InternetVideoActivity;
    if-nez v0, :cond_0

    .line 548
    :goto_0
    return-void

    .line 543
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 545
    :pswitch_0
    invoke-static {v0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->access$3(Lcom/aee/sport/magicam/playback/InternetVideoActivity;)V

    goto :goto_0

    .line 543
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
