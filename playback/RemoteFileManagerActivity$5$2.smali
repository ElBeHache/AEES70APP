.class Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5$2;
.super Ljava/lang/Object;
.source "RemoteFileManagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5$2;->this$1:Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5$2;->this$1:Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5;

    invoke-static {v0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5;->access$0(Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5;)Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->hideMyProgress()V

    .line 285
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5$2;->this$1:Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5;

    invoke-static {v0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5;->access$0(Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5;)Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->mHandler:Landroid/os/Handler;

    const v1, 0x800d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 286
    return-void
.end method
