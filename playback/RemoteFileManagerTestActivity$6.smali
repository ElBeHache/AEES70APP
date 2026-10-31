.class Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$6;
.super Ljava/lang/Object;
.source "RemoteFileManagerTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$6;->this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$6;->this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;

    invoke-static {v0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->access$4(Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 209
    return-void
.end method
