.class Lcom/aee/sport/magicam/setting/CameraSettingActivity$1$1$1;
.super Ljava/lang/Object;
.source "CameraSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/setting/CameraSettingActivity$1$1;->returnInfo(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/aee/sport/magicam/setting/CameraSettingActivity$1$1;

.field private final synthetic val$CheckState:Z

.field private final synthetic val$buttonBitRate:Lcom/aee/sport/magicam/widget/SlipButtonItem;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity$1$1;Lcom/aee/sport/magicam/widget/SlipButtonItem;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$1$1$1;->this$2:Lcom/aee/sport/magicam/setting/CameraSettingActivity$1$1;

    iput-object p2, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$1$1$1;->val$buttonBitRate:Lcom/aee/sport/magicam/widget/SlipButtonItem;

    iput-boolean p3, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$1$1$1;->val$CheckState:Z

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 410
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$1$1$1;->val$buttonBitRate:Lcom/aee/sport/magicam/widget/SlipButtonItem;

    iget-boolean v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$1$1$1;->val$CheckState:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/aee/sport/magicam/widget/SlipButtonItem;->setChecked(Z)V

    .line 411
    return-void

    .line 410
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
