.class Lcom/aee/sport/magicam/playback/InternetVideoActivity$3;
.super Ljava/lang/Object;
.source "InternetVideoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/playback/InternetVideoActivity;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/playback/InternetVideoActivity;

.field private final synthetic val$fileLocal:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/playback/InternetVideoActivity;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$3;->this$0:Lcom/aee/sport/magicam/playback/InternetVideoActivity;

    iput-object p2, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$3;->val$fileLocal:Ljava/io/File;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 249
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$3;->val$fileLocal:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$3;->val$fileLocal:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$3;->this$0:Lcom/aee/sport/magicam/playback/InternetVideoActivity;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$3;->this$0:Lcom/aee/sport/magicam/playback/InternetVideoActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->access$5(Lcom/aee/sport/magicam/playback/InternetVideoActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->access$6(Lcom/aee/sport/magicam/playback/InternetVideoActivity;ZI)V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$3;->this$0:Lcom/aee/sport/magicam/playback/InternetVideoActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/aee/sport/magicam/playback/InternetVideoActivity$3;->this$0:Lcom/aee/sport/magicam/playback/InternetVideoActivity;

    invoke-static {v2}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->access$5(Lcom/aee/sport/magicam/playback/InternetVideoActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/aee/sport/magicam/playback/InternetVideoActivity;->access$6(Lcom/aee/sport/magicam/playback/InternetVideoActivity;ZI)V

    goto :goto_0
.end method
