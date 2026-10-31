.class Lcom/aee/sport/magicam/setting/SettingActivity$ShareClickListener;
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
    name = "ShareClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/setting/SettingActivity;


# direct methods
.method private constructor <init>(Lcom/aee/sport/magicam/setting/SettingActivity;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/aee/sport/magicam/setting/SettingActivity$ShareClickListener;->this$0:Lcom/aee/sport/magicam/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 391
    packed-switch p1, :pswitch_data_0

    .line 406
    :pswitch_0
    return-void

    .line 391
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
