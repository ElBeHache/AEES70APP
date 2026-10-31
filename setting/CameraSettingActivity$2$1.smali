.class Lcom/aee/sport/magicam/setting/CameraSettingActivity$2$1;
.super Ljava/lang/Object;
.source "CameraSettingActivity.java"

# interfaces
.implements Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/setting/CameraSettingActivity$2;->OnChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aee/sport/magicam/setting/CameraSettingActivity$2;

.field private final synthetic val$CheckState:Z

.field private final synthetic val$buttonLoopBack:Lcom/aee/sport/magicam/widget/SlipButtonItem;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity$2;ZLcom/aee/sport/magicam/widget/SlipButtonItem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$2$1;->this$1:Lcom/aee/sport/magicam/setting/CameraSettingActivity$2;

    iput-boolean p2, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$2$1;->val$CheckState:Z

    iput-object p3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$2$1;->val$buttonLoopBack:Lcom/aee/sport/magicam/widget/SlipButtonItem;

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public returnInfo(Ljava/lang/Object;)V
    .locals 5
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 611
    move-object v0, p1

    check-cast v0, Lcom/aee/sport/magicam/bean/ReceiveMsg;

    .line 612
    .local v0, "receiveMsg":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getRval()I

    move-result v1

    if-ltz v1, :cond_1

    .line 613
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$2$1;->this$1:Lcom/aee/sport/magicam/setting/CameraSettingActivity$2;

    invoke-static {v1}, Lcom/aee/sport/magicam/setting/CameraSettingActivity$2;->access$0(Lcom/aee/sport/magicam/setting/CameraSettingActivity$2;)Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    move-result-object v2

    invoke-static {}, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->Client()Lcom/aee/sport/magicam/parseconfig/ParseConfig;

    sget-object v1, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->ConfigHash:Ljava/util/HashMap;

    const-string v3, "setup_loop_back"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    invoke-static {v2, v1}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->access$8(Lcom/aee/sport/magicam/setting/CameraSettingActivity;Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;)V

    .line 614
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$2$1;->this$1:Lcom/aee/sport/magicam/setting/CameraSettingActivity$2;

    invoke-static {v1}, Lcom/aee/sport/magicam/setting/CameraSettingActivity$2;->access$0(Lcom/aee/sport/magicam/setting/CameraSettingActivity$2;)Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->access$9(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    move-result-object v2

    iget-boolean v1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$2$1;->val$CheckState:Z

    if-eqz v1, :cond_0

    const-string v1, "setup_loop_back_on_"

    :goto_0
    iput-object v1, v2, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    .line 615
    invoke-static {}, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->Client()Lcom/aee/sport/magicam/parseconfig/ParseConfig;

    sget-object v1, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->ConfigHash:Ljava/util/HashMap;

    const-string v2, "setup_loop_back"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    invoke-static {}, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->Client()Lcom/aee/sport/magicam/parseconfig/ParseConfig;

    sget-object v1, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->ConfigHash:Ljava/util/HashMap;

    const-string v2, "setup_loop_back"

    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$2$1;->this$1:Lcom/aee/sport/magicam/setting/CameraSettingActivity$2;

    invoke-static {v3}, Lcom/aee/sport/magicam/setting/CameraSettingActivity$2;->access$0(Lcom/aee/sport/magicam/setting/CameraSettingActivity$2;)Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->access$9(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    const v1, 0x7f0800a4

    invoke-static {v1, v4}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    .line 628
    :goto_1
    return-void

    .line 614
    :cond_0
    const-string v1, "setup_loop_back_off"

    goto :goto_0

    .line 620
    :cond_1
    const v1, 0x7f0800a5

    invoke-static {v1, v4}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    .line 621
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$2$1;->this$1:Lcom/aee/sport/magicam/setting/CameraSettingActivity$2;

    invoke-static {v1}, Lcom/aee/sport/magicam/setting/CameraSettingActivity$2;->access$0(Lcom/aee/sport/magicam/setting/CameraSettingActivity$2;)Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/aee/sport/magicam/setting/CameraSettingActivity$2$1$1;

    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$2$1;->val$buttonLoopBack:Lcom/aee/sport/magicam/widget/SlipButtonItem;

    iget-boolean v4, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$2$1;->val$CheckState:Z

    invoke-direct {v2, p0, v3, v4}, Lcom/aee/sport/magicam/setting/CameraSettingActivity$2$1$1;-><init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity$2$1;Lcom/aee/sport/magicam/widget/SlipButtonItem;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
