.class public Lcom/aee/sport/magicam/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/os/Handler$Callback;


# instance fields
.field private frameLayout:Landroid/widget/FrameLayout;

.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field private myView:Landroid/view/View;

.field public title:Landroid/widget/TextView;

.field public titleLeft:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/BaseActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/aee/sport/magicam/BaseActivity;->frameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/aee/sport/magicam/BaseActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/aee/sport/magicam/BaseActivity;->myView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/aee/sport/magicam/BaseActivity;Landroid/widget/FrameLayout;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/aee/sport/magicam/BaseActivity;->frameLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method static synthetic access$3(Lcom/aee/sport/magicam/BaseActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/aee/sport/magicam/BaseActivity;->myView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public hideMyProgress()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/aee/sport/magicam/BaseActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/aee/sport/magicam/BaseActivity$2;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/BaseActivity$2;-><init>(Lcom/aee/sport/magicam/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void
.end method

.method protected iniTitle()V
    .locals 1

    .prologue
    .line 59
    const v0, 0x7f0c0046

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aee/sport/magicam/BaseActivity;->title:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0c0059

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aee/sport/magicam/BaseActivity;->titleLeft:Landroid/widget/TextView;

    .line 61
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 151
    :pswitch_0
    invoke-virtual {p0}, Lcom/aee/sport/magicam/BaseActivity;->finish()V

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x7f0c005a
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/aee/sport/magicam/BaseActivity;->mHandler:Landroid/os/Handler;

    .line 53
    iput-object p0, p0, Lcom/aee/sport/magicam/BaseActivity;->mContext:Landroid/content/Context;

    .line 54
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/aee/sport/magicam/AeeApplication;->addActivity(Landroid/app/Activity;)V

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 142
    sget-object v0, Lcom/aee/sport/magicam/service/ControlCMD;->conThread:Lcom/aee/sport/magicam/service/ControlThread;

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/aee/sport/magicam/service/ControlCMD;->conThread:Lcom/aee/sport/magicam/service/ControlThread;

    iget-object v1, p0, Lcom/aee/sport/magicam/BaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/service/ControlThread;->removeHandler(Landroid/os/Handler;)V

    .line 144
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 145
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lcom/aee/sport/magicam/service/ControlCMD;->conThread:Lcom/aee/sport/magicam/service/ControlThread;

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lcom/aee/sport/magicam/service/ControlCMD;->conThread:Lcom/aee/sport/magicam/service/ControlThread;

    iget-object v1, p0, Lcom/aee/sport/magicam/BaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/service/ControlThread;->addHandler(Landroid/os/Handler;)V

    .line 137
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 138
    return-void
.end method

.method public setTitleText(I)V
    .locals 1
    .param p1, "info"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/aee/sport/magicam/BaseActivity;->title:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/aee/sport/magicam/BaseActivity;->iniTitle()V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/aee/sport/magicam/BaseActivity;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/aee/sport/magicam/BaseActivity;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 73
    :cond_1
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/aee/sport/magicam/BaseActivity;->title:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/aee/sport/magicam/BaseActivity;->iniTitle()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/aee/sport/magicam/BaseActivity;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/aee/sport/magicam/BaseActivity;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_1
    return-void
.end method

.method public showMyProgress()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/aee/sport/magicam/BaseActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/aee/sport/magicam/BaseActivity$1;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/BaseActivity$1;-><init>(Lcom/aee/sport/magicam/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    return-void
.end method
