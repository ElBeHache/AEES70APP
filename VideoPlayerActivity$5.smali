.class Lcom/aee/sport/magicam/VideoPlayerActivity$5;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/VideoPlayerActivity;->retInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$5;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 487
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$5;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    iget-object v0, v0, Lcom/aee/sport/magicam/VideoPlayerActivity;->viewBottomOperate:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->reFreshStatus()V

    .line 488
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$5;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    iget-object v0, v0, Lcom/aee/sport/magicam/VideoPlayerActivity;->viewBottomOperate:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    iget-boolean v0, v0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isRecord:Z

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$5;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$5;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    iget-object v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$5;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    iget-object v2, v2, Lcom/aee/sport/magicam/VideoPlayerActivity;->videoTime:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/VideoPlayerActivity;->access$3(Lcom/aee/sport/magicam/VideoPlayerActivity;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/aee/sport/magicam/VideoPlayerActivity;->vTime:J

    .line 490
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$5;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    iget-object v0, v0, Lcom/aee/sport/magicam/VideoPlayerActivity;->viewBottomOperate:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    iget-object v0, v0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->layoutRecord:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 491
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$5;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    iget-object v0, v0, Lcom/aee/sport/magicam/VideoPlayerActivity;->viewBottomOperate:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    iget-object v0, v0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->operate:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 497
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$5;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/aee/sport/magicam/VideoPlayerActivity;->vTime:J

    .line 494
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$5;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    iget-object v0, v0, Lcom/aee/sport/magicam/VideoPlayerActivity;->viewBottomOperate:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    iget-object v0, v0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->layoutRecord:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$5;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    iget-object v0, v0, Lcom/aee/sport/magicam/VideoPlayerActivity;->viewBottomOperate:Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    iget-object v0, v0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->operate:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
