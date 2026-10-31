.class Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$4;
.super Ljava/lang/Object;
.source "RemoteFileManagerTestActivity.java"

# interfaces
.implements Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->deleterFile(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$4;->this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public returnInfo(Ljava/lang/Object;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 145
    move-object v0, p1

    check-cast v0, Lcom/aee/sport/magicam/bean/ReceiveMsg;

    .line 146
    .local v0, "receiveMsg":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getRval()I

    move-result v1

    if-nez v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$4;->this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;

    invoke-static {v1}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->access$3(Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;)V

    .line 149
    const v1, 0x7f0800a4

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    const v1, 0x7f0800a5

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto :goto_0
.end method
