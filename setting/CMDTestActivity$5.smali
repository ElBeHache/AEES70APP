.class Lcom/aee/sport/magicam/setting/CMDTestActivity$5;
.super Ljava/lang/Object;
.source "CMDTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/setting/CMDTestActivity;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/setting/CMDTestActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/setting/CMDTestActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity$5;->this$0:Lcom/aee/sport/magicam/setting/CMDTestActivity;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity$5;->this$0:Lcom/aee/sport/magicam/setting/CMDTestActivity;

    invoke-static {v0}, Lcom/aee/sport/magicam/setting/CMDTestActivity;->access$2(Lcom/aee/sport/magicam/setting/CMDTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 353
    return-void
.end method
