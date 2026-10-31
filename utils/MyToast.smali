.class public Lcom/aee/sport/magicam/utils/MyToast;
.super Ljava/lang/Object;
.source "MyToast.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;I)V
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "info"    # I

    .prologue
    .line 73
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/aee/sport/magicam/utils/MyToast$3;

    invoke-direct {v1, p1}, Lcom/aee/sport/magicam/utils/MyToast$3;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 85
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 86
    return-void
.end method

.method public static showInfo(IZ)V
    .locals 2
    .param p0, "info"    # I
    .param p1, "showToast"    # Z

    .prologue
    .line 47
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/aee/sport/magicam/utils/MyToast$2;

    invoke-direct {v1, p1, p0}, Lcom/aee/sport/magicam/utils/MyToast$2;-><init>(ZI)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 61
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 62
    return-void
.end method

.method public static showInfo(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "info"    # Ljava/lang/String;
    .param p1, "showToast"    # Z

    .prologue
    .line 20
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/aee/sport/magicam/utils/MyToast$1;

    invoke-direct {v1, p1, p0}, Lcom/aee/sport/magicam/utils/MyToast$1;-><init>(ZLjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 34
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 36
    return-void
.end method
