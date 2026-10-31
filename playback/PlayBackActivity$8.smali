.class Lcom/aee/sport/magicam/playback/PlayBackActivity$8;
.super Ljava/lang/Object;
.source "PlayBackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/playback/PlayBackActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/playback/PlayBackActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/playback/PlayBackActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity$8;->this$0:Lcom/aee/sport/magicam/playback/PlayBackActivity;

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/playback/PlayBackActivity$8;)Lcom/aee/sport/magicam/playback/PlayBackActivity;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity$8;->this$0:Lcom/aee/sport/magicam/playback/PlayBackActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 381
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/aee/sport/magicam/playback/PlayBackActivity;->checkDowns:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 402
    sget-object v2, Lcom/aee/sport/magicam/playback/PlayBackActivity;->checkDowns:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 403
    return-void

    .line 382
    :cond_0
    iget-object v3, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity$8;->this$0:Lcom/aee/sport/magicam/playback/PlayBackActivity;

    sget-object v2, Lcom/aee/sport/magicam/playback/PlayBackActivity;->checkDowns:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/aee/sport/magicam/playback/PlayBackActivity;->position:I

    .line 383
    iget-object v3, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity$8;->this$0:Lcom/aee/sport/magicam/playback/PlayBackActivity;

    sget-object v2, Lcom/aee/sport/magicam/playback/PlayBackActivity;->cusAdapter:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    invoke-virtual {v2}, Lcom/aee/sport/magicam/adapter/CustomAdapter;->getHashlist()Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity$8;->this$0:Lcom/aee/sport/magicam/playback/PlayBackActivity;

    iget v4, v4, Lcom/aee/sport/magicam/playback/PlayBackActivity;->position:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aee/sport/magicam/bean/FileContent;

    invoke-virtual {v2}, Lcom/aee/sport/magicam/bean/FileContent;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/aee/sport/magicam/playback/PlayBackActivity;->fname:Ljava/lang/String;

    .line 384
    iget-object v3, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity$8;->this$0:Lcom/aee/sport/magicam/playback/PlayBackActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/aee/sport/magicam/playback/PlayBackActivity;->cusAdapter:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    invoke-virtual {v2}, Lcom/aee/sport/magicam/adapter/CustomAdapter;->getHashlist()Ljava/util/List;

    move-result-object v2

    iget-object v5, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity$8;->this$0:Lcom/aee/sport/magicam/playback/PlayBackActivity;

    iget v5, v5, Lcom/aee/sport/magicam/playback/PlayBackActivity;->position:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aee/sport/magicam/bean/FileContent;

    invoke-virtual {v2}, Lcom/aee/sport/magicam/bean/FileContent;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity$8;->this$0:Lcom/aee/sport/magicam/playback/PlayBackActivity;

    iget-object v2, v2, Lcom/aee/sport/magicam/playback/PlayBackActivity;->fname:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/aee/sport/magicam/playback/PlayBackActivity;->fturl:Ljava/lang/String;

    .line 385
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/aee/sport/magicam/playback/PlayBackActivity$8$1;

    invoke-direct {v3, p0}, Lcom/aee/sport/magicam/playback/PlayBackActivity$8$1;-><init>(Lcom/aee/sport/magicam/playback/PlayBackActivity$8;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 391
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 393
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 394
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    sget v2, Lcom/aee/sport/magicam/AeeApplication;->curdown:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/aee/sport/magicam/AeeApplication;->curdown:I

    .line 395
    :goto_1
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    sget v2, Lcom/aee/sport/magicam/AeeApplication;->curdown:I

    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    sget v3, Lcom/aee/sport/magicam/AeeApplication;->maxdown:I

    if-gt v2, v3, :cond_1

    .line 381
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 396
    :cond_1
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method
