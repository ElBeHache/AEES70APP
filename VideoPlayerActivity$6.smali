.class Lcom/aee/sport/magicam/VideoPlayerActivity$6;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/VideoPlayerActivity;->onClick(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$6;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 673
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$6;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$6;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    invoke-static {v1}, Lcom/aee/sport/magicam/VideoPlayerActivity;->access$10(Lcom/aee/sport/magicam/VideoPlayerActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$6;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/VideoPlayerActivity;->access$11(Lcom/aee/sport/magicam/VideoPlayerActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$6;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    invoke-static {v3}, Lcom/aee/sport/magicam/VideoPlayerActivity;->access$12(Lcom/aee/sport/magicam/VideoPlayerActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$6;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    invoke-static {v4}, Lcom/aee/sport/magicam/VideoPlayerActivity;->access$13(Lcom/aee/sport/magicam/VideoPlayerActivity;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aee/sport/magicam/VideoPlayerActivity;->setSurfaceSize(IIII)V

    .line 674
    return-void
.end method
