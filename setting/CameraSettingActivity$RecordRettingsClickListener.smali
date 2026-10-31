.class Lcom/aee/sport/magicam/setting/CameraSettingActivity$RecordRettingsClickListener;
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
    name = "RecordRettingsClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;


# direct methods
.method private constructor <init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)V
    .locals 0

    .prologue
    .line 757
    iput-object p1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$RecordRettingsClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity;Lcom/aee/sport/magicam/setting/CameraSettingActivity$RecordRettingsClickListener;)V
    .locals 0

    .prologue
    .line 757
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/setting/CameraSettingActivity$RecordRettingsClickListener;-><init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 761
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/aee/sport/magicam/AeeApplication;->cameraSettingMap:Ljava/util/Map;

    const-string v3, "get_dv_mode"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 762
    .local v0, "dv_mode":Ljava/lang/String;
    const-string v2, "VIDEO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 763
    const v2, 0x7f080020

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    .line 796
    :goto_0
    :pswitch_0
    return-void

    .line 766
    :cond_0
    const/4 v1, 0x0

    .line 767
    .local v1, "intent":Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 769
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$RecordRettingsClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    const-class v3, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 770
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "fromFlag"

    const v3, 0x8006

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 771
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$RecordRettingsClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    iget-object v3, v3, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoResolution:Ljava/lang/String;

    iput-object v3, v2, Lcom/aee/sport/magicam/AeeApplication;->value:Ljava/lang/String;

    .line 772
    iget-object v2, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$RecordRettingsClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    invoke-virtual {v2, v1}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 776
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$RecordRettingsClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    const-class v3, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 777
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "fromFlag"

    const v3, 0x8007

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 778
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$RecordRettingsClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    iget-object v3, v3, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->videoFov:Ljava/lang/String;

    iput-object v3, v2, Lcom/aee/sport/magicam/AeeApplication;->value:Ljava/lang/String;

    .line 779
    iget-object v2, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$RecordRettingsClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    invoke-virtual {v2, v1}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 784
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$RecordRettingsClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    const-class v3, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 785
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "fromFlag"

    const v3, 0x8016

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 786
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$RecordRettingsClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    invoke-static {v3}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->access$0(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/aee/sport/magicam/AeeApplication;->value:Ljava/lang/String;

    .line 787
    iget-object v2, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$RecordRettingsClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    invoke-virtual {v2, v1}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 767
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
