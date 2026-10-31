.class Lcom/aee/sport/magicam/VideoPlayerActivity$4$1;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/VideoPlayerActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aee/sport/magicam/VideoPlayerActivity$4;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/VideoPlayerActivity$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$4$1;->this$1:Lcom/aee/sport/magicam/VideoPlayerActivity$4;

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public returnInfo(Ljava/lang/Object;)V
    .locals 7
    .param p1, "paramObject"    # Ljava/lang/Object;

    .prologue
    .line 449
    :try_start_0
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "paramObject":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v2

    new-instance v3, Lcom/aee/sport/magicam/bean/SendMsg;

    sget v4, Lcom/aee/sport/magicam/utils/Constants;->AMBA_STOP_ENCODE:I

    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v5

    iget v5, v5, Lcom/aee/sport/magicam/AeeApplication;->token:I

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(III)V

    invoke-virtual {v2, v3}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/bean/SendMsg;)Lcom/aee/sport/magicam/bean/ReceiveMsg;

    move-result-object v1

    .line 451
    .local v1, "rm":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    invoke-virtual {v1}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getRval()I

    move-result v2

    if-ltz v2, :cond_0

    .line 452
    iget-object v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$4$1;->this$1:Lcom/aee/sport/magicam/VideoPlayerActivity$4;

    invoke-static {v2}, Lcom/aee/sport/magicam/VideoPlayerActivity$4;->access$0(Lcom/aee/sport/magicam/VideoPlayerActivity$4;)Lcom/aee/sport/magicam/VideoPlayerActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/aee/sport/magicam/VideoPlayerActivity;->access$8(Lcom/aee/sport/magicam/VideoPlayerActivity;)V

    .line 453
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 454
    iget-object v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$4$1;->this$1:Lcom/aee/sport/magicam/VideoPlayerActivity$4;

    invoke-static {v2}, Lcom/aee/sport/magicam/VideoPlayerActivity$4;->access$0(Lcom/aee/sport/magicam/VideoPlayerActivity$4;)Lcom/aee/sport/magicam/VideoPlayerActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/aee/sport/magicam/VideoPlayerActivity;->access$9(Lcom/aee/sport/magicam/VideoPlayerActivity;)V

    .line 455
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 456
    iget-object v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$4$1;->this$1:Lcom/aee/sport/magicam/VideoPlayerActivity$4;

    invoke-static {v2}, Lcom/aee/sport/magicam/VideoPlayerActivity$4;->access$0(Lcom/aee/sport/magicam/VideoPlayerActivity$4;)Lcom/aee/sport/magicam/VideoPlayerActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aee/sport/magicam/VideoPlayerActivity;->startVLC()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .end local v1    # "rm":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    :cond_0
    :goto_0
    return-void

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
