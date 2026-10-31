.class Lcom/aee/sport/magicam/photoview/ImageViewActivity$1$1;
.super Ljava/lang/Object;
.source "ImageViewActivity.java"

# interfaces
.implements Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/photoview/ImageViewActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aee/sport/magicam/photoview/ImageViewActivity$1;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/photoview/ImageViewActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/photoview/ImageViewActivity$1$1;->this$1:Lcom/aee/sport/magicam/photoview/ImageViewActivity$1;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/photoview/ImageViewActivity$1$1;)Lcom/aee/sport/magicam/photoview/ImageViewActivity$1;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/ImageViewActivity$1$1;->this$1:Lcom/aee/sport/magicam/photoview/ImageViewActivity$1;

    return-object v0
.end method


# virtual methods
.method public returnInfo(Ljava/lang/Object;)V
    .locals 8
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 158
    move-object v7, p1

    check-cast v7, Lcom/aee/sport/magicam/bean/ReceiveMsg;

    .line 159
    .local v7, "receiveMsg":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    if-eqz v7, :cond_1

    .line 160
    invoke-virtual {v7}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getRval()I

    move-result v1

    if-ltz v1, :cond_3

    .line 161
    const v1, 0x7f0800a4

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    .line 162
    iget-object v1, p0, Lcom/aee/sport/magicam/photoview/ImageViewActivity$1$1;->this$1:Lcom/aee/sport/magicam/photoview/ImageViewActivity$1;

    invoke-static {v1}, Lcom/aee/sport/magicam/photoview/ImageViewActivity$1;->access$0(Lcom/aee/sport/magicam/photoview/ImageViewActivity$1;)Lcom/aee/sport/magicam/photoview/ImageViewActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/aee/sport/magicam/photoview/ImageViewActivity$1$1$1;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/photoview/ImageViewActivity$1$1$1;-><init>(Lcom/aee/sport/magicam/photoview/ImageViewActivity$1$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v1, "\u6587\u4ef6\u7cfb\u7edf\u4fe1\u606f "

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SETTING:I

    const/4 v3, 0x0

    const-string v4, "get_dv_fs"

    const/16 v5, 0x15

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 168
    .local v0, "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/bean/SendMsg;)Lcom/aee/sport/magicam/bean/ReceiveMsg;

    move-result-object v6

    .line 169
    .local v6, "msg":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getRval()I

    move-result v1

    if-ltz v1, :cond_0

    .line 170
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/aee/sport/magicam/AeeApplication;->cameraSettingMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 171
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/aee/sport/magicam/AeeApplication;->cameraSettingMap:Ljava/util/Map;

    const-string v2, "get_dv_fs"

    invoke-virtual {v6}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getParam()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/aee/sport/magicam/photoview/ImageViewActivity$1$1;->this$1:Lcom/aee/sport/magicam/photoview/ImageViewActivity$1;

    invoke-static {v1}, Lcom/aee/sport/magicam/photoview/ImageViewActivity$1;->access$0(Lcom/aee/sport/magicam/photoview/ImageViewActivity$1;)Lcom/aee/sport/magicam/photoview/ImageViewActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->finish()V

    .line 182
    .end local v0    # "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    .end local v6    # "msg":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    :cond_1
    :goto_1
    return-void

    .line 173
    .restart local v0    # "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    .restart local v6    # "msg":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    :cond_2
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/aee/sport/magicam/AeeApplication;->cameraSettingMap:Ljava/util/Map;

    .line 174
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/aee/sport/magicam/AeeApplication;->cameraSettingMap:Ljava/util/Map;

    const-string v2, "get_dv_fs"

    invoke-virtual {v6}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getParam()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 179
    .end local v0    # "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    .end local v6    # "msg":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    :cond_3
    const v1, 0x7f0800a5

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto :goto_1
.end method
