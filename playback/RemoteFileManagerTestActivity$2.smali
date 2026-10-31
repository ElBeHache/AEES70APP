.class Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$2;
.super Ljava/lang/Object;
.source "RemoteFileManagerTestActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$2;->this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$2;)Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$2;->this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$2;->this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->access$0(Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/bean/FileAttr;

    .line 79
    .local v0, "fileAttr":Lcom/aee/sport/magicam/bean/FileAttr;
    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileAttr;->getName()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$2;->this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5220\u9664\u6587\u4ef6"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\u786e\u5b9a"

    new-instance v4, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$2$1;

    invoke-direct {v4, p0, v1}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$2$1;-><init>(Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$2;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 87
    const-string v3, "\u53d6\u6d88"

    new-instance v4, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$2$2;

    invoke-direct {v4, p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$2$2;-><init>(Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$2;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 93
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 94
    const/4 v2, 0x0

    return v2
.end method
