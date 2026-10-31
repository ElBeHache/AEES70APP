.class Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener$1;
.super Ljava/lang/Object;
.source "SelectNormalActivity.java"

# interfaces
.implements Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->onClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener$1;->this$1:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener$1;)Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener$1;->this$1:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;

    return-object v0
.end method


# virtual methods
.method public returnInfo(Ljava/lang/Object;)V
    .locals 8
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    .line 608
    move-object v0, p1

    check-cast v0, Lcom/aee/sport/magicam/bean/ReceiveMsg;

    .line 610
    .local v0, "receiveMsg":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    if-eqz v0, :cond_1

    .line 612
    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getRval()I

    move-result v2

    if-ltz v2, :cond_3

    .line 613
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener$1;->this$1:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;

    invoke-static {v3}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->access$1(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;)Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$7(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/aee/sport/magicam/AeeApplication;->value:Ljava/lang/String;

    .line 614
    iget-object v2, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener$1;->this$1:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;

    invoke-static {v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->access$1(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;)Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$8(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "setup_system_type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 615
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v2

    new-instance v3, Lcom/aee/sport/magicam/bean/SendMsg;

    sget v4, Lcom/aee/sport/magicam/utils/Constants;->AMBA_STOP_ENCODE:I

    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v5

    iget v5, v5, Lcom/aee/sport/magicam/AeeApplication;->token:I

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(III)V

    invoke-virtual {v2, v3}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/bean/SendMsg;)Lcom/aee/sport/magicam/bean/ReceiveMsg;

    move-result-object v1

    .line 616
    .local v1, "rm":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    invoke-virtual {v1}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getRval()I

    move-result v2

    if-ltz v2, :cond_0

    .line 617
    invoke-static {}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->productConfig()Z

    .line 622
    .end local v1    # "rm":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    :cond_0
    :goto_0
    invoke-static {v7}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$10(Z)V

    .line 636
    :cond_1
    :goto_1
    return-void

    .line 620
    :cond_2
    const v2, 0x7f0800a4

    invoke-static {v2, v7}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto :goto_0

    .line 626
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener$1;->this$1:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;

    invoke-static {v3}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->access$1(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;)Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getRval()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(Ljava/lang/String;Z)V

    .line 627
    iget-object v2, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener$1;->this$1:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;

    invoke-static {v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;->access$1(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;)Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener$1$1;

    invoke-direct {v3, p0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener$1$1;-><init>(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
