.class Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$1;
.super Ljava/lang/Object;
.source "SSIDSettingActivity.java"

# interfaces
.implements Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->init()V
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
    iput-object p1, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$1;)Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;

    return-object v0
.end method


# virtual methods
.method public returnInfo(Ljava/lang/Object;)V
    .locals 4
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;

    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;

    iget-object v1, v1, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/aee/sport/magicam/utils/Constants;->WIFI_CONF_PATH:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/utils/PropertiesConfig;->loadConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v1

    iput-object v1, v0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->properties:Ljava/util/Properties;

    .line 64
    iget-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;

    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;

    iget-object v1, v1, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->properties:Ljava/util/Properties;

    const-string v2, "AP_SSID"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->apSsid:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;

    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;

    iget-object v1, v1, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->properties:Ljava/util/Properties;

    const-string v2, "AP_PASSWD"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->apPasswd:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;

    iget-object v0, v0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$1$1;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$1$1;-><init>(Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    :goto_0
    return-void

    .line 75
    :cond_0
    const v0, 0x7f0800a5

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    .line 76
    iget-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->finish()V

    goto :goto_0
.end method
