.class Lcom/aee/sport/magicam/utils/ViewBottomOperate$3$2;
.super Ljava/lang/Object;
.source "ViewBottomOperate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/utils/ViewBottomOperate$3;->returnInfo(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aee/sport/magicam/utils/ViewBottomOperate$3;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/utils/ViewBottomOperate$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$3$2;->this$1:Lcom/aee/sport/magicam/utils/ViewBottomOperate$3;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$3$2;->this$1:Lcom/aee/sport/magicam/utils/ViewBottomOperate$3;

    invoke-static {v0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate$3;->access$0(Lcom/aee/sport/magicam/utils/ViewBottomOperate$3;)Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    move-result-object v0

    iget-object v0, v0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->operate:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 371
    return-void
.end method
