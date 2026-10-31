.class Lcom/aee/sport/magicam/setting/CameraSettingActivity$4$1;
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
    iput-object p1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$4$1;->this$1:Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;

    .line 1051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public returnInfo(Ljava/lang/Object;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1055
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1056
    .local v0, "isSuccess":Z
    if-eqz v0, :cond_0

    .line 1057
    const v1, 0x7f0800a9

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    .line 1058
    :cond_0
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$4$1;->this$1:Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;

    invoke-static {v1}, Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;->access$0(Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;)Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->hideMyProgress()V

    .line 1059
    return-void
.end method
