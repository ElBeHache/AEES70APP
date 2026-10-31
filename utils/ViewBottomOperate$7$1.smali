.class Lcom/aee/sport/magicam/utils/ViewBottomOperate$7$1;
.super Ljava/lang/Object;
.source "ViewBottomOperate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/utils/ViewBottomOperate$7;->returnInfo(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aee/sport/magicam/utils/ViewBottomOperate$7;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/utils/ViewBottomOperate$7;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$7$1;->this$1:Lcom/aee/sport/magicam/utils/ViewBottomOperate$7;

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 497
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/service/ControlCMD;->getFVinfo(I)Z

    move-result v0

    sput-boolean v0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isAction:Z

    .line 499
    return-void
.end method
