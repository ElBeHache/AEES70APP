.class Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$2;
.super Ljava/lang/Object;
.source "SSIDSettingActivity.java"

# interfaces
.implements Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->saveWifiConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$2;->this$0:Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$2;)Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$2;->this$0:Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;

    return-object v0
.end method


# virtual methods
.method public returnInfo(Ljava/lang/Object;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 152
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v0

    new-instance v1, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$2$1;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$2$1;-><init>(Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$2;)V

    .line 163
    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_WIFI_RESTART:I

    .line 155
    invoke-virtual {v0, v1, v2}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;I)V

    .line 169
    :goto_0
    return-void

    .line 165
    :cond_0
    const v0, 0x7f0800a5

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    .line 166
    iget-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$2;->this$0:Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->hideMyProgress()V

    goto :goto_0
.end method
