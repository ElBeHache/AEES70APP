.class Lcom/aee/sport/magicam/utils/MyToast$2;
.super Ljava/lang/Object;
.source "MyToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$info:I

.field private final synthetic val$showToast:Z


# direct methods
.method constructor <init>(ZI)V
    .locals 0

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/aee/sport/magicam/utils/MyToast$2;->val$showToast:Z

    iput p2, p0, Lcom/aee/sport/magicam/utils/MyToast$2;->val$info:I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 52
    :try_start_0
    iget-boolean v1, p0, Lcom/aee/sport/magicam/utils/MyToast$2;->val$showToast:Z

    if-eqz v1, :cond_0

    .line 53
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 54
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aee/sport/magicam/AeeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/aee/sport/magicam/utils/MyToast$2;->val$info:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 55
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
