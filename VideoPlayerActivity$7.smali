.class Lcom/aee/sport/magicam/VideoPlayerActivity$7;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/VideoPlayerActivity;->onResume()V
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
    iput-object p1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$7;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 908
    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v1, "\u662f\u5426\u652f\u6301\u53cc\u7801\u6d41"

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SETTING:I

    const/4 v3, 0x0

    const-string v4, "dual streams"

    const/16 v5, 0x15

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 909
    .local v0, "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/bean/SendMsg;)Lcom/aee/sport/magicam/bean/ReceiveMsg;

    move-result-object v7

    .line 911
    .local v7, "receiveMsg":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    :goto_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getRval()I

    move-result v1

    if-ltz v1, :cond_1

    .line 916
    invoke-virtual {v7}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getParam()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 917
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/aee/sport/magicam/AeeApplication;->isDualStream:Z

    .line 918
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    iput-boolean v8, v1, Lcom/aee/sport/magicam/AeeApplication;->isDualStreamVideo:Z

    .line 920
    :cond_0
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$7;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    iput-boolean v8, v1, Lcom/aee/sport/magicam/VideoPlayerActivity;->isFinsh:Z

    .line 921
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/aee/sport/magicam/AeeApplication;->cameraSettingMap:Ljava/util/Map;

    const-string v2, "dual streams"

    invoke-virtual {v7}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getParam()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    :cond_1
    return-void

    .line 912
    :catch_0
    move-exception v6

    .line 913
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
