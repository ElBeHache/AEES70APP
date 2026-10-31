.class Lcom/aee/sport/magicam/adapter/CustomAdapter$2$1;
.super Ljava/lang/Object;
.source "CustomAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/adapter/CustomAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aee/sport/magicam/adapter/CustomAdapter$2;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/adapter/CustomAdapter$2;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter$2$1;->this$1:Lcom/aee/sport/magicam/adapter/CustomAdapter$2;

    iput p2, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter$2$1;->val$position:I

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 184
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    sget v3, Lcom/aee/sport/magicam/AeeApplication;->curdown:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/aee/sport/magicam/AeeApplication;->curdown:I

    .line 185
    :goto_0
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    sget v3, Lcom/aee/sport/magicam/AeeApplication;->curdown:I

    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    sget v4, Lcom/aee/sport/magicam/AeeApplication;->maxdown:I

    if-gt v3, v4, :cond_0

    .line 193
    iget-object v3, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter$2$1;->this$1:Lcom/aee/sport/magicam/adapter/CustomAdapter$2;

    invoke-static {v3}, Lcom/aee/sport/magicam/adapter/CustomAdapter$2;->access$0(Lcom/aee/sport/magicam/adapter/CustomAdapter$2;)Lcom/aee/sport/magicam/adapter/CustomAdapter;

    move-result-object v3

    invoke-static {v3}, Lcom/aee/sport/magicam/adapter/CustomAdapter;->access$1(Lcom/aee/sport/magicam/adapter/CustomAdapter;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter$2$1;->val$position:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aee/sport/magicam/bean/FileContent;

    invoke-virtual {v3}, Lcom/aee/sport/magicam/bean/FileContent;->getName()Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter$2$1;->this$1:Lcom/aee/sport/magicam/adapter/CustomAdapter$2;

    invoke-static {v3}, Lcom/aee/sport/magicam/adapter/CustomAdapter$2;->access$0(Lcom/aee/sport/magicam/adapter/CustomAdapter$2;)Lcom/aee/sport/magicam/adapter/CustomAdapter;

    move-result-object v3

    invoke-static {v3}, Lcom/aee/sport/magicam/adapter/CustomAdapter;->access$1(Lcom/aee/sport/magicam/adapter/CustomAdapter;)Ljava/util/List;

    move-result-object v3

    iget v5, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter$2$1;->val$position:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aee/sport/magicam/bean/FileContent;

    invoke-virtual {v3}, Lcom/aee/sport/magicam/bean/FileContent;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "url":Ljava/lang/String;
    sget-object v3, Lcom/aee/sport/magicam/playback/PlayBackActivity;->isDowns:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 196
    iget v3, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter$2$1;->val$position:I

    invoke-static {v2, v1, v3}, Lcom/aee/sport/magicam/AeeApplication;->downLoadFile(Ljava/lang/String;Ljava/lang/String;I)V

    .line 197
    return-void

    .line 187
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
