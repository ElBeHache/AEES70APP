.class Lcom/aee/sport/magicam/playback/ImageShowActivity$4;
.super Ljava/lang/Object;
.source "ImageShowActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/playback/ImageShowActivity;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/playback/ImageShowActivity;

.field private final synthetic val$fileLocal:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/playback/ImageShowActivity;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity$4;->this$0:Lcom/aee/sport/magicam/playback/ImageShowActivity;

    iput-object p2, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity$4;->val$fileLocal:Ljava/io/File;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity$4;->val$fileLocal:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity$4;->val$fileLocal:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity$4;->this$0:Lcom/aee/sport/magicam/playback/ImageShowActivity;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity$4;->this$0:Lcom/aee/sport/magicam/playback/ImageShowActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/playback/ImageShowActivity;->access$3(Lcom/aee/sport/magicam/playback/ImageShowActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/aee/sport/magicam/playback/ImageShowActivity;->access$2(Lcom/aee/sport/magicam/playback/ImageShowActivity;ZI)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity$4;->this$0:Lcom/aee/sport/magicam/playback/ImageShowActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity$4;->this$0:Lcom/aee/sport/magicam/playback/ImageShowActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/playback/ImageShowActivity;->access$3(Lcom/aee/sport/magicam/playback/ImageShowActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/aee/sport/magicam/playback/ImageShowActivity;->access$2(Lcom/aee/sport/magicam/playback/ImageShowActivity;ZI)V

    goto :goto_0
.end method
