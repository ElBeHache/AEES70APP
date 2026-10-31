.class Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5;
.super Ljava/lang/Object;
.source "RemoteFileManagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->deleteSelectedFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5;->this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5;)Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5;->this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 232
    iget-object v8, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5;->this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;

    invoke-static {v8}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->access$0(Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 233
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aee/sport/magicam/bean/FileAttr;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 280
    iget-object v8, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5;->this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;

    iget-object v8, v8, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5$2;

    invoke-direct {v9, p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5$2;-><init>(Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 289
    return-void

    .line 234
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aee/sport/magicam/bean/FileAttr;

    .line 236
    .local v1, "file":Lcom/aee/sport/magicam/bean/FileAttr;
    invoke-virtual {v1}, Lcom/aee/sport/magicam/bean/FileAttr;->isSelected()Z

    move-result v3

    .line 237
    .local v3, "isSelected":Z
    if-eqz v3, :cond_0

    .line 238
    invoke-virtual {v1}, Lcom/aee/sport/magicam/bean/FileAttr;->getName()Ljava/lang/String;

    move-result-object v5

    .line 239
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/aee/sport/magicam/bean/FileAttr;->isLocalFile()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 240
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/aee/sport/magicam/bean/FileAttr;->getUri()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    .local v2, "fileLocal":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 242
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 244
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 245
    sget-object v8, Lcom/aee/sport/magicam/playback/PlayBackActivity;->localRemoteFiles:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 246
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v8

    iget-object v8, v8, Lcom/aee/sport/magicam/AeeApplication;->fileslist:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 252
    :goto_1
    iget-object v8, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5;->this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;

    iget-object v8, v8, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5$1;

    invoke-direct {v9, p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5$1;-><init>(Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 246
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/bean/FileContent;

    .line 247
    .local v0, "fc":Lcom/aee/sport/magicam/bean/FileContent;
    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileContent;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/aee/sport/magicam/bean/FileAttr;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 248
    const v8, 0x7f080016

    invoke-static {v8}, Lcom/aee/sport/magicam/AeeApplication;->getStr(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/aee/sport/magicam/bean/FileContent;->setDown(Ljava/lang/String;)V

    goto :goto_1

    .line 260
    .end local v0    # "fc":Lcom/aee/sport/magicam/bean/FileContent;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Delete "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v11}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 264
    .end local v2    # "fileLocal":Ljava/io/File;
    :cond_5
    new-instance v7, Lcom/aee/sport/magicam/bean/SendMsg;

    sget v8, Lcom/aee/sport/magicam/utils/Constants;->AMBA_DEL_FILE:I

    const/4 v9, 0x0

    invoke-direct {v7, v8, v5, v9}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 265
    .local v7, "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/bean/SendMsg;)Lcom/aee/sport/magicam/bean/ReceiveMsg;

    move-result-object v6

    .line 267
    .local v6, "receiveMsg":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getRval()I

    move-result v8

    if-nez v8, :cond_6

    .line 270
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 273
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Delete "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v11}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method
