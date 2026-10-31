.class Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$2$1;
.super Ljava/lang/Object;
.source "SSIDSettingActivity.java"

# interfaces
.implements Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$2;->returnInfo(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$2;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$2$1;->this$1:Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$2;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public returnInfo(Ljava/lang/Object;)V
    .locals 2
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 159
    const v0, 0x7f0800a6

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    .line 160
    iget-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$2$1;->this$1:Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$2;

    invoke-static {v0}, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$2;->access$0(Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$2;)Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->hideMyProgress()V

    .line 161
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aee/sport/magicam/AeeApplication;->returnToMainActivity()V

    .line 162
    return-void
.end method
