.class Lcom/aee/sport/magicam/photoview/VersionedGestureDetector$FroyoDetector$1;
.super Ljava/lang/Object;
.source "VersionedGestureDetector.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aee/sport/magicam/photoview/VersionedGestureDetector$FroyoDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aee/sport/magicam/photoview/VersionedGestureDetector$FroyoDetector;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/photoview/VersionedGestureDetector$FroyoDetector;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/photoview/VersionedGestureDetector$FroyoDetector$1;->this$1:Lcom/aee/sport/magicam/photoview/VersionedGestureDetector$FroyoDetector;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/VersionedGestureDetector$FroyoDetector$1;->this$1:Lcom/aee/sport/magicam/photoview/VersionedGestureDetector$FroyoDetector;

    iget-object v0, v0, Lcom/aee/sport/magicam/photoview/VersionedGestureDetector$FroyoDetector;->mListener:Lcom/aee/sport/magicam/photoview/VersionedGestureDetector$OnGestureListener;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/aee/sport/magicam/photoview/VersionedGestureDetector$OnGestureListener;->onScale(FFF)V

    .line 223
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 228
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 234
    return-void
.end method
