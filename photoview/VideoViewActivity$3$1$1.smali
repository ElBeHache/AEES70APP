.class Lcom/aee/sport/magicam/photoview/VideoViewActivity$3$1$1;
.super Ljava/lang/Object;
.source "VideoViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/photoview/VideoViewActivity$3$1;->returnInfo(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/aee/sport/magicam/photoview/VideoViewActivity$3$1;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/photoview/VideoViewActivity$3$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity$3$1$1;->this$2:Lcom/aee/sport/magicam/photoview/VideoViewActivity$3$1;

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity$3$1$1;->this$2:Lcom/aee/sport/magicam/photoview/VideoViewActivity$3$1;

    invoke-static {v0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity$3$1;->access$0(Lcom/aee/sport/magicam/photoview/VideoViewActivity$3$1;)Lcom/aee/sport/magicam/photoview/VideoViewActivity$3;

    move-result-object v0

    invoke-static {v0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity$3;->access$0(Lcom/aee/sport/magicam/photoview/VideoViewActivity$3;)Lcom/aee/sport/magicam/photoview/VideoViewActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->access$7(Lcom/aee/sport/magicam/photoview/VideoViewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aee/sport/magicam/playback/PlayBackActivity;->delItem(Ljava/lang/String;)V

    .line 505
    return-void
.end method
