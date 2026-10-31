.class Lcom/aee/sport/magicam/VideoPlayerActivity$2$4;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/VideoPlayerActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aee/sport/magicam/VideoPlayerActivity$2;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/VideoPlayerActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2$4;->this$1:Lcom/aee/sport/magicam/VideoPlayerActivity$2;

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$2$4;->this$1:Lcom/aee/sport/magicam/VideoPlayerActivity$2;

    invoke-static {v0}, Lcom/aee/sport/magicam/VideoPlayerActivity$2;->access$0(Lcom/aee/sport/magicam/VideoPlayerActivity$2;)Lcom/aee/sport/magicam/VideoPlayerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/aee/sport/magicam/VideoPlayerActivity;->viewBottomOperate:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->reFreshStatus()V

    .line 363
    return-void
.end method
