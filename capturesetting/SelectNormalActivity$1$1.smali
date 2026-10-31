.class Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1$1;
.super Ljava/lang/Object;
.source "SelectNormalActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1$1;->this$1:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1$1;->this$1:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;

    invoke-static {v0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->access$0(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;)Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->hideMyProgress()V

    .line 323
    iget-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1$1;->this$1:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;

    invoke-static {v0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->access$0(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;)Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$17(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)V

    .line 324
    return-void
.end method
