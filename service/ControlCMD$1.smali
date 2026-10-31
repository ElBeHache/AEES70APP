.class Lcom/aee/sport/magicam/service/ControlCMD$1;
.super Ljava/lang/Object;
.source "ControlCMD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/service/ControlCMD;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/service/ControlCMD;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/service/ControlCMD;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/service/ControlCMD$1;->this$0:Lcom/aee/sport/magicam/service/ControlCMD;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/aee/sport/magicam/service/ControlCMD$1;->this$0:Lcom/aee/sport/magicam/service/ControlCMD;

    invoke-static {v0}, Lcom/aee/sport/magicam/service/ControlCMD;->access$0(Lcom/aee/sport/magicam/service/ControlCMD;)Z

    .line 44
    return-void
.end method
