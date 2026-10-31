.class Lcom/aee/sport/magicam/utils/ViewBottomOperate$10;
.super Ljava/lang/Object;
.source "ViewBottomOperate.java"

# interfaces
.implements Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/utils/ViewBottomOperate;->sendMsg(Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$10;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public returnInfo(Ljava/lang/Object;)V
    .locals 4
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 728
    move-object v0, p1

    check-cast v0, Lcom/aee/sport/magicam/bean/ReceiveMsg;

    .line 729
    .local v0, "receiveMsg":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    if-eqz v0, :cond_0

    .line 730
    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getRval()I

    move-result v1

    if-ltz v1, :cond_1

    .line 731
    const v1, 0x7f0800a4

    invoke-static {v1, v3}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 733
    :cond_1
    const v1, 0x7f0800a5

    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getRval()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1, v3}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto :goto_0
.end method
