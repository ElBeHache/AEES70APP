.class Lcom/aee/sport/magicam/setting/CMDTestActivity$3$5;
.super Ljava/lang/Object;
.source "CMDTestActivity.java"

# interfaces
.implements Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/setting/CMDTestActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aee/sport/magicam/setting/CMDTestActivity$3;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/setting/CMDTestActivity$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity$3$5;->this$1:Lcom/aee/sport/magicam/setting/CMDTestActivity$3;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public returnInfo(Ljava/lang/Object;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 230
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 231
    .local v0, "isSuccess":Z
    if-eqz v0, :cond_0

    .line 232
    const-string v1, "\u62cd\u7167\u6210\u529f\uff01"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(Ljava/lang/String;Z)V

    .line 233
    :cond_0
    return-void
.end method
