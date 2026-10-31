.class Lcom/aee/sport/magicam/utils/ViewBottomOperate$6$2;
.super Ljava/lang/Object;
.source "ViewBottomOperate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/utils/ViewBottomOperate$6;->returnInfo(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aee/sport/magicam/utils/ViewBottomOperate$6;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/utils/ViewBottomOperate$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$6$2;->this$1:Lcom/aee/sport/magicam/utils/ViewBottomOperate$6;

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 470
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$6$2;->this$1:Lcom/aee/sport/magicam/utils/ViewBottomOperate$6;

    invoke-static {v0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate$6;->access$0(Lcom/aee/sport/magicam/utils/ViewBottomOperate$6;)Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    move-result-object v0

    invoke-static {v0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->access$13(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 471
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$6$2;->this$1:Lcom/aee/sport/magicam/utils/ViewBottomOperate$6;

    invoke-static {v0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate$6;->access$0(Lcom/aee/sport/magicam/utils/ViewBottomOperate$6;)Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    move-result-object v0

    iget-object v0, v0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->operate:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 472
    return-void
.end method
