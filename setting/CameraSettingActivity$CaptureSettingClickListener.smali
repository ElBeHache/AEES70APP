.class Lcom/aee/sport/magicam/setting/CameraSettingActivity$CaptureSettingClickListener;
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
    name = "CaptureSettingClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;


# direct methods
.method private constructor <init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)V
    .locals 0

    .prologue
    .line 806
    iput-object p1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$CaptureSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity;Lcom/aee/sport/magicam/setting/CameraSettingActivity$CaptureSettingClickListener;)V
    .locals 0

    .prologue
    .line 806
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/setting/CameraSettingActivity$CaptureSettingClickListener;-><init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    const v6, 0x7f080021

    const/4 v5, 0x1

    .line 810
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/aee/sport/magicam/AeeApplication;->cameraSettingMap:Ljava/util/Map;

    const-string v4, "get_dv_mode"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 811
    .local v1, "dv_mode":Ljava/lang/String;
    const-string v3, "PHOTO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 812
    invoke-static {v6, v5}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    .line 850
    :goto_0
    return-void

    .line 815
    :cond_0
    const/4 v2, 0x0

    .line 816
    .local v2, "intent":Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 818
    :pswitch_0
    sget-object v3, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->ConfigHash:Ljava/util/HashMap;

    const-string v4, "photo_cap_mode"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    .line 819
    .local v0, "ckvf":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    iget-object v3, v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    const-string v4, "photo_cap_mode_fas"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 820
    invoke-static {v6, v5}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto :goto_0

    .line 823
    :cond_1
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$CaptureSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    const-class v4, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 824
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "fromFlag"

    const v4, 0x8008

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 825
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v3

    iget-object v4, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$CaptureSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    iget-object v4, v4, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->photoSize:Ljava/lang/String;

    iput-object v4, v3, Lcom/aee/sport/magicam/AeeApplication;->value:Ljava/lang/String;

    .line 826
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$CaptureSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    invoke-virtual {v3, v2}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 830
    .end local v0    # "ckvf":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$CaptureSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    const-class v4, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 831
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "fromFlag"

    const v4, 0x8009

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 832
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v3

    iget-object v4, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$CaptureSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    invoke-static {v4}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->access$1(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/aee/sport/magicam/AeeApplication;->value:Ljava/lang/String;

    .line 833
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$CaptureSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    invoke-virtual {v3, v2}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 836
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$CaptureSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    const-class v4, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 837
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "fromFlag"

    const v4, 0x800f

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 838
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v3

    iget-object v4, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$CaptureSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    invoke-static {v4}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->access$2(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/aee/sport/magicam/AeeApplication;->value:Ljava/lang/String;

    .line 839
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$CaptureSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    invoke-virtual {v3, v2}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 843
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$CaptureSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    const-class v4, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 844
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "fromFlag"

    const v4, 0x800e

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 845
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v3

    iget-object v4, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$CaptureSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    invoke-static {v4}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->access$3(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/aee/sport/magicam/AeeApplication;->value:Ljava/lang/String;

    .line 846
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$CaptureSettingClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    invoke-virtual {v3, v2}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 816
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
