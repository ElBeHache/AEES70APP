.class public Lcom/aee/sport/magicam/MainActivity;
.super Lcom/aee/sport/magicam/BaseActivity;
.source "MainActivity.java"


# instance fields
.field private connectHandler:Landroid/os/Handler;

.field private connectStatus:Landroid/widget/ImageView;

.field private connectStatusEnter:Landroid/widget/ImageView;

.field protected manager:Lcom/aee/sport/magicam/softwareupdate/UpdateManager;

.field private notConnectInfo:Landroid/widget/TextView;

.field pathUri:Ljava/lang/String;

.field private playback:Landroid/widget/FrameLayout;

.field private temptime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/aee/sport/magicam/BaseActivity;-><init>()V

    .line 122
    new-instance v0, Lcom/aee/sport/magicam/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/aee/sport/magicam/MainActivity$1;-><init>(Lcom/aee/sport/magicam/MainActivity;)V

    iput-object v0, p0, Lcom/aee/sport/magicam/MainActivity;->connectHandler:Landroid/os/Handler;

    .line 198
    const-string v0, ""

    iput-object v0, p0, Lcom/aee/sport/magicam/MainActivity;->pathUri:Ljava/lang/String;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/MainActivity;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/aee/sport/magicam/MainActivity;->reFreshView()V

    return-void
.end method

.method static synthetic access$1(Lcom/aee/sport/magicam/MainActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aee/sport/magicam/MainActivity;->playback:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 95
    const v0, 0x7f0c0026

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v0, 0x7f0c002c

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/aee/sport/magicam/MainActivity;->playback:Landroid/widget/FrameLayout;

    .line 97
    iget-object v0, p0, Lcom/aee/sport/magicam/MainActivity;->playback:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v0, 0x7f0c0029

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aee/sport/magicam/MainActivity;->connectStatus:Landroid/widget/ImageView;

    .line 99
    const v0, 0x7f0c002a

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aee/sport/magicam/MainActivity;->connectStatusEnter:Landroid/widget/ImageView;

    .line 100
    const v0, 0x7f0c002b

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aee/sport/magicam/MainActivity;->notConnectInfo:Landroid/widget/TextView;

    .line 102
    return-void
.end method

.method private reFreshView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 108
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/aee/sport/magicam/AeeApplication;->isConnect:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/aee/sport/magicam/MainActivity;->connectStatus:Landroid/widget/ImageView;

    const v1, 0x7f02004e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    iget-object v0, p0, Lcom/aee/sport/magicam/MainActivity;->notConnectInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/aee/sport/magicam/MainActivity;->connectStatusEnter:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/aee/sport/magicam/MainActivity;->connectStatus:Landroid/widget/ImageView;

    const v1, 0x7f020094

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    iget-object v0, p0, Lcom/aee/sport/magicam/MainActivity;->notConnectInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/aee/sport/magicam/MainActivity;->connectStatusEnter:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 201
    const/4 v1, 0x0

    .line 202
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 311
    :goto_0
    return-void

    .line 205
    :sswitch_0
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    iget-boolean v2, v2, Lcom/aee/sport/magicam/AeeApplication;->isConnect:Z

    if-nez v2, :cond_0

    .line 206
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/aee/sport/magicam/MainActivity;->showMyProgress()V

    .line 212
    :try_start_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/aee/sport/magicam/MainActivity$2;

    invoke-direct {v3, p0}, Lcom/aee/sport/magicam/MainActivity$2;-><init>(Lcom/aee/sport/magicam/MainActivity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 253
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 260
    .end local v0    # "ex":Ljava/lang/Exception;
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/aee/sport/magicam/setting/SettingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 267
    :sswitch_2
    iget-object v2, p0, Lcom/aee/sport/magicam/MainActivity;->playback:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 268
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/aee/sport/magicam/MainActivity$3;

    invoke-direct {v3, p0}, Lcom/aee/sport/magicam/MainActivity$3;-><init>(Lcom/aee/sport/magicam/MainActivity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 303
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 202
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0026 -> :sswitch_1
        0x7f0c0028 -> :sswitch_0
        0x7f0c002c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static {p0}, Lio/vov/vitamio/LibsChecker;->checkVitamioLibs(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 73
    :cond_0
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/MainActivity;->setContentView(I)V

    .line 74
    invoke-direct {p0}, Lcom/aee/sport/magicam/MainActivity;->init()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 175
    invoke-super {p0}, Lcom/aee/sport/magicam/BaseActivity;->onDestroy()V

    .line 176
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 182
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/aee/sport/magicam/MainActivity;->temptime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 185
    const v1, 0x7f080074

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/aee/sport/magicam/MainActivity;->temptime:J

    .line 195
    :goto_0
    return v0

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/aee/sport/magicam/MainActivity;->finish()V

    .line 189
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 195
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/aee/sport/magicam/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 157
    :try_start_0
    invoke-static {}, Lorg/videolan/libvlc/EventHandler;->getInstance()Lorg/videolan/libvlc/EventHandler;

    move-result-object v1

    .line 158
    .local v1, "em":Lorg/videolan/libvlc/EventHandler;
    iget-object v2, p0, Lcom/aee/sport/magicam/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lorg/videolan/libvlc/EventHandler;->removeHandler(Landroid/os/Handler;)V

    .line 160
    sget-object v2, Lcom/aee/sport/magicam/service/ControlCMD;->conThread:Lcom/aee/sport/magicam/service/ControlThread;

    if-eqz v2, :cond_0

    .line 161
    sget-object v2, Lcom/aee/sport/magicam/service/ControlCMD;->conThread:Lcom/aee/sport/magicam/service/ControlThread;

    iget-object v3, p0, Lcom/aee/sport/magicam/MainActivity;->connectHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/aee/sport/magicam/service/ControlThread;->removeHandler(Landroid/os/Handler;)V

    .line 163
    :cond_0
    iget-object v2, p0, Lcom/aee/sport/magicam/MainActivity;->manager:Lcom/aee/sport/magicam/softwareupdate/UpdateManager;

    if-eqz v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/aee/sport/magicam/MainActivity;->manager:Lcom/aee/sport/magicam/softwareupdate/UpdateManager;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->isShow:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v1    # "em":Lorg/videolan/libvlc/EventHandler;
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/aee/sport/magicam/BaseActivity;->onPause()V

    .line 171
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 136
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    iget-boolean v2, v2, Lcom/aee/sport/magicam/AeeApplication;->isConnect:Z

    if-nez v2, :cond_0

    .line 137
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    .line 139
    :cond_0
    sget-object v2, Lcom/aee/sport/magicam/service/ControlCMD;->conThread:Lcom/aee/sport/magicam/service/ControlThread;

    if-eqz v2, :cond_1

    .line 140
    sget-object v2, Lcom/aee/sport/magicam/service/ControlCMD;->conThread:Lcom/aee/sport/magicam/service/ControlThread;

    iget-object v3, p0, Lcom/aee/sport/magicam/MainActivity;->connectHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/aee/sport/magicam/service/ControlThread;->addHandler(Landroid/os/Handler;)V

    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/aee/sport/magicam/MainActivity;->reFreshView()V

    .line 145
    :try_start_0
    invoke-static {}, Lorg/videolan/libvlc/EventHandler;->getInstance()Lorg/videolan/libvlc/EventHandler;

    move-result-object v1

    .line 146
    .local v1, "em":Lorg/videolan/libvlc/EventHandler;
    iget-object v2, p0, Lcom/aee/sport/magicam/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lorg/videolan/libvlc/EventHandler;->addHandler(Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v1    # "em":Lorg/videolan/libvlc/EventHandler;
    :goto_0
    invoke-super {p0}, Lcom/aee/sport/magicam/BaseActivity;->onResume()V

    .line 152
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
