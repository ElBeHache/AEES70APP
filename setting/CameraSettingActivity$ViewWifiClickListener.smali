.class Lcom/aee/sport/magicam/setting/CameraSettingActivity$ViewWifiClickListener;
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
    name = "ViewWifiClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;


# direct methods
.method private constructor <init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)V
    .locals 0

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ViewWifiClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1016
    const/4 v0, 0x0

    .line 1017
    .local v0, "intent":Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 1024
    :goto_0
    return-void

    .line 1019
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ViewWifiClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    const-class v2, Lcom/aee/sport/magicam/capturesetting/SSIDSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1020
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$ViewWifiClickListener;->this$0:Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    invoke-virtual {v1, v0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1017
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
