.class Lcom/aee/sport/magicam/AeeApplication$1$1;
.super Ljava/lang/Object;
.source "AeeApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/AeeApplication$1;->onSuccess(Lcom/lidroid/xutils/http/ResponseInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aee/sport/magicam/AeeApplication$1;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/AeeApplication$1;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/AeeApplication$1$1;->this$1:Lcom/aee/sport/magicam/AeeApplication$1;

    iput p2, p0, Lcom/aee/sport/magicam/AeeApplication$1$1;->val$position:I

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/aee/sport/magicam/AeeApplication$1$1;->val$position:I

    invoke-static {v0}, Lcom/aee/sport/magicam/AeeApplication;->access$2(I)V

    .line 343
    return-void
.end method
