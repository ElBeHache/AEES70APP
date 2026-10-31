.class Lcom/aee/sport/magicam/setting/CameraSettingActivity$1;
.super Ljava/lang/Object;
.source "CameraSettingActivity.java"

# interfaces
.implements Lcom/aee/sport/magicam/widget/SlipButtonItem$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/setting/CameraSettingActivity;->createVideoList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

.field private final synthetic val$buttonBitRate:Lcom/aee/sport/magicam/widget/SlipButtonItem;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity;Lcom/aee/sport/magicam/widget/SlipButtonItem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$1;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    iput-object p2, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$1;->val$buttonBitRate:Lcom/aee/sport/magicam/widget/SlipButtonItem;

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/setting/CameraSettingActivity$1;)Lcom/aee/sport/magicam/setting/CameraSettingActivity;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$1;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    return-object v0
.end method


# virtual methods
.method public OnChanged(Z)V
    .locals 6
    .param p1, "CheckState"    # Z

    .prologue
    const/16 v5, 0x13

    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    if-eqz p1, :cond_0

    .line 390
    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    .end local v0    # "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    const-string v1, "\u8bbe\u7f6e\u6bd4\u7279\u7387"

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_SET_SETTING:I

    const-string v3, "video_quality_sfi"

    const-string v4, "video_quality"

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 394
    .restart local v0    # "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    :goto_0
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    new-instance v2, Lcom/aee/sport/magicam/setting/CameraSettingActivity$1$1;

    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$1;->val$buttonBitRate:Lcom/aee/sport/magicam/widget/SlipButtonItem;

    invoke-direct {v2, p0, p1, v3}, Lcom/aee/sport/magicam/setting/CameraSettingActivity$1$1;-><init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity$1;ZLcom/aee/sport/magicam/widget/SlipButtonItem;)V

    invoke-virtual {v1, v2, v0}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;Lcom/aee/sport/magicam/bean/SendMsg;)V

    .line 417
    return-void

    .line 392
    :cond_0
    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    .end local v0    # "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    const-string v1, "\u8bbe\u7f6e\u6bd4\u7279\u7387"

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_SET_SETTING:I

    const-string v3, "video_quality_fin"

    const-string v4, "video_quality"

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .restart local v0    # "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    goto :goto_0
.end method
