.class Lcom/aee/sport/magicam/photoview/VideoViewActivity$3;
.super Ljava/lang/Object;
.source "VideoViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/photoview/VideoViewActivity;->disDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/photoview/VideoViewActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/photoview/VideoViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity$3;->this$0:Lcom/aee/sport/magicam/photoview/VideoViewActivity;

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/photoview/VideoViewActivity$3;)Lcom/aee/sport/magicam/photoview/VideoViewActivity;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity$3;->this$0:Lcom/aee/sport/magicam/photoview/VideoViewActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 486
    iget-object v2, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity$3;->this$0:Lcom/aee/sport/magicam/photoview/VideoViewActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->access$5(Lcom/aee/sport/magicam/photoview/VideoViewActivity;)Lcom/aee/sport/magicam/softwareupdate/DialogView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->cancel()V

    .line 487
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 530
    :goto_0
    :pswitch_0
    return-void

    .line 493
    :pswitch_1
    :try_start_0
    new-instance v1, Lcom/aee/sport/magicam/bean/SendMsg;

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_DEL_FILE:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->access$6()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aee/sport/magicam/photoview/VideoViewActivity$3;->this$0:Lcom/aee/sport/magicam/photoview/VideoViewActivity;

    invoke-static {v4}, Lcom/aee/sport/magicam/photoview/VideoViewActivity;->access$7(Lcom/aee/sport/magicam/photoview/VideoViewActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 494
    .local v1, "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v2

    new-instance v3, Lcom/aee/sport/magicam/photoview/VideoViewActivity$3$1;

    invoke-direct {v3, p0}, Lcom/aee/sport/magicam/photoview/VideoViewActivity$3$1;-><init>(Lcom/aee/sport/magicam/photoview/VideoViewActivity$3;)V

    invoke-virtual {v2, v3, v1}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;Lcom/aee/sport/magicam/bean/SendMsg;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 525
    .end local v1    # "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 487
    :pswitch_data_0
    .packed-switch 0x7f0c0049
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
