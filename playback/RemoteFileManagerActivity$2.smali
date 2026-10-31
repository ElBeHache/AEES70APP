.class Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$2;
.super Ljava/lang/Object;
.source "RemoteFileManagerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->initView()V
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
.field final synthetic this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$2;->this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
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
    .line 148
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$2;->this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;

    invoke-static {v0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->access$2(Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$2;->this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;

    invoke-static {v0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->access$3(Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;)V

    .line 150
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$2;->this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;

    invoke-static {v0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->access$0(Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/bean/FileAttr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/bean/FileAttr;->setSelected(Z)V

    .line 151
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity$2;->this$0:Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;

    iget-object v0, v0, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;->mHandler:Landroid/os/Handler;

    const v1, 0x800d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 154
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
