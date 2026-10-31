.class Lcom/aee/sport/magicam/MainActivity$2;
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
    iput-object p1, p0, Lcom/aee/sport/magicam/MainActivity$2;->this$0:Lcom/aee/sport/magicam/MainActivity;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/MainActivity$2;)Lcom/aee/sport/magicam/MainActivity;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/aee/sport/magicam/MainActivity$2;->this$0:Lcom/aee/sport/magicam/MainActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 215
    :goto_0
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v3

    iget-boolean v3, v3, Lcom/aee/sport/magicam/AeeApplication;->isInit:Z

    if-eqz v3, :cond_0

    .line 230
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v3

    iget v3, v3, Lcom/aee/sport/magicam/AeeApplication;->token:I

    if-lez v3, :cond_1

    .line 231
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 232
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/aee/sport/magicam/MainActivity$2;->this$0:Lcom/aee/sport/magicam/MainActivity;

    invoke-virtual {v3}, Lcom/aee/sport/magicam/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/aee/sport/magicam/VideoPlayerActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 233
    iget-object v3, p0, Lcom/aee/sport/magicam/MainActivity$2;->this$0:Lcom/aee/sport/magicam/MainActivity;

    invoke-virtual {v3, v1}, Lcom/aee/sport/magicam/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 251
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    iget-object v3, p0, Lcom/aee/sport/magicam/MainActivity$2;->this$0:Lcom/aee/sport/magicam/MainActivity;

    invoke-virtual {v3}, Lcom/aee/sport/magicam/MainActivity;->hideMyProgress()V

    .line 252
    return-void

    .line 216
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/aee/sport/magicam/MainActivity$2$1;

    invoke-direct {v3, p0}, Lcom/aee/sport/magicam/MainActivity$2$1;-><init>(Lcom/aee/sport/magicam/MainActivity$2;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 222
    .local v2, "th":Ljava/lang/Thread;
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 223
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 225
    const-wide/16 v3, 0x7d0

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 235
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "th":Ljava/lang/Thread;
    :cond_1
    iget-object v3, p0, Lcom/aee/sport/magicam/MainActivity$2;->this$0:Lcom/aee/sport/magicam/MainActivity;

    iget-object v3, v3, Lcom/aee/sport/magicam/MainActivity;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/aee/sport/magicam/MainActivity$2$2;

    invoke-direct {v4, p0}, Lcom/aee/sport/magicam/MainActivity$2$2;-><init>(Lcom/aee/sport/magicam/MainActivity$2;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
