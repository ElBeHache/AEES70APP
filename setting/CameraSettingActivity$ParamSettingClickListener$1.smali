.class Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener$1;
.super Ljava/lang/Object;
.source "CameraSettingActivity.java"

# interfaces
.implements Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;->onClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener$1;->this$1:Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;

    .line 901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener$1;)Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener$1;->this$1:Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;

    return-object v0
.end method


# virtual methods
.method public returnInfo(Ljava/lang/Object;)V
    .locals 4
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 905
    move-object v0, p1

    check-cast v0, Lcom/aee/sport/magicam/bean/ReceiveMsg;

    .line 906
    .local v0, "receiveMsg":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    if-eqz v0, :cond_0

    .line 907
    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getRval()I

    move-result v1

    if-ltz v1, :cond_1

    .line 908
    const v1, 0x7f0800a4

    invoke-static {v1, v3}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    .line 911
    :goto_0
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener$1;->this$1:Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;

    invoke-static {v1}, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;->access$1(Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;)Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener$1$1;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener$1$1;-><init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 919
    :cond_0
    return-void

    .line 910
    :cond_1
    const v1, 0x7f0800a5

    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getRval()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1, v3}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto :goto_0
.end method
