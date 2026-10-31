.class Lcom/aee/sport/magicam/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/MainActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/MainActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/MainActivity$3;->this$0:Lcom/aee/sport/magicam/MainActivity;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/MainActivity$3;)Lcom/aee/sport/magicam/MainActivity;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/aee/sport/magicam/MainActivity$3;->this$0:Lcom/aee/sport/magicam/MainActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 271
    iget-object v3, p0, Lcom/aee/sport/magicam/MainActivity$3;->this$0:Lcom/aee/sport/magicam/MainActivity;

    invoke-virtual {v3}, Lcom/aee/sport/magicam/MainActivity;->showMyProgress()V

    .line 272
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 273
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v3

    iget-boolean v3, v3, Lcom/aee/sport/magicam/AeeApplication;->isConnect:Z

    if-eqz v3, :cond_0

    .line 275
    :try_start_0
    new-instance v0, Lcom/aee/sport/magicam/parseconfig/DownLoadFileThread;

    invoke-direct {v0}, Lcom/aee/sport/magicam/parseconfig/DownLoadFileThread;-><init>()V

    .line 276
    .local v0, "dlft":Lcom/aee/sport/magicam/parseconfig/DownLoadFileThread;
    invoke-virtual {v0}, Lcom/aee/sport/magicam/parseconfig/DownLoadFileThread;->start()V

    .line 277
    :goto_0
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v3

    iget-boolean v3, v3, Lcom/aee/sport/magicam/AeeApplication;->isReadFinish:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    .line 292
    .end local v0    # "dlft":Lcom/aee/sport/magicam/parseconfig/DownLoadFileThread;
    :cond_0
    iget-object v3, p0, Lcom/aee/sport/magicam/MainActivity$3;->this$0:Lcom/aee/sport/magicam/MainActivity;

    const-class v4, Lcom/aee/sport/magicam/playback/PlayBackActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 293
    const/4 v3, 0x1

    sput v3, Lcom/aee/sport/magicam/playback/PlayBackActivity;->from:I

    .line 294
    iget-object v3, p0, Lcom/aee/sport/magicam/MainActivity$3;->this$0:Lcom/aee/sport/magicam/MainActivity;

    iget-object v3, v3, Lcom/aee/sport/magicam/MainActivity;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/aee/sport/magicam/MainActivity$3$2;

    invoke-direct {v4, p0}, Lcom/aee/sport/magicam/MainActivity$3$2;-><init>(Lcom/aee/sport/magicam/MainActivity$3;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 300
    iget-object v3, p0, Lcom/aee/sport/magicam/MainActivity$3;->this$0:Lcom/aee/sport/magicam/MainActivity;

    invoke-virtual {v3}, Lcom/aee/sport/magicam/MainActivity;->hideMyProgress()V

    .line 301
    iget-object v3, p0, Lcom/aee/sport/magicam/MainActivity$3;->this$0:Lcom/aee/sport/magicam/MainActivity;

    invoke-virtual {v3, v2}, Lcom/aee/sport/magicam/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 302
    :goto_1
    return-void

    .line 278
    .restart local v0    # "dlft":Lcom/aee/sport/magicam/parseconfig/DownLoadFileThread;
    :cond_1
    const-wide/16 v3, 0x1f4

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 280
    .end local v0    # "dlft":Lcom/aee/sport/magicam/parseconfig/DownLoadFileThread;
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 282
    iget-object v3, p0, Lcom/aee/sport/magicam/MainActivity$3;->this$0:Lcom/aee/sport/magicam/MainActivity;

    iget-object v3, v3, Lcom/aee/sport/magicam/MainActivity;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/aee/sport/magicam/MainActivity$3$1;

    invoke-direct {v4, p0}, Lcom/aee/sport/magicam/MainActivity$3$1;-><init>(Lcom/aee/sport/magicam/MainActivity$3;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
