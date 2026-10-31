.class public Lcom/aee/sport/magicam/SplashActivity;
.super Lcom/aee/sport/magicam/BaseActivity;
.source "SplashActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/aee/sport/magicam/BaseActivity;-><init>()V

    return-void
.end method

.method private isFirstEnter(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "guide_activity"

    invoke-static {v2, v1}, Lcom/aee/sport/magicam/utils/MySharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "welcome_page"

    invoke-static {v2, v0}, Lcom/aee/sport/magicam/utils/MySharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 47
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 61
    :goto_0
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    return v1

    .line 49
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 50
    .local v0, "mIntent":Landroid/content/Intent;
    const-class v1, Lcom/aee/sport/magicam/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 52
    invoke-virtual {p0}, Lcom/aee/sport/magicam/SplashActivity;->finish()V

    goto :goto_0

    .line 55
    .end local v0    # "mIntent":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 56
    .restart local v0    # "mIntent":Landroid/content/Intent;
    const-class v1, Lcom/aee/sport/magicam/GuideActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 58
    invoke-virtual {p0}, Lcom/aee/sport/magicam/SplashActivity;->finish()V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x8001
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v3, 0x7d0

    .line 21
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v1, 0x7f03000e

    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/SplashActivity;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p0, v1}, Lcom/aee/sport/magicam/SplashActivity;->isFirstEnter(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 25
    .local v0, "mFirst":Z
    const/4 v0, 0x0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    iget-object v1, p0, Lcom/aee/sport/magicam/SplashActivity;->mHandler:Landroid/os/Handler;

    const v2, 0x8002

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 30
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/aee/sport/magicam/SplashActivity;->mHandler:Landroid/os/Handler;

    const v2, 0x8001

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
