.class Lcom/aee/sport/magicam/service/ControlCMD$12;
.super Ljava/lang/Object;
.source "ControlCMD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/service/ControlCMD;->stopContinuePhoto(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/service/ControlCMD;

.field private final synthetic val$receiveInfo:Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/service/ControlCMD;Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/service/ControlCMD$12;->this$0:Lcom/aee/sport/magicam/service/ControlCMD;

    iput-object p2, p0, Lcom/aee/sport/magicam/service/ControlCMD$12;->val$receiveInfo:Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 368
    const/4 v2, 0x0

    .line 370
    .local v2, "isSuccess":Z
    :try_start_0
    new-instance v5, Lcom/aee/sport/magicam/bean/SendMsg;

    sget v6, Lcom/aee/sport/magicam/utils/Constants;->AMBA_CONTINUE_CAPTURE_STOP:I

    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v7

    iget v7, v7, Lcom/aee/sport/magicam/AeeApplication;->token:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/aee/sport/magicam/bean/SendMsg;->toJson()Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/aee/sport/magicam/service/ControlCMD;->sendMessegeForResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "info":Ljava/lang/String;
    const-class v5, Lcom/aee/sport/magicam/bean/ReceiveMsg;

    invoke-static {v1, v5}, Lcom/aee/sport/magicam/utils/ResolveJson;->resolveNormalInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aee/sport/magicam/bean/ReceiveMsg;

    .line 373
    .local v4, "result":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    if-nez v4, :cond_0

    .line 374
    iget-object v5, p0, Lcom/aee/sport/magicam/service/ControlCMD$12;->this$0:Lcom/aee/sport/magicam/service/ControlCMD;

    invoke-virtual {v5, v1}, Lcom/aee/sport/magicam/service/ControlCMD;->toReceiveMsg(Ljava/lang/String;)Lcom/aee/sport/magicam/bean/ReceiveMsg;

    move-result-object v4

    .line 376
    :cond_0
    sget v5, Lcom/aee/sport/magicam/utils/Constants;->AMBA_CONTINUE_CAPTURE_STOP:I

    invoke-static {v4, v5}, Lcom/aee/sport/magicam/utils/ResolveJson;->checkRval(Ljava/lang/Object;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    .line 377
    const/4 v2, 0x1

    .line 383
    .end local v1    # "info":Ljava/lang/String;
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "result":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/aee/sport/magicam/service/ControlCMD$12;->val$receiveInfo:Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;

    if-eqz v5, :cond_2

    .line 384
    iget-object v5, p0, Lcom/aee/sport/magicam/service/ControlCMD$12;->val$receiveInfo:Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;->returnInfo(Ljava/lang/Object;)V

    .line 385
    :cond_2
    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
