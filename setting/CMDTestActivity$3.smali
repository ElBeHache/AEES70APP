.class Lcom/aee/sport/magicam/setting/CMDTestActivity$3;
.super Ljava/lang/Object;
.source "CMDTestActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/setting/CMDTestActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/setting/CMDTestActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/setting/CMDTestActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity$3;->this$0:Lcom/aee/sport/magicam/setting/CMDTestActivity;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 307
    new-instance v1, Lcom/aee/sport/magicam/bean/SendMsg;

    sget v3, Lcom/aee/sport/magicam/utils/Constants;->AMBA_START_SESSION:I

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(III)V

    .line 308
    .local v1, "send":Lcom/aee/sport/magicam/bean/SendMsg;
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v3

    new-instance v4, Lcom/aee/sport/magicam/setting/CMDTestActivity$3$9;

    invoke-direct {v4, p0}, Lcom/aee/sport/magicam/setting/CMDTestActivity$3$9;-><init>(Lcom/aee/sport/magicam/setting/CMDTestActivity$3;)V

    invoke-virtual {v3, v4, v1}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;Lcom/aee/sport/magicam/bean/SendMsg;)V

    .line 319
    .end local v1    # "send":Lcom/aee/sport/magicam/bean/SendMsg;
    :goto_0
    return-void

    .line 181
    :pswitch_0
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v3

    new-instance v4, Lcom/aee/sport/magicam/setting/CMDTestActivity$3$1;

    invoke-direct {v4, p0}, Lcom/aee/sport/magicam/setting/CMDTestActivity$3$1;-><init>(Lcom/aee/sport/magicam/setting/CMDTestActivity$3;)V

    invoke-virtual {v3, v4}, Lcom/aee/sport/magicam/service/ControlCMD;->startSesstion(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;)V

    goto :goto_0

    .line 192
    :pswitch_1
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v3

    new-instance v4, Lcom/aee/sport/magicam/setting/CMDTestActivity$3$2;

    invoke-direct {v4, p0}, Lcom/aee/sport/magicam/setting/CMDTestActivity$3$2;-><init>(Lcom/aee/sport/magicam/setting/CMDTestActivity$3;)V

    .line 200
    sget v5, Lcom/aee/sport/magicam/utils/Constants;->AMBA_STOP_SESSION:I

    .line 192
    invoke-virtual {v3, v4, v5}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;I)V

    goto :goto_0

    .line 204
    :pswitch_2
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v3

    new-instance v4, Lcom/aee/sport/magicam/setting/CMDTestActivity$3$3;

    invoke-direct {v4, p0}, Lcom/aee/sport/magicam/setting/CMDTestActivity$3$3;-><init>(Lcom/aee/sport/magicam/setting/CMDTestActivity$3;)V

    .line 212
    sget v5, Lcom/aee/sport/magicam/utils/Constants;->AMBA_RECORD_START:I

    .line 204
    invoke-virtual {v3, v4, v5}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;I)V

    goto :goto_0

    .line 215
    :pswitch_3
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v3

    new-instance v4, Lcom/aee/sport/magicam/setting/CMDTestActivity$3$4;

    invoke-direct {v4, p0}, Lcom/aee/sport/magicam/setting/CMDTestActivity$3$4;-><init>(Lcom/aee/sport/magicam/setting/CMDTestActivity$3;)V

    .line 223
    sget v5, Lcom/aee/sport/magicam/utils/Constants;->AMBA_RECORD_STOP:I

    .line 215
    invoke-virtual {v3, v4, v5}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;I)V

    goto :goto_0

    .line 226
    :pswitch_4
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v3

    new-instance v4, Lcom/aee/sport/magicam/setting/CMDTestActivity$3$5;

    invoke-direct {v4, p0}, Lcom/aee/sport/magicam/setting/CMDTestActivity$3$5;-><init>(Lcom/aee/sport/magicam/setting/CMDTestActivity$3;)V

    .line 234
    sget v5, Lcom/aee/sport/magicam/utils/Constants;->AMBA_TAKE_PHOTO:I

    .line 226
    invoke-virtual {v3, v4, v5}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;I)V

    goto :goto_0

    .line 237
    :pswitch_5
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v3

    new-instance v4, Lcom/aee/sport/magicam/setting/CMDTestActivity$3$6;

    invoke-direct {v4, p0}, Lcom/aee/sport/magicam/setting/CMDTestActivity$3$6;-><init>(Lcom/aee/sport/magicam/setting/CMDTestActivity$3;)V

    .line 245
    sget v5, Lcom/aee/sport/magicam/utils/Constants;->AMBA_CONTINUE_CAPTURE_STOP:I

    .line 237
    invoke-virtual {v3, v4, v5}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;I)V

    goto :goto_0

    .line 248
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity$3;->this$0:Lcom/aee/sport/magicam/setting/CMDTestActivity;

    const-class v4, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity$3;->this$0:Lcom/aee/sport/magicam/setting/CMDTestActivity;

    invoke-virtual {v3, v0}, Lcom/aee/sport/magicam/setting/CMDTestActivity;->startActivity(Landroid/content/Intent;)V

    .line 252
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_7
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v3

    new-instance v4, Lcom/aee/sport/magicam/setting/CMDTestActivity$3$7;

    invoke-direct {v4, p0}, Lcom/aee/sport/magicam/setting/CMDTestActivity$3$7;-><init>(Lcom/aee/sport/magicam/setting/CMDTestActivity$3;)V

    .line 260
    sget v5, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SETTING:I

    .line 252
    invoke-virtual {v3, v4, v5}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;I)V

    goto :goto_0

    .line 295
    :pswitch_8
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity$3;->this$0:Lcom/aee/sport/magicam/setting/CMDTestActivity;

    invoke-static {v3}, Lcom/aee/sport/magicam/setting/CMDTestActivity;->access$1(Lcom/aee/sport/magicam/setting/CMDTestActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aee/sport/magicam/bean/SendMsg;

    .line 296
    .local v2, "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v3

    new-instance v4, Lcom/aee/sport/magicam/setting/CMDTestActivity$3$8;

    invoke-direct {v4, p0}, Lcom/aee/sport/magicam/setting/CMDTestActivity$3$8;-><init>(Lcom/aee/sport/magicam/setting/CMDTestActivity$3;)V

    invoke-virtual {v3, v4, v2}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;Lcom/aee/sport/magicam/bean/SendMsg;)V

    goto/16 :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method
