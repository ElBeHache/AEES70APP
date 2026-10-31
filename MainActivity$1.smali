.class Lcom/aee/sport/magicam/MainActivity$1;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aee/sport/magicam/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/MainActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/MainActivity$1;->this$0:Lcom/aee/sport/magicam/MainActivity;

    .line 122
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 125
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 130
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 131
    return-void

    .line 127
    :pswitch_0
    iget-object v0, p0, Lcom/aee/sport/magicam/MainActivity$1;->this$0:Lcom/aee/sport/magicam/MainActivity;

    invoke-static {v0}, Lcom/aee/sport/magicam/MainActivity;->access$0(Lcom/aee/sport/magicam/MainActivity;)V

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x800a
        :pswitch_0
    .end packed-switch
.end method
