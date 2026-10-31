.class Lcom/aee/sport/magicam/utils/ViewBottomOperate$4$1;
.super Ljava/lang/Object;
.source "ViewBottomOperate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/utils/ViewBottomOperate$4;->returnInfo(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aee/sport/magicam/utils/ViewBottomOperate$4;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/utils/ViewBottomOperate$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$4$1;->this$1:Lcom/aee/sport/magicam/utils/ViewBottomOperate$4;

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 389
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 390
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$4$1;->this$1:Lcom/aee/sport/magicam/utils/ViewBottomOperate$4;

    invoke-static {v1}, Lcom/aee/sport/magicam/utils/ViewBottomOperate$4;->access$0(Lcom/aee/sport/magicam/utils/ViewBottomOperate$4;)Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    move-result-object v1

    invoke-static {v1}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->access$11(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)Lcom/aee/sport/magicam/VideoPlayerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aee/sport/magicam/VideoPlayerActivity;->startVLC()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_0
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
