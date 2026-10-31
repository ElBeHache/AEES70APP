.class Lcom/aee/sport/magicam/setting/SettingActivity$PTZClickListener;
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
    name = "PTZClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/setting/SettingActivity;


# direct methods
.method private constructor <init>(Lcom/aee/sport/magicam/setting/SettingActivity;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/aee/sport/magicam/setting/SettingActivity$PTZClickListener;->this$0:Lcom/aee/sport/magicam/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 291
    const/4 v0, 0x0

    .line 293
    .local v0, "intent":Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 313
    :goto_0
    :pswitch_0
    return-void

    .line 295
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/SettingActivity$PTZClickListener;->this$0:Lcom/aee/sport/magicam/setting/SettingActivity;

    const-class v2, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 296
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "fromFlag"

    const v2, 0x8003

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/SettingActivity$PTZClickListener;->this$0:Lcom/aee/sport/magicam/setting/SettingActivity;

    invoke-virtual {v1, v0}, Lcom/aee/sport/magicam/setting/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 304
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/SettingActivity$PTZClickListener;->this$0:Lcom/aee/sport/magicam/setting/SettingActivity;

    const-class v2, Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/SettingActivity$PTZClickListener;->this$0:Lcom/aee/sport/magicam/setting/SettingActivity;

    invoke-virtual {v1, v0}, Lcom/aee/sport/magicam/setting/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
