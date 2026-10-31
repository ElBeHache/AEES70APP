.class public abstract Lcom/aee/sport/magicam/photoview/VersionedGestureDetector;
.super Ljava/lang/Object;
.source "VersionedGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aee/sport/magicam/photoview/VersionedGestureDetector$CupcakeDetector;,
        Lcom/aee/sport/magicam/photoview/VersionedGestureDetector$EclairDetector;,
        Lcom/aee/sport/magicam/photoview/VersionedGestureDetector$FroyoDetector;,
        Lcom/aee/sport/magicam/photoview/VersionedGestureDetector$OnGestureListener;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "VersionedGestureDetector"


# instance fields
.field mListener:Lcom/aee/sport/magicam/photoview/VersionedGestureDetector$OnGestureListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/aee/sport/magicam/photoview/VersionedGestureDetector$OnGestureListener;)Lcom/aee/sport/magicam/photoview/VersionedGestureDetector;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/aee/sport/magicam/photoview/VersionedGestureDetector$OnGestureListener;

    .prologue
    .line 19
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .local v1, "sdkVersion":I
    const/4 v0, 0x0

    .line 22
    .local v0, "detector":Lcom/aee/sport/magicam/photoview/VersionedGestureDetector;
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 23
    new-instance v0, Lcom/aee/sport/magicam/photoview/VersionedGestureDetector$CupcakeDetector;

    .end local v0    # "detector":Lcom/aee/sport/magicam/photoview/VersionedGestureDetector;
    invoke-direct {v0, p0}, Lcom/aee/sport/magicam/photoview/VersionedGestureDetector$CupcakeDetector;-><init>(Landroid/content/Context;)V

    .line 30
    .restart local v0    # "detector":Lcom/aee/sport/magicam/photoview/VersionedGestureDetector;
    :goto_0
    iput-object p1, v0, Lcom/aee/sport/magicam/photoview/VersionedGestureDetector;->mListener:Lcom/aee/sport/magicam/photoview/VersionedGestureDetector$OnGestureListener;

    .line 32
    return-object v0

    .line 24
    :cond_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 25
    new-instance v0, Lcom/aee/sport/magicam/photoview/VersionedGestureDetector$EclairDetector;

    .end local v0    # "detector":Lcom/aee/sport/magicam/photoview/VersionedGestureDetector;
    invoke-direct {v0, p0}, Lcom/aee/sport/magicam/photoview/VersionedGestureDetector$EclairDetector;-><init>(Landroid/content/Context;)V

    .restart local v0    # "detector":Lcom/aee/sport/magicam/photoview/VersionedGestureDetector;
    goto :goto_0

    .line 27
    :cond_1
    new-instance v0, Lcom/aee/sport/magicam/photoview/VersionedGestureDetector$FroyoDetector;

    .end local v0    # "detector":Lcom/aee/sport/magicam/photoview/VersionedGestureDetector;
    invoke-direct {v0, p0}, Lcom/aee/sport/magicam/photoview/VersionedGestureDetector$FroyoDetector;-><init>(Landroid/content/Context;)V

    .restart local v0    # "detector":Lcom/aee/sport/magicam/photoview/VersionedGestureDetector;
    goto :goto_0
.end method


# virtual methods
.method public abstract isScaling()Z
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method
