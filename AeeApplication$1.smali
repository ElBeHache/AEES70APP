.class Lcom/aee/sport/magicam/AeeApplication$1;
.super Lcom/lidroid/xutils/http/callback/RequestCallBack;
.source "AeeApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/AeeApplication;->downLoadFile(Ljava/lang/String;Ljava/lang/String;I)V
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


# instance fields
.field private final synthetic val$name:Ljava/lang/String;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/aee/sport/magicam/AeeApplication$1;->val$position:I

    iput-object p2, p0, Lcom/aee/sport/magicam/AeeApplication$1;->val$name:Ljava/lang/String;

    .line 320
    invoke-direct {p0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Lcom/lidroid/xutils/exception/HttpException;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 349
    sget-object v0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->isDowns:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/aee/sport/magicam/AeeApplication$1;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download failed,msg:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(Ljava/lang/String;Z)V

    .line 351
    return-void
.end method

.method public onLoading(JJZ)V
    .locals 3
    .param p1, "total"    # J
    .param p3, "current"    # J
    .param p5, "isUploading"    # Z

    .prologue
    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x64

    mul-long/2addr v1, p3

    div-long/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/aee/sport/magicam/AeeApplication$1;->val$position:I

    invoke-static {v0, v1}, Lcom/aee/sport/magicam/AeeApplication;->access$0(Ljava/lang/String;I)V

    .line 332
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 324
    const v0, 0x7f080018

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    .line 325
    return-void
.end method

.method public onSuccess(Lcom/lidroid/xutils/http/ResponseInfo;)V
    .locals 3
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
    .line 336
    .local p1, "responseInfo":Lcom/lidroid/xutils/http/ResponseInfo;, "Lcom/lidroid/xutils/http/ResponseInfo<Ljava/io/File;>;"
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    sget v0, Lcom/aee/sport/magicam/AeeApplication;->curdown:I

    if-lez v0, :cond_0

    .line 337
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    sget v0, Lcom/aee/sport/magicam/AeeApplication;->curdown:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/aee/sport/magicam/AeeApplication;->curdown:I

    .line 339
    :cond_0
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->access$1()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/aee/sport/magicam/AeeApplication$1$1;

    iget v2, p0, Lcom/aee/sport/magicam/AeeApplication$1;->val$position:I

    invoke-direct {v1, p0, v2}, Lcom/aee/sport/magicam/AeeApplication$1$1;-><init>(Lcom/aee/sport/magicam/AeeApplication$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    return-void
.end method
