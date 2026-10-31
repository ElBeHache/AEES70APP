.class Lcom/aee/sport/magicam/photoview/ImageViewActivity$1;
.super Ljava/lang/Object;
.source "ImageViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/photoview/ImageViewActivity;->disDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/photoview/ImageViewActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/photoview/ImageViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/photoview/ImageViewActivity$1;->this$0:Lcom/aee/sport/magicam/photoview/ImageViewActivity;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/photoview/ImageViewActivity$1;)Lcom/aee/sport/magicam/photoview/ImageViewActivity;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/ImageViewActivity$1;->this$0:Lcom/aee/sport/magicam/photoview/ImageViewActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    iget-object v2, p0, Lcom/aee/sport/magicam/photoview/ImageViewActivity$1;->this$0:Lcom/aee/sport/magicam/photoview/ImageViewActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->access$1(Lcom/aee/sport/magicam/photoview/ImageViewActivity;)Lcom/aee/sport/magicam/softwareupdate/DialogView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->cancel()V

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 189
    :goto_0
    :pswitch_0
    return-void

    .line 153
    :pswitch_1
    :try_start_0
    new-instance v1, Lcom/aee/sport/magicam/bean/SendMsg;

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_DEL_FILE:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->access$2()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aee/sport/magicam/photoview/ImageViewActivity$1;->this$0:Lcom/aee/sport/magicam/photoview/ImageViewActivity;

    invoke-static {v4}, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->access$3(Lcom/aee/sport/magicam/photoview/ImageViewActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 154
    .local v1, "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v2

    new-instance v3, Lcom/aee/sport/magicam/photoview/ImageViewActivity$1$1;

    invoke-direct {v3, p0}, Lcom/aee/sport/magicam/photoview/ImageViewActivity$1$1;-><init>(Lcom/aee/sport/magicam/photoview/ImageViewActivity$1;)V

    invoke-virtual {v2, v3, v1}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;Lcom/aee/sport/magicam/bean/SendMsg;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    .end local v1    # "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x7f0c0049
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
