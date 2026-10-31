.class Lcom/aee/sport/magicam/photoview/VideoViewActivity$MyEventHandler;
.super Lorg/videolan/libvlc/WeakHandler;
.source "VideoViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aee/sport/magicam/photoview/VideoViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyEventHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/libvlc/WeakHandler",
        "<",
        "Lcom/aee/sport/magicam/photoview/VideoViewActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/aee/sport/magicam/photoview/VideoViewActivity;)V
    .locals 0
    .param p1, "owner"    # Lcom/aee/sport/magicam/photoview/VideoViewActivity;

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/WeakHandler;-><init>(Ljava/lang/Object;)V

    .line 356
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity$MyEventHandler;->getOwner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/photoview/VideoViewActivity;

    .line 361
    .local v0, "activity":Lcom/aee/sport/magicam/photoview/VideoViewActivity;
    if-nez v0, :cond_0

    .line 382
    :goto_0
    :sswitch_0
    return-void

    .line 363
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "event"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 365
    :sswitch_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->isPlayed:Z

    .line 366
    sget-object v1, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/aee/sport/magicam/BaseActivity;

    invoke-virtual {v1}, Lcom/aee/sport/magicam/BaseActivity;->hideMyProgress()V

    goto :goto_0

    .line 363
    :sswitch_data_0
    .sparse-switch
        0x104 -> :sswitch_1
        0x105 -> :sswitch_0
        0x106 -> :sswitch_0
        0x109 -> :sswitch_0
        0x112 -> :sswitch_0
    .end sparse-switch
.end method
