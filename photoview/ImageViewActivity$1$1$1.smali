.class Lcom/aee/sport/magicam/photoview/ImageViewActivity$1$1$1;
.super Ljava/lang/Object;
.source "ImageViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/photoview/ImageViewActivity$1$1;->returnInfo(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/aee/sport/magicam/photoview/ImageViewActivity$1$1;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/photoview/ImageViewActivity$1$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/photoview/ImageViewActivity$1$1$1;->this$2:Lcom/aee/sport/magicam/photoview/ImageViewActivity$1$1;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/ImageViewActivity$1$1$1;->this$2:Lcom/aee/sport/magicam/photoview/ImageViewActivity$1$1;

    invoke-static {v0}, Lcom/aee/sport/magicam/photoview/ImageViewActivity$1$1;->access$0(Lcom/aee/sport/magicam/photoview/ImageViewActivity$1$1;)Lcom/aee/sport/magicam/photoview/ImageViewActivity$1;

    move-result-object v0

    invoke-static {v0}, Lcom/aee/sport/magicam/photoview/ImageViewActivity$1;->access$0(Lcom/aee/sport/magicam/photoview/ImageViewActivity$1;)Lcom/aee/sport/magicam/photoview/ImageViewActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->access$3(Lcom/aee/sport/magicam/photoview/ImageViewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aee/sport/magicam/playback/PlayBackActivity;->delItem(Ljava/lang/String;)V

    .line 165
    return-void
.end method
