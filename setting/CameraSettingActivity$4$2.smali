.class Lcom/aee/sport/magicam/setting/CameraSettingActivity$4$2;
.super Ljava/lang/Object;
.source "CameraSettingActivity.java"

# interfaces
.implements Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$4$2;->this$1:Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;

    .line 1066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/setting/CameraSettingActivity$4$2;)Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$4$2;->this$1:Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;

    return-object v0
.end method


# virtual methods
.method public returnInfo(Ljava/lang/Object;)V
    .locals 5
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 1070
    move-object v0, p1

    check-cast v0, Lcom/aee/sport/magicam/bean/ReceiveMsg;

    .line 1071
    .local v0, "receiveMsg":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    if-eqz v0, :cond_0

    .line 1073
    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getRval()I

    move-result v1

    if-ltz v1, :cond_1

    .line 1074
    const v1, 0x7f0800a4

    invoke-static {v1, v4}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    .line 1088
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$4$2;->this$1:Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;

    invoke-static {v1}, Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;->access$0(Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;)Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->hideMyProgress()V

    .line 1089
    return-void

    .line 1077
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$4$2;->this$1:Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;

    invoke-static {v2}, Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;->access$0(Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;)Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getRval()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(Ljava/lang/String;Z)V

    .line 1078
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$4$2;->this$1:Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;

    invoke-static {v1}, Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;->access$0(Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;)Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/aee/sport/magicam/setting/CameraSettingActivity$4$2$1;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity$4$2$1;-><init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity$4$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
