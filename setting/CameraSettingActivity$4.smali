.class Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;
.super Ljava/lang/Object;
.source "CameraSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/setting/CameraSettingActivity;->showNoticeDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

.field private final synthetic val$flag:I


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    iput p2, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;->val$flag:I

    .line 1036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;)Lcom/aee/sport/magicam/setting/CameraSettingActivity;
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1042
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    invoke-static {v1}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->access$11(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)Lcom/aee/sport/magicam/softwareupdate/DialogView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->cancel()V

    .line 1043
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1095
    :goto_0
    :pswitch_0
    return-void

    .line 1048
    :pswitch_1
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    invoke-virtual {v1}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->showMyProgress()V

    .line 1049
    iget v1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;->val$flag:I

    if-nez v1, :cond_0

    .line 1051
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    new-instance v2, Lcom/aee/sport/magicam/setting/CameraSettingActivity$4$1;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity$4$1;-><init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;)V

    .line 1060
    sget v3, Lcom/aee/sport/magicam/utils/Constants;->AMBA_FORMAT:I

    .line 1051
    invoke-virtual {v1, v2, v3}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;I)V

    goto :goto_0

    .line 1065
    :cond_0
    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v1, "\u6062\u590d\u51fa\u5382\u8bbe\u7f6e "

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_SET_SETTING:I

    const-string v3, "set_default_yes"

    const-string v4, "set_default"

    const/16 v5, 0x15

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1066
    .local v0, "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    new-instance v2, Lcom/aee/sport/magicam/setting/CameraSettingActivity$4$2;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity$4$2;-><init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;)V

    invoke-virtual {v1, v2, v0}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;Lcom/aee/sport/magicam/bean/SendMsg;)V

    goto :goto_0

    .line 1043
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0049
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
