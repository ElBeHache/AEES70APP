.class Lcom/aee/sport/magicam/MainActivity$3$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/MainActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aee/sport/magicam/MainActivity$3;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/MainActivity$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/MainActivity$3$2;->this$1:Lcom/aee/sport/magicam/MainActivity$3;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/aee/sport/magicam/MainActivity$3$2;->this$1:Lcom/aee/sport/magicam/MainActivity$3;

    invoke-static {v0}, Lcom/aee/sport/magicam/MainActivity$3;->access$0(Lcom/aee/sport/magicam/MainActivity$3;)Lcom/aee/sport/magicam/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aee/sport/magicam/MainActivity;->access$1(Lcom/aee/sport/magicam/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 298
    return-void
.end method
