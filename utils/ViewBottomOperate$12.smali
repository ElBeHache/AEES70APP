.class Lcom/aee/sport/magicam/utils/ViewBottomOperate$12;
.super Ljava/lang/Object;
.source "ViewBottomOperate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/utils/ViewBottomOperate;->onClick(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$12;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    .line 1042
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/utils/ViewBottomOperate$12;)Lcom/aee/sport/magicam/utils/ViewBottomOperate;
    .locals 1

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$12;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1045
    iget-object v3, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$12;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    invoke-static {v3}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->access$11(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)Lcom/aee/sport/magicam/VideoPlayerActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aee/sport/magicam/VideoPlayerActivity;->showMyProgress()V

    .line 1046
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1048
    .local v2, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v0, Lcom/aee/sport/magicam/parseconfig/DownLoadFileThread;

    invoke-direct {v0}, Lcom/aee/sport/magicam/parseconfig/DownLoadFileThread;-><init>()V

    .line 1049
    .local v0, "dlft":Lcom/aee/sport/magicam/parseconfig/DownLoadFileThread;
    invoke-virtual {v0}, Lcom/aee/sport/magicam/parseconfig/DownLoadFileThread;->start()V

    .line 1050
    :goto_0
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v3

    iget-boolean v3, v3, Lcom/aee/sport/magicam/AeeApplication;->isReadFinish:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 1063
    iget-object v3, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$12;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    invoke-static {v3}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->access$11(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)Lcom/aee/sport/magicam/VideoPlayerActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aee/sport/magicam/VideoPlayerActivity;->hideMyProgress()V

    .line 1064
    iget-object v3, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$12;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    invoke-static {v3}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->access$11(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)Lcom/aee/sport/magicam/VideoPlayerActivity;

    move-result-object v3

    const-class v4, Lcom/aee/sport/magicam/playback/PlayBackActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1065
    const/4 v3, 0x0

    sput v3, Lcom/aee/sport/magicam/playback/PlayBackActivity;->from:I

    .line 1066
    iget-object v3, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$12;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    invoke-static {v3}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->access$11(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)Lcom/aee/sport/magicam/VideoPlayerActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/aee/sport/magicam/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/aee/sport/magicam/utils/ViewBottomOperate$12$2;

    invoke-direct {v4, p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate$12$2;-><init>(Lcom/aee/sport/magicam/utils/ViewBottomOperate$12;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1072
    iget-object v3, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$12;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    invoke-static {v3}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->access$11(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)Lcom/aee/sport/magicam/VideoPlayerActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aee/sport/magicam/VideoPlayerActivity;->releaseMediaPlayer()V

    .line 1073
    iget-object v3, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$12;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    invoke-static {v3}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->access$11(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)Lcom/aee/sport/magicam/VideoPlayerActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aee/sport/magicam/VideoPlayerActivity;->doCleanUp()V

    .line 1074
    iget-object v3, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$12;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    invoke-static {v3}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->access$11(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)Lcom/aee/sport/magicam/VideoPlayerActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/aee/sport/magicam/VideoPlayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1075
    .end local v0    # "dlft":Lcom/aee/sport/magicam/parseconfig/DownLoadFileThread;
    :goto_1
    return-void

    .line 1051
    .restart local v0    # "dlft":Lcom/aee/sport/magicam/parseconfig/DownLoadFileThread;
    :cond_0
    const-wide/16 v3, 0x1f4

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1053
    .end local v0    # "dlft":Lcom/aee/sport/magicam/parseconfig/DownLoadFileThread;
    :catch_0
    move-exception v1

    .line 1054
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1055
    iget-object v3, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$12;->this$0:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    invoke-static {v3}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->access$11(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)Lcom/aee/sport/magicam/VideoPlayerActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/aee/sport/magicam/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/aee/sport/magicam/utils/ViewBottomOperate$12$1;

    invoke-direct {v4, p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate$12$1;-><init>(Lcom/aee/sport/magicam/utils/ViewBottomOperate$12;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
