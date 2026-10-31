.class Lcom/aee/sport/magicam/utils/ViewBottomOperate$12$2;
.super Ljava/lang/Object;
.source "ViewBottomOperate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/utils/ViewBottomOperate$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aee/sport/magicam/utils/ViewBottomOperate$12;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/utils/ViewBottomOperate$12;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$12$2;->this$1:Lcom/aee/sport/magicam/utils/ViewBottomOperate$12;

    .line 1066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$12$2;->this$1:Lcom/aee/sport/magicam/utils/ViewBottomOperate$12;

    invoke-static {v0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate$12;->access$0(Lcom/aee/sport/magicam/utils/ViewBottomOperate$12;)Lcom/aee/sport/magicam/utils/ViewBottomOperate;

    move-result-object v0

    invoke-static {v0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->access$14(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1070
    return-void
.end method
