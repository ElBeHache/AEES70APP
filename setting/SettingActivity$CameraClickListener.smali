.class Lcom/aee/sport/magicam/setting/SettingActivity$CameraClickListener;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Lbr/com/dina/ui/widget/UITableView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aee/sport/magicam/setting/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/setting/SettingActivity;


# direct methods
.method private constructor <init>(Lcom/aee/sport/magicam/setting/SettingActivity;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/aee/sport/magicam/setting/SettingActivity$CameraClickListener;->this$0:Lcom/aee/sport/magicam/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "intent":Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 277
    :goto_0
    :pswitch_0
    return-void

    .line 261
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/SettingActivity$CameraClickListener;->this$0:Lcom/aee/sport/magicam/setting/SettingActivity;

    const-class v2, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/SettingActivity$CameraClickListener;->this$0:Lcom/aee/sport/magicam/setting/SettingActivity;

    invoke-virtual {v1, v0}, Lcom/aee/sport/magicam/setting/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 265
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/SettingActivity$CameraClickListener;->this$0:Lcom/aee/sport/magicam/setting/SettingActivity;

    const-class v2, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "fromFlag"

    const v2, 0x8004

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/SettingActivity$CameraClickListener;->this$0:Lcom/aee/sport/magicam/setting/SettingActivity;

    invoke-virtual {v1, v0}, Lcom/aee/sport/magicam/setting/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
