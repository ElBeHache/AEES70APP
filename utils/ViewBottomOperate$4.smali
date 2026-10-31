.class Lcom/aee/sport/magicam/utils/ViewBottomOperate$4;
.super Ljava/lang/Object;
.source "ViewBottomOperate.java"

# interfaces
.implements Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/utils/ViewBottomOperate;->record(Z)V
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
    iput-object p1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$4;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/utils/ViewBottomOperate$4;)Lcom/aee/sport/magicam/utils/ViewBottomOperate;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$4;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    return-object v0
.end method


# virtual methods
.method public returnInfo(Ljava/lang/Object;)V
    .locals 4
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 381
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 382
    .local v0, "isSuccess":Z
    if-eqz v0, :cond_1

    .line 383
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    iget-boolean v1, v1, Lcom/aee/sport/magicam/AeeApplication;->isDualStreamVideo:Z

    if-eqz v1, :cond_0

    .line 384
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/aee/sport/magicam/AeeApplication;->isDualStreamVideo:Z

    .line 385
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$4;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    invoke-static {v1}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->access$11(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)Lcom/aee/sport/magicam/VideoPlayerActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/aee/sport/magicam/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/aee/sport/magicam/utils/ViewBottomOperate$4$1;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate$4$1;-><init>(Lcom/aee/sport/magicam/utils/ViewBottomOperate$4;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$4;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    invoke-static {v1}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->access$11(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)Lcom/aee/sport/magicam/VideoPlayerActivity;

    move-result-object v1

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/aee/sport/magicam/VideoPlayerActivity;->vTime:J

    .line 400
    const v1, 0x7f0800a4

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$4;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    invoke-static {v1}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->access$11(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)Lcom/aee/sport/magicam/VideoPlayerActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/aee/sport/magicam/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/aee/sport/magicam/utils/ViewBottomOperate$4$2;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate$4$2;-><init>(Lcom/aee/sport/magicam/utils/ViewBottomOperate$4;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 409
    return-void
.end method
