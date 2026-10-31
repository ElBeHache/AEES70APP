.class Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$3;
.super Ljava/lang/Object;
.source "RemoteFileManagerActivity.java"

# interfaces
.implements Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->cd(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$3;->this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public returnInfo(Ljava/lang/Object;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 186
    move-object v0, p1

    check-cast v0, Lcom/aee/sport/magicam/bean/ReceiveMsg;

    .line 187
    .local v0, "receiveMsg":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$3;->this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;

    invoke-static {v1}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->access$4(Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;)V

    .line 194
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$3;->this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;

    iget-object v1, v1, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->mHandler:Landroid/os/Handler;

    const v2, 0x800d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
