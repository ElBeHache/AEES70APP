.class Lcom/aee/sport/magicam/playback/PlayBackActivity$6;
.super Ljava/lang/Object;
.source "PlayBackActivity.java"

# interfaces
.implements Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/playback/PlayBackActivity;->getFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/playback/PlayBackActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/playback/PlayBackActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity$6;->this$0:Lcom/aee/sport/magicam/playback/PlayBackActivity;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public returnInfo(Ljava/lang/Object;)V
    .locals 5
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 259
    move-object v2, p1

    check-cast v2, Lcom/aee/sport/magicam/bean/ReceiveMsg;

    .line 260
    .local v2, "receiveMsg":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    if-eqz v2, :cond_0

    .line 262
    invoke-virtual {v2}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getListing()Ljava/lang/Object;

    move-result-object v1

    .line 263
    .local v1, "listing":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 264
    invoke-static {v1}, Lcom/aee/sport/magicam/bean/FileAttr;->getFileAttr(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 265
    .local v0, "getFiles":Ljava/util/List;, "Ljava/util/List<Lcom/aee/sport/magicam/bean/FileAttr;>;"
    iget-object v3, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity$6;->this$0:Lcom/aee/sport/magicam/playback/PlayBackActivity;

    iget-object v3, v3, Lcom/aee/sport/magicam/playback/PlayBackActivity;->remoteFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 266
    iget-object v3, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity$6;->this$0:Lcom/aee/sport/magicam/playback/PlayBackActivity;

    iget-object v3, v3, Lcom/aee/sport/magicam/playback/PlayBackActivity;->remoteFiles:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 270
    .end local v0    # "getFiles":Ljava/util/List;, "Ljava/util/List<Lcom/aee/sport/magicam/bean/FileAttr;>;"
    .end local v1    # "listing":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity$6;->this$0:Lcom/aee/sport/magicam/playback/PlayBackActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/aee/sport/magicam/playback/PlayBackActivity;->access$3(Lcom/aee/sport/magicam/playback/PlayBackActivity;Z)V

    .line 271
    return-void
.end method
