.class public Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;
.super Lcom/aee/sport/magicam/BaseActivity;
.source "SSIDSettingActivity.java"


# instance fields
.field private final AP_PASSWD:Ljava/lang/String;

.field private final AP_SSID:Ljava/lang/String;

.field protected apPasswd:Ljava/lang/String;

.field protected apSsid:Ljava/lang/String;

.field private confirmPassword:Landroid/widget/EditText;

.field private currentPassword:Landroid/widget/EditText;

.field private currentSsid:Landroid/widget/TextView;

.field private newPassword:Landroid/widget/EditText;

.field private newSsid:Landroid/widget/EditText;

.field protected properties:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/aee/sport/magicam/BaseActivity;-><init>()V

    .line 36
    const-string v0, "AP_SSID"

    iput-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->AP_SSID:Ljava/lang/String;

    .line 37
    const-string v0, "AP_PASSWD"

    iput-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->AP_PASSWD:Ljava/lang/String;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->reFreshUI()V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 48
    const v0, 0x7f080073

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->setTitleText(I)V

    .line 50
    const v0, 0x7f0c0036

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->currentSsid:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0c0037

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->newSsid:Landroid/widget/EditText;

    .line 52
    const v0, 0x7f0c0038

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->currentPassword:Landroid/widget/EditText;

    .line 53
    const v0, 0x7f0c0039

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->newPassword:Landroid/widget/EditText;

    .line 54
    const v0, 0x7f0c003a

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->confirmPassword:Landroid/widget/EditText;

    .line 56
    invoke-virtual {p0}, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->showMyProgress()V

    .line 58
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v0

    new-instance v1, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$1;-><init>(Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;)V

    .line 80
    sget-object v2, Lcom/aee/sport/magicam/utils/Constants;->WIFI_CONF_PATH:Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/aee/sport/magicam/service/ControlCMD;->cmdGetFile(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method private reFreshUI()V
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->hideMyProgress()V

    .line 86
    iget-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->currentSsid:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->apSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method private saveWifiConfig()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 95
    iget-object v4, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->newSsid:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "newSsidStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->currentPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "currentPasswordStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->newPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "newPasswordStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->confirmPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "confirmPasswordStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    const v4, 0x7f08009a

    invoke-static {v4, v5}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    const v4, 0x7f08009b

    invoke-static {v4, v5}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto :goto_0

    .line 110
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 111
    const v4, 0x7f08009c

    invoke-static {v4, v5}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto :goto_0

    .line 115
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 116
    const v4, 0x7f08009d

    invoke-static {v4, v5}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto :goto_0

    .line 120
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v6, :cond_6

    .line 121
    :cond_5
    const v4, 0x7f08009e

    invoke-static {v4, v5}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto :goto_0

    .line 125
    :cond_6
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 126
    const v4, 0x7f08009f

    invoke-static {v4, v5}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto :goto_0

    .line 130
    :cond_7
    iget-object v4, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->apPasswd:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 131
    const v4, 0x7f0800a0

    invoke-static {v4, v5}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto :goto_0

    .line 135
    :cond_8
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->apSsid:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 136
    const v4, 0x7f0800a1

    invoke-static {v4, v5}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto :goto_0

    .line 140
    :cond_9
    iget-object v4, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->properties:Ljava/util/Properties;

    if-eqz v4, :cond_0

    .line 141
    iget-object v4, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->properties:Ljava/util/Properties;

    const-string v5, "AP_SSID"

    invoke-virtual {v4, v5, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    iget-object v4, p0, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->properties:Ljava/util/Properties;

    const-string v5, "AP_PASSWD"

    invoke-virtual {v4, v5, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    sget-object v4, Lcom/aee/sport/magicam/utils/Constants;->WIFI_CONF_PATH:Ljava/lang/String;

    const-string v5, "AP_SSID"

    invoke-static {v4, v5, v3}, Lcom/aee/sport/magicam/utils/PropertiesConfig;->setProfileString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 146
    sget-object v4, Lcom/aee/sport/magicam/utils/Constants;->WIFI_CONF_PATH:Ljava/lang/String;

    const-string v5, "AP_PASSWD"

    invoke-static {v4, v5, v2}, Lcom/aee/sport/magicam/utils/PropertiesConfig;->setProfileString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 147
    invoke-virtual {p0}, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->showMyProgress()V

    .line 148
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v4

    new-instance v5, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$2;

    invoke-direct {v5, p0}, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity$2;-><init>(Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;)V

    .line 170
    sget-object v6, Lcom/aee/sport/magicam/utils/Constants;->WIFI_CONF_PATH:Ljava/lang/String;

    .line 148
    invoke-virtual {v4, v5, v6}, Lcom/aee/sport/magicam/service/ControlCMD;->cmdsendFile(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 187
    :goto_0
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onClick(Landroid/view/View;)V

    .line 188
    return-void

    .line 181
    :pswitch_0
    invoke-virtual {p0}, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->finish()V

    goto :goto_0

    .line 184
    :pswitch_1
    invoke-direct {p0}, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->saveWifiConfig()V

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c003b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->setContentView(I)V

    .line 44
    invoke-direct {p0}, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;->init()V

    .line 45
    return-void
.end method
