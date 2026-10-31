.class Lcom/aee/sport/magicam/softwareupdate/UpdateManager$3;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->showDownloadDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/softwareupdate/UpdateManager;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$3;->this$0:Lcom/aee/sport/magicam/softwareupdate/UpdateManager;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 327
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$3;->this$0:Lcom/aee/sport/magicam/softwareupdate/UpdateManager;

    invoke-static {v0}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->access$7(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;)Lcom/aee/sport/magicam/softwareupdate/DialogView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->cancel()V

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 337
    :goto_0
    return-void

    .line 331
    :pswitch_0
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$3;->this$0:Lcom/aee/sport/magicam/softwareupdate/UpdateManager;

    invoke-static {v0, v1}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->access$12(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;Z)V

    goto :goto_0

    .line 334
    :pswitch_1
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$3;->this$0:Lcom/aee/sport/magicam/softwareupdate/UpdateManager;

    invoke-static {v0, v1}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->access$12(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;Z)V

    goto :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch 0x7f0c0049
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
