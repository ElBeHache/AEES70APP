.class Lcom/aee/sport/magicam/softwareupdate/UpdateManager$2;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->showNoticeDialog()V
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
    iput-object p1, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$2;->this$0:Lcom/aee/sport/magicam/softwareupdate/UpdateManager;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$2;->this$0:Lcom/aee/sport/magicam/softwareupdate/UpdateManager;

    invoke-static {v0}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->access$10(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;)Lcom/aee/sport/magicam/softwareupdate/DialogView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->cancel()V

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 299
    :goto_0
    :pswitch_0
    return-void

    .line 296
    :pswitch_1
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager$2;->this$0:Lcom/aee/sport/magicam/softwareupdate/UpdateManager;

    invoke-static {v0}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->access$11(Lcom/aee/sport/magicam/softwareupdate/UpdateManager;)V

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0049
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
