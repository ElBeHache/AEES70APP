.class Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$1;
.super Ljava/lang/Object;
.source "RemoteFileManagerTestActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$1;->this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$1;->this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;

    invoke-static {v1}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->access$0(Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/bean/FileAttr;

    .line 67
    .local v0, "fileAttr":Lcom/aee/sport/magicam/bean/FileAttr;
    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileAttr;->isFolder()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$1;->this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileAttr;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->access$1(Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
