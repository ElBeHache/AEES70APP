.class Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$3;
.super Ljava/lang/Object;
.source "RemoteFileManagerTestActivity.java"

# interfaces
.implements Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->getFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$3;->this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public returnInfo(Ljava/lang/Object;)V
    .locals 5
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 117
    move-object v2, p1

    check-cast v2, Lcom/aee/sport/magicam/bean/ReceiveMsg;

    .line 118
    .local v2, "receiveMsg":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {v2}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getListing()Ljava/lang/Object;

    move-result-object v1

    .line 121
    .local v1, "listing":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 122
    invoke-static {v1}, Lcom/aee/sport/magicam/bean/FileAttr;->getFileAttr(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 123
    .local v0, "getFiles":Ljava/util/List;, "Ljava/util/List<Lcom/aee/sport/magicam/bean/FileAttr;>;"
    iget-object v3, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$3;->this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;

    invoke-static {v3}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->access$0(Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 124
    iget-object v3, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$3;->this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;

    invoke-static {v3}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->access$0(Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    iget-object v3, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$3;->this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;

    iget-object v3, v3, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->mHandler:Landroid/os/Handler;

    const v4, 0x800d

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 129
    .end local v0    # "getFiles":Ljava/util/List;, "Ljava/util/List<Lcom/aee/sport/magicam/bean/FileAttr;>;"
    .end local v1    # "listing":Ljava/lang/Object;
    :cond_0
    return-void
.end method
