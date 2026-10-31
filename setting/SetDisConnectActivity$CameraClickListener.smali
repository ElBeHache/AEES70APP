.class Lcom/aee/sport/magicam/setting/SetDisConnectActivity$CameraClickListener;
.super Ljava/lang/Object;
.source "SetDisConnectActivity.java"

# interfaces
.implements Lbr/com/dina/ui/widget/UITableView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aee/sport/magicam/setting/SetDisConnectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/setting/SetDisConnectActivity;


# direct methods
.method private constructor <init>(Lcom/aee/sport/magicam/setting/SetDisConnectActivity;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/aee/sport/magicam/setting/SetDisConnectActivity$CameraClickListener;->this$0:Lcom/aee/sport/magicam/setting/SetDisConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aee/sport/magicam/setting/SetDisConnectActivity;Lcom/aee/sport/magicam/setting/SetDisConnectActivity$CameraClickListener;)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/setting/SetDisConnectActivity$CameraClickListener;-><init>(Lcom/aee/sport/magicam/setting/SetDisConnectActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/SetDisConnectActivity$CameraClickListener;->this$0:Lcom/aee/sport/magicam/setting/SetDisConnectActivity;

    invoke-static {v0, p1}, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->access$0(Lcom/aee/sport/magicam/setting/SetDisConnectActivity;I)V

    .line 216
    const-string v0, "disconnet_status"

    invoke-static {v0, p1}, Lcom/aee/sport/magicam/utils/MySharedPreferences;->putInt(Ljava/lang/String;I)V

    .line 218
    return-void
.end method
