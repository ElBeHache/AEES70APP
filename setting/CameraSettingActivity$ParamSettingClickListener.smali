.class Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;
.super Ljava/lang/Object;
.source "CameraSettingActivity.java"

# interfaces
.implements Lbr/com/dina/ui/widget/UITableView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aee/sport/magicam/setting/CameraSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParamSettingClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;


# direct methods
.method private constructor <init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)V
    .locals 0

    .prologue
    .line 860
    iput-object p1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity;Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;)V
    .locals 0

    .prologue
    .line 860
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;-><init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;)Lcom/aee/sport/magicam/setting/CameraSettingActivity;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 864
    const/4 v1, 0x0

    .line 865
    .local v1, "intent":Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 940
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    const-class v5, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 941
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "fromFlag"

    const v5, -0x15f90

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 942
    iget-object v4, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    invoke-virtual {v4, v1}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 946
    :goto_0
    :pswitch_1
    return-void

    .line 867
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    const-class v5, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 868
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "fromFlag"

    const v5, 0x8017

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 869
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v4

    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    invoke-static {v5}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->access$4(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/aee/sport/magicam/AeeApplication;->value:Ljava/lang/String;

    .line 870
    iget-object v4, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    invoke-virtual {v4, v1}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 873
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    const-class v5, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 874
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "fromFlag"

    const v5, 0x8010

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 875
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v4

    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    iget-object v5, v5, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setupKeyTone:Ljava/lang/String;

    iput-object v5, v4, Lcom/aee/sport/magicam/AeeApplication;->value:Ljava/lang/String;

    .line 876
    iget-object v4, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    invoke-virtual {v4, v1}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 879
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    const-class v5, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 880
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "fromFlag"

    const v5, 0x8011

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 881
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v4

    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    iget-object v5, v5, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->setupSelflamp:Ljava/lang/String;

    iput-object v5, v4, Lcom/aee/sport/magicam/AeeApplication;->value:Ljava/lang/String;

    .line 882
    iget-object v4, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    invoke-virtual {v4, v1}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 886
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    const-class v5, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 887
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "fromFlag"

    const v5, 0x8014

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 888
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v4

    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    iget-object v5, v5, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoStandard:Ljava/lang/String;

    iput-object v5, v4, Lcom/aee/sport/magicam/AeeApplication;->value:Ljava/lang/String;

    .line 889
    iget-object v4, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    invoke-virtual {v4, v1}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 892
    :pswitch_6
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    const-class v5, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 893
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "fromFlag"

    const v5, 0x8015

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 894
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v4

    iget-object v5, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    iget-object v5, v5, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->language:Ljava/lang/String;

    iput-object v5, v4, Lcom/aee/sport/magicam/AeeApplication;->value:Ljava/lang/String;

    .line 895
    iget-object v4, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    invoke-virtual {v4, v1}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 898
    :pswitch_7
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 899
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 900
    .local v2, "param":Ljava/lang/String;
    new-instance v3, Lcom/aee/sport/magicam/bean/SendMsg;

    sget v4, Lcom/aee/sport/magicam/utils/Constants;->AMBA_SET_SETTING:I

    const-string v5, "camera_clock"

    invoke-direct {v3, v4, v2, v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 901
    .local v3, "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v4

    new-instance v5, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener$1;

    invoke-direct {v5, p0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener$1;-><init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;)V

    invoke-virtual {v4, v5, v3}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;Lcom/aee/sport/magicam/bean/SendMsg;)V

    goto/16 :goto_0

    .line 929
    .end local v0    # "format":Ljava/text/SimpleDateFormat;
    .end local v2    # "param":Ljava/lang/String;
    .end local v3    # "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    :pswitch_8
    iget-object v4, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->access$6(Lcom/aee/sport/magicam/setting/CameraSettingActivity;I)V

    goto/16 :goto_0

    .line 932
    :pswitch_9
    iget-object v4, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->access$6(Lcom/aee/sport/magicam/setting/CameraSettingActivity;I)V

    goto/16 :goto_0

    .line 935
    :pswitch_a
    iget-object v4, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ParamSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    invoke-static {v4}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->access$7(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)V

    goto/16 :goto_0

    .line 865
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_7
    .end packed-switch
.end method
