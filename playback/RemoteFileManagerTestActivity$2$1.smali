.class Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$2$1;
.super Ljava/lang/Object;
.source "RemoteFileManagerTestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$2;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$2;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$2$1;->this$1:Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$2;

    iput-object p2, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$2$1;->val$name:Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$2$1;->this$1:Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$2;

    invoke-static {v0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$2;->access$0(Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$2;)Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$2$1;->val$name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->access$2(Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;Ljava/lang/String;)V

    .line 85
    return-void
.end method
