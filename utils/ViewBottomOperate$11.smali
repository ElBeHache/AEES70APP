.class Lcom/aee/sport/magicam/utils/ViewBottomOperate$11;
.super Ljava/lang/Object;
.source "ViewBottomOperate.java"

# interfaces
.implements Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/utils/ViewBottomOperate;->setMode(Lcom/aee/sport/magicam/bean/SendMsg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$11;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public returnInfo(Ljava/lang/Object;)V
    .locals 11
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0x15

    const/4 v10, 0x1

    .line 767
    move-object v8, p1

    check-cast v8, Lcom/aee/sport/magicam/bean/ReceiveMsg;

    .line 768
    .local v8, "receiveMsg":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    if-eqz v8, :cond_3

    .line 769
    invoke-virtual {v8}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getRval()I

    move-result v1

    if-ltz v1, :cond_7

    .line 770
    const v1, 0x7f0800a4

    invoke-static {v1, v10}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    .line 771
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    iget-object v7, v1, Lcom/aee/sport/magicam/AeeApplication;->cameraSettingMap:Ljava/util/Map;

    .line 773
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v1, "\u6a21\u5f0f\u4fe1\u606f"

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SETTING:I

    const-string v4, "get_dv_mode"

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 774
    .local v0, "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/bean/SendMsg;)Lcom/aee/sport/magicam/bean/ReceiveMsg;

    move-result-object v9

    .line 775
    .local v9, "rm":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getRval()I

    move-result v1

    if-ltz v1, :cond_0

    .line 776
    const-string v1, "get_dv_mode"

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 777
    const-string v1, "get_dv_mode"

    invoke-virtual {v9}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getParam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    :cond_0
    :goto_0
    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    .end local v0    # "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    sget v1, Lcom/aee/sport/magicam/utils/Constants;->AMBA_SET_SETTING:I

    const-string v2, "12.0M (4000x3000 4:3)"

    const-string v4, "photo_size"

    invoke-direct {v0, v1, v2, v4}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 784
    .restart local v0    # "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    new-instance v2, Lcom/aee/sport/magicam/utils/ViewBottomOperate$11$1;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate$11$1;-><init>(Lcom/aee/sport/magicam/utils/ViewBottomOperate$11;)V

    invoke-virtual {v1, v2, v0}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;Lcom/aee/sport/magicam/bean/SendMsg;)V

    .line 792
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    :goto_1
    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    .end local v0    # "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    const-string v1, "\u83b7\u53d6\u4e3b\u673a\u62cd\u7167\u53c2\u6570 "

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SETTING:I

    const-string v4, "photo_size"

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 797
    .restart local v0    # "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/bean/SendMsg;)Lcom/aee/sport/magicam/bean/ReceiveMsg;

    move-result-object v9

    .line 798
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getRval()I

    move-result v1

    if-ltz v1, :cond_1

    .line 799
    const-string v1, "photo_size"

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    .line 800
    const-string v1, "photo_size"

    invoke-virtual {v9}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getParam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    :cond_1
    :goto_2
    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    .end local v0    # "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    const-string v1, "\u83b7\u53d6\u4e3b\u673a\u62cd\u7167\u53c2\u6570 "

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SETTING:I

    const-string v4, "get_dv_fs"

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 808
    .restart local v0    # "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/bean/SendMsg;)Lcom/aee/sport/magicam/bean/ReceiveMsg;

    move-result-object v9

    .line 809
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getRval()I

    move-result v1

    if-ltz v1, :cond_2

    .line 810
    const-string v1, "get_dv_fs"

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    .line 811
    const-string v1, "get_dv_fs"

    invoke-virtual {v9}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getParam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    :cond_2
    :goto_3
    sput-boolean v10, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isOK:Z

    .line 823
    .end local v0    # "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "rm":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    :cond_3
    :goto_4
    return-void

    .line 779
    .restart local v0    # "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    .restart local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "rm":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    :cond_4
    const-string v1, "get_dv_mode"

    invoke-interface {v7, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    const-string v1, "get_dv_mode"

    invoke-virtual {v9}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getParam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 793
    :catch_0
    move-exception v6

    .line 794
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 802
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_5
    const-string v1, "photo_size"

    invoke-interface {v7, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    const-string v1, "photo_size"

    invoke-virtual {v9}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getParam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 813
    :cond_6
    const-string v1, "get_dv_fs"

    invoke-interface {v7, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    const-string v1, "get_dv_fs"

    invoke-virtual {v9}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getParam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 820
    .end local v0    # "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "rm":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "2131230885,Rval:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getRval()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(Ljava/lang/String;Z)V

    goto :goto_4
.end method
