.class Lcom/aee/sport/magicam/setting/SettingActivity$OtherClickListener;
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
    name = "OtherClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/setting/SettingActivity;


# direct methods
.method private constructor <init>(Lcom/aee/sport/magicam/setting/SettingActivity;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/aee/sport/magicam/setting/SettingActivity$OtherClickListener;->this$0:Lcom/aee/sport/magicam/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aee/sport/magicam/setting/SettingActivity;Lcom/aee/sport/magicam/setting/SettingActivity$OtherClickListener;)V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/setting/SettingActivity$OtherClickListener;-><init>(Lcom/aee/sport/magicam/setting/SettingActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    const v3, 0x7f0800ae

    .line 333
    packed-switch p1, :pswitch_data_0

    .line 373
    :goto_0
    :pswitch_0
    return-void

    .line 359
    :pswitch_1
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/SettingActivity$OtherClickListener;->this$0:Lcom/aee/sport/magicam/setting/SettingActivity;

    iget-object v0, v0, Lcom/aee/sport/magicam/setting/SettingActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/aee/sport/magicam/setting/SettingActivity$OtherClickListener;->this$0:Lcom/aee/sport/magicam/setting/SettingActivity;

    invoke-virtual {v1, v3}, Lcom/aee/sport/magicam/setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 360
    iget-object v2, p0, Lcom/aee/sport/magicam/setting/SettingActivity$OtherClickListener;->this$0:Lcom/aee/sport/magicam/setting/SettingActivity;

    invoke-virtual {v2, v3}, Lcom/aee/sport/magicam/setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 361
    iget-object v3, p0, Lcom/aee/sport/magicam/setting/SettingActivity$OtherClickListener;->this$0:Lcom/aee/sport/magicam/setting/SettingActivity;

    const v4, 0x7f0800af

    invoke-virtual {v3, v4}, Lcom/aee/sport/magicam/setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 359
    invoke-static {v0, v1, v2, v3, v4}, Lcom/aee/sport/magicam/utils/PublicUtils;->shareMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
