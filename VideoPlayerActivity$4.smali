.class Lcom/aee/sport/magicam/VideoPlayerActivity$4;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/VideoPlayerActivity;->disDialog()V
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
    iput-object p1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$4;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/VideoPlayerActivity$4;)Lcom/aee/sport/magicam/VideoPlayerActivity;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$4;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 434
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$4;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    invoke-static {v1}, Lcom/aee/sport/magicam/VideoPlayerActivity;->access$7(Lcom/aee/sport/magicam/VideoPlayerActivity;)Lcom/aee/sport/magicam/softwareupdate/DialogView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->cancel()V

    .line 435
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 471
    :goto_0
    return-void

    .line 438
    :pswitch_0
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    iput v2, v1, Lcom/aee/sport/magicam/AeeApplication;->token:I

    .line 439
    iget-object v1, p0, Lcom/aee/sport/magicam/VideoPlayerActivity$4;->this$0:Lcom/aee/sport/magicam/VideoPlayerActivity;

    invoke-virtual {v1}, Lcom/aee/sport/magicam/VideoPlayerActivity;->finish()V

    goto :goto_0

    .line 443
    :pswitch_1
    :try_start_0
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Lcom/aee/sport/magicam/AeeApplication;->token:I

    .line 444
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    new-instance v2, Lcom/aee/sport/magicam/VideoPlayerActivity$4$1;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/VideoPlayerActivity$4$1;-><init>(Lcom/aee/sport/magicam/VideoPlayerActivity$4;)V

    invoke-virtual {v1, v2}, Lcom/aee/sport/magicam/service/ControlCMD;->startSesstion(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 435
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0049
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
