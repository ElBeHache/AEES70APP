.class Lcom/aee/sport/magicam/setting/CameraSettingActivity$4$2$1;
.super Ljava/lang/Object;
.source "CameraSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/setting/CameraSettingActivity$4$2;->returnInfo(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/aee/sport/magicam/setting/CameraSettingActivity$4$2;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/setting/CameraSettingActivity$4$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$4$2$1;->this$2:Lcom/aee/sport/magicam/setting/CameraSettingActivity$4$2;

    .line 1078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CameraSettingActivity$4$2$1;->this$2:Lcom/aee/sport/magicam/setting/CameraSettingActivity$4$2;

    invoke-static {v0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity$4$2;->access$0(Lcom/aee/sport/magicam/setting/CameraSettingActivity$4$2;)Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;

    move-result-object v0

    invoke-static {v0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;->access$0(Lcom/aee/sport/magicam/setting/CameraSettingActivity$4;)Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aee/sport/magicam/setting/CameraSettingActivity;->access$5(Lcom/aee/sport/magicam/setting/CameraSettingActivity;)V

    .line 1083
    return-void
.end method
