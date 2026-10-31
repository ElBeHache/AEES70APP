.class Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5$1;
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
    iput-object p1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5$1;->this$1:Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$5;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->cusAdapter:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/adapter/CustomAdapter;->notifyDataSetChanged()V

    .line 255
    return-void
.end method
