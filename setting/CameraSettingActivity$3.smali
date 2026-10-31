.class Lcom/aee/sport/magicam/setting/CameraSettingActivity$3;
.super Ljava/lang/Object;
.source "CameraSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/setting/CameraSettingActivity;->disDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$3;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 962
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$3;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    invoke-static {v1}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->access$10(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)Lcom/aee/sport/magicam/softwareupdate/DialogView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->cancel()V

    .line 963
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1000
    :goto_0
    :pswitch_0
    return-void

    .line 968
    :pswitch_1
    sget v1, Lcom/aee/sport/magicam/AeeApplication;->curdown:I

    if-lez v1, :cond_0

    .line 969
    const v1, 0x7f0800a5

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto :goto_0

    .line 972
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    new-instance v2, Lcom/aee/sport/magicam/setting/CameraSettingActivity$3$1;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity$3$1;-><init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity$3;)V

    .line 993
    sget v3, Lcom/aee/sport/magicam/utils/Constants;->AMBA_FORMAT:I

    .line 972
    invoke-virtual {v1, v2, v3}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 994
    :catch_0
    move-exception v0

    .line 995
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 963
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0049
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
