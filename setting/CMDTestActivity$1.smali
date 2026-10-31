.class Lcom/aee/sport/magicam/setting/CMDTestActivity$1;
.super Ljava/lang/Object;
.source "CMDTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/setting/CMDTestActivity;->autoTakePhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/setting/CMDTestActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/setting/CMDTestActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity$1;->this$0:Lcom/aee/sport/magicam/setting/CMDTestActivity;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 75
    :goto_0
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity$1;->this$0:Lcom/aee/sport/magicam/setting/CMDTestActivity;

    iget-boolean v1, v1, Lcom/aee/sport/magicam/setting/CMDTestActivity;->isRun:Z

    if-nez v1, :cond_0

    .line 83
    return-void

    .line 77
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity$1;->this$0:Lcom/aee/sport/magicam/setting/CMDTestActivity;

    invoke-static {v1}, Lcom/aee/sport/magicam/setting/CMDTestActivity;->access$0(Lcom/aee/sport/magicam/setting/CMDTestActivity;)V

    .line 78
    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
