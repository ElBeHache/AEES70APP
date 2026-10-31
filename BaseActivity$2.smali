.class Lcom/aee/sport/magicam/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/BaseActivity;->hideMyProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/BaseActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/BaseActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/BaseActivity$2;->this$0:Lcom/aee/sport/magicam/BaseActivity;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/aee/sport/magicam/BaseActivity$2;->this$0:Lcom/aee/sport/magicam/BaseActivity;

    invoke-static {v0}, Lcom/aee/sport/magicam/BaseActivity;->access$0(Lcom/aee/sport/magicam/BaseActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aee/sport/magicam/BaseActivity$2;->this$0:Lcom/aee/sport/magicam/BaseActivity;

    invoke-static {v0}, Lcom/aee/sport/magicam/BaseActivity;->access$1(Lcom/aee/sport/magicam/BaseActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/aee/sport/magicam/BaseActivity$2;->this$0:Lcom/aee/sport/magicam/BaseActivity;

    invoke-static {v0}, Lcom/aee/sport/magicam/BaseActivity;->access$0(Lcom/aee/sport/magicam/BaseActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/aee/sport/magicam/BaseActivity$2;->this$0:Lcom/aee/sport/magicam/BaseActivity;

    invoke-static {v1}, Lcom/aee/sport/magicam/BaseActivity;->access$1(Lcom/aee/sport/magicam/BaseActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 128
    :cond_0
    return-void
.end method
