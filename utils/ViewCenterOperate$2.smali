.class Lcom/aee/sport/magicam/utils/ViewCenterOperate$2;
.super Ljava/lang/Object;
.source "ViewCenterOperate.java"

# interfaces
.implements Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/utils/ViewCenterOperate;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/utils/ViewCenterOperate;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/utils/ViewCenterOperate;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate$2;->this$0:Lcom/aee/sport/magicam/utils/ViewCenterOperate;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public returnInfo(Ljava/lang/Object;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 229
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 232
    .local v0, "isSuccess":Z
    return-void
.end method
