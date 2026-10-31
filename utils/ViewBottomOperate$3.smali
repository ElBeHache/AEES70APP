.class Lcom/aee/sport/magicam/utils/ViewBottomOperate$3;
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
    iput-object p1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$3;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/utils/ViewBottomOperate$3;)Lcom/aee/sport/magicam/utils/ViewBottomOperate;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$3;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    return-object v0
.end method


# virtual methods
.method public returnInfo(Ljava/lang/Object;)V
    .locals 4
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 344
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 345
    .local v0, "isSuccess":Z
    if-eqz v0, :cond_0

    .line 347
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/aee/sport/magicam/utils/ViewBottomOperate$3$1;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate$3$1;-><init>(Lcom/aee/sport/magicam/utils/ViewBottomOperate$3;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 360
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 361
    const v1, 0x7f0800a4

    invoke-static {v1, v3}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    .line 366
    :goto_0
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$3;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    invoke-static {v1, v3}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->access$10(Lcom/aee/sport/magicam/utils/ViewBottomOperate;Z)V

    .line 367
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$3;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    invoke-static {v1}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->access$11(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)Lcom/aee/sport/magicam/VideoPlayerActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/aee/sport/magicam/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/aee/sport/magicam/utils/ViewBottomOperate$3$2;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate$3$2;-><init>(Lcom/aee/sport/magicam/utils/ViewBottomOperate$3;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 373
    return-void

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$3;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->access$9(Lcom/aee/sport/magicam/utils/ViewBottomOperate;Z)V

    .line 364
    const v1, 0x7f08001e

    invoke-static {v1, v3}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto :goto_0
.end method
