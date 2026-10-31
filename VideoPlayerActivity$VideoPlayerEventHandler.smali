.class Lcom/aee/sport/magicam/VideoPlayerActivity$VideoPlayerEventHandler;
.super Lorg/videolan/libvlc/WeakHandler;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aee/sport/magicam/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoPlayerEventHandler"
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
    .line 862
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/WeakHandler;-><init>(Ljava/lang/Object;)V

    .line 863
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 867
    invoke-virtual {p0}, Lcom/aee/sport/magicam/VideoPlayerActivity$VideoPlayerEventHandler;->getOwner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/VideoPlayerActivity;

    .line 868
    .local v0, "activity":Lcom/aee/sport/magicam/VideoPlayerActivity;
    if-nez v0, :cond_0

    .line 886
    :goto_0
    :sswitch_0
    return-void

    .line 870
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "event"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x104 -> :sswitch_0
        0x105 -> :sswitch_0
        0x106 -> :sswitch_0
        0x109 -> :sswitch_0
        0x112 -> :sswitch_0
    .end sparse-switch
.end method
