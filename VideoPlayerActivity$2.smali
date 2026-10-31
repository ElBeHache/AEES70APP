.class Lcom/aee/sport/magicam/VideoPlayerActivity$2;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/VideoPlayerActivity;->ListenStatus()V
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
    iput-object p1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/VideoPlayerActivity$2;)Lcom/aee/sport/magicam/VideoPlayerActivity;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    .line 287
    :goto_0
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    invoke-static {v1}, Lcom/aee/sport/magicam/VideoPlayerActivity;->access$2(Lcom/aee/sport/magicam/VideoPlayerActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    return-void

    .line 290
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Lcom/aee/sport/magicam/VideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    .line 291
    .local v10, "wifi_service":Landroid/net/wifi/WifiManager;
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    .line 292
    .local v9, "wifiInfo":Landroid/net/wifi/WifiInfo;
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    iput v2, v1, Lcom/aee/sport/magicam/VideoPlayerActivity;->wifiRssi:I

    .line 293
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    iget-boolean v1, v1, Lcom/aee/sport/magicam/VideoPlayerActivity;->isFirst:Z

    if-eqz v1, :cond_3

    .line 294
    sget-object v1, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->ConfigHash:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    iget-object v1, v1, Lcom/aee/sport/magicam/VideoPlayerActivity;->viewBottomOperate:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    invoke-static {}, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->Client()Lcom/aee/sport/magicam/parseconfig/ParseConfig;

    move-result-object v2

    iput-object v2, v1, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->parseConfig:Lcom/aee/sport/magicam/parseconfig/ParseConfig;

    .line 296
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    iget-object v1, v1, Lcom/aee/sport/magicam/VideoPlayerActivity;->viewBottomOperate:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    iget-object v1, v1, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->parseConfig:Lcom/aee/sport/magicam/parseconfig/ParseConfig;

    invoke-virtual {v1}, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->startConfigThread()V

    .line 297
    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/aee/sport/magicam/VideoPlayerActivity;->isFirst:Z

    .line 300
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/aee/sport/magicam/AeeApplication;->cameraSettingMap:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 301
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aee/sport/magicam/service/ControlCMD;->getAllCurrentSettingForNotRepeat()Z

    .line 302
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 304
    :cond_2
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/aee/sport/magicam/VideoPlayerActivity;->isFinsh:Z

    .line 305
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/aee/sport/magicam/AeeApplication;->cameraSettingMap:Ljava/util/Map;

    const-string v2, "app status"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "record"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 306
    iget-object v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/aee/sport/magicam/AeeApplication;->cameraSettingMap:Ljava/util/Map;

    const-string v3, "get_video_time"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/aee/sport/magicam/VideoPlayerActivity;->videoTime:Ljava/lang/String;

    .line 307
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    iget-object v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    iget-object v3, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    iget-object v3, v3, Lcom/aee/sport/magicam/VideoPlayerActivity;->videoTime:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aee/sport/magicam/VideoPlayerActivity;->access$3(Lcom/aee/sport/magicam/VideoPlayerActivity;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/aee/sport/magicam/VideoPlayerActivity;->vTime:J

    .line 312
    :goto_1
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    iget-object v7, v1, Lcom/aee/sport/magicam/AeeApplication;->cameraSettingMap:Ljava/util/Map;

    .line 313
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v7, :cond_3

    .line 314
    iget-object v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    const-string v1, "get_dv_bat"

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/aee/sport/magicam/VideoPlayerActivity;->dvBat:Ljava/lang/String;

    .line 315
    iget-object v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    const-string v1, "get_video_time"

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/aee/sport/magicam/VideoPlayerActivity;->videoTime:Ljava/lang/String;

    .line 316
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    iget-object v1, v1, Lcom/aee/sport/magicam/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/aee/sport/magicam/VideoPlayerActivity$2$1;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/VideoPlayerActivity$2$1;-><init>(Lcom/aee/sport/magicam/VideoPlayerActivity$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 327
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    iget-object v1, v1, Lcom/aee/sport/magicam/VideoPlayerActivity;->viewBottomOperate:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    invoke-virtual {v1}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isRecord()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 328
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    iget-wide v2, v1, Lcom/aee/sport/magicam/VideoPlayerActivity;->vTime:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/aee/sport/magicam/VideoPlayerActivity;->vTime:J

    .line 329
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    iget-wide v1, v1, Lcom/aee/sport/magicam/VideoPlayerActivity;->vTime:J

    const-wide/16 v3, 0x3c

    rem-long/2addr v1, v3

    cmp-long v1, v1, v11

    if-nez v1, :cond_5

    .line 330
    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v1, "\u6587\u4ef6\u7cfb\u7edf\u4fe1\u606f "

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SETTING:I

    const/4 v3, 0x0

    const-string v4, "get_dv_fs"

    const/16 v5, 0x15

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 331
    .local v0, "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/bean/SendMsg;)Lcom/aee/sport/magicam/bean/ReceiveMsg;

    move-result-object v8

    .line 332
    .local v8, "msg":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getRval()I

    move-result v1

    if-ltz v1, :cond_4

    .line 333
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/aee/sport/magicam/AeeApplication;->cameraSettingMap:Ljava/util/Map;

    if-eqz v1, :cond_b

    .line 334
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/aee/sport/magicam/AeeApplication;->cameraSettingMap:Ljava/util/Map;

    const-string v2, "get_dv_fs"

    invoke-virtual {v8}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getParam()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    iget-object v1, v1, Lcom/aee/sport/magicam/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/aee/sport/magicam/VideoPlayerActivity$2$2;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/VideoPlayerActivity$2$2;-><init>(Lcom/aee/sport/magicam/VideoPlayerActivity$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 348
    .end local v0    # "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    .end local v8    # "msg":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    :cond_5
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    iget-object v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    iget-object v3, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    iget-wide v3, v3, Lcom/aee/sport/magicam/VideoPlayerActivity;->vTime:J

    invoke-static {v2, v3, v4}, Lcom/aee/sport/magicam/VideoPlayerActivity;->access$5(Lcom/aee/sport/magicam/VideoPlayerActivity;J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/aee/sport/magicam/VideoPlayerActivity;->videoTime:Ljava/lang/String;

    .line 349
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    iget-object v1, v1, Lcom/aee/sport/magicam/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/aee/sport/magicam/VideoPlayerActivity$2$3;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/VideoPlayerActivity$2$3;-><init>(Lcom/aee/sport/magicam/VideoPlayerActivity$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 357
    :cond_6
    sget-boolean v1, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isAction:Z

    if-eqz v1, :cond_7

    .line 358
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    iget-object v1, v1, Lcom/aee/sport/magicam/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/aee/sport/magicam/VideoPlayerActivity$2$4;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/VideoPlayerActivity$2$4;-><init>(Lcom/aee/sport/magicam/VideoPlayerActivity$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 365
    const/4 v1, 0x0

    sput-boolean v1, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isAction:Z

    .line 367
    :cond_7
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    iget-boolean v1, v1, Lcom/aee/sport/magicam/AeeApplication;->isDualStream:Z

    if-nez v1, :cond_8

    .line 368
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    iget-object v1, v1, Lcom/aee/sport/magicam/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/aee/sport/magicam/VideoPlayerActivity$2$5;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/VideoPlayerActivity$2$5;-><init>(Lcom/aee/sport/magicam/VideoPlayerActivity$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/aee/sport/magicam/AeeApplication;->isDualStream:Z

    .line 376
    :cond_8
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    iget-boolean v1, v1, Lcom/aee/sport/magicam/AeeApplication;->isDo:Z

    if-eqz v1, :cond_9

    .line 377
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/aee/sport/magicam/AeeApplication;->isDo:Z

    .line 378
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    iget-object v1, v1, Lcom/aee/sport/magicam/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/aee/sport/magicam/VideoPlayerActivity$2$6;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/VideoPlayerActivity$2$6;-><init>(Lcom/aee/sport/magicam/VideoPlayerActivity$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 385
    :cond_9
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 387
    .end local v9    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v10    # "wifi_service":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v6

    .line 388
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 309
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v9    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v10    # "wifi_service":Landroid/net/wifi/WifiManager;
    :cond_a
    :try_start_1
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/aee/sport/magicam/VideoPlayerActivity;->vTime:J

    goto/16 :goto_1

    .line 336
    .restart local v0    # "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    .restart local v8    # "msg":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    :cond_b
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/aee/sport/magicam/AeeApplication;->cameraSettingMap:Ljava/util/Map;

    .line 337
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/aee/sport/magicam/AeeApplication;->cameraSettingMap:Ljava/util/Map;

    const-string v2, "get_dv_fs"

    invoke-virtual {v8}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getParam()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
