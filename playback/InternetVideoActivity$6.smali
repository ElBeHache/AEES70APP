.class Lcom/aee/sport/magicam/playback/InternetVideoActivity$6;
.super Lcom/lidroid/xutils/http/callback/RequestCallBack;
.source "InternetVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/playback/InternetVideoActivity;->downLoadFile(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lidroid/xutils/http/callback/RequestCallBack",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Lcom/lidroid/xutils/exception/HttpException;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 393
    sget-object v0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/aee/sport/magicam/BaseActivity;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/BaseActivity;->hideMyProgress()V

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download failed,msg:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(Ljava/lang/String;Z)V

    .line 395
    return-void
.end method

.method public onLoading(JJZ)V
    .locals 2
    .param p1, "total"    # J
    .param p3, "current"    # J
    .param p5, "isUploading"    # Z

    .prologue
    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(Ljava/lang/String;Z)V

    .line 383
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 375
    sget-object v0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/aee/sport/magicam/BaseActivity;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/BaseActivity;->showMyProgress()V

    .line 376
    const-string v0, "conn..."

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(Ljava/lang/String;Z)V

    .line 377
    return-void
.end method

.method public onSuccess(Lcom/lidroid/xutils/http/ResponseInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/http/ResponseInfo",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p1, "responseInfo":Lcom/lidroid/xutils/http/ResponseInfo;, "Lcom/lidroid/xutils/http/ResponseInfo<Ljava/io/File;>;"
    sget-object v0, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/aee/sport/magicam/BaseActivity;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/BaseActivity;->hideMyProgress()V

    .line 388
    const-string v0, "download success "

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(Ljava/lang/String;Z)V

    .line 389
    return-void
.end method
