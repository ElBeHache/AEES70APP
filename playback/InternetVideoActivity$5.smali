.class Lcom/aee/sport/magicam/playback/InternetVideoActivity$5;
.super Ljava/lang/Object;
.source "InternetVideoActivity.java"

# interfaces
.implements Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/playback/InternetVideoActivity;->deleterFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/playback/InternetVideoActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/playback/InternetVideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$5;->this$0:Lcom/aee/sport/magicam/playback/InternetVideoActivity;

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/playback/InternetVideoActivity$5;)Lcom/aee/sport/magicam/playback/InternetVideoActivity;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$5;->this$0:Lcom/aee/sport/magicam/playback/InternetVideoActivity;

    return-object v0
.end method


# virtual methods
.method public returnInfo(Ljava/lang/Object;)V
    .locals 4
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 337
    move-object v0, p1

    check-cast v0, Lcom/aee/sport/magicam/bean/ReceiveMsg;

    .line 338
    .local v0, "receiveMsg":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getRval()I

    move-result v1

    if-nez v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$5;->this$0:Lcom/aee/sport/magicam/playback/InternetVideoActivity;

    iget-object v1, v1, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->videoFiles:Ljava/util/List;

    iget-object v2, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$5;->this$0:Lcom/aee/sport/magicam/playback/InternetVideoActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->access$5(Lcom/aee/sport/magicam/playback/InternetVideoActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aee/sport/magicam/bean/FileAttr;

    invoke-virtual {v1}, Lcom/aee/sport/magicam/bean/FileAttr;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/aee/sport/magicam/AeeApplication;->files:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/bean/FileAttr;->removePositionFileAttr(Ljava/lang/String;Ljava/util/List;)V

    .line 341
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$5;->this$0:Lcom/aee/sport/magicam/playback/InternetVideoActivity;

    iget-object v1, v1, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->videoFiles:Ljava/util/List;

    iget-object v2, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$5;->this$0:Lcom/aee/sport/magicam/playback/InternetVideoActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->access$5(Lcom/aee/sport/magicam/playback/InternetVideoActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 342
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$5;->this$0:Lcom/aee/sport/magicam/playback/InternetVideoActivity;

    new-instance v2, Lcom/aee/sport/magicam/playback/InternetVideoActivity$5$1;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/playback/InternetVideoActivity$5$1;-><init>(Lcom/aee/sport/magicam/playback/InternetVideoActivity$5;)V

    invoke-virtual {v1, v2}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 350
    const v1, 0x7f080079

    invoke-static {v1, v3}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    const v1, 0x7f08007a

    invoke-static {v1, v3}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto :goto_0
.end method
